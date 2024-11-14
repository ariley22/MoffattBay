CREATE DATABASE  IF NOT EXISTS `moffat_bay_lodge`;
USE `moffat_bay_lodge`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(70) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` VALUES (1,'john.doe@gmail.com','John','Doe','6512458745','HandsomeJoe1!'),(2,'jane.doe@gmail.com','Jane','Doe','5621458745','pass121!!Z'),(3,'steven.spielberg@gmail.com','Steven','Spielberg','7632589654','st*ve()Sp');

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `room_type` enum('Double Full','Queen','Double Queen','King') NOT NULL,
  `number_of_guests` int NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `total_cost` decimal(10,0) NOT NULL,
  PRIMARY KEY (`reservation_id`),
  UNIQUE KEY `reservation_id_UNIQUE` (`reservation_id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1000004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` VALUES (1000000,1,'King',2,'2024-11-01','2024-11-03',320),(1000001,2,'Queen',1,'2024-11-05','2024-11-09',540),(1000002,3,'Double Queen',4,'2024-11-15','2024-11-25',1500),(1000003,1,'Double Full',2,'2024-11-17','2024-11-20',360);