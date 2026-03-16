-- database: ../../../database/module02-dataTypes/examples/01-data-types.sqlite

CREATE TABLE "produtos" (
    id INT,
    descontinuado TINYINT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    descricao TEXT,
    data_criacao DATETIME
);

INSERT INTO 
    "produtos" ("id", "descontinuado", "nome", "preco", "descricao", "data_criacao")
VALUES
    (1, 0, 'Notebook', 200.5, null, '24-10-2049');

SELECT * FROM produtos;

SELECT typeof("id") FROM produtos;

SELECT typeof("descontinuado") FROM produtos;

SELECT typeof("nome") FROM produtos;

SELECT typeof("preco") FROM produtos;

SELECT typeof("descricao") FROM produtos;

SELECT typeof("data_criacao") FROM produtos;