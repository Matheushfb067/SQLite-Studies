-- database: ../../../database/module02-dataTypes/examples/04-foreign-key.sqlite

PRAGMA foreign_keys; -- verifica se as foreign keys estão habilitadas

CREATE TABLE "cursos" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

CREATE TABLE "aulas" (
    "id" INTEGER PRIMARY KEY,
    "curso_id" INTEGER, -- deve ser do mesmo tipo do atributo de referencia
    "nome" TEXT,

    FOREIGN KEY ("curso_id") REFERENCES "cursos" ("id") ON DELETE CASCADE ON UPDATE CASCADE
    -- ON DELETE CASCADE permite se eu deletar a table cursos, também deletar todas as aulas referentes a "cursos"
)STRICT;

INSERT INTO "cursos" ("nome") VALUES ('HTML');
INSERT INTO "aulas" ("curso_id", "nome") VALUES (1, 'Fundamentos do HTML');

DROP TABLE "cursos"; -- não da certo pois a tabela aulas depende da tabela curso!

DELETE FROM "cursos" WHERE "id" = 1;
