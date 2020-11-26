use db_proyect_pw1_02




select * from anonimo
select * from comentario
select * from comentarioeditor
select * from imagen
select * from noticia 
select * from noticiamarcada
select * from notificacion
select * from usuario
select * from video
select * from categoria
select * from tipousuario

CALL `db_proyect_pw1_02`.`sp_GetCategories`();
CALL `db_proyect_pw1_02`.`sp_GetCategoriesID`(11);
CALL `db_proyect_pw1_02`.`sp_getNoticia`();
CALL `db_proyect_pw1_02`.`sp_insertaNoticia`("el titulo","contenido","la descipcion", 0, 1,14);
CALL `db_proyect_pw1_02`.`sp_insertausuarios`("alberto", "perez","alberto@alberto","alberto123", "alberto147",12345678,2);
CALL `db_proyect_pw1_02`.`sp_LogInUser`("alberto@alberto", "alberto123");
CALL `db_proyect_pw1_02`.`sp_LogInUserByUsername`("alberto147", "alberto123");




INSERT INTO `db_proyect_pw1_02`.`usuario`
(`nombre`,`apellidos`,`email`,`password`,`nombreUsu`,`phoneNum`,`fktipousuario`)
VALUES
("alberto", "perez","alberto@alberto","alberto123","alberto147",12345678,2);








INSERT INTO categoria(`contenido`) VALUES( "Actores");
INSERT INTO categoria(`contenido`) VALUES( "peliculas");
INSERT INTO categoria(`contenido`) VALUES( "Animación");
INSERT INTO categoria(`contenido`) VALUES( "Rumores");
INSERT INTO categoria(`contenido`) VALUES( "Productoras");
INSERT INTO categoria(`contenido`) VALUES( "Curiosidades ");
INSERT INTO categoria(`contenido`) VALUES( "Fans");
INSERT INTO categoria(`contenido`) VALUES( "Controversia");



INSERT INTO tipousuario (`tipo`)VALUES("Administrador");
INSERT INTO tipousuario (`tipo`)VALUES("Registrado");
INSERT INTO tipousuario (`tipo`)VALUES("Moderador");
INSERT INTO tipousuario (`tipo`)VALUES("Editor");
INSERT INTO tipousuario (`tipo`)VALUES("CreadordeContenido");
