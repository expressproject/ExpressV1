-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: whether_express
-- ------------------------------------------------------
-- Server version	5.5.1-m2-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (151,1001,NULL,'2019-07-14 00:00:00','2019-07-15 00:00:00','y'),(152,1002,NULL,'2019-05-16 00:00:00','2019-06-18 00:00:00','n'),(153,1003,NULL,'2019-03-21 00:00:00','2019-04-22 00:00:00','y');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (121,'ravi','kumar','ravikumar','123456','2019-06-12 00:00:00','2019-06-13 00:00:00','n'),(122,'ramesh','mahalingam','mahalingamra','134679','2019-08-12 00:00:00','2019-08-18 00:00:00','n'),(123,'ashish','kumar','kumarashish','159753','2019-05-15 00:00:00','2019-05-15 00:00:00','y'),(124,'avilash','panigrahi','aviavi','456123','2019-06-16 00:00:00','2019-07-15 00:00:00','n');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (101,121,'5677 Strong St.',NULL,'Nantes','NY','France'),(102,122,'636 St Kilda Road',NULL,'Melbourne','CA','Australia'),(103,123,'8489 Strong St.',NULL,'Las Vegas','Victoria','USA'),(104,124,'54 rue Royale',NULL,'Nantes','NV','France');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_intraction_channel`
--

LOCK TABLES `user_intraction_channel` WRITE;
/*!40000 ALTER TABLE `user_intraction_channel` DISABLE KEYS */;
INSERT INTO `user_intraction_channel` VALUES (1,121,'ravi@ravi',652194,'ravi@ravi.com'),(2,122,'ramesh@ramesh',325895,'ramesh@ramesh.com'),(3,123,'ashish@ashish',35977,'ashish@ashish.com'),(4,124,'avilash@avilash',63211,'avilash@avilash.com');
/*!40000 ALTER TABLE `user_intraction_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_post`
--

LOCK TABLES `user_post` WRITE;
/*!40000 ALTER TABLE `user_post` DISABLE KEYS */;
INSERT INTO `user_post` VALUES (1001,121,'null','2019-06-15 00:00:00','2019-06-17 00:00:00','y'),(1002,123,'null','2019-07-11 00:00:00','2019-08-19 00:00:00','y'),(1003,124,'null','2019-09-12 00:00:00','2019-09-19 00:00:00','y');
/*!40000 ALTER TABLE `user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (301,1001,5,1,'y'),(302,1002,2,2,'y'),(303,1003,5,1,'y');
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'whether_express'
--

--
-- Dumping routines for database 'whether_express'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-18 19:26:26
