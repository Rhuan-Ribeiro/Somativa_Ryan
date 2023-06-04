-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: relatoriohogwarts
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `checkin`
--

DROP TABLE IF EXISTS `checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usersFK` bigint NOT NULL,
  `eventFK` bigint NOT NULL,
  `dateScheduled` datetime NOT NULL,
  `ticket` bigint NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `usersFK` (`usersFK`),
  KEY `eventFK` (`eventFK`),
  CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`usersFK`) REFERENCES `users` (`id`),
  CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`eventFK`) REFERENCES `event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkin`
--

LOCK TABLES `checkin` WRITE;
/*!40000 ALTER TABLE `checkin` DISABLE KEYS */;
INSERT INTO `checkin` VALUES (1,2,1,'2023-06-04 12:58:29',1,NULL),(2,1,1,'2023-01-01 00:00:00',2,NULL),(3,5,1,'2023-06-04 12:58:29',3,NULL),(4,6,2,'2023-06-04 12:58:29',4,NULL),(5,4,2,'2023-06-04 12:58:29',5,NULL),(6,1,3,'2023-05-05 00:00:00',6,NULL),(7,2,3,'2023-06-04 12:58:29',7,NULL),(8,4,3,'2023-06-04 12:58:29',8,NULL),(9,6,3,'2023-08-08 00:00:00',9,NULL),(10,1,4,'2023-06-04 12:58:29',10,NULL),(11,4,4,'2023-06-04 12:58:29',11,NULL),(12,4,6,'2023-06-04 12:58:29',12,NULL);
/*!40000 ALTER TABLE `checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(450) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fphotografos.com.br%2Ffotos-para-perfil%2F&psig=AOvVaw2BKyhM1csyG0EqFbIeT-g9&ust=1685895049385000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNi_gc--p_8CFQAAAAAdAAAAABAE','hylux13@gmail.com',19996859325),(2,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.uol.com.br%2Fesporte%2Fcolunas%2Fmercado-da-bola%2F2023%2F05%2F08%2Fpsg-quer-a-saida-de-neymar-e-vice-versa.htm&psig=AOvVaw3SYz35Sw68Czm__i3rgdVy&ust=1685895291040000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIjcvcG_p_8CFQAAAAAdAAAAABAQ','chevrolet22@gmail.com',19955559325),(3,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cnnbrasil.com.br%2Fesportes%2Fjornal-espanhol-diz-que-cristiano-ronaldo-vai-jogar-no-al-nassr-apos-a-copa-2%2F&psig=AOvVaw1H0Zmyh7IwV_GdpSRBjW4s&ust=1685895562717000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJiZi8PAp_8CFQAAAAAdAAAAABAE','siuuuu@gmail.com',199968233325),(4,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Ffutebol%2Fselecoes%2Fargentina%2Fnoticia%2F2022%2F12%2F03%2Fmessi-faz-milesimo-jogo-da-carreira-e-entra-em-grupo-seleto-que-tem-pele-e-cristiano-ronaldo.ghtml&psig=AOvVaw2CEbPcbCzC4LiTk0ZRH4Yj&ust=1685895624914000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMiXzePAp_8CFQAAAAAdAAAAABAE','argentina@gmail.com',19922259325),(5,'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fvinijr&psig=AOvVaw27bpvaCaGKETcMkqc68QmT&ust=1685895731959000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCOC6_5PBp_8CFQAAAAAdAAAAABAE','vinijr@gmail.com',19996969325),(6,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fphotografos.com.br%2Ffotos-para-perfil%2F&psig=AOvVaw2BKyhM1csyG0EqFbIeT-g9&ust=1685895049385000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNi_gc--p_8CFQAAAAAdAAAAABAE','pipipopo@gmail.com',19996859555),(7,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fphotografos.com.br%2Ffotos-para-perfil%2F&psig=AOvVaw2BKyhM1csyG0EqFbIeT-g9&ust=1685895049385000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNi_gc--p_8CFQAAAAAdAAAAABAE','aaaaaa@gmail.com',19996333325);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equiplocal`
--

DROP TABLE IF EXISTS `equiplocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equiplocal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `equipmentFK` bigint NOT NULL,
  `localFK` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipmentFK` (`equipmentFK`),
  KEY `localFK` (`localFK`),
  CONSTRAINT `equiplocal_ibfk_1` FOREIGN KEY (`equipmentFK`) REFERENCES `equipment` (`id`),
  CONSTRAINT `equiplocal_ibfk_2` FOREIGN KEY (`localFK`) REFERENCES `local` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equiplocal`
--

LOCK TABLES `equiplocal` WRITE;
/*!40000 ALTER TABLE `equiplocal` DISABLE KEYS */;
INSERT INTO `equiplocal` VALUES (1,2,1),(2,5,1),(3,6,1),(4,3,1),(5,1,2),(6,2,2),(7,3,3),(8,4,3),(9,5,3),(10,1,4),(11,3,4),(12,5,4),(13,6,4);
/*!40000 ALTER TABLE `equiplocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `amount` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'TV smart',2),(2,'projetor',1),(3,'ar condicionado',3),(4,'monitor',4),(5,'som',2),(6,'roteador',2);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `localFK` bigint NOT NULL,
  `evento` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `inicio` time NOT NULL,
  `fim` time NOT NULL,
  `startCheckIn` datetime NOT NULL,
  `endCheckIn` datetime NOT NULL,
  `responsavel` varchar(150) NOT NULL,
  `numeroParticip` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `localFK` (`localFK`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`localFK`) REFERENCES `local` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,2,'Workshop Cloud Básico','2023-05-26','18:45:00','23:45:00','2023-05-26 18:45:00','2023-05-26 23:45:00','neymar jr',30),(2,3,'Workshop Desenho SolidWorks','2023-06-26','18:45:00','23:45:00','2023-06-01 18:45:00','2023-06-01 23:45:00','cristiano ronaldo',16),(3,1,'Blockchain Básico','2023-08-12','18:45:00','23:45:00','2023-05-26 18:45:00','2023-05-26 23:45:00','messi',0),(4,4,'Decolando sua carreira','2023-12-12','18:45:00','23:45:00','2023-08-26 18:45:00','2023-08-26 23:45:00','pelé',59),(5,1,'Desmistificando Spring Framework','2024-01-26','18:45:00','23:45:00','2024-01-01 18:45:00','2024-01-01 23:45:00','vini jr',16),(6,1,'Criptomoedas e Web3','2023-05-30','18:45:00','23:45:00','2023-05-30 18:45:00','2023-05-30 23:45:00','casemiro',10);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `block` enum('A','B','C','D') NOT NULL,
  `limitation` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,'Laboratório Eletrônica 01','A',20),(2,'Laboratório Informática 02','C',20),(3,'Laboratório Metalmecânica','B',18),(4,'Auditório','A',120),(5,'Laboratório Eletrônica 02','A',20),(6,'Laboratório Ensaios Mecânicos','D',32);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occupation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES (1,'Professor','dá aulas na area de banco de dados'),(2,'Secretária','secretariaa que trabalha o dia inteiro comigo'),(3,'Coordenador','begossi 2'),(4,'Orientador','orienta a todos quando necessário'),(5,'Aluno','nao faz nada da vida'),(6,'Analista de Sistemas','ryan vulgo eu'),(7,'Diretor','dirigente');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `permission` enum('Admin','Gestor','Usuario','Visitante') DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Admin','pode alterar tudo na aplicação, possui o maior nível de acesso'),(2,'Gestor','nível inferior ao admin, mas com acesso pleno ao cadastro de cadastro de usuarios, cadastro de ambientes, pode cancelar um evento, emitir relatório, etc.'),(3,'Usuario','pode fazer reservas, mas não cadastrar usuários e nem cancelar eventos'),(4,'Visitante','pode se inscrever em um evento participante');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `taskInProgress` enum('aberta','em andamento','concluida','encerrada','agendada') DEFAULT NULL,
  `timeEndProgress` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (1,'agendada','2023-06-04 12:58:29'),(2,'em andamento','2023-06-04 12:58:29'),(3,'aberta','2023-06-04 12:58:29'),(4,'encerrada','2023-06-04 12:58:29'),(5,'aberta','2023-01-01 00:00:00'),(6,'em andamento','2013-08-09 12:20:00'),(7,'concluida','2018-08-09 10:20:00'),(8,'agendada','2023-08-09 12:20:00'),(9,'encerrada','2019-08-09 12:15:00');
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsible`
--

DROP TABLE IF EXISTS `responsible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsible` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usersFK` bigint NOT NULL,
  `taskBaseFK` bigint NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `usersFK` (`usersFK`),
  KEY `taskBaseFK` (`taskBaseFK`),
  CONSTRAINT `responsible_ibfk_1` FOREIGN KEY (`usersFK`) REFERENCES `users` (`id`),
  CONSTRAINT `responsible_ibfk_2` FOREIGN KEY (`taskBaseFK`) REFERENCES `taskbase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsible`
--

LOCK TABLES `responsible` WRITE;
/*!40000 ALTER TABLE `responsible` DISABLE KEYS */;
INSERT INTO `responsible` VALUES (1,1,1,NULL),(2,2,1,NULL),(3,3,1,NULL),(4,4,2,NULL),(5,5,2,NULL),(6,6,2,NULL),(7,7,3,NULL),(8,1,3,NULL),(9,2,3,NULL),(10,3,4,NULL),(11,4,4,NULL),(12,5,4,NULL),(13,6,5,NULL),(14,7,5,NULL),(15,1,5,NULL),(16,2,5,NULL),(17,3,5,NULL),(18,4,5,NULL),(19,5,5,NULL);
/*!40000 ALTER TABLE `responsible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskbase`
--

DROP TABLE IF EXISTS `taskbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskbase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL,
  `description` text NOT NULL,
  `requester` varchar(75) NOT NULL,
  `startTask` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endTask` datetime NOT NULL,
  `photosInRepository` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskbase`
--

LOCK TABLES `taskbase` WRITE;
/*!40000 ALTER TABLE `taskbase` DISABLE KEYS */;
INSERT INTO `taskbase` VALUES (1,'Limpar o laboratório de eletronica 1','aonde voce vai eu vou varrendo','andre savedra','2023-08-09 12:20:00','2024-01-01 00:00:00','https://github.com/RyanP0612/photos.git'),(2,'Limpar o laboratório de eletronica 2','aonde voce vai eu vou varrendo2','andre balada','2023-06-04 12:58:30','2024-01-01 00:00:00','https://github.com/RyanP0612/photos.git'),(3,'trocar os fusiveis do bloco C','eletroeletronica','abel ferreira','2023-06-04 12:58:30','2023-06-04 00:00:00','https://github.com/RyanP0612/photos.git'),(4,'trocar os fusiveis do bloco A','eletroeletronica2','neymaru','2023-06-04 12:58:30','2023-07-04 00:00:00','https://github.com/RyanP0612/photos.git'),(5,'compra de uniformes','vestimenta','rhuan','2023-06-04 12:58:30','2023-08-10 00:00:00','https://github.com/RyanP0612/photos.git'),(6,'dar nota 100 para ryan pablo','por favor andre','ryan pablo','2023-06-04 12:58:30','2024-01-01 00:00:00','https://github.com/RyanP0612/photos.git');
/*!40000 ALTER TABLE `taskbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskfinal`
--

DROP TABLE IF EXISTS `taskfinal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskfinal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `taskFK` bigint NOT NULL,
  `progressFK` bigint NOT NULL,
  `localFK` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taskFK` (`taskFK`),
  KEY `progressFK` (`progressFK`),
  KEY `localFK` (`localFK`),
  CONSTRAINT `taskfinal_ibfk_1` FOREIGN KEY (`taskFK`) REFERENCES `taskbase` (`id`),
  CONSTRAINT `taskfinal_ibfk_2` FOREIGN KEY (`progressFK`) REFERENCES `progress` (`id`),
  CONSTRAINT `taskfinal_ibfk_3` FOREIGN KEY (`localFK`) REFERENCES `local` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskfinal`
--

LOCK TABLES `taskfinal` WRITE;
/*!40000 ALTER TABLE `taskfinal` DISABLE KEYS */;
INSERT INTO `taskfinal` VALUES (1,1,8,1),(2,2,1,5),(3,3,3,3),(4,4,4,2),(5,5,1,6),(6,6,8,2);
/*!40000 ALTER TABLE `taskfinal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `dataFK` bigint NOT NULL,
  `occupationFK` bigint NOT NULL,
  `dob` date NOT NULL,
  `dos` date NOT NULL,
  `permissionsFK` bigint NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permissionsFK` (`permissionsFK`),
  KEY `occupationFK` (`occupationFK`),
  KEY `dataFK` (`dataFK`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`permissionsFK`) REFERENCES `permissions` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`occupationFK`) REFERENCES `occupation` (`id`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`dataFK`) REFERENCES `data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Neymar da silva santos junior',2,7,'1992-02-05','2023-05-26',1,'M','12345678910'),(2,'Cristiano Ronaldo',3,1,'1985-02-05','2020-01-26',2,'M','15545678910'),(3,'Marta',1,4,'1980-12-05','2015-06-22',4,'F','44445678910'),(4,'edson arantes do nascimento',4,2,'1930-06-05','2000-05-26',3,'M','12345558910'),(5,'vinicius jose santos junior',5,3,'1990-02-05','2023-07-26',4,'M','12345678123'),(6,'ryan ramos',7,5,'2005-06-09','2023-06-26',2,'M','12344659891'),(7,'claudemir dos santos',6,6,'1980-11-13','2001-09-10',3,'M','12345677890');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 13:00:27
