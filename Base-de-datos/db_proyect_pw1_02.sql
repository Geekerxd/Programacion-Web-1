-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db_proyect_pw1_02
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anonimo`
--

DROP TABLE IF EXISTS `anonimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonimo` (
  `idanonimo` int NOT NULL AUTO_INCREMENT,
  `nombreUsu` varchar(45) NOT NULL,
  PRIMARY KEY (`idanonimo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonimo`
--

LOCK TABLES `anonimo` WRITE;
/*!40000 ALTER TABLE `anonimo` DISABLE KEYS */;
INSERT INTO `anonimo` VALUES (1,'josé luis'),(2,''),(3,'MrBeast'),(4,'batman'),(5,'rosas'),(6,'anonimo'),(7,'anonimo'),(8,'Anonimoaaaa'),(9,'mar'),(10,'123'),(11,'12354'),(12,'hooho');
/*!40000 ALTER TABLE `anonimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (9,'Actores'),(10,'peliculas'),(11,'Animación'),(12,'Rumores'),(13,'Productoras'),(14,'Curiosidades '),(15,'Fans'),(16,'Controversia');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `estado` int DEFAULT NULL,
  `contenido` text NOT NULL,
  `nombreUsu` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `dislikes` int DEFAULT NULL,
  `idusuariofk` int DEFAULT NULL,
  `idanonimofk` int DEFAULT NULL,
  `idnoticiafk` int DEFAULT NULL,
  PRIMARY KEY (`idcomentario`),
  KEY `idnoticiafk4_idx` (`idnoticiafk`),
  KEY `idanonimofk_idx` (`idanonimofk`),
  KEY `idusuariofk_idx` (`idusuariofk`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (2,0,'este es otro comentario','Pedro','2020-12-01 01:19:58',20,2,7,-1,49),(3,0,'este es otro comentario','Pedro','2020-12-01 12:19:58',20,2,NULL,-1,49),(4,0,'este es otro comentario','Pedro','2020-12-01 12:33:03',20,2,NULL,NULL,49),(5,1,'este es el contenido de mi comentario','pepe aguilar','2020-12-01 12:43:23',NULL,NULL,7,NULL,48),(6,1,'Hola que tal','esteban manuel','2020-12-01 13:31:35',NULL,NULL,7,NULL,55),(7,1,'Nuevo comentario','esteban manuel','2020-12-01 13:33:01',NULL,NULL,7,NULL,55),(8,1,'Hola soy un comentario elegante','esteban manuel','2020-12-03 12:38:24',NULL,NULL,7,NULL,54),(9,1,'GOT',NULL,'2020-12-03 18:06:27',NULL,NULL,7,NULL,48),(11,1,'Nuevo Comentario!',NULL,'2020-12-03 18:06:52',NULL,NULL,7,NULL,51),(12,1,'hola yo soy el kevin',NULL,'2020-12-03 23:37:30',NULL,NULL,1,NULL,55),(13,1,'hola yo soy el kevin',NULL,'2020-12-03 23:46:20',NULL,NULL,1,NULL,55),(15,1,'me alegro! amigo',NULL,'2020-12-04 00:32:17',NULL,NULL,7,NULL,56),(16,1,'hola?',NULL,'2020-12-04 00:33:20',NULL,NULL,7,NULL,1),(22,1,'yo hice esta noticia!',NULL,'2020-12-05 14:09:59',NULL,NULL,1,NULL,56),(23,1,'Hola que tal',NULL,'2020-12-05 19:42:44',NULL,NULL,10,NULL,56),(24,1,'hola',NULL,'2020-12-08 18:07:04',NULL,NULL,1,NULL,54),(25,1,'holaaaa',NULL,'2020-12-08 20:54:16',NULL,NULL,11,NULL,53),(29,1,'holahola',NULL,'2020-12-10 09:34:16',NULL,NULL,7,NULL,57),(36,1,'hola',NULL,'2020-12-10 10:51:36',NULL,NULL,7,NULL,54),(37,1,'hola gola hola',NULL,'2020-12-10 10:52:11',NULL,NULL,7,NULL,51),(38,1,'hola prueba',NULL,'2020-12-10 11:05:24',NULL,NULL,1,-1,57),(41,1,'hola',NULL,'2020-12-10 11:24:48',NULL,NULL,10,-1,9),(42,1,'como te va',NULL,'2020-12-10 11:24:54',NULL,NULL,10,-1,9),(43,1,'hola que tal',NULL,'2020-12-10 12:47:17',NULL,NULL,10,-1,52),(44,1,'Â¿hola como estÃ¡n?',NULL,'2020-12-10 12:50:12',NULL,NULL,10,-1,57),(45,1,'hola goooo',NULL,'2020-12-10 13:07:28',NULL,NULL,10,-1,57);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarioeditor`
--

DROP TABLE IF EXISTS `comentarioeditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarioeditor` (
  `idcomentarioeditor` int NOT NULL AUTO_INCREMENT,
  `asunto` text,
  `contenido` text,
  `fecha` datetime DEFAULT NULL,
  `idnoticiafk` int NOT NULL,
  `idusuariofk` int DEFAULT NULL,
  PRIMARY KEY (`idcomentarioeditor`),
  KEY `idnoticiafk_idx` (`idnoticiafk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarioeditor`
--

LOCK TABLES `comentarioeditor` WRITE;
/*!40000 ALTER TABLE `comentarioeditor` DISABLE KEYS */;
INSERT INTO `comentarioeditor` VALUES (1,NULL,'Este es el contenido','2020-12-09 00:57:47',43,1),(2,NULL,'mala redaccion','2020-12-09 01:06:41',3,7),(3,NULL,'','2020-12-10 11:21:44',5,7),(4,NULL,'','2020-12-10 11:21:59',6,7);
/*!40000 ALTER TABLE `comentarioeditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen` (
  `idimagen` int NOT NULL AUTO_INCREMENT,
  `data` varchar(100) DEFAULT NULL,
  `idnoticiafk` int DEFAULT NULL,
  PRIMARY KEY (`idimagen`),
  KEY `idnoticiafk_idx` (`idnoticiafk`),
  CONSTRAINT `idnoticiafk` FOREIGN KEY (`idnoticiafk`) REFERENCES `noticia` (`idnoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (6,'Assets/images/image1606679714963.jpg',22),(7,'Assets/images/image1606694298286.jpg',23),(8,'Assets/images/image1606694526370.jpg',24),(9,'Assets/images/image1606694688604.jpg',24),(10,'Assets/images/image1606694695605.jpg',24),(11,'Assets/images/image1606694853200.jpg',27),(12,'Assets/images/image1606705944032.jpg',28),(13,'Assets/images/image1606706045041.jpg',29),(14,'Assets/images/image1606711408652.jpg',38),(15,'Assets/images/image1606711473864.png',39),(16,'Assets/images/image1606714290523.jpg',44),(17,'Assets/images/image1606714715862.jpg',45),(18,'Assets/images/image1606714984924.jpg',46),(19,'Assets/images/image1606715141741.jpg',47),(20,'Assets/images/Imagen021606715147484.jpg',47),(21,'Assets/images/image1606715355029.jpg',48),(22,'Assets/images/Imagen21606715410917.jpg',48),(23,'Assets/images/Imagen31606715429596.jpg',48),(24,'Assets/images/image1606792033215.jpg',49),(25,'Assets/images/Imagen21606792034750.jpg',49),(26,'Assets/images/Imagen31606792035102.jpg',49),(27,'Assets/images/Imagen41606792035301.jpg',49),(28,'Assets/images/image1606792606527.jpg',49),(29,'Assets/images/Imagen21606792607089.jpg',49),(30,'Assets/images/Imagen31606792607289.jpg',49),(31,'Assets/images/Imagen41606792608064.jpg',49),(32,'Assets/images/image1606808188350.jpg',51),(33,'Assets/images/image1606841904584.jpg',52),(34,'Assets/images/Imagen21606841905046.jpg',52),(35,'Assets/images/Imagen31606841905406.jpg',52),(36,'Assets/images/image1606842121407.jpg',53),(37,'Assets/images/Imagen21606842121685.jpg',53),(38,'Assets/images/Imagen31606842121807.jpg',53),(39,'Assets/images/image1606842372391.jpg',54),(40,'Assets/images/Imagen21606842372789.jpg',54),(41,'Assets/images/Imagen31606842372899.jpg',54),(42,'Assets/images/image1606843536718.jpg',55),(43,'Assets/images/Imagen21606843537146.jpg',55),(44,'Assets/images/Imagen31606843537466.jpg',55),(45,'Assets/images/image1607063441776.jpg',56),(46,'Assets/images/Imagen21607063442339.jpg',56),(47,'Assets/images/Imagen31607063442517.jpg',56),(48,'Assets/images/image1607482882156.jpg',57),(49,'Assets/images/Imagen21607482882489.jpg',57),(50,'Assets/images/Imagen31607482882655.jpg',57),(51,'Assets/images/image1607483375595.jpg',58);
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticia` (
  `idnoticia` int NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `visitas` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `contenido` text NOT NULL,
  `estado` tinyint DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `dislikes` int DEFAULT NULL,
  `idUsuarioFk` int DEFAULT NULL,
  `idCategoriaFk` int DEFAULT NULL,
  `descripcion` text NOT NULL,
  `Thumbnail` varchar(150) NOT NULL,
  PRIMARY KEY (`idnoticia`),
  KEY `idUsuarioFk_idx` (`idUsuarioFk`),
  KEY `idCategoriaFk_idx` (`idCategoriaFk`),
  CONSTRAINT `idCategoriaFk` FOREIGN KEY (`idCategoriaFk`) REFERENCES `categoria` (`idcategoria`),
  CONSTRAINT `idUsuarioFk` FOREIGN KEY (`idUsuarioFk`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (1,'el titulo',NULL,'2020-11-25 00:00:00','contenido',0,NULL,NULL,1,14,'la descipcion',''),(3,'titulo',NULL,'2020-11-29 00:00:00','contenido',-1,NULL,NULL,1,16,'descripcion',''),(4,'Nuevo logotipo',NULL,'2020-11-29 00:00:00','conte',0,NULL,NULL,1,9,'descri',''),(5,'este es el titulo FINAL',NULL,'2020-11-29 00:00:00','contenido ',-1,NULL,NULL,1,15,'FINAL',''),(6,'Noticia de kevin',NULL,'2020-11-29 00:00:00','contenido de kevin',-1,NULL,NULL,1,11,'descri de kevin',''),(7,'este es el titulo',NULL,'2020-11-29 00:00:00','conte',0,NULL,NULL,1,11,'descri',''),(8,'Nuevo logotipo',NULL,'2020-11-29 00:00:00','contenido',-1,NULL,NULL,1,14,'descri',''),(9,'este es el titulo',NULL,'2020-12-10 11:22:55','conte',0,NULL,NULL,1,11,'descri',''),(10,'titulo',NULL,'2020-11-29 00:00:00','conte',0,NULL,NULL,1,15,'descri',''),(11,'titulo',NULL,'2020-11-29 00:00:00','conte',0,NULL,NULL,1,15,'descri',''),(12,'hola',NULL,'2020-11-29 00:00:00','c',0,NULL,NULL,1,16,'d',''),(13,'hola',NULL,'2020-11-29 00:00:00','c',0,NULL,NULL,1,16,'d',''),(14,'este es el titulo',NULL,'2020-11-29 00:00:00','conte',0,NULL,NULL,1,16,'descri',''),(15,'Es un nuevo titulo',NULL,'2020-11-29 00:00:00','Contenido nuevo',0,NULL,NULL,1,16,'descri',''),(16,'nuevo',NULL,'2020-11-29 00:00:00','nuevo',0,NULL,NULL,1,16,'nuevo',''),(17,'mas nuevo',NULL,'2020-11-29 00:00:00','mas nuevo',0,NULL,NULL,1,10,'mas nuevo',''),(18,'mas mas nuevo',NULL,'2020-11-29 00:00:00','mas masnuevo',0,NULL,NULL,1,13,'mas masnuevo',''),(19,'titulo definitivo',NULL,'2020-11-29 00:00:00','definitivo',-1,NULL,NULL,1,15,'descri definitiva',''),(20,'titulo definitivo2',NULL,'2020-12-09 00:09:48','definitivo2',0,NULL,NULL,1,10,'descri definitiva2',''),(21,'titulo definitivo3',NULL,'2020-12-08 20:29:32','definitivo3',0,NULL,NULL,1,12,'descri definitiva3',''),(22,'titulo01',NULL,'2020-11-29 00:00:00','titulo01',-1,NULL,NULL,1,16,'titulo01',''),(23,'hola',NULL,'2020-11-29 00:00:00','como ',-1,NULL,NULL,1,9,'estas','Assets/images/image1606694298286.jpg'),(24,'soy',NULL,'2020-11-29 00:00:00','una',-1,NULL,NULL,7,16,' nueva noticia','Assets/images/image1606694526370.jpg'),(25,'soy',NULL,'2020-11-29 00:00:00','una',0,NULL,NULL,7,16,' nueva noticia','Assets/images/image1606694688604.jpg'),(26,'soy',NULL,'2020-11-29 00:00:00','una',0,NULL,NULL,7,16,' nueva noticia','Assets/images/image1606694695605.jpg'),(27,'Nueva pelicula de batman',NULL,'2020-11-29 00:00:00','serÃ¡ increible',0,NULL,NULL,6,10,'una nueva aventura','Assets/images/image1606694853200.jpg'),(28,'1',NULL,'2020-11-29 00:00:00','3',0,NULL,NULL,1,9,'3','Assets/images/image1606705944032.jpg'),(29,'heyy',NULL,'2020-11-29 00:00:00','heyy',0,NULL,NULL,1,11,'heyy','Assets/images/image1606706045041.jpg'),(38,'jejej',NULL,'2020-11-29 00:00:00','jejejje',0,NULL,NULL,1,16,'jejejje','Assets/images/image1606711408652.jpg'),(39,'jajaj',NULL,'2020-11-29 00:00:00','jajajj',0,NULL,NULL,1,16,'jajjaj','Assets/images/image1606711473864.png'),(40,'El nuevo',NULL,'2020-11-29 00:00:00','El nuevo',0,NULL,NULL,1,14,'El nuevo','Assets/images/image1606713150362.jpg'),(41,'moderno',NULL,'2020-11-29 00:00:00','moderno',0,NULL,NULL,1,14,'moderno','Assets/images/image1606713402231.jpg'),(42,'moderno2',NULL,'2020-11-29 00:00:00','moderno2',0,NULL,NULL,1,15,'moderno2','Assets/images/image1606713474202.jpg'),(43,'crack',NULL,'2020-11-29 00:00:00','crack',0,NULL,NULL,1,16,'crack','Assets/images/image1606713973629.jpg'),(44,'joker',NULL,'2020-11-29 00:00:00','joker',0,NULL,NULL,1,11,'joker','Assets/images/image1606714290523.jpg'),(45,'villarreal',NULL,'2020-11-29 00:00:00','villarreal',0,NULL,NULL,1,11,'villarreal','Assets/images/image1606714715862.jpg'),(46,'spiderman',NULL,'2020-11-29 00:00:00','spiderman',0,NULL,NULL,1,16,'spiderman','Assets/images/image1606714984924.jpg'),(47,'electro',NULL,'2020-11-29 00:00:00','electro',0,NULL,NULL,1,16,'electro','Assets/images/image1606715141741.jpg'),(48,'ironman',NULL,'2020-11-29 00:00:00','ironman',0,NULL,NULL,1,16,'ironman','Assets/images/image1606715355029.jpg'),(49,'Nuevo titulox2',NULL,'2020-11-30 00:00:00','nuevo contenido',-1,NULL,NULL,1,15,'nueva descripcion','Assets/images/image1606792033215.jpg'),(50,'Nuevo titulox2',NULL,'2020-11-30 00:00:00','nuevo contenido',-1,NULL,NULL,1,15,'nueva descripcion','Assets/images/image1606792606527.jpg'),(51,'Eso es otra noticia',NULL,'2020-12-08 19:57:50','Eso es otra noticia',1,NULL,NULL,6,11,'Eso es otra noticia','Assets/images/image1606808188350.jpg'),(52,'Spiderman Marvel',NULL,'2020-12-01 10:58:24','Spiderman Marvel',1,NULL,NULL,7,16,'Spiderman Marvel','Assets/images/image1606841904584.jpg'),(53,'The Star Wars franchise has been entertaining audiences for decades, and with Disney now in charge of Lucasfilm there\'s been no indication of this slowing down. While the nine-film Skywalker Saga has ended, the narrative continues to be expanded through Disney+\'s The Mandalorian. The latest episode offered a ton of backstory for Baby Yoda, and now one fan has edited the little green guy into a pivotal scene with Anakin Skywalker.',NULL,'2020-12-08 19:56:44','The Star Wars franchise has been entertaining audiences for decades, and with Disney now in charge of Lucasfilm there\'s been no indication of this slowing down. While the nine-film Skywalker Saga has ended, the narrative continues to be expanded through Disney+\'s The Mandalorian. The latest episode offered a ton of backstory for Baby Yoda, and now one fan has edited the little green guy into a pivotal scene with Anakin Skywalker.',0,NULL,NULL,7,16,'hola','Assets/images/image1606842121407.jpg'),(54,'Clever Edited Star Wars Image Ties Baby Yoda And Anakin Skywalker Together',NULL,'2020-12-01 11:06:12','The Star Wars franchise has been entertaining audiences for decades, and with Disney now in charge of Lucasfilm there\'s been no indication of this slowing down. While the nine-film Skywalker Saga has ended, the narrative continues to be expanded through Disney+\'s The Mandalorian. The latest episode offered a ton of backstory for Baby Yoda, and now one fan has edited the little green guy into a pivotal scene with Anakin Skywalker.',1,NULL,NULL,7,16,'The Mandalorian revealed more about Baby Yoda\'s backstory, and a clever piece of fan art combines the green guy with Anakin Skywalker.','Assets/images/image1606842372391.jpg'),(55,'Dune Author Frank Herbert\'s Son Brian Talks Visiting The Set Of The \'Definitive\' Movie Adaptation',NULL,'2020-12-01 11:25:36','\r\nOne of the most anticipated movies of 2020 now won\'t be seen until 2021, but that hasn\'t made fans any less curious about Denis Villeneuve\'s forthcoming Dune. The Frank Herbert novel is one of the definitive works of literary science fiction that has been considered potentially unfilamable in the past, even though it\'s been done more than once. However, Frank\'s son Brian Herbert, who continued the legacy of Dune in print, visited the set of the Dune movie when it was in production and the writer has nothing but praise for the movie that\'s been created.',1,NULL,NULL,7,15,'One of the most anticipated movies of 2020 now won\'t be seen until 2021, but that hasn\'t made fans any less curious about Denis Villeneuve\'s forthcoming Dune.','Assets/images/image1606843536718.jpg'),(56,'How The Movie Theater Business Model Could Change If More Studios Shift To Streaming',NULL,'2020-12-04 00:30:41','The movie industry was just rocked by the announcement from Warner Bros. that Wonder Woman 1984 will not be the studio\'s only major release to open on HBO Max and in theaters at the same time. In fact, the studio\'s entire slate of films currently set to open in 2021 will do the same. That means that major productions like Dune, In the Heights and The Suicide Squad will be available to subscribers of the relatively new streaming service without leaving home at the same time they hit theaters.',1,NULL,NULL,1,12,'So... what happens now?','Assets/images/image1607063441776.jpg'),(57,'6 More Spider-Man Villains We Want To See Back For Spider-Man 3',NULL,'2020-12-08 21:08:22','Spider-Man fans were stunned this past fall when it was announced that Jamie Foxx would be reprising his role as Max Dillon a.k.a. Electro in the upcoming, untitled Spider-Man: Far From Home sequel â but today we learned that he wonât be the only villain from the web-slingerâs big screen history who will be making a comeback. Itâs been confirmed that Alfred Molina will also be featured in the blockbuster, playing Dr. Otto Octavius for the first time since Spider-Man 2, and, as expected, itâs stirred up a whole lot of excitement. Unfortunately, that anticipation comes paired with the fact that we donât know a whole lot about the film, but it still has us wondering: what other villains from past wall-crawler blockbusters could we see back in Spider-Man 3?',1,NULL,NULL,15,16,'Doc Oc and electtro need more friens','Assets/images/image1607482882156.jpg'),(58,'2',NULL,'2020-12-08 21:09:35','2',-1,NULL,NULL,15,14,'2','Assets/images/image1607483375595.jpg');
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticiamarcada`
--

DROP TABLE IF EXISTS `noticiamarcada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticiamarcada` (
  `idnoticiamarcada` int NOT NULL AUTO_INCREMENT,
  `idusuariofk` int NOT NULL,
  `idnoticiafk` int NOT NULL,
  PRIMARY KEY (`idnoticiamarcada`),
  KEY `idusuariofk_idx` (`idusuariofk`),
  KEY `idnoticiafk_idx` (`idnoticiafk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticiamarcada`
--

LOCK TABLES `noticiamarcada` WRITE;
/*!40000 ALTER TABLE `noticiamarcada` DISABLE KEYS */;
INSERT INTO `noticiamarcada` VALUES (1,10,57),(2,10,58),(3,10,56),(4,7,51),(5,7,52),(6,7,53),(7,7,57),(8,6,57),(9,6,52),(10,6,55),(11,6,54);
/*!40000 ALTER TABLE `noticiamarcada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `idnotificacion` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(280) DEFAULT NULL,
  `idusuariofk` int NOT NULL,
  `idnoticiafk` int DEFAULT NULL,
  PRIMARY KEY (`idnotificacion`),
  KEY `idusuariofk7_idx` (`idusuariofk`),
  KEY `idnoticiafk6_idx` (`idnoticiafk`),
  CONSTRAINT `idnoticiafk6` FOREIGN KEY (`idnoticiafk`) REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`),
  CONSTRAINT `idusuariofk7` FOREIGN KEY (`idusuariofk`) REFERENCES `db_proyect_pw1`.`usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipousuario` (
  `idtipousuario` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Administrador'),(2,'Registrado'),(3,'Moderador'),(4,'Editor'),(5,'CreadordeContenido');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombreUsu` varchar(45) NOT NULL,
  `picture` text,
  `phoneNum` int DEFAULT NULL,
  `fktipousuario` int DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `idusuario_UNIQUE` (`idusuario`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nombreUsu_UNIQUE` (`nombreUsu`),
  KEY `fktipousuario_idx` (`fktipousuario`),
  CONSTRAINT `fktipousuario` FOREIGN KEY (`fktipousuario`) REFERENCES `tipousuario` (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Kevin','perez','kevin@kevin','kevin123','kevin147','Assets/images/image1607062916415.jpg',12345678,1),(6,'alberto','perez','alberto@alberto','alberto123','alberto147','Assets/images/image1607199367932.jpg',12345678,3),(7,'esteban','manuel','manuel@manuel.com','manuel123','manuel147','Assets/images/image1607040142823.jpg',159,4),(10,'Gonzalo','Aguilar Galeana','gag@gag.com','mi','gonzi','Assets/images/image1607625925212.jpg',23456,2),(11,'Alejandro','Hernandez','ale@ale.com','ale123','ale147','Assets/images/image1607061734317.jpg',123456,2),(12,'Mark','Zukerberg','mark@mark.com','mark123','mark147',NULL,15948,5),(13,'Rafael Alberto','Rosas Torres','rosas@rosas.com','rosas123','rosas147',NULL,159,2),(14,'Alma','Patricia Calderon','patri@patri.com','patri123','patri147',NULL,159,2),(15,'Ibai','Sanchez','ibai@ibai','ibai123','ibai147','Assets/images/image1607482703038.jpg',1897984,5);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `idvideo` int NOT NULL AUTO_INCREMENT,
  `data` varchar(200) DEFAULT NULL,
  `idnoticiafk` int DEFAULT NULL,
  PRIMARY KEY (`idvideo`),
  KEY `idnoticiafk2_idx` (`idnoticiafk`),
  CONSTRAINT `idnoticiafk2` FOREIGN KEY (`idnoticiafk`) REFERENCES `db_proyect_pw1`.`noticia` (`idnoticia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 18:07:18
