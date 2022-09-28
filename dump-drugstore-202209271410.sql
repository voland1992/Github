-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: drugstore
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DrugName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,'Loperamide'),(2,'Paracetamol'),(3,'Peroxide'),(4,'Diazepam'),(5,'Amoxicillin'),(6,'Tetracikline'),(7,'L-carnitine'),(8,'Glukofash');
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs_in_stores`
--

DROP TABLE IF EXISTS `drugs_in_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_in_stores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `store_id` bigint DEFAULT NULL,
  `drug_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `durgs_in_stores_FK` (`drug_id`),
  KEY `durgs_in_stores_FK_1` (`store_id`),
  CONSTRAINT `durgs_in_stores_FK` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  CONSTRAINT `durgs_in_stores_FK_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_in_stores`
--

LOCK TABLES `drugs_in_stores` WRITE;
/*!40000 ALTER TABLE `drugs_in_stores` DISABLE KEYS */;
INSERT INTO `drugs_in_stores` VALUES (1,NULL,NULL);
/*!40000 ALTER TABLE `drugs_in_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nikolaev_branch`
--

DROP TABLE IF EXISTS `nikolaev_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nikolaev_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `store_id` bigint DEFAULT NULL,
  `drug_id` bigint DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nikolaev_branch_un` (`stock`),
  KEY `nikolaev_branch_FK` (`store_id`),
  KEY `nikolaev_branch_FK_1` (`drug_id`),
  CONSTRAINT `nikolaev_branch_FK` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `nikolaev_branch_FK_1` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nikolaev_branch`
--

LOCK TABLES `nikolaev_branch` WRITE;
/*!40000 ALTER TABLE `nikolaev_branch` DISABLE KEYS */;
INSERT INTO `nikolaev_branch` VALUES (1,4,8,10),(2,5,3,15),(3,5,6,0),(4,6,5,23);
/*!40000 ALTER TABLE `nikolaev_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odessa_branch`
--

DROP TABLE IF EXISTS `odessa_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odessa_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `store_id` bigint DEFAULT NULL,
  `drug_id` bigint DEFAULT NULL,
  `Stock` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `odessa_branch_un` (`Stock`),
  KEY `odessa_branch_FK` (`store_id`),
  KEY `odessa_branch_FK_1` (`drug_id`),
  CONSTRAINT `odessa_branch_FK` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `odessa_branch_FK_1` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odessa_branch`
--

LOCK TABLES `odessa_branch` WRITE;
/*!40000 ALTER TABLE `odessa_branch` DISABLE KEYS */;
INSERT INTO `odessa_branch` VALUES (1,1,1,12),(2,2,3,15),(3,3,7,0);
/*!40000 ALTER TABLE `odessa_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Lidia'),(2,'Anna'),(3,'Elena'),(4,'Evgeniya'),(5,'Ekaterina'),(6,'Maria');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'drugstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 14:10:28
