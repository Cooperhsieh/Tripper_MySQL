CREATE DATABASE  IF NOT EXISTS `TRIPPER` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `TRIPPER`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: TRIPPER
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Admin_List`
--

DROP TABLE IF EXISTS `Admin_List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin_List` (
  `ADMIN_ID` int NOT NULL,
  `ACCOUNT_ID` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL,
  `TOKEN_ID` varchar(100) DEFAULT NULL,
  `CREATE_ID` int DEFAULT NULL,
  `C_DATETIME` datetime DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `L_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ADMIN_ID`),
  UNIQUE KEY `ACCOUNT_ID_UNIQUE` (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理者帳號';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin_List`
--

LOCK TABLES `Admin_List` WRITE;
/*!40000 ALTER TABLE `Admin_List` DISABLE KEYS */;
/*!40000 ALTER TABLE `Admin_List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_D`
--

DROP TABLE IF EXISTS `Blog_D`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Blog_D` (
  `TRANS_ID` varchar(16) NOT NULL,
  `BLOG_ID` varchar(16) DEFAULT NULL,
  `SEQ_NO` int DEFAULT NULL,
  `LOC_ID` varchar(16) DEFAULT NULL,
  `BLOG_NOTE` varchar(1000) DEFAULT NULL,
  `S_DATE` date DEFAULT NULL,
  `S_TIME` time DEFAULT NULL,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='網誌資料子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_D`
--

LOCK TABLES `Blog_D` WRITE;
/*!40000 ALTER TABLE `Blog_D` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_D` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_D_Pic`
--

DROP TABLE IF EXISTS `Blog_D_Pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Blog_D_Pic` (
  `PIC_ID` varchar(16) NOT NULL,
  `TRANS_ID` varchar(16) DEFAULT NULL,
  `LOC_ID` varchar(16) DEFAULT NULL,
  `SEQ_NO` int DEFAULT NULL,
  `PIC` longblob,
  PRIMARY KEY (`PIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='網誌資料照片子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_D_Pic`
--

LOCK TABLES `Blog_D_Pic` WRITE;
/*!40000 ALTER TABLE `Blog_D_Pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_D_Pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_M`
--

DROP TABLE IF EXISTS `Blog_M`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Blog_M` (
  `BLOG_ID` varchar(16) NOT NULL,
  `TRIP_ID` varchar(16) DEFAULT NULL,
  `BLOG_TITLE` varchar(100) DEFAULT NULL,
  `BLOG_DESC` varchar(200) DEFAULT NULL,
  `PIC` longblob,
  `USER_ID` int DEFAULT NULL,
  `C_DATETIME` datetime DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='網誌資料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_M`
--

LOCK TABLES `Blog_M` WRITE;
/*!40000 ALTER TABLE `Blog_M` DISABLE KEYS */;
/*!40000 ALTER TABLE `Blog_M` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Friends`
--

DROP TABLE IF EXISTS `Friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Friends` (
  `TRANS_ID` varchar(16) NOT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `FRIEND_ID` int DEFAULT NULL,
  `F_STATUS` int DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='好友資料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Friends`
--

LOCK TABLES `Friends` WRITE;
/*!40000 ALTER TABLE `Friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `Friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Goal`
--

DROP TABLE IF EXISTS `Goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Goal` (
  `TRANS_ID` varchar(16) NOT NULL,
  `GOAL_ID` int DEFAULT NULL,
  `GOAL_NAME` varchar(50) DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='成就達成資料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goal`
--

LOCK TABLES `Goal` WRITE;
/*!40000 ALTER TABLE `Goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `Goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Goal_List`
--

DROP TABLE IF EXISTS `Goal_List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Goal_List` (
  `GOAL_ID` int NOT NULL AUTO_INCREMENT,
  `GOAL_NAME` varchar(50) DEFAULT NULL,
  `GOAL_DESC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`GOAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='成就清單';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goal_List`
--

LOCK TABLES `Goal_List` WRITE;
/*!40000 ALTER TABLE `Goal_List` DISABLE KEYS */;
/*!40000 ALTER TABLE `Goal_List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Location` (
  `LOC_ID` varchar(16) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `LOC_PIC` longblob,
  `LOC_TYPE` varchar(15) DEFAULT NULL,
  `CITY` varchar(15) DEFAULT NULL,
  `INFO` varchar(15) DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `CREATE_ID` int DEFAULT NULL,
  `M_USER_ID` int DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `C_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='景點資料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `MEMBER_ID` int NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` varchar(12) DEFAULT NULL,
  `PASSWORD` varchar(12) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `NICKNAME` varchar(25) DEFAULT NULL,
  `LOGIN_TYPE` int DEFAULT NULL,
  `P_PIC` longblob,
  `B_PIC` longblob,
  `TOKEN_ID` varchar(100) DEFAULT NULL,
  `C_DATETIME` datetime DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `L_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='會員資料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Message` (
  `MSG_ID` varchar(16) NOT NULL,
  `MSG_TYPE` varchar(1) DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `MSG` varchar(250) DEFAULT NULL,
  `MSG_STAT` int DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知訊息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trip_D`
--

DROP TABLE IF EXISTS `Trip_D`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trip_D` (
  `TRANS_ID` varchar(16) NOT NULL,
  `TRIP_ID` varchar(16) DEFAULT NULL,
  `SEQ_NO` int DEFAULT NULL,
  `LOC_ID` varchar(16) DEFAULT NULL,
  `S_DATE` date DEFAULT NULL,
  `S_TIME` time DEFAULT NULL,
  `STAYTIME` datetime DEFAULT NULL,
  `MEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程資料副表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trip_D`
--

LOCK TABLES `Trip_D` WRITE;
/*!40000 ALTER TABLE `Trip_D` DISABLE KEYS */;
/*!40000 ALTER TABLE `Trip_D` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trip_Group`
--

DROP TABLE IF EXISTS `Trip_Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trip_Group` (
  `GROUP_TRANS_ID` varchar(16) NOT NULL,
  `TRIP_ID` varchar(16) NOT NULL,
  `C_DATETIME` datetime DEFAULT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  PRIMARY KEY (`GROUP_TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程揪團資料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trip_Group`
--

LOCK TABLES `Trip_Group` WRITE;
/*!40000 ALTER TABLE `Trip_Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `Trip_Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trip_M`
--

DROP TABLE IF EXISTS `Trip_M`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trip_M` (
  `TRIP_ID` varchar(16) NOT NULL,
  `MEMBER_ID` int DEFAULT NULL,
  `TRIP_TITLE` varchar(255) DEFAULT NULL,
  `S_DATE` date DEFAULT NULL,
  `S_TIME` time DEFAULT NULL,
  `D_COUNT` datetime DEFAULT NULL,
  `C_DATETIME` datetime DEFAULT NULL,
  `M_DATETIME` datetime DEFAULT NULL,
  `P_MAX` int DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`TRIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程資料表主檔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trip_M`
--

LOCK TABLES `Trip_M` WRITE;
/*!40000 ALTER TABLE `Trip_M` DISABLE KEYS */;
/*!40000 ALTER TABLE `Trip_M` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-02 12:09:08
