--DQL

USE db_DevConnect;

SELECT COUNT ( email )
AS qtd_total_usuarios
FROM tb_usuario;

SELECT COUNT ( id_usuario ) 
AS qtd_curtidas
FROM tb_curtidas;

SELECT id_usuario, data_publi
AS comentario_mais_novo
FROM tb_comentarios
WHERE data_publi = ( SELECT MAX ( data_publi ) FROM tb_comentarios );

SELECT 
    seguidor.nome_usuario AS 'Quem Segue',
    seguido.nome_usuario AS 'Quem foi Seguido'
FROM tb_seguir_seguido SGD
INNER JOIN tb_usuario seguidor ON SGD.id_seguir = seguidor.id
INNER JOIN tb_usuario seguido ON SGD.id_seguido = seguido.id;

SELECT 
    seguido.nome_usuario AS 'Usuario',
FROM tb_seguir_seguido SGD
INNER JOIN tb_usuario seguido ON SGD.id_seguido = seguido.id
GROUP BY seguido.nome_usuario;


SELECT 
    PUBLI.descricao,
    USR.nome_usuario
INNER JOIN tb_usuario USR ON PUBLI.id_usuario = USR.id;

SELECT 
    PUBLI.descricao AS 'Publicacao',
INNER JOIN tb_publicacao PUBLI ON LIKES.id_publicacao = PUBLI.id
GROUP BY PUBLI.descricao;

SELECT 
    USR.nome_usuario AS 'Nao publicaram'
LEFT JOIN tb_publicacao PUBLI ON USR.id = PUBLI.id_usuario
WHERE PUBLI.id IS NULL;

SELECT 
    USR.nome_usuario AS 'Nao curtiram'
FROM tb_usuario USR
USR.id = LIKES.id_usuario
WHERE LIKES.id IS NULL;
