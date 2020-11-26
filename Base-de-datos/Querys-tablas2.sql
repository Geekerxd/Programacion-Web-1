use db_proyect_pw1_02
select * from usuario

----------------------------------------------------------------------
CREATE TABLE `db_proyect_pw1_02`.`usuario` (
`idusuario` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(45) NULL,
`apellidos` VARCHAR(45) NULL,
`email` VARCHAR(45) NOT NULL,
`password` VARCHAR(45) NOT NULL,
`nombreUsu` VARCHAR(45) NOT NULL ,
`picture` BLOB NULL,
`phoneNum` int NULL,
`tipoUsu` VARCHAR(45) NOT NULL DEFAULT 'registrado',
PRIMARY KEY (`idusuario`),
UNIQUE INDEX `idusuario_UNIQUE` (`idusuario` ASC) VISIBLE,
UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
UNIQUE INDEX `nombreUsu_UNIQUE` (`nombreUsu` ASC) VISIBLE);
----------------------------------------------------------------------
 
CREATE TABLE `db_proyect_pw1_02`.`anonimo` (
  `idanonimo` INT NOT NULL AUTO_INCREMENT,
  `nombreUsu` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idanonimo`));
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`noticia` (
  `idnoticia` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(50) NOT NULL,
  `visitas` INT NULL,
  `fecha` DATETIME NULL,
  `contenido` VARCHAR(1500) NOT NULL,
  `estado` TINYINT NULL,
  `likes` INT NULL,
  `dislikes` INT NULL,
  `ideditorfk` INT NULL,
  `idcreadorfk` INT NULL,
  `idadminfk` INT NULL,
  PRIMARY KEY (`idnoticia`),
  INDEX `ideditorfk_idx` (`ideditorfk` ASC) VISIBLE,
  INDEX `idcreadorfk_idx` (`idcreadorfk` ASC) VISIBLE,
  INDEX `idadminfk_idx` (`idadminfk` ASC) VISIBLE,
  CONSTRAINT `ideditorfk`
    FOREIGN KEY (`ideditorfk`)
    REFERENCES `db_proyect_pw1`.`editor` (`ideditor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcreadorfk`
    FOREIGN KEY (`idcreadorfk`)
    REFERENCES `db_proyect_pw1`.`creador` (`idcreador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idadminfk`
    FOREIGN KEY (`idadminfk`)
    REFERENCES `db_proyect_pw1`.`admin` (`idadmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`imagen` (
  `idimagen` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(512) NULL,
  `idnoticiafk` INT NULL,
  PRIMARY KEY (`idimagen`),
  INDEX `idnoticiafk_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idnoticiafk`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`video` (
  `idvideo` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(512) NULL,
  `idnoticiafk` INT NULL,
  PRIMARY KEY (`idvideo`),
  INDEX `idnoticiafk2_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idnoticiafk2`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`comentarioeditor` (
  `idcomentarioeditor` INT NOT NULL AUTO_INCREMENT,
  `asunto` VARCHAR(45) NULL,
  `comentario` VARCHAR(280) NULL,
  `fecha` DATETIME NULL,
  `idnoticiafk` INT NOT NULL,
  PRIMARY KEY (`idcomentarioeditor`),
  INDEX `idnoticiafk3_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idnoticiafk3`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`comentario` (
  `idcomentario` INT NOT NULL AUTO_INCREMENT,
  `estado` TINYINT NULL,
  `contenido` VARCHAR(280) NOT NULL,
  `nombreUsu` VARCHAR(45) NOT NULL,
  `fecha` DATETIME NULL,
  `likes` INT NULL,
  `dislikes` INT NULL,
  `idadminfk` INT NULL,
  `idmoderadorfk` INT NULL,
  `idusuariofk` INT NULL,
  `idanonimofk` INT NULL,
  `idnoticiafk` INT NULL,
  PRIMARY KEY (`idcomentario`),
  INDEX `idadminfk_idx` (`idadminfk` ASC) VISIBLE,
  INDEX `idmoderadorfk2_idx` (`idmoderadorfk` ASC) VISIBLE,
  INDEX `idusuariofk6_idx` (`idusuariofk` ASC) VISIBLE,
  INDEX `idanonimofk2_idx` (`idanonimofk` ASC) VISIBLE,
  INDEX `idnoticiafk4_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idadminfk2`
    FOREIGN KEY (`idadminfk`)
    REFERENCES `db_proyect_pw1`.`admin` (`idadmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idmoderadorfk2`
    FOREIGN KEY (`idmoderadorfk`)
    REFERENCES `db_proyect_pw1`.`moderador` (`idmoderador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idusuariofk6`
    FOREIGN KEY (`idusuariofk`)
    REFERENCES `db_proyect_pw1`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idanonimofk2`
    FOREIGN KEY (`idanonimofk`)
    REFERENCES `db_proyect_pw1`.`anonimo` (`idanonimo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idnoticiafk4`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`noticiamarcada` (
  `idnoticiamarcada` INT NOT NULL AUTO_INCREMENT,
  `idregistradofk` INT NOT NULL,
  `idnoticiafk` INT NOT NULL,
  PRIMARY KEY (`idnoticiamarcada`),
  INDEX `idregistradofk_idx` (`idregistradofk` ASC) VISIBLE,
  INDEX `idnoticiafk5_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idregistradofk`
    FOREIGN KEY (`idregistradofk`)
    REFERENCES `db_proyect_pw1`.`registrado` (`idregistrado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idnoticiafk5`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`notificacion` (
  `idnotificacion` INT NOT NULL AUTO_INCREMENT,
  `contenido` VARCHAR(280) NULL,
  `idusuariofk` INT NOT NULL,
  `idnoticiafk` INT NULL,
  PRIMARY KEY (`idnotificacion`),
  INDEX `idusuariofk7_idx` (`idusuariofk` ASC) VISIBLE,
  INDEX `idnoticiafk6_idx` (`idnoticiafk` ASC) VISIBLE,
  CONSTRAINT `idusuariofk7`
    FOREIGN KEY (`idusuariofk`)
    REFERENCES `db_proyect_pw1`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idnoticiafk6`
    FOREIGN KEY (`idnoticiafk`)
    REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
----------------------------------------------------------------------
-- alters
----------------------------------------------------------------------

CREATE TABLE `db_proyect_pw1_02`.`tipousuario` (
`idtipousuario` INT NOT NULL,
`tipo` VARCHAR(45) NULL,
PRIMARY KEY (`idtipousuario`));

ALTER TABLE `db_proyect_pw1_02`.`usuario`
CHANGE COLUMN `tipoUsu` `fktipousuario` INT NULL ,
ADD INDEX `fktipousuario_idx` (`fktipousuario` ASC) VISIBLE;
;
ALTER TABLE `db_proyect_pw1_02`.`usuario`
ADD CONSTRAINT `fktipousuario`
FOREIGN KEY (`fktipousuario`)
REFERENCES `db_proyect_pw1`.`tipousuario` (`idtipousuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE `db_proyect_pw1_02`.`comentario`
DROP FOREIGN KEY `idmoderadorfk2`,
DROP FOREIGN KEY `idadminfk2`;
ALTER TABLE `db_proyect_pw1_02`.`comentario`
DROP COLUMN `idmoderadorfk`,
DROP COLUMN `idadminfk`,
DROP INDEX `idmoderadorfk2_idx` ,
DROP INDEX `idadminfk_idx` ;
;
----------------------------------------------------
ALTER TABLE `db_proyect_pw1_02`.`noticia`
DROP FOREIGN KEY `ideditorfk`,
DROP FOREIGN KEY `idcreadorfk`,
DROP FOREIGN KEY `idadminfk`;
ALTER TABLE `db_proyect_pw1_02`.`noticia`
DROP COLUMN `idadminfk`,
DROP COLUMN `idcreadorfk`,
DROP COLUMN `ideditorfk`,
ADD COLUMN `idusuariofk` INT NULL AFTER `idcategoriafk`,
ADD INDEX `idusuariofkc_idx` (`idusuariofk` ASC) VISIBLE,
DROP INDEX `idadminfk_idx` ,
DROP INDEX `idcreadorfk_idx` ,
DROP INDEX `ideditorfk_idx` ;

ALTER TABLE `db_proyect_pw1_02`.`noticia`
ADD CONSTRAINT `idusuariofkc`
FOREIGN KEY (`idusuariofk`)
REFERENCES `db_proyect_pw1_02`.`usuario` (`idusuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
------------------------------------------------------

ALTER TABLE `db_proyect_pw1_02`.`noticiamarcada`
DROP FOREIGN KEY `idregistradofk`;
ALTER TABLE `db_proyect_pw1_02`.`noticiamarcada`
CHANGE COLUMN `idregistradofk` `idusuariofk` INT NOT NULL ,
ADD INDEX `idusuariofknm_idx` (`idusuariofk` ASC) VISIBLE,
DROP INDEX `idregistradofk_idx` ;
;
ALTER TABLE `db_proyect_pw1_02`.`noticiamarcada`
ADD CONSTRAINT `idusuariofknm`
FOREIGN KEY (`idusuariofk`)
REFERENCES `db_proyect_pw1`.`usuario` (`idusuario`);

---------------

ALTER TABLE `db_proyect_pw1_02`.`noticia`
ADD COLUMN `idusuariofk` INT NULL AFTER `idcategoriafk`,
ADD INDEX `idusuariofkc_idx` (`idusuariofk` ASC) VISIBLE;
ALTER TABLE `db_proyect_pw1_02`.`noticia`
ADD CONSTRAINT `idusuariofkc`
FOREIGN KEY (`idusuariofk`)
REFERENCES `db_proyect_pw1_02`.`usuario` (`idusuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

--


CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

