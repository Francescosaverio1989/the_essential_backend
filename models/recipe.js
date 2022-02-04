const connexion = require('../connexion');

const findAll = () => connexion.promise().query('SELECT * FROM recipes');
const findOneById = (id) =>
  connexion.promise().query('SELECT * FROM recipes WHERE id = ?', [id]);

const createOne = ({ title, picture, description }) =>
  connexion
    .promise()
    .query(
      'INSERT INTO recipes (title, picture, description) VALUES (?, ?, ?)',
      [title, picture, description]
    );

const updateOne = (object, id) =>
  connexion.promise().query(`UPDATE recipes SET ? WHERE id = ?`, [object, id]);

const deleteOne = (id) =>
  connexion.promise().query(`DELETE FROM recipes WHERE id = ?`, [id]);

module.exports = {
  findAll,
  findOneById,
  createOne,
  updateOne,
  deleteOne,
};
