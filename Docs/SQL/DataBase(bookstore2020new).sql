CREATE DATABASE IF NOT EXISTS bookstore2020new;
USE bookstore2020new;
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
DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;

/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `author_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_has_book` (
  `author_author_id` int NOT NULL,
  `book_book_ID` int NOT NULL,
  PRIMARY KEY (`author_author_id`,`book_book_ID`),
  KEY `fk_author_has_book_book1_idx` (`book_book_ID`),
  KEY `fk_author_has_book_author1_idx` (`author_author_id`),
  CONSTRAINT `fk_author_has_book_author1` FOREIGN KEY (`author_author_id`) REFERENCES `author` (`author_id`),
  CONSTRAINT `fk_author_has_book_book1` FOREIGN KEY (`book_book_ID`) REFERENCES `book` (`book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `author_has_book` WRITE;
/*!40000 ALTER TABLE `author_has_book` DISABLE KEYS */;

/*!40000 ALTER TABLE `author_has_book` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_ID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `pages_number` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `quantity_in_stock` int DEFAULT NULL,
  `book status` enum('brand new','almost new','good','medium','rickety') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `bookprice` int DEFAULT NULL,
  `StockPlace` enum('Store','Stock Room') DEFAULT NULL,
  PRIMARY KEY (`book_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;

/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `book_has_suplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_has_suplier` (
  `book_book_id` int NOT NULL,
  `suplier_suplier_id` int NOT NULL,
  PRIMARY KEY (`book_book_id`,`suplier_suplier_id`),
  KEY `fk_book_has_suplier_suplier1_idx` (`suplier_suplier_id`),
  KEY `fk_book_has_suplier_book1_idx` (`book_book_id`),
  CONSTRAINT `fk_book_has_suplier_book1` FOREIGN KEY (`book_book_id`) REFERENCES `book` (`book_ID`),
  CONSTRAINT `fk_book_has_suplier_suplier1` FOREIGN KEY (`suplier_suplier_id`) REFERENCES `suplier` (`suplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `book_has_suplier` WRITE;
/*!40000 ALTER TABLE `book_has_suplier` DISABLE KEYS */;

/*!40000 ALTER TABLE `book_has_suplier` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `booksuplierorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booksuplierorder` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `amount` int unsigned DEFAULT NULL,
  `book_id` int unsigned DEFAULT NULL,
  `suplier_id` int unsigned DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Order_Status` enum('ordered','delivered','cancelled') DEFAULT NULL,
  `book_book_id` int NOT NULL,
  `suplier_suplier_id` int NOT NULL,
  `total_payment` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_booksuplierorder_book1_idx` (`book_book_id`),
  KEY `fk_booksuplierorder_suplier1_idx` (`suplier_suplier_id`),
  CONSTRAINT `fk_booksuplierorder_book1` FOREIGN KEY (`book_book_id`) REFERENCES `book` (`book_ID`),
  CONSTRAINT `fk_booksuplierorder_suplier1` FOREIGN KEY (`suplier_suplier_id`) REFERENCES `suplier` (`suplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `booksuplierorder` WRITE;
/*!40000 ALTER TABLE `booksuplierorder` DISABLE KEYS */;

/*!40000 ALTER TABLE `booksuplierorder` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `landphone` varchar(12) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(12) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `order_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_books` (
  `quantity` int NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  `book_book_ID` int NOT NULL,
  `orders_orderID` int NOT NULL,
  KEY `fk_order_books_book1_idx` (`book_book_ID`),
  KEY `fk_order_books_orders1_idx` (`orders_orderID`),
  CONSTRAINT `fk_order_books_book1` FOREIGN KEY (`book_book_ID`) REFERENCES `book` (`book_ID`),
  CONSTRAINT `fk_order_books_orders1` FOREIGN KEY (`orders_orderID`) REFERENCES `orders` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_books` WRITE;
/*!40000 ALTER TABLE `order_books` DISABLE KEYS */;

/*!40000 ALTER TABLE `order_books` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL,
  `orderdate` date DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `shipped_date` varchar(45) DEFAULT NULL,
  `payment_total` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `shippers_shipper_id` int NOT NULL,
  `OrderStatus` enum('ordered','delivered','cancelled','waiting for payment') DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `fk_orders_shippers1_idx` (`shippers_shipper_id`),
  CONSTRAINT `fk_orders_shippers1` FOREIGN KEY (`shippers_shipper_id`) REFERENCES `shippers` (`shipper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `payment_method_id` tinyint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;

/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `publish_year` year DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;

/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `publisher_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher_has_book` (
  `publisher_publisher_id` int NOT NULL,
  `book_book_ID` int NOT NULL,
  PRIMARY KEY (`publisher_publisher_id`,`book_book_ID`),
  KEY `fk_publisher_has_book_book1_idx` (`book_book_ID`),
  KEY `fk_publisher_has_book_publisher1_idx` (`publisher_publisher_id`),
  CONSTRAINT `fk_publisher_has_book_book1` FOREIGN KEY (`book_book_ID`) REFERENCES `book` (`book_ID`),
  CONSTRAINT `fk_publisher_has_book_publisher1` FOREIGN KEY (`publisher_publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `publisher_has_book` WRITE;
/*!40000 ALTER TABLE `publisher_has_book` DISABLE KEYS */;

/*!40000 ALTER TABLE `publisher_has_book` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sales_man`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_man` (
  `id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `works_hours_per_mounth` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sales_man` WRITE;
/*!40000 ALTER TABLE `sales_man` DISABLE KEYS */;

/*!40000 ALTER TABLE `sales_man` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `shipper_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `shipping_method_shipping_method_id` int NOT NULL,
  PRIMARY KEY (`shipper_id`),
  KEY `fk_shippers_shipping_method1_idx` (`shipping_method_shipping_method_id`),
  CONSTRAINT `fk_shippers_shipping_method1` FOREIGN KEY (`shipping_method_shipping_method_id`) REFERENCES `shipping_method` (`shipping_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;

/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `shipping_method_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`shipping_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;

/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `store_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_payment` (
  `month` date NOT NULL,
  `phone_number` int DEFAULT NULL,
  `land_line_number` int DEFAULT NULL,
  `shipment` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `water_tax` int DEFAULT NULL,
  `electric_pwer_tax` int DEFAULT NULL,
  `service_charge` int DEFAULT NULL,
  `workers_salary` int DEFAULT NULL,
  `others` varchar(40) DEFAULT NULL,
  `transaction_id` int NOT NULL,
  `booksuplierorder_OrderID` int NOT NULL,
  `StorePaymentID` int NOT NULL AUTO_INCREMENT,
  `total_payment_store` int DEFAULT NULL,
  PRIMARY KEY (`StorePaymentID`),
  KEY `fk_store_payment_transaction1_idx` (`transaction_id`),
  KEY `fk_store_payment_booksuplierorder1_idx` (`booksuplierorder_OrderID`),
  CONSTRAINT `fk_store_payment_booksuplierorder1` FOREIGN KEY (`booksuplierorder_OrderID`) REFERENCES `booksuplierorder` (`OrderID`),
  CONSTRAINT `fk_store_payment_transaction1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `store_payment` WRITE;
/*!40000 ALTER TABLE `store_payment` DISABLE KEYS */;

/*!40000 ALTER TABLE `store_payment` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `suplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suplier` (
  `suplier_id` int NOT NULL AUTO_INCREMENT,
  `Suplier_name` varchar(45) DEFAULT NULL,
  `Suplier_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `suplier` WRITE;
/*!40000 ALTER TABLE `suplier` DISABLE KEYS */;

/*!40000 ALTER TABLE `suplier` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `purchased_books` varchar(45) DEFAULT NULL,
  `total_payment` int DEFAULT NULL,
  `payment_method_payment_method_id` tinyint NOT NULL,
  `orders_orderID` int NOT NULL,
  `customer_customer_id` int NOT NULL,
  `sales_man_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_transaction_payment_method_idx` (`payment_method_payment_method_id`),
  KEY `fk_transaction_orders1_idx` (`orders_orderID`),
  KEY `fk_transaction_customer1_idx` (`customer_customer_id`),
  KEY `fk_transaction_sales_man1_idx` (`sales_man_id`),
  CONSTRAINT `fk_transaction_customer1` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_transaction_orders1` FOREIGN KEY (`orders_orderID`) REFERENCES `orders` (`orderID`),
  CONSTRAINT `fk_transaction_payment_method` FOREIGN KEY (`payment_method_payment_method_id`) REFERENCES `payment_method` (`payment_method_id`),
  CONSTRAINT `fk_transaction_sales_man1` FOREIGN KEY (`sales_man_id`) REFERENCES `sales_man` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;

/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `translator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translator` (
  `translator_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`translator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `translator` WRITE;
/*!40000 ALTER TABLE `translator` DISABLE KEYS */;

/*!40000 ALTER TABLE `translator` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `translator_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translator_has_book` (
  `translator_translator_id` int NOT NULL,
  `book_book_ID` int NOT NULL,
  PRIMARY KEY (`translator_translator_id`,`book_book_ID`),
  KEY `fk_translator_has_book_book1_idx` (`book_book_ID`),
  KEY `fk_translator_has_book_translator1_idx` (`translator_translator_id`),
  CONSTRAINT `fk_translator_has_book_book1` FOREIGN KEY (`book_book_ID`) REFERENCES `book` (`book_ID`),
  CONSTRAINT `fk_translator_has_book_translator1` FOREIGN KEY (`translator_translator_id`) REFERENCES `translator` (`translator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `translator_has_book` WRITE;
/*!40000 ALTER TABLE `translator_has_book` DISABLE KEYS */;

/*!40000 ALTER TABLE `translator_has_book` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `worker_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_update` (
  `id` int NOT NULL,
  `past_worker` binary(1) DEFAULT NULL,
  `present_worker` binary(1) DEFAULT NULL,
  `start_work_date` date DEFAULT NULL,
  `end_work_date` date DEFAULT NULL,
  `sales_man_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_worker_update_sales_man1_idx` (`sales_man_id`),
  CONSTRAINT `fk_worker_update_sales_man1` FOREIGN KEY (`sales_man_id`) REFERENCES `sales_man` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `worker_update` WRITE;
/*!40000 ALTER TABLE `worker_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker_update` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
