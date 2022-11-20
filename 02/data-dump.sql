-- MariaDB dump 10.19  Distrib 10.6.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_aparaty
-- ------------------------------------------------------
-- Server version	10.6.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aparat`
--

DROP TABLE IF EXISTS `aparat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aparat` (
  `model` varchar(30) NOT NULL,
  `producent` int(11) NOT NULL,
  `matryca` int(11) NOT NULL,
  `obiektyw` int(11) NOT NULL,
  `typ` enum('kompaktowy','lustrzanka','profesjonalny','inny') NOT NULL,
  PRIMARY KEY (`model`),
  KEY `producent` (`producent`),
  KEY `matryca` (`matryca`),
  KEY `obiektyw` (`obiektyw`),
  CONSTRAINT `aparat_ibfk_1` FOREIGN KEY (`producent`) REFERENCES `producent` (`ID`),
  CONSTRAINT `aparat_ibfk_2` FOREIGN KEY (`matryca`) REFERENCES `matryca` (`ID`),
  CONSTRAINT `aparat_ibfk_3` FOREIGN KEY (`obiektyw`) REFERENCES `obiektyw` (`ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`matryca` >= 0 and `obiektyw` >= 0 and `producent` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparat`
--

LOCK TABLES `aparat` WRITE;
/*!40000 ALTER TABLE `aparat` DISABLE KEYS */;
INSERT INTO `aparat` VALUES ('1.104.12',1,104,12,'lustrzanka'),('1.105.3',1,105,3,'profesjonalny'),('1.106.2',1,106,2,'kompaktowy'),('1.106.4',1,106,4,'inny'),('1.108.1',1,108,1,'profesjonalny'),('1.109.1',1,109,1,'kompaktowy'),('1.110.10',1,110,10,'kompaktowy'),('1.113.2',1,113,2,'profesjonalny'),('1.114.3',1,114,3,'kompaktowy'),('10.102.15',10,102,15,'lustrzanka'),('10.103.12',10,103,12,'profesjonalny'),('10.112.15',10,112,15,'kompaktowy'),('10.114.9',10,114,9,'inny'),('11.108.11',11,108,11,'inny'),('11.110.9',11,110,9,'lustrzanka'),('11.111.13',11,111,13,'kompaktowy'),('11.111.15',11,111,15,'kompaktowy'),('11.111.8',11,111,8,'inny'),('11.113.14',11,113,14,'kompaktowy'),('11.114.5',11,114,5,'kompaktowy'),('11.114.6',11,114,6,'lustrzanka'),('12.101.13',12,101,13,'inny'),('12.102.1',12,102,1,'kompaktowy'),('12.103.15',12,103,15,'inny'),('12.103.5',12,103,5,'kompaktowy'),('12.104.14',12,104,14,'kompaktowy'),('12.109.4',12,109,4,'kompaktowy'),('12.109.7',12,109,7,'inny'),('12.111.7',12,111,7,'kompaktowy'),('13.100.11',13,100,11,'profesjonalny'),('13.107.4',13,107,4,'lustrzanka'),('13.108.1',13,108,1,'profesjonalny'),('13.110.13',13,110,13,'kompaktowy'),('14.101.1',14,101,1,'inny'),('14.103.13',14,103,13,'profesjonalny'),('14.103.4',14,103,4,'lustrzanka'),('14.103.8',14,103,8,'profesjonalny'),('14.106.9',14,106,9,'profesjonalny'),('14.108.6',14,108,6,'lustrzanka'),('14.109.2',14,109,2,'profesjonalny'),('14.111.13',14,111,13,'kompaktowy'),('14.111.5',14,111,5,'kompaktowy'),('15.102.9',15,102,9,'inny'),('15.104.11',15,104,11,'profesjonalny'),('15.106.12',15,106,12,'profesjonalny'),('15.106.15',15,106,15,'kompaktowy'),('15.108.6',15,108,6,'inny'),('15.111.11',15,111,11,'kompaktowy'),('2.101.6',2,101,6,'lustrzanka'),('2.108.15',2,108,15,'kompaktowy'),('2.108.9',2,108,9,'kompaktowy'),('2.110.1',2,110,1,'lustrzanka'),('3.100.14',3,100,14,'lustrzanka'),('3.106.5',3,106,5,'inny'),('3.107.4',3,107,4,'lustrzanka'),('3.110.11',3,110,11,'inny'),('3.113.10',3,113,10,'profesjonalny'),('3.113.15',3,113,15,'profesjonalny'),('4.107.9',4,107,9,'profesjonalny'),('4.108.14',4,108,14,'inny'),('4.109.13',4,109,13,'profesjonalny'),('4.111.4',4,111,4,'inny'),('4.113.15',4,113,15,'kompaktowy'),('5.103.12',5,103,12,'inny'),('5.105.10',5,105,10,'kompaktowy'),('5.105.14',5,105,14,'kompaktowy'),('5.108.5',5,108,5,'profesjonalny'),('5.108.7',5,108,7,'profesjonalny'),('5.109.14',5,109,14,'inny'),('5.110.11',5,110,11,'kompaktowy'),('5.110.3',5,110,3,'lustrzanka'),('5.111.5',5,111,5,'lustrzanka'),('5.112.11',5,112,11,'profesjonalny'),('5.114.12',5,114,12,'profesjonalny'),('6.100.5',6,100,5,'lustrzanka'),('6.104.3',6,104,3,'lustrzanka'),('6.107.15',6,107,15,'inny'),('6.108.13',6,108,13,'profesjonalny'),('6.108.2',6,108,2,'lustrzanka'),('6.110.8',6,110,8,'inny'),('6.112.10',6,112,10,'profesjonalny'),('7.107.1',7,107,1,'inny'),('7.111.11',7,111,11,'kompaktowy'),('7.113.1',7,113,1,'inny'),('7.113.3',7,113,3,'inny'),('7.114.15',7,114,15,'lustrzanka'),('7.114.9',7,114,9,'lustrzanka'),('8.102.1',8,102,1,'lustrzanka'),('8.102.8',8,102,8,'lustrzanka'),('8.107.2',8,107,2,'lustrzanka'),('8.110.15',8,110,15,'lustrzanka'),('8.112.14',8,112,14,'inny'),('9.102.9',9,102,9,'profesjonalny'),('9.103.1',9,103,1,'inny'),('9.108.3',9,108,3,'kompaktowy'),('9.109.14',9,109,14,'lustrzanka'),('9.111.1',9,111,1,'inny'),('9.111.4',9,111,4,'lustrzanka'),('9.113.12',9,113,12,'inny'),('9.113.8',9,113,8,'lustrzanka'),('test',16,102,8,'inny');
/*!40000 ALTER TABLE `aparat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER no_producent BEFORE INSERT ON aparat FOR EACH ROW INSERT INTO producent (ID) VALUES (NEW.producent) ON DUPLICATE KEY UPDATE nazwa = nazwa, kraj = kraj, liczbaModeli = liczbaModeli */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ins_aparat_up_prod AFTER INSERT ON aparat FOR EACH ROW INSERT INTO producent (id, nazwa, kraj, liczbaModeli) SELECT ID, nazwa, kraj, COUNT(*) AS liczbaModeli FROM aparat AS a JOIN producent AS p ON a.producent = p.ID  GROUP BY producent ON DUPLICATE KEY UPDATE nazwa=VALUES(nazwa), kraj = VALUES(kraj), liczbaModeli=VALUES(liczbaModeli) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER up_aparat_up_prod AFTER UPDATE ON aparat FOR EACH ROW INSERT INTO producent (id, nazwa, kraj, liczbaModeli) SELECT ID, nazwa, kraj, COUNT(*) AS liczbaModeli FROM aparat AS a JOIN producent AS p ON a.producent = p.ID  GROUP BY producent ON DUPLICATE KEY UPDATE nazwa=VALUES(nazwa), kraj = VALUES(kraj), liczbaModeli=VALUES(liczbaModeli) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER no_more_aparat_for_matryca AFTER DELETE ON aparat FOR EACH ROW DELETE FROM matryca WHERE ID = OLD.matryca AND 0 = (SELECT COUNT(*) FROM aparat GROUP BY matryca HAVING matryca = OLD.matryca) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER del_aparat_up_prod AFTER DELETE ON aparat FOR EACH ROW INSERT INTO producent (id, nazwa, kraj, liczbaModeli) SELECT ID, nazwa, kraj, COUNT(*) AS liczbaModeli FROM aparat AS a JOIN producent AS p ON a.producent = p.ID  GROUP BY producent ON DUPLICATE KEY UPDATE nazwa=VALUES(nazwa), kraj = VALUES(kraj), liczbaModeli=VALUES(liczbaModeli) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `matryca`
--

