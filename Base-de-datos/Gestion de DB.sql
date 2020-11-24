use db_proyect_pw1

-- sign in / login user
CALL sp_insertausuarios("Ricardo", "aguilar gallegos", "rico@rico.com", "rico123","ricoG3000",12345678);
select * from usuario
CALL sp_LogInUser("rico@rico.com","rico123");
CALL sp_LogInUserByUsername("bobg3000","bob123");

-- Categorias
sp_LogInUser


select * from categoria
-------------- por orden alfabetico:
CALL sp_GetCategories();

------------------------------------
CREATE TABLE `noticia` (
  `idnoticia` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `visitas` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `contenido` varchar(1500) NOT NULL,
  `estado` tinyint DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `dislikes` int DEFAULT NULL,
  `ideditorfk` int DEFAULT NULL,
  `idcreadorfk` int DEFAULT NULL,
  `idadminfk` int DEFAULT NULL,
  `idcategoriafk` int DEFAULT NULL,
  PRIMARY KEY (`idnoticia`),
  KEY `ideditorfk_idx` (`ideditorfk`),
  KEY `idcreadorfk_idx` (`idcreadorfk`),
  KEY `idadminfk_idx` (`idadminfk`),
  KEY `idcategoriafk_idx` (`idcategoriafk`),
  CONSTRAINT `idadminfk` FOREIGN KEY (`idadminfk`) REFERENCES `admin` (`idadmin`),
  CONSTRAINT `idcategoriafk` FOREIGN KEY (`idcategoriafk`) REFERENCES `categoria` (`idcategoria`),
  CONSTRAINT `idcreadorfk` FOREIGN KEY (`idcreadorfk`) REFERENCES `creador` (`idcreador`),
  CONSTRAINT `ideditorfk` FOREIGN KEY (`ideditorfk`) REFERENCES `editor` (`ideditor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




INSERT INTO categoria(`contenido`) VALUES( "peliculas");
INSERT INTO categoria(`contenido`) VALUES( "Animación");
INSERT INTO categoria(`contenido`) VALUES( "Rumores");
INSERT INTO categoria(`contenido`) VALUES( "Productoras");
INSERT INTO categoria(`contenido`) VALUES( "Curiosidades ");
INSERT INTO categoria(`contenido`) VALUES( "Fans");
INSERT INTO categoria(`contenido`) VALUES( "Controversia");
--------------------------------------------------------
------------------Gestion de noticias-------------------
CALL sp_insertaNoticia("El nuevo titulo", CURDATE() ,"Este es el contenido y puedo guardar musho texto","descipcion Corta",1 ,1, null, null, 1);
CALL sp_getNoticia();

--------------------------------------------------------
select * from noticia

select * from usuario
select * from editor
select * from creador

INSERT INTO `db_proyect_pw1`.`editor`
(
`idusuariofk`)
VALUES
( 4);









