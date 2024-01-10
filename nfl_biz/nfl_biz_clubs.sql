-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nfl_biz
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `TEAM` tinytext,
  `HOME_STADIUM` tinytext,
  `LOCATION` text,
  `LATITUDE` decimal(20,0) DEFAULT NULL,
  `LONGITUDE` decimal(20,0) DEFAULT NULL,
  `MASCOT` tinytext,
  `CONFERENCE` tinytext,
  `DIVISION` tinytext,
  `SUPERBOWL_WINS` int DEFAULT NULL,
  `YEAR_ESTABLISHED` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES ('Buffalo Bills','Highmark Stadium','Ochard Park, New York',43,-79,'Buffalo Billy','AFC','East',0,1959),('Miami Dolphins','Hard Rock Stadium','Miami Gardens, Florida',26,-80,'T.D.','AFC','East',2,1965),('New England Patriots','Gillete Stadium','Foxborough, Massachusetts',42,-71,'Pat Patriot','AFC','East',6,1959),('New York Jets','MetLife Stadium','East Rutherford, New Jersey',41,-74,'N/A','AFC','East',1,1959),('Denver Broncos','Empower Field at Mile High','Denver, Colorado',40,-105,'Miles','AFC','West',3,1959),('Kansas City Chiefs','Arrowhead Stadium','Kansas City, Missouri',39,-94,'K.C. Wolf','AFC','West',3,1959),('Las Vegas Raiders','Allegiant Stadium','Paradise, Nevada',36,-115,'Raider Rush','AFC','West',3,1960),('Los Angeles Chargers','SoFi Stadium','Inglewood, California',34,-118,'N/A','AFC','West',0,1959),('Baltimore Ravens','M&T Bank Stadium','Baltimore, Maryland',39,-77,'Poe','AFC','North',2,1996),('Cincinnati Bengals','Paycor Stadium','Cincinnati, Ohio',39,-85,'Who Dey','AFC','North',0,1967),('Cleveland Browns','Cleveland Browns Stadium','Cleveland, Ohio',42,-82,'Chomps','AFC','North',0,1944),('Pittsburgh Steelers','Acrisure Stadium','Pittsburgh, Pennsylvania',40,-80,'Steely McBeam','AFC','North',6,1933),('Houston Texans','NRG Stadium','Houston, Texas',30,-95,'Toro','AFC','South',0,1999),('Indianapolis Colts','Lucas Oil Stadium','Indianapolis, Indiana',40,-86,'Blue','AFC','South',2,1953),('Jacksonville Jaguars','EverBank Stadium','Jacksonville, Florida',30,-82,'Jaxson de Ville','AFC','South',0,1993),('Tennessee Titans','Nissan Stadium','Nashville, Tennessee',36,-87,'T-Rac','AFC','South',0,1959),('Dallas Cowboys','AT&T Stadium','Arlington, Texas',33,-97,'Rowdy','NFC','East',5,1960),('New York Giants','MetLife Stadium','East Rutherford, New Jersey',41,-74,'N/A','NFC','East',4,1925),('Philadelphia Eagles','Lincoln Financial Field','Philadelphia, Pennsylvania',40,-75,'Swoop','NFC','East',1,1933),('Washington Commanders','FedExField','Landover, Maryland',39,-77,'Major Tuddy','NFC','East',3,1932),('Arizona Cardinals','State Farm Stadium','Glendale, Arizona',34,-112,'Big Red','NFC','West',0,1898),('Los Angeles Rams','SoFi Stadium','Inglewood, California',34,-118,'Rampage','NFC','West',2,1937),('San Francisco 49ers','Levi\'s Stadium','Santa Clara, California',37,-122,'Sourdough Sam','NFC','West',5,1944),('Seattle Seahawks','Lumen Field','Seattle, Washington',48,-122,'Blitz','NFC','West',1,1974),('Chicago Bears','Soldier Field','Chicago, Illinois',42,-88,'Staley Da Bear','NFC','North',1,1920),('Detroit Lions','Ford Field','Detroit, Michigan',42,-83,'Roary the Lion','NFC','North',0,1930),('Green Bay Packers','Lambeau Field','Green Bay, Wisconsin',45,-88,'N/A','NFC','North',4,1919),('Minnesota Vikings','U.S. Bank Stadium','Minneapolis, Minnesota',45,-93,'Viktor the Viking','NFC','North',0,1960),('Atlanta Falcons','Mercedes-Benz Stadium','Atlanta, Georgia',34,-84,'Freddie Falcon','NFC','South',0,1965),('Carolina Panthers','Bank of America Stadium','Charlotte, North Carolina',35,-81,'Sir Purr','NFC','South',0,1993),('New Orleans Saints','Caesars Superdome','New Orleans, Louisiana',30,-90,'Gumbo','NFC','South',1,1966),('Tampa Bay Buccaneers','Raymond James Stadium','Tampa, Florida',28,-83,'Captain Fear','NFC','South',2,1974);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08 18:44:23
