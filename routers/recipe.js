const recipeRouter = require('express').Router();
const recipeModel = require('../models/recipe');

recipeRouter.get('/', async (req, res) => {
  const [recipes] = await recipeModel.findAll();
  res.json(recipes);
});

recipeRouter.get('/:id', async (req, res) => {
  const [[recipes]] = await recipeModel.findOneById(req.params.id);
  if (!recipes) res.status(404).json();
  res.json(recipes);
});

recipeRouter.post('/', async (req, res) => {
  const [{ insertId: id }] = await recipeModel.createOne(req.body);
  return res.status(201).json({
    id,
    ...req.body,
  });
});

recipeRouter.put('/:id', async (req, res) => {
  await recipeModel.updateOne(req.body, req.params.id);
  res.status(201).json();
});

recipeRouter.delete('/:id', async (req, res) => {
  await recipeModel.deleteOne(req.params.id);
  res.status(204).json();
});

module.exports = recipeRouter;
