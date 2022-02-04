const recipeRouter = require('./recipe');
const usersRouter = require('./users');

const apiRouter = (app) => {
  app.use('/recipes', recipeRouter);
  app.use('/users', usersRouter);
};

module.exports = apiRouter;
