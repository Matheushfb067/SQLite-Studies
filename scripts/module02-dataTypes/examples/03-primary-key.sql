-- database: ../../../database/module02-dataTypes/examples/03-primary-key.sqlite

CREATE TABLE "cursos" (
    "id" INTEGER PRIMARY KEY,
    "nome" TEXT,
    "preco" INTEGER
)STRICT;

-- como id agora é uma chave primaria, nós não precisamos inseri-lo.
-- a propria linguagem auto incrementa a inserção dos elementos automaticamente.
-- caso um novo elemento seja inserido com o mesmo id já utilizado - retorna um erro.

INSERT INTO 
    "cursos" ("nome", "preco")
VALUES  
    ('HTML', 1000);

-- quando atribuimos um valor de ID o SQLite passa a incremetar a partir dele
/* Exemplo: se o ID for 20, o proximo ID será 21, mesmo que o anterior ao 20 seja 
3 e a tabela contenha apenas cinco elementos*/

CREATE TABLE "aulas" (
    "curso_id" INTEGER,
    "nome" TEXT
)STRICT;

INSERT INTO 
    "aulas" ("curso_id", "nome")
VALUES  
    (1, 'fundamentos do HTML');

SELECT rowid, * FROM aulas; -- você não vê a rowid, mas ela existe

SELECT rowid, * FROM cursos; 
-- o row id será igual o ID uma vez que o atributo é uma chave primaria
-- isso só vale para o tipo INTEGER! quando usamos o INT essa atribuição não funciona