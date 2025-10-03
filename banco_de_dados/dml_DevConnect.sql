--DML
USE db_DevConnect;


INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Rawany', 'ig.rawany', 'rawany@gmail.com', '1234Ra', 'www.perfilraw/devconnect');

SELECT * FROM tb_usuario;


INSERT INTO tb_publicacao(descricao, imagem_url, data_publicaco, id_usuario)
VALUES
('melhor viajem de todas', 'www/imgfotoram.com', '2025/06/01', 1);

SELECT * FROM tb_publicacao;


INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(1, 1);

SELECT * FROM tb_curtida;


INSERT INTO tb_comentario(texto, data_comentario, id_usuario, id_publicacao)
VALUES
('rawany a mais linda de todas','2025/05/30', 1, 1);

SELECT * FROM tb_comentario;


INSERT INTO tb_seguidores(id_usuario_seguindo, id_usuario_seguidor)
VALUES
( 1, 1);

SELECT * FROM tb_seguidores;
