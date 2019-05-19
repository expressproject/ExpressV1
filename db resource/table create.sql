CREATE DATABASE  IF NOT EXISTS `whether_express` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `whether_express`;
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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `cmt_id` int(10) NOT NULL,
  `up_id` int(15) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `effective_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_deleted` varchar(10) NOT NULL,
  PRIMARY KEY (`cmt_id`,`up_id`),
  KEY `FK_up_id_comment_idx` (`up_id`),
  CONSTRAINT `FK_up_id_comment` FOREIGN KEY (`up_id`) REFERENCES `user_post` (`up_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(15) NOT NULL AUTO_INCREMENT,
  `User_first-name` varchar(10) DEFAULT NULL,
  `User_last-name` varchar(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `effective_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `active_status` varchar(5) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `add_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `addressline_1` varchar(45) NOT NULL,
  `addressline_2` varchar(45) DEFAULT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `country` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`add_id`,`user_id`),
  KEY `FK_userid_address_idx` (`user_id`),
  CONSTRAINT `FK_userid_address` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_intraction_channel`
--

DROP TABLE IF EXISTS `user_intraction_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_intraction_channel` (
  `uic_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `website` varchar(25) NOT NULL,
  `User_Intraction_Channelcol` varchar(45) NOT NULL,
  PRIMARY KEY (`uic_id`,`user_id`),
  KEY `FK_user_id_idx` (`user_id`),
  CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_post`
--

DROP TABLE IF EXISTS `user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_post` (
  `up_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `post_info` varchar(40) NOT NULL,
  `effective_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `is_deleted` varchar(5) NOT NULL,
  PRIMARY KEY (`up_id`,`user_id`),
  KEY `FK_userid_postinfo_idx` (`user_id`),
  CONSTRAINT `FK_userid_postinfo` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `up_id` int(10) NOT NULL,
  `upvote_count` int(30) NOT NULL,
  `downvote_count` int(30) NOT NULL,
  `ispost_deleted` varchar(5) NOT NULL,
  PRIMARY KEY (`vote_id`,`up_id`),
  KEY `FK_upid_vote_idx` (`up_id`),
  CONSTRAINT `FK_upid_vote` FOREIGN KEY (`up_id`) REFERENCES `user_post` (`up_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2019-05-18 14:08:31
