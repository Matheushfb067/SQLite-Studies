-- database: ../../../database/module02-dataTypes/examples/02-strict.sqlite

CREATE TABLE "cursos" (
    "id" INTEGER,
    "nome" TEXT,
    "preco" TEXT
)STRICT; -- essse unico comando faz com que a tabela seja estrita

INSERT INTO
    "cursos" ("id", "nome", "preco")
VALUES 
    ('a', 'HTML', 1000); -- retorna um erro propositelmente!

INSERT INTO
  "cursos" ("id", "nome", "preco")
VALUES
  ('1', 'HTML', 1000); -- Funciona, transforma '1' em 1