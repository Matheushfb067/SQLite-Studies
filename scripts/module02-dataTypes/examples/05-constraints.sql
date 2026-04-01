-- database: ../../../database/module02-dataTypes/examples/05-constraints.sqlite

CREATE TABLE "usuarios" (
    "id" INTEGER PRIMARY KEY,
    "email" TEXT NOT NULL UNIQUE COLLATE NOCASE, -- permite inserir tanto o email minusculo quanto maiusculo!
    "nome" TEXT NOT NULL,
    "tipo" TEXT NOT NULL DEFAULT 'usuario' CHECK ("tipo" IN ("usuario", "admin")),
    "vitalicio" INTEGER DEFAULT 0 CHECK ("vitalicio" IN (0, 1)),
    "criado" TEXT DEFAULT CURRENT_TIMESTAMP --define por padrão informações para o usuario!
)STRICT;

DROP TABLE "usuarios";

CREATE TABLE "certificados" (
    "id" INTEGER PRIMARY KEY,
    "usuario_id" INTEGER NOT NULL,
    "curso_id" INTEGER NOT NULL,

    UNIQUE("usuario_id", "curso_id") -- só permite tem um unico curso_id e usuario_id
)STRICT;

DROP TABLE certificados;

INSERT INTO 
    "usuarios" ("email", "nome", "tipo") 
VALUES 
    ('anakin@skywalker.com', 'Anakin', 'admin');
-- se eu tentar inserir novamente, não funciona por conta de o email ser unique!

INSERT INTO "certificados" ("usuario_id", "curso_id") VALUES (1, 1);