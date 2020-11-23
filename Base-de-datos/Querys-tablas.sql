use db_proyect_pw1


CALL sp_insertausuarios("Ricardo", "aguilar gallegos", "rico@rico.com", "rico123","ricoG3000",12345678);
select * from usuario

CALL sp_LogInUser("rico@rico.com","rico123");
CALL sp_LogInUserByUsername("bobg3000","bob123");




/*
 `nombre` VARCHAR(45) NULL,
  `apellidos` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `nombreUsu` VARCHAR(45) NULL,
   `phoneNum` int NULL,

*/


CREATE TABLE `db_proyect_pw1`.`usuario` (
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
  
  -- SP:
  CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertausuarios`(
IN `pNombre` VARCHAR(45),
IN `pApellidos` VARCHAR(45),
IN `pEmail` VARCHAR(45),
IN `pPassword` VARCHAR(45),
IN `pNombreUsu` VARCHAR(45) ,
IN `pPhoneNum` int
)
BEGIN
INSERT INTO `usuario`
(`nombre`,`apellidos`,`email`,`password`,`nombreUsu`,`phoneNum`)
VALUES
(pNombre,pApellidos,pEmail,pPassword,pNombreUsu,pPhoneNum);

END

-- log in sp ------------------------------
  CREATE PROCEDURE `sp_LogInUser` (
IN `pCorreo` varchar(45),
IN `pContrasena` varchar(45)
)
BEGIN
select idusuario,email,nombre,apellidos,tipoUsu,nombreUsu
from usuario
where email = pCorreo
and password = pContrasena;
END
  
  