 --DDL
CREATE DATABASE db_DevConnect;


USE db_DevConnect;


CREATE TABLE tb_usuario(
id				INT IDENTITY(1, 1)		PRIMARY KEY,
	nome_completo	NVARCHAR(150)				  NOT NULL,
	nome_usuario    NVARCHAR(50)    UNIQUE        NOT NULL,
	email			NVARCHAR(150)	UNIQUE		  NOT NULL,
	senha			NVARCHAR(50)			      NOT NULL,
	foto_perfil_url NVARCHAR(100)                 NULL,
);

SELECT * FROM tb_usuario;


CREATE TABLE tb_publicacao(
id				INT IDENTITY(1, 1)		PRIMARY KEY, 
	descricao		NVARCHAR(100)				  NULL,
	imagem_url      NVARCHAR(100)                 NOT NULL,
	data_publicaco  DATE						  NOT NULL,
	id_usuario		INT							  NOT NULL,

	FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao;


CREATE TABLE tb_curtida(
id				INT IDENTITY(1,1)		PRIMARY KEY,
	id_usuario		  INT						  NOT NULL,
	id_publicacao     INT                         NOT NULL,

	FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_curtida;


CREATE TABLE tb_comentario(
id					INT IDENTITY(1,1)		PRIMARY KEY,
	texto			NVARCHAR(255)		    NULL,
	data_comentario DATE				    NOT NULL,
	id_usuario		  INT				    NOT NULL,
	id_publicacao     INT                   NOT NULL,

    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_comentario;


CREATE TABLE tb_seguidores(
    id_usuario_seguindo     INT				NOT NULL,
    id_usuario_seguidor     INT				NOT NULL,

    PRIMARY KEY(id_usuario_seguindo,id_usuario_seguidor  )
);

SELECT * FROM tb_seguidores;