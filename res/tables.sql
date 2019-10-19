-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: Tab
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Suggested_Prod`
--

DROP TABLE IF EXISTS `Suggested_Prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Suggested_Prod` (
  `Name` varchar(50) DEFAULT NULL,
  `Upvotes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suggested_Prod`
--

LOCK TABLES `Suggested_Prod` WRITE;
/*!40000 ALTER TABLE `Suggested_Prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `Suggested_Prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_per_shop`
--

DROP TABLE IF EXISTS `items_per_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_per_shop` (
  `Product_id` varchar(50) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Sold_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_per_shop`
--

LOCK TABLES `items_per_shop` WRITE;
/*!40000 ALTER TABLE `items_per_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_per_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_per_shop`
--

DROP TABLE IF EXISTS `order_per_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_per_shop` (
  `Order_id` varchar(50) NOT NULL,
  `Time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Total_Amount` float DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_per_shop`
--

LOCK TABLES `order_per_shop` WRITE;
/*!40000 ALTER TABLE `order_per_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_per_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_product_contents`
--

DROP TABLE IF EXISTS `ordered_product_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordered_product_contents` (
  `Order_id` varchar(50) DEFAULT NULL,
  `Product_id` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_product_contents`
--

LOCK TABLES `ordered_product_contents` WRITE;
/*!40000 ALTER TABLE `ordered_product_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordered_product_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_Table`
--

DROP TABLE IF EXISTS `product_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_Table` (
  `Product_id` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `MRP` int(11) DEFAULT NULL,
  `Tags` varchar(50) DEFAULT NULL,
  `Pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_Table`
--

LOCK TABLES `product_Table` WRITE;
/*!40000 ALTER TABLE `product_Table` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `Shop_id` int(11) NOT NULL,
  `User_id` varchar(50) DEFAULT NULL,
  `Shop_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Location_X` varchar(50) DEFAULT NULL,
  `Location_Y` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Phone_no` int(12) DEFAULT NULL,
  PRIMARY KEY (`Shop_id`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `User_Id` varchar(50) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Phone_no` varchar(12) DEFAULT NULL,
  `Home_addr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-10-30 11:03:21
