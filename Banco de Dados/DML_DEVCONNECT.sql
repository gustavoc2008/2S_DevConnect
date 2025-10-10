--DML
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfl_url)
VALUES
('Diogo Aldrovandi', 'aldrovandi_gsts', 'mayraminhamulher@gmail.com', 'Sla52343203', 'www.fotoperfildevgram/diogo'),
('Amanda', 'deft.s2', 'carolminhabest@gmail.com', 'mandinha81028', 'www.fotoperfildevgram/amanda');

INSERT INTO tb_publi(descricao, imagem_url, data_publi)
VALUES
('dia abençoado na quebrada', 'www.fotodafaveladequeque/quebrada', '2024/10/03'),
('dia abençoado na praia', 'www.fotodafaveladequeque/praia', '2026/10/03');

INSERT INTO tb_curtidas(ID_Usuario, ID_Publi)
VALUES(1, 1);

INSERT INTO tb_comentarios(texto, data_coment, ID_Usuario, ID_Publi)
VALUES('slk, favela venceu msm irm, so progresso', '2025/10/04', 14, 1);

INSERT INTO tb_seguidor(ID_UsuarioSeguidor, ID_UsuarioSeguido)
VALUES(14,1);