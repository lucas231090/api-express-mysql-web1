const express = require("express");
const routes = require("./routes");
const app = express();

const url = "http://localhost";
const port = 3000;

const db = require("./app/models/ConnectDatabase");

db.testConnection().catch((err) => {
  console.error(
    "Não foi possível conectar ao banco de dados. Encerrando o aplicativo."
  );
  process.exit(1);
});

app.use(express.json());
app.use(routes);

app.listen(port, () => {
  console.log(`O servidor está rodando em ${url} ${port}`);
});
