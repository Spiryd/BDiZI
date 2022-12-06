-- MariaDB dump 10.19  Distrib 10.6.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: census
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
-- Table structure for table `ludzie`
--

DROP TABLE IF EXISTS `ludzie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ludzie` (
  `PESEL` char(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `plec` enum('F','M') NOT NULL,
  PRIMARY KEY (`PESEL`),
  KEY `compound` (`plec`,`imie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludzie`
--

LOCK TABLES `ludzie` WRITE;
/*!40000 ALTER TABLE `ludzie` DISABLE KEYS */;
INSERT INTO `ludzie` VALUES ('00212153387','Krystyna','Bajko','2000-01-21','F'),('02281866218','Leonard','Miozga','2002-08-18','M'),('03320915430','Józef','Cetera','2003-12-09','M'),('04283073850','Michał','Toborek','2004-08-30','M'),('04293039611','Rafał','Ambrożewicz','2004-09-30','M'),('05262091544','Apolonia','Walasik','2005-06-20','F'),('06321294175','Andrzej','Wisła','2006-12-12','M'),('09300558114','Maksymilian','Żero','2009-10-05','M'),('11321174800','Eliza','Kenig','2011-12-11','F'),('13272523773','Dawid','Maciocha','2013-07-25','M'),('52070917522','Liwia','Kaczan','1952-07-09','F'),('53111050325','Kalina','Araszkiewicz','1953-11-10','F'),('57021895111','Krystian','Kochel','1957-02-18','M'),('61032333353','Antoni','Doroszkiewicz','1961-03-23','M'),('62032611454','Albert','Sacharczuk','1962-03-26','M'),('64060147921','Kornelia','Milej','1964-06-01','F'),('65112547890','Michał','Sobel','1965-11-25','M'),('66062390217','Konstanty','Strójwąs','1966-06-23','M'),('66111758197','Łukasz','Chowaniak','1966-11-17','M'),('67051892167','Kamila','Małas','1967-05-18','F'),('67082796692','Alan','Hartman','1967-08-27','M'),('67090258030','Oskar','Zawiasa','1967-09-02','M'),('67112275861','Apolonia','Ambrozik','1967-11-22','F'),('68042130581','Malwina','Witko','1968-04-21','F'),('69122394457','Ernest','Stoltmann','1969-12-23','M'),('70040566192','Dominik','Krzywoń','1970-04-05','M'),('70091863350','Cezary','Bela','1970-09-18','M'),('71031755663','Lidia','Zbroja','1971-03-17','F'),('73022663814','Szymon','Czermak','1973-02-26','M'),('73110176789','Kalina','Frost','1973-11-01','F'),('73111033115','Wojciech','Kokosza','1973-11-10','M'),('74032510130','Sebastian','Paździora','1974-03-25','M'),('75052125186','Natasza','Gadzina','1975-05-21','F'),('76062622492','Norbert','Strzała','1976-06-26','M'),('76100142737','Grzegorz','Galos','1976-10-01','M'),('77050935035','Antoni','Radziewicz','1977-05-09','M'),('78100622385','Marika','Rudowicz','1978-10-06','F'),('78101120569','Elżbieta','Kołaczek','1978-10-11','F'),('79101799788','Nela','Miętka','1979-10-17','F'),('82071541013','Norbert','Loba','1982-07-15','M'),('83112438101','Róża','Pusz','1983-11-24','F'),('84122632235','Szymon','Heczko','1984-12-26','M'),('86091566256','Kacper','Solich','1986-09-15','M'),('88072759857','Patryk','Foit','1988-07-27','M'),('89041417727','Julita','Klekot','1989-04-14','F'),('91022418335','Ryszard','Wawszczak','1991-02-24','M'),('92091090374','Dawid','Wiercigroch','1992-09-10','M'),('93051591535','Antoni','Hawro','1993-05-15','M'),('94030839668','Liwia','Kott','1994-03-08','F'),('95032360189','Kornelia','Araszkiewicz','1995-03-23','F'),('95100321407','Aurelia','Warwas','1995-10-03','F'),('96103027798','Marcin','Danieluk','1996-10-30','M'),('97010754492','Łukasz','Andziak','1997-01-07','M'),('97080444242','Angelika','Orwat','1997-08-04','F'),('98020180680','Apolonia','Panuś','1998-02-01','F');
/*!40000 ALTER TABLE `ludzie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `PESEL` char(11) NOT NULL,
  `zawod_id` int(11) NOT NULL,
  `pensja` float NOT NULL,
  KEY `indx` (`pensja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES ('00212153387',4,21467.9),('02281866218',3,16333.9),('03320915430',1,11642.6),('04283073850',1,19890.6),('04293039611',2,3854.53),('52070917522',1,16411.9),('53111050325',1,14670),('57021895111',1,20019.8),('61032333353',1,23337.4),('62032611454',2,5295.48),('64060147921',1,6171.76),('65112547890',4,45912.9),('66062390217',3,7243.12),('66111758197',1,15060.1),('67051892167',4,19686.1),('67082796692',2,5937.97),('67090258030',2,4219.8),('67112275861',2,3951.31),('68042130581',4,36102.6),('69122394457',4,44939),('70040566192',1,18205.6),('70091863350',1,10129.9),('71031755663',1,12619.3),('73022663814',3,14672.6),('73110176789',1,14694.1),('73111033115',1,19844.7),('74032510130',3,15670.1),('75052125186',4,15557.5),('76062622492',3,18805.7),('76100142737',1,14574.3),('77050935035',1,10838.6),('78100622385',4,39966.9),('78101120569',1,14962.1),('79101799788',4,48578.5),('82071541013',1,8934.27),('83112438101',1,10153.8),('84122632235',3,16267.5),('86091566256',4,29445.4),('88072759857',2,4548.32),('89041417727',4,32759.5),('91022418335',1,19136),('92091090374',1,17087.4),('93051591535',3,17865.7),('94030839668',4,13130.7),('95032360189',2,5331.27),('95100321407',2,3551.53),('96103027798',2,5531.96),('97010754492',3,14693.8),('97080444242',2,5530.51),('98020180680',4,39648.7);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zawody`
--

DROP TABLE IF EXISTS `zawody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zawody` (
  `zawod_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(50) NOT NULL,
  `pensja_min` float NOT NULL,
  `pensja_max` float NOT NULL,
  PRIMARY KEY (`zawod_id`),
  CONSTRAINT `minmax` CHECK (`pensja_min` >= 0 and `pensja_max` >= 0 and `pensja_min` < `pensja_max`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zawody`
--

LOCK TABLES `zawody` WRITE;
/*!40000 ALTER TABLE `zawody` DISABLE KEYS */;
INSERT INTO `zawody` VALUES (1,'polityk',6000,25000),(2,'nauczyciel',3200.51,6210.2),(3,'lekarz',4200,20000),(4,'informatyk',5000,50000);
/*!40000 ALTER TABLE `zawody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'census'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `people_to_profession` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `people_to_profession`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE psl char(11);
  DECLARE birth_date date;
  DECLARE gender enum('F', 'M');
  DECLARE proff_id int;
  DECLARE earn float;
  DECLARE min_ern float;
  DECLARE max_ern float;
  DECLARE cur_ludzie CURSOR FOR SELECT PESEL, data_urodzenia, plec FROM ludzie;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur_ludzie;

  gen_loop: LOOP
    FETCH cur_ludzie INTO psl, birth_date, gender;

    IF TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) >= 18 THEN
      IF done THEN
        LEAVE gen_loop;
      END IF;

      fetch_proffesion: LOOP
        SET proff_id = FLOOR(1 + RAND()*4);
        IF proff_id <> 3 THEN
          LEAVE fetch_proffesion;
        ELSEIF gender = "M" THEN
          IF TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) <= 65 THEN
            LEAVE fetch_proffesion;
          END IF;
        ELSE
          IF TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) <= 06 THEN
            LEAVE fetch_proffesion;
          END IF;
        END IF;
      END LOOP;

      SET min_ern = (SELECT pensja_min FROM zawody WHERE zawod_id = proff_id);
      SET max_ern = (SELECT pensja_max FROM zawody WHERE zawod_id = proff_id);

      SET earn = ROUND((min_ern + (RAND() * (max_ern - min_ern + 1))), 2);

      INSERT INTO pracownicy VALUES (psl, proff_id, earn);
    END IF;
  END LOOP;

  CLOSE cur_ludzie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `podwyzka` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp852 */ ;
/*!50003 SET character_set_results = cp852 */ ;
/*!50003 SET collation_connection  = cp852_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `podwyzka`(IN praca varchar(50))
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE psl char(11);
  DECLARE pen float;
  DECLARE wanted_id int DEFAULT (SELECT zawod_id FROM zawody WHERE nazwa = praca);
  DECLARE id int;
  DECLARE cur CURSOR FOR SELECT PESEL, zawod_id, pensja FROM pracownicy;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  START TRANSACTION;
    raise_loop: LOOP
      FETCH cur INTO psl, id, pen;
      IF id = wanted_id THEN 
        IF done THEN
          LEAVE raise_loop;
        END IF;

        IF (pen * 1.05) > (SELECT pensja_max FROM zawody WHERE zawod_id = id) THEN
          ROLLBACK;
          LEAVE raise_loop;
        ELSE
          UPDATE pracownicy SET pensja = (pen * 1.05) WHERE PESEL = psl;
        END IF;
      END IF;
    END LOOP;
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 11:00:55
