CREATE DATABASE  IF NOT EXISTS `larry_blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `larry_blog`;

-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: larry_blog
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.17.04.1

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NULL,
  `title` varchar(40) NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(15) DEFAULT 'Larry Jiang',
  `createTime` datetime NOT NULL,
   `updateTime` datetime DEFAULT NULL,
   `viewCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259926 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for tables `blogs`
--
LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES 
	(1,1,'Test1','Test ## Hello World !!!','This is a Test blog','Larry Jiang','2017-06-15 19:57:17','2017-06-15 16:29:56',100),
    (2,2,'Test2','Test ## Hello World !!!','This is a Test blog','Larry Jiang','2017-06-15 19:57:17','2017-06-16 17:31:03',100);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_admin` varchar(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
	(1,'Larry Jiang','jhy134','jhy19940921AA','larry.hangyan@gmail.com','true');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `user_intro`
--

DROP TABLE IF EXISTS `user_intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_intro` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `nickname`varchar(20) DEFAULT NULL,
   `user_name` varchar(20) DEFAULT NULL,
   `avatar` varchar(255) null,
   `phone` varchar(20) null,
   `email` varchar(50) default 'larry.hangyan@gmail.com' NULL,
   `signature` varchar(2000) null,
   `address` varchar(50) null,
   `github` varchar(50) NULL,
   `wechat` varchar(20) default 'jianghangyan007' NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_intro`
--

LOCK TABLES `user_intro` WRITE;
/*!40000 ALTER TABLE `user_intro` DISABLE KEYS */;
INSERT INTO `user_intro` VALUES 
	(1,'Larry Jiang','jhy134','http://www.eumji025.com/image/avatar.jpg','(1) 781-775-0997','larry.hangyan@gmail.com','This is my signature','415 South Street MB.0791, Waltham, MA, 02453','https://github.com/LarryJiang134','jianghangyan007');
/*!40000 ALTER TABLE `user_intro` ENABLE KEYS */;
UNLOCK TABLES;





--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `category_name` varchar(20) DEFAULT 'blog',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagName_UNIQUE` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES 
	(1,'blog'),
    (2,'read'),
    (3,'tech');
    /*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `tag_name` varchar(50) DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagName_UNIQUE` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES 
	(1,'java'),
    (2,'python'),
    (3,'C'),
    (4,'ai'),
    (5,'web'),
    (6,'computer vision'),
    (7,'game');
    
    /*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
   `tag_id` int(11) NOT NULL,
   `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES 
	(1,1),
    (4,1);
    /*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;








/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-25  9:07:35