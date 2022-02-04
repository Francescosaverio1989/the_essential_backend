const usersRouter = require('express').Router();
const Joi = require('joi');
const argon2 = require('argon2');
const { generateJwt } = require('../utils/auth');

const checkJwt = require('../middlewares/checkJwts');

require('dotenv').config();

const { findOneByEmail, createOne, deleteOne } = require('../models/users');

const usersSchema = (login = false) => {
  const isRequird = login ? 'forbidden' : 'required';
  return Joi.object({
    email: Joi.string().email().required(isRequird),
    password: Joi.string().required(isRequird),
  });
};

usersRouter.post('/', checkJwt, async (req, res) => {
  const { value, error } = usersSchema().validate(req.body);

  if (error) {
    return res.status(400).json(error);
  }

  const [[existingUsers]] = await findOneByEmail(value.email);

  if (existingUsers) {
    return res.status(409).json({
      message: 'email already exists',
    });
  }

  const hashedPassword = await argon2.hash(value.password);

  await createOne(value.email, hashedPassword);

  const jwtKey = generateJwt(value.email);

  return res.json({
    credential: jwtKey,
  });
});

usersRouter.post('/login', async (req, res) => {
  const { value, error } = usersSchema(true).validate(req.body);

  if (error) {
    return res.status(400).json(error);
  }
  const [[existingUsers]] = await findOneByEmail(value.email);

  if (!existingUsers) {
    return res.status(403).json({
      message: 'bad email or password',
    });
  }
  const verified = await argon2.verify(existingUsers.password, value.password);

  if (!verified) {
    return res.status(403).json({
      message: 'bad email or password',
    });
  }
  const jwtKey = generateJwt(value.email);

  return res.json({
    credential: jwtKey,
  });
});

usersRouter.delete('/:id', checkJwt, async (req, res) => {
  await deleteOne(req.params.id);
  return res.json.status(204);
});

module.exports = usersRouter;
