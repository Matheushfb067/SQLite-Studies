-- database: ../../../database/module01-introduction/examples/02-select-insert.sqlite

CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL, 
    aulas INTEGER
);

PRAGMA TABLE_INFO ('cursos'); 

SELECT * FROM cursos;

INSERT INTO cursos (id, nome, aulas) VALUES 
(1, 'HTML', 10),
(2, 'JS', 15),
(3, 'CSS', 20);