DROP TABLE IF EXISTS `matryca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matryca` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `przekatna` decimal(4,2) NOT NULL,
  `rozdzielczosc` decimal(3,1) NOT NULL,
  `typ` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`przekatna` >= 0 and `rozdzielczosc` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matryca`
--

LOCK TABLES `matryca` WRITE;
/*!40000 ALTER TABLE `matryca` DISABLE KEYS */;
INSERT INTO `matryca` VALUES (100,28.21,26.1,'CMOS'),(101,28.26,24.2,'CMOS'),(102,42.82,24.2,'CMOS'),(103,43.13,33.0,'CMOS'),(104,42.82,24.2,'CMOS'),(105,26.82,24.2,'CMOS'),(106,28.37,6.1,'CCD'),(107,43.27,24.1,'CMOS'),(108,26.82,18.0,'CMOS'),(109,7.70,16.0,'CMOS'),(110,7.70,16.0,'CCD'),(111,7.54,8.0,'CCD'),(112,11.00,12.0,'CMOS'),(113,28.40,16.3,'CMOS'),(114,11.00,12.0,'CMOS');
/*!40000 ALTER TABLE `matryca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `not_chinese_dslr`
--

DROP TABLE IF EXISTS `not_chinese_dslr`;
/*!50001 DROP VIEW IF EXISTS `not_chinese_dslr`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `not_chinese_dslr` AS SELECT
 1 AS `model`,
  1 AS `nazwa`,
  1 AS `przekatna`,
  1 AS `rozdzielczosc`,
  1 AS `minPrzeslona`,
  1 AS `maxPrzeslona` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `obiektyw`
--

DROP TABLE IF EXISTS `obiektyw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obiektyw` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL,
  `minPrzeslona` float NOT NULL,
  `maxPrzeslona` float NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`minPrzeslona` >= 0 and `maxPrzeslona` >= 0 and `minPrzeslona` < `maxPrzeslona`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obiektyw`
--

LOCK TABLES `obiektyw` WRITE;
/*!40000 ALTER TABLE `obiektyw` DISABLE KEYS */;
INSERT INTO `obiektyw` VALUES (1,'Canon EF USM Fisheye',4,22),(2,'Canon EF-S IS STM',5.6,22),(3,'Canon EF-S USM',3.5,22),(4,'Sony AF DT D',4.5,22),(5,'Sony E OSS',4,22),(6,'Sony FE GM',2.8,22),(7,'Sony DT SSM',2.8,22),(8,'Sony AF DT',3.5,22),(9,'Leica D Vario-Elmarit',2.8,22),(10,'Leica Super-Elmarit-R',2.8,22),(11,'Leica Elmarit-M',2.8,16),(12,'Nikon AF-S Nikkor',3.5,22),(13,'Nikon 1 Nikkor VR',4.5,16),(14,'Carl Zeiss Distagon',3.5,22),(15,'Olympus ZUIKO DIGITAL ED',4,22);
/*!40000 ALTER TABLE `obiektyw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producent`
--

DROP TABLE IF EXISTS `producent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(50) DEFAULT NULL,
  `kraj` varchar(20) DEFAULT NULL,
  `liczbaModeli` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producent`
--

LOCK TABLES `producent` WRITE;
/*!40000 ALTER TABLE `producent` DISABLE KEYS */;
INSERT INTO `producent` VALUES (1,'DJI','Chiny',9),(2,'Aigo','Chiny',4),(3,'Seagull Camera','Chiny',6),(4,'Akaso','Chiny',5),(5,'Insta360','Chiny',11),(6,'Leica','Niemcy',7),(7,'Canon','Japonia',6),(8,'Fujifilm','Japonia',5),(9,'Nikon','Japonia',8),(10,'Casio','Japonia',4),(11,'Hasselblad','Szwecja',8),(12,'Sony','Japonia',8),(13,'Blackmagic','Australia',4),(14,'Samsung','Korea Południowa',9),(15,'Polaroid','USA',6),(16,NULL,NULL,1);
/*!40000 ALTER TABLE `producent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `zad10`
--

DROP TABLE IF EXISTS `zad10`;
/*!50001 DROP VIEW IF EXISTS `zad10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `zad10` AS SELECT
 1 AS `model`,
  1 AS `nazwa`,
  1 AS `kraj` */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'db_aparaty'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `ile_modeli_do_matrycy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ile_modeli_do_matrycy`(id_matrycy INT) RETURNS int(11)
