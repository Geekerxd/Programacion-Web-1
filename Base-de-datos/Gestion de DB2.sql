use db_proyect_pw1_02

select * from anonimo
select * from comentario
select * from comentarioeditor
select * from imagen;
select * from noticia; 
select * from noticiamarcada
select * from notificacion
select * from usuario
select * from video
select * from categoria
select * from tipousuario


CALL `db_proyect_pw1_02`.`sp_GetCategories`();
CALL `db_proyect_pw1_02`.`sp_GetCategoriesID`(11);
CALL `db_proyect_pw1_02`.`sp_getNoticia`();
delete from noticia where idnoticia =2
CALL `db_proyect_pw1_02`.`sp_insertaNoticia`("el titulo","contenido","la descipcion", 0, 1,14);
CALL `db_proyect_pw1_02`.`sp_insertausuarios`("alberto", "perez","alberto@alberto","alberto123", "alberto147",12345678,5);
CALL `db_proyect_pw1_02`.`sp_LogInUser`("alberto@alberto", "alberto123");
CALL `db_proyect_pw1_02`.`sp_LogInUserByUsername`("alberto147", "alberto123");
CALL `db_proyect_pw1_02`.`sp_insertaImagen`("este el el path", 8);


CALL `db_proyect_pw1_02`.`sp_insertaNoticia`("Nuevo noticia","contenidode noticia","la descipcion de noticia", 1, 7,9);

INSERT INTO `db_proyect_pw1_02`.`usuario`
(`nombre`,`apellidos`,`email`,`password`,`nombreUsu`,`phoneNum`,`fktipousuario`)
VALUES
("alberto", "perez","alberto@alberto","alberto123","alberto147",12345678,2);


------------------------------------------------------------------------
SELECT  `idnoticia`
FROM  noticia
where titulo="Nuevo noticia"AND  fecha="2020-11-29 00:00:00" AND idUsuarioFk="7" AND idCategoriaFk="9"
;
CALL  sp_getIDNewBythings("Nuevo noticia","7","9");
SELECT `noticia`.`idnoticia`,
    `noticia`.`titulo`,
    `noticia`.`visitas`,
    `noticia`.`fecha`,
    `noticia`.`contenido`,
    `noticia`.`estado`,
    `noticia`.`likes`,
    `noticia`.`dislikes`,
    `noticia`.`idUsuarioFk`,
    `noticia`.`idCategoriaFk`,
    `noticia`.`descripcion`,
    `noticia`.`Thumbnail`
FROM `db_proyect_pw1_02`.`noticia`
where idnoticia =42;




/*

    `noticia`.`titulo`,
    `noticia`.`visitas`,
    `noticia`.`fecha`,
    `noticia`.`contenido`,
    `noticia`.`estado`,
    `noticia`.`likes`,
    `noticia`.`dislikes`,
    `noticia`.`idUsuarioFk`,
    `noticia`.`idCategoriaFk`,
    `noticia`.`descripcion`*/
------------------------------------------------------------------------



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



select 
FROM noticia
and imagen
where idUsuarioFk = 



select a.nombre, a.apellidos
FROM usuario a
JOIN noticia b
where a.idusuario= b.idUsuarioFk
CALL sp_traeNombresUsuarioNoticia( 7);



-- b.idUsuarioFk

select * from usuario



-- un select que traiga todas las imagenes de una noticia con idnoticia


select idimagen,`data`,idnoticiafk
from imagen
where idnoticiafk=48

CALL sp_obtieneImagenesDeNoticia(48);


-- ------------------------- 

INSERT INTO comentario
(`estado`,`contenido`,`nombreUsu`,`fecha`,`likes`,`dislikes`,`idusuariofk`,`idanonimo`,`idnoticiafk`)
VALUES
(0,"este es otro comentario","Pedro",NOW() ,20,2,7,-1,49);

select * from comentario
select * from usuario
select NOW()


