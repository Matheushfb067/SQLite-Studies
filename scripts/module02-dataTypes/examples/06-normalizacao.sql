-- database: ../../../database/module02-dataTypes/examples/06-normalizacao.sqlite

-- FN1:

-- não normalizado
CREATE TABLE "produtos" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

CREATE TABLE "pedidos" (
  "id" INTEGER PRIMARY KEY,
  "produtos" TEXT,
  "criado" TEXT DEFAULT CURRENT_TIMESTAMP
) STRICT;

INSERT INTO "pedidos" ("produtos") VALUES ('[1,2,3]');

-- normalizado (1FN)
CREATE TABLE "produtos" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

CREATE TABLE "pedidos" (
  "id" INTEGER PRIMARY KEY,
  "criado" TEXT DEFAULT CURRENT_TIMESTAMP
) STRICT;

CREATE TABLE "pedido_produtos" (
  "pedido_id" INTEGER,
  "produto_id" INTEGER,
  FOREIGN KEY ("pedido_id") REFERENCES "pedidos" ("id"),
  FOREIGN KEY ("produto_id") REFERENCES "produtos" ("id")
) STRICT;

INSERT INTO "produtos" ("nome") VALUES ('Smartphone');

INSERT INTO "pedidos" ("id") VALUES (1);

INSERT INTO "pedido_produtos" ("pedido_id", "produto_id") VALUES (1, 1), (1, 2), (1, 3);

-- ------------------------------------------------------------------------------------

-- FN2: 

CREATE TABLE "usuarios" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

CREATE TABLE "cursos" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

-- não normalizado (2FN)
CREATE TABLE "certificados" (
  "usuario_id" INTEGER,
  "curso_id" INTEGER,
  "curso_nome" TEXT,
  FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id"),
  FOREIGN KEY ("curso_id") REFERENCES "cursos" ("id"),
  PRIMARY KEY ("usuario_id", "curso_id")
) STRICT;


-- normalizado (2FN)
CREATE TABLE "certificados" (
  "usuario_id" INTEGER,
  "curso_id" INTEGER,
  FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id"),
  FOREIGN KEY ("curso_id") REFERENCES "cursos" ("id"),
  PRIMARY KEY ("usuario_id", "curso_id")
) STRICT;

-- ------------------------------------------------------------------------------------

-- 3FN:

