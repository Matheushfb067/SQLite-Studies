-- database: ../database/03-delete-where.sqlite

CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL, 
    aulas INTEGER
);

SELECT * FROM cursos;

INSERT INTO cursos (id, nome, aulas) VALUES 
(1, 'HTML', 10),
(2, 'JS', 15),
(3, 'CSS', 20);

DELETE FROM "cursos" WHERE "id" = 1;

DELETE FROM "cursos" WHERE "nome" = 'CSS';