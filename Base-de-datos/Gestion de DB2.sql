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

use `db_proyect_pw1_02`
-- ------------------------- 

INSERT INTO comentario
(`estado`,`contenido`,`nombreUsu`,`fecha`,`likes`,`dislikes`,`idnoticiafk`)
VALUES
(0,"este es otro comentario","Pedro",NOW() ,20,2,49);

select * from comentario order by fecha desc;
select * from noticia
select * from usuario
select NOW()

CALL sp_creaComentario(1,"GOT", 7,48);



CALL `db_proyect_pw1_02`.`sp_InsertaFotoUsuario`(1, "una imagen...");

CALL sp_getCommentariesByID(48);

CALL sp_GetUser(7);
select * from comentario order by fecha desc;
CALL  sp_DeleteCommentary(1);


select * from usuario;
SELECT `tipousuario`.`idtipousuario`,
    `tipousuario`.`tipo`
FROM `db_proyect_pw1_02`.`tipousuario`;




UPDATE usuario SET
`fktipousuario` = 1 WHERE idusuario=1;

UPDATE usuario SET
`fktipousuario` = 3 WHERE idusuario=6;

UPDATE usuario SET
`fktipousuario` = 4 WHERE idusuario=7;

SELECT * 
FROM `db_proyect_pw1_02`.`usuario`;


SELECT `tipousuario`.`idtipousuario`,
    `tipousuario`.`tipo`
FROM `db_proyect_pw1_02`.`tipousuario`;




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
where idUsuarioFk=7
order by fecha desc
;

CALL `db_proyect_pw1_02`.`sp_getNewsByUserId`(7);



"% Palabra %"
--   ------------------------------estado:
select * from noticia

UPDATE `db_proyect_pw1_02`.`noticia`
SET
 
`estado` = 1 ,fecha= NOW()
WHERE `idnoticia` = 53;

CALL `db_proyect_pw1_02`.`sp_AceptaNoticia`(54);
d

CALL `db_proyect_pw1_02`.`sp_getNewsByUserIdEditor`();

-- --------------------rechaza

select * from noticia
UPDATE `db_proyect_pw1_02`.`noticia`
SET
 
`estado` = -1 
WHERE `idnoticia` = 50;


CALL `db_proyect_pw1_02`.`sp_rechazaNoticia`(49);

-- ------------------ fecha pulicacion
UPDATE `db_proyect_pw1_02`.`noticia`
SET
 
`estado` = 1 
WHERE `idnoticia` = 53;


-- ----------------------------------likes:



INSERT INTO `db_proyect_pw1_02`.`noticia`
(`likes`)
VALUES
( 1)
where idnoticia= ;




-- -------------------------------------------------- buscador:

CREATE DEFINER=root@localhost PROCEDURE sp_busqueda(
IN Pdata varchar(200)
)
BEGIN
SELECT * FROM noticia WHERE titulo LIKE(concat('%',Pdata,'%'));
END




CALL db_proyect_pw1_02.sp_busqueda('the');


CALL `db_proyect_pw1_02`.`sp_getNewsByUserIdEditor_Rechazadas`(1);


select * from usuario; select * from tipousuario





UPDATE `db_proyect_pw1_02`.`usuario`
SET 
`fktipousuario` = 5
WHERE `idusuario` = 15;


-- ----------------------------------- comentarios editor

select * from usuario; 
SELECT * FROM noticia
CALL  sp_creaComentarioEditor("Este es el contenido",1,43);

SELECT `comentarioeditor`.`idcomentarioeditor`,
    `comentarioeditor`.`asunto`,
    `comentarioeditor`.`contenido`,
    `comentarioeditor`.`fecha`,
    `comentarioeditor`.`idnoticiafk`,
    `comentarioeditor`.`idusuariofk`
FROM `db_proyect_pw1_02`.`comentarioeditor`;

