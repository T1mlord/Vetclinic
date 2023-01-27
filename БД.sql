-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vetclin
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `AnimalID` int NOT NULL AUTO_INCREMENT,
  `AnimalName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AnimalType` int DEFAULT NULL,
  `AnimalOwner` int DEFAULT NULL,
  PRIMARY KEY (`AnimalID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Жухля',1,1),(2,'Пятка',5,3),(3,'Дюпель',2,2);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enters`
--

DROP TABLE IF EXISTS `enters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enters` (
  `EnterID` int NOT NULL AUTO_INCREMENT,
  `EnterDate` datetime NOT NULL,
  `AnimalID` int DEFAULT NULL,
  `Doctor` int DEFAULT NULL,
  PRIMARY KEY (`EnterID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enters`
--

LOCK TABLES `enters` WRITE;
/*!40000 ALTER TABLE `enters` DISABLE KEYS */;
INSERT INTO `enters` VALUES (1,'2022-12-12 00:00:00',1,2),(2,'2023-01-01 00:00:00',2,2),(3,'2023-01-10 00:00:00',3,2);
/*!40000 ALTER TABLE `enters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertp`
--

DROP TABLE IF EXISTS `entertp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entertp` (
  `EnterRPID` int NOT NULL AUTO_INCREMENT,
  `EnterID` int DEFAULT NULL,
  `Diagnosis` int DEFAULT NULL,
  `Prescription` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`EnterRPID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertp`
--

LOCK TABLES `entertp` WRITE;
/*!40000 ALTER TABLE `entertp` DISABLE KEYS */;
INSERT INTO `entertp` VALUES (1,1,7,'Постельный режим'),(2,2,6,'Гипс, успокоительное'),(3,3,3,'Укол от бешенства'),(4,2,1,'Здоров');
/*!40000 ALTER TABLE `entertp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `illness`
--

DROP TABLE IF EXISTS `illness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `illness` (
  `IllID` int NOT NULL AUTO_INCREMENT,
  `IllName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`IllID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illness`
--

LOCK TABLES `illness` WRITE;
/*!40000 ALTER TABLE `illness` DISABLE KEYS */;
INSERT INTO `illness` VALUES (1,'Здоров'),(2,'Ботулизм'),(3,'Бешенство'),(4,'Астма'),(5,'Артроз'),(6,'Перелом'),(7,'Вывих'),(8,'Водянка'),(9,'Глаукома'),(10,'Мёртв');
/*!40000 ALTER TABLE `illness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `OwnerID` int NOT NULL AUTO_INCREMENT,
  `OwnerFIO` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OwnerBirthDate` date NOT NULL,
  `OwnerPhone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OwnerPassport` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Беспалов Денис Павлович','2000-12-12','88005553535','1875009564'),(2,'Коротких Анна Владимировна','1989-09-10','81224367890','5542098765'),(3,'Хасанов Глеб Шамигулович','1999-11-11','89058763219','45678936');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `TypeID` int NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Собака'),(2,'Кошка'),(3,'Кролик'),(4,'Морская свинка'),(5,'Хорёк'),(6,'Крыса'),(7,'Черепаха сухопутная'),(8,'Попугай');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserFIO` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserBirthDate` date NOT NULL,
  `UserPhone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserPassport` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserStatus` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserLogin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserPassword` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserHiringDate` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserDismissalDate` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Иванов Иван Иванович','1999-12-12','88005553434','976346291','Работает','1','1','2018.10.10',NULL),(2,'Кротов Александр Петрович','1980-11-00','893034476611','7765198400','Работает','2','2','2000.11.12',NULL),(3,'Кубасова Елизавета Игоревна','2000-12-11','89457760187','55468006487','Уволен','3','3','2015.09.03','2023.01.01');
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

-- Dump completed on 2023-01-27 21:50:17
