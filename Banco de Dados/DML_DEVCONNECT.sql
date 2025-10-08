--DML
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES('Gustavo Costa', 'zs.costa_', 'kleberianoAB134@gmail.com', 'JoJoToddynho12345', 'www.fotoperfildevgram/gustavo');

INSERT INTO tb_publi(descricao, imagem_url, data_publi)
VALUES('dia abençoado na favela', 'www.fotodafaveladequeque/heliopolis', '2025/10/03');

INSERT INTO tb_curtidas(ID_Usuario, ID_Publi)
VALUES(1, 1);

INSERT INTO tb_comentarios(texto, data_coment, ID_Usuario, ID_Publi)
VALUES('slk, favela venceu msm irm, so progresso', '2025/10/04', 1, 1);

INSERT INTO tb_seguidor(ID_UsuarioSeguidor, ID_UsuarioSeguido)
VALUES(1, 1);