--DQL/ SOMENTE O SELECT FROM
USE db_devconnect;

SELECT U.nome_usuario
FROM tb_usuario U
LEFT JOIN tb_comentarios C ON U.ID_Usuario = C.ID_Usuario
WHERE C.ID_Comentarios IS NULL;

SELECT U.nome_usuario
FROM tb_usuario U
LEFT JOIN tb_curtidas CU ON U.ID_Usuario = CU.ID_Usuario
WHERE CU.ID_Curtidas IS NULL;



SELECT 
	P.descricao			AS 'Descrição',
	P.imagem_url		AS 'Foto da publicação',
	data_publi			AS 'Data da publicacao',
	U.nome_usuario		AS 'Nome de Usuário'
FROM tb_publi P
JOIN tb_usuario U		ON P.ID_Publi IN (
		SELECT C.ID_Publi FROM	tb_comentarios C WHERE C.ID_Usuario = U.ID_Usuario
);

SELECT 
	P.descricao,
	COUNT(CU.ID_Curtidas) AS 'Quantidade de Curtidas'
FROM tb_publi P
LEFT JOIN tb_curtidas CU ON P.ID_Publi = CU.ID_Publi
GROUP BY P.descricao;



SELECT * FROM tb_curtidas;



SELECT
	U.nome_usuario		AS 'Nome de Usuario',
	C.texto				AS 'Comentario',
	P.descricao			AS 'Descricao da Publicacao'
FROM tb_comentarios C
JOIN tb_usuario U		ON C.ID_Usuario = U.ID_Usuario
JOIN tb_publi P			ON C.ID_Publi = P.ID_Publi;




SELECT 
	U.nome_usuario		AS 'Seguidor',
	U2.nome_usuario		AS 'Seguido'
FROM tb_seguidor SEG
JOIN tb_usuario U		ON SEG.ID_UsuarioSeguidor = U.ID_Usuario
JOIN tb_usuario U2		ON SEG.ID_UsuarioSeguido = U2.ID_Usuario; 

--Usuario Gustavo
DELETE FROM tb_usuario
WHERE email = 'kleberiano134@gmail.com';

DELETE FROM tb_usuario
WHERE nome_completo = 'Gustavo';

DELETE FROM tb_usuario
WHERE nome_usuario = 'zs.costa';

DELETE FROM tb_usuario 
WHERE senha = 'JoJoToddynho123';

DELETE FROM tb_usuario 
WHERE foto_perfl_url = 'www.fotoperfildevgram/gusta';





DELETE FROM tb_usuario
WHERE email = 'kleberianoAB134@gmail.com';

DELETE FROM tb_usuario
WHERE nome_completo = 'Gustavo Costa';

DELETE FROM tb_usuario
WHERE nome_usuario = 'zs.costa_';

DELETE FROM tb_usuario 
WHERE senha = 'JoJoToddynho12345';

DELETE FROM tb_usuario 
WHERE foto_perfl_url = 'www.fotoperfildevgram/gustavo';



--Usuario Diogo
DELETE FROM tb_usuario
WHERE email = 'mayraminhamulher@gmail.com';

DELETE FROM tb_usuario
WHERE nome_completo = 'Diogo Aldrovandi';

DELETE FROM tb_usuario
WHERE nome_usuario = 'aldrovandi_gsts';

DELETE FROM tb_usuario 
WHERE senha = 'Sla52343203';

DELETE FROM tb_usuario 
WHERE foto_perfl_url = 'www.fotoperfildevgram/diogo';



--Usuario Amanda 
DELETE FROM tb_usuario
WHERE email = 'carolminhabest@gmail.com';

DELETE FROM tb_usuario
WHERE nome_completo = 'Amanda';

DELETE FROM tb_usuario
WHERE nome_usuario = 'deft.s2';

DELETE FROM tb_usuario 
WHERE senha = 'mandinha81028';

DELETE FROM tb_usuario 
WHERE foto_perfl_url = 'www.fotoperfildevgram/amanda';



--tb_seguidor
DELETE FROM tb_seguidor
WHERE ID_UsuarioSeguidor = '1';

DELETE FROM tb_seguidor
WHERE ID_UsuarioSeguido = '1';

DELETE FROM tb_seguidor
WHERE ID_UsuarioSeguidor = '1';

DELETE FROM tb_seguidor
WHERE ID_UsuarioSeguido = '14';



--Comentario
DELETE FROM tb_comentarios
WHERE ID_Usuario = '2';

DELETE FROM tb_comentarios
WHERE ID_Publi = '1';

DELETE FROM tb_comentarios
WHERE data_coment = '2025/10/04';

DELETE FROM tb_comentarios
WHERE texto = 'slk, favela venceu msm irm, so progresso';