RETURN
(SELECT COUNT(*) AS ilosc FROM aparat GROUP BY matryca HAVING matryca = id_matrycy) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `biggestmodel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `biggestmodel`(IN prodID INT)
BEGIN
  SELECT model FROM aparat AS a JOIN matryca AS m ON a.matryca = m.ID WHERE producent = prodID HAVING MAX(przekatna);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalcValue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalcValue`( OUT ending_value INT )
    DETERMINISTIC
BEGIN  
   DECLARE total_value INT;  
   SET total_value = 50;  
   label1: WHILE total_value <= 3000 DO  
     SET total_value = total_value * 2;  
   END WHILE label1;  
   SET ending_value = total_value;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gen_aparaty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gen_aparaty`()
BEGIN
  INSERT INTO aparat (model, producent, matryca, obiektyw, typ) SELECT CONCAT( p.ID, ".", m.ID, ".", o.ID), p.ID, m.ID, o.ID, ELT(floor(RAND()*4)+1, 'kompaktowy', 'lustrzanka', 'profesjonalny', 'inny') AS typ FROM producent AS p, matryca AS m, obiektyw AS o  ORDER BY RAND() LIMIT 100;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `not_chinese_dslr`
--

/*!50001 DROP VIEW IF EXISTS `not_chinese_dslr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp852 */;
/*!50001 SET character_set_results     = cp852 */;
/*!50001 SET collation_connection      = cp852_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `not_chinese_dslr` AS select `a`.`model` AS `model`,`p`.`nazwa` AS `nazwa`,`m`.`przekatna` AS `przekatna`,`m`.`rozdzielczosc` AS `rozdzielczosc`,`o`.`minPrzeslona` AS `minPrzeslona`,`o`.`maxPrzeslona` AS `maxPrzeslona` from (((`aparat` `a` join `matryca` `m` on(`a`.`matryca` = `m`.`ID`)) join `producent` `p` on(`a`.`producent` = `p`.`ID`)) join `obiektyw` `o` on(`a`.`obiektyw` = `o`.`ID`)) where `a`.`typ` = 'lustrzanka' and `p`.`kraj` <> 'Chiny' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zad10`
--

/*!50001 DROP VIEW IF EXISTS `zad10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp852 */;
/*!50001 SET character_set_results     = cp852 */;
/*!50001 SET collation_connection      = cp852_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zad10` AS select `a`.`model` AS `model`,`p`.`nazwa` AS `nazwa`,`p`.`kraj` AS `kraj` from (`aparat` `a` join `producent` `p` on(`a`.`producent` = `p`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 14:26:34
