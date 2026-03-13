-- database: ../database/04-select-condicionais.sqlite

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

SELECT "nome" FROM "cursos"; -- mostra somente os nomes dentro da tabela cursos

SELECT "id", "nome" FROM "cursos"; -- mostra somente os ids e nomes dentro da tabela cursos

SELECT * FROM "cursos" LIMIT 2; -- Limita o número de linhas retornadas pela consulta.

