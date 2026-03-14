-- database: ../../../database/module01-introduction/examples/05-update.sqlite

CREATE TABLE cursos (
    id INT NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER
);

INSERT INTO 
    "cursos" ("id", "nome", "aulas")
VALUES
    (1, 'HTML', 10),
    (2, 'JS', 15),
    (3, 'CSS', 20);

UPDATE "cursos" SET "nome" = 'HTML e CSS',"aulas" = 14 WHERE id = 1; -- atualiza o nome onde o id é 1