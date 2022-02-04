const cors = require('cors');
const express = require('express');
require('dotenv').config();

const apiRouter = require('./routers/api');

const app = express();
const port = process.env.PORT || 8000;

app.use(cors());
app.use(express.json());

apiRouter(app);

app.listen(port, () => {
  console.log(`Server run on ${port}`);
});

module.exports = app;
