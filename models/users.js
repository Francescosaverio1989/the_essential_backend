const connection = require('../connexion');

const findOneByEmail = (email) =>
  connection.promise().query(`SELECT * FROM users  WHERE email = ?`, [email]);

const createOne = (email, password) =>
  connection
    .promise()
    .query(`INSERT INTO users ( email, password) VALUES (?,?)`, [
      email,
      password,
    ]);

const deleteOne = (email) =>
  connection.promise().query(`DELETE FROM users WHERE email = ?`, [email]);

module.exports = {
  findOneByEmail,
  createOne,
  deleteOne,
};
