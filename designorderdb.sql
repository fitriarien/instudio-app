/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.33 : Database - designorderdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`designorderdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `designorderdb`;

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `image_id` bigint NOT NULL AUTO_INCREMENT,
  `image_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image_status` int DEFAULT '1',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKlxnnh0ir05khn8iu9tgwh1yyk` (`user_id`),
  CONSTRAINT `FKlxnnh0ir05khn8iu9tgwh1yyk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `image` */

insert  into `image`(`image_id`,`image_name`,`image_path`,`image_status`,`user_id`) values 
(1,'KS_Island_D','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-island.jpg?alt=media&token=a9c2aac2-54fe-4b7c-9124-cb112940efb4',1,4),
(2,'KS_Letter_L_A','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-L.jpg?alt=media&token=51132ebb-0666-464b-be43-73e5d4ff9fb2',1,4),
(3,'Storage_Bed_Set','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/bed-set-storage.jpg?alt=media&token=65463dac-60e6-4a6d-a4c7-544d389a7223',1,4),
(4,'KS_Letter_I','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-I.jpg?alt=media&token=2cd7bfb7-c154-499b-b47c-bbe70540eeb5',1,4),
(5,'KS_Letter_U','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/kitchen-set-U.jpg?alt=media&token=388a1c62-d743-4611-9a53-18c2cf34ff58',1,4),
(6,'Sofa_Set_A','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/sofa-set-A.jpg?alt=media&token=ad2b93f1-f566-4daf-9022-95ccc8e68434',1,4),
(7,'Sofa_Set_B','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/sofa-set-B.jpg?alt=media&token=8478489c-8a0a-4db8-bf5f-ffa7cb189a2f',1,4),
(8,'Canopy_Bed_Set','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/canopy-bed-set.jpg?alt=media&token=696c390d-9c2f-4110-9e05-0defae1ea7af',1,4),
(9,'Wardrobe','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/wardrobe.jpg?alt=media&token=649e1eb5-f660-443a-b80a-a4e0b5e743a8',1,4),
(10,'Bookshelf','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/window-seat-bookshelf.jpg?alt=media&token=32dc659c-19ff-443c-bfda-71ce0d7081c9',1,4),
(11,'TV Cabinet','',0,13),
(12,'TV Cabinet','',0,13),
(13,'TV Cabinet','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/tv-cabinet.jpg?alt=media&token=44852d7b-eeb1-460c-a20e-28af26e7cd9c',1,13),
(14,'Living-room','https://firebasestorage.googleapis.com/v0/b/instudio-dc36b.appspot.com/o/living-room-set.jpg?alt=media&token=2dc9a0c9-758f-41da-bf00-fe6e49fae018',1,14);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `order_code` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_time` time DEFAULT NULL,
  `visit_address` varchar(100) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `order_amount` double DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order` */

insert  into `order`(`order_id`,`order_code`,`order_date`,`visit_date`,`visit_time`,`visit_address`,`user_id`,`order_amount`) values 
(1,'TR1','2023-02-24','2023-03-03','10:00:00','Jakarta',5,2000000),
(2,'TR2','2023-02-24','2023-03-01','08:00:00','Jakarta Timur',5,0),
(3,'TR3','2023-02-24','2023-03-02','09:00:00','Jakarta Utara',5,0),
(4,'TR4','2023-02-25','2023-03-02','09:00:00','Jakarta Utara',7,12000000),
(5,'TR5','2023-02-25','2023-04-01','08:30:00','Jakarta Utara',8,24000000),
(6,'TR6','2023-02-26','2023-02-28','09:30:00','Jakarta Utara',8,0),
(7,'TR7','2023-02-28','2023-05-05','10:30:00','Jl. Abcd No.1, Bekasi',9,6000000),
(8,'TR8','2023-03-01','2023-05-07','14:00:00','Jl. Abcd No.1, Bekasi',9,5000000),
(9,'TR9','2023-05-01','2023-05-23','07:30:00','Cherry Hill Rd 9021, New York',10,11000000),
(10,'TR10','2023-05-01','2035-12-25','12:30:00','Cherry Hill Rd 9021, New York',10,7500000),
(11,'TR11','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,0),
(12,'TR12','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,0),
(13,'TR13','2023-05-01','2024-05-23','10:00:00','Cherry Hill Rd 9021, New York',10,0),
(14,'TR14','2023-05-01','2022-04-23','13:30:00','Cherry Hill Rd 9021, New York',10,0),
(15,'TR15','2023-05-03','2023-12-23','10:00:00','Bandung',10,0),
(16,'TR16','2023-05-03','2023-12-23','10:00:00','Jakarta',10,0),
(17,'TR17','2023-05-03','2024-12-12','08:00:00','Jl. Abcd No.1, Bekasi',9,15000000);

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_det_id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `estimated_time` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_size` bigint DEFAULT NULL,
  `product_theme` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`order_det_id`),
  KEY `fk_prod_order_id` (`product_id`),
  KEY `fk_order_id` (`order_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_prod_order_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_details` */

insert  into `order_details`(`order_det_id`,`order_id`,`estimated_time`,`product_id`,`product_size`,`product_theme`,`subtotal`) values 
(1,1,0,1,6,'Industrial',36000000),
(2,1,2,2,4,'Minimalis',2000000),
(3,4,3,4,8,'Minimalis',12000000),
(4,5,2,5,12,'Industrial',24000000),
(5,7,1,6,6,'Black & White',6000000),
(6,8,4,1,5,'Black & White',5000000),
(7,10,3,7,3,'Colorful',7500000),
(8,9,1,58,5,'Black & White',11000000),
(9,17,2,10,16,'Black & White',15000000);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_date` date DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `payment_detail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tf_acc_number` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_pay_order_id` (`order_id`),
  CONSTRAINT `fk_pay_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`payment_date`,`order_id`,`payment_method`,`payment_amount`,`payment_detail`,`tf_acc_number`) values 
(1,'2023-02-25',4,'cash',5000000,'DP',''),
(2,'2023-02-25',4,'transfer bank',7000000,'Pelunasan','1234567890'),
(3,'2023-02-25',5,'bank transfer',12000000,'DP','1234567890'),
(4,'2023-02-28',7,'bank transfer',3000000,'DP','1234567890'),
(5,'2023-02-28',7,'bank transfer',3000000,'Pelunasan','1234567890'),
(6,'2023-03-01',5,'bank transfer',12000000,'Pelunasan','12345678'),
(7,'2023-03-01',8,'cash',2000000,'DP',NULL),
(8,'2023-05-01',8,'Bank Transfer',3000000,'Pelunasan','8627910401'),
(9,'2023-05-01',9,'Bank Transfer',3000000,'Down Payment','975271919'),
(10,'2023-05-03',9,'Bank Transfer',8000000,'Pelunasan','976437892'),
(11,'2023-05-03',17,'Cash',2000000,'Down Payment',''),
(13,'2023-05-03',17,'Bank Transfer',10000000,'Pelunasan','7625893993'),
(14,'2023-05-03',17,'Bank Transfer',3000000,'Pelunasan','865289393');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) DEFAULT NULL,
  `product_model` varchar(30) DEFAULT NULL,
  `estimated_cost` double DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  `product_status` int DEFAULT '1',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `fk_image_id` (`image_id`),
  KEY `FK979liw4xk18ncpl87u4tygx2u` (`user_id`),
  CONSTRAINT `FK979liw4xk18ncpl87u4tygx2u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`product_model`,`estimated_cost`,`image_id`,`product_status`,`user_id`) values 
(1,'Kitchen Set A','L-shaped',7000000,2,1,4),
(2,'Kitchen Set B','I-shaped',6500000,4,1,4),
(4,'Kitchen Set C','U-shaped',9000000,5,1,4),
(5,'Kitchen Set D','Island',15000000,1,1,4),
(6,'Bed Set A','Storage Bed',8000000,3,1,4),
(7,'Sofa Set A','Scandinavian',8000000,6,1,4),
(8,'Sofa Set B','Round L-shaped',12000000,7,1,4),
(9,'Bed Set B','Canopy Bed',10000000,8,1,4),
(10,'Wardrobe','L-shaped',11000000,9,1,4),
(11,'Bookshelf','Window Seat',7500000,10,1,4),
(56,'TV Cabinet','Float',2500000,NULL,0,13),
(57,'TV Cabinet','Float',3000000,13,1,14),
(58,'Living Room Set','Modern',12000000,14,1,14);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`role`,`name`,`email`,`contact`,`address`,`status`) values 
(4,'admin1','$2a$10$PW6EpQzXwKz8tJHuCgcJUetau0mpDdObDK3nh.B.LDKdmj9VVxuTi','admin','Admin 1','admin1@admin.com','08123456789','Jl. Abc. no.1',1),
(5,'customer1','$2a$10$sYcWbQ2I1Y4vYPb/lxNV8uvznbk1xWEORsf/AGztLg8O8S92z7oRS','customer','Customer 1','customer1@yahoo.com','080011223344','Jakarta Timur',1),
(7,'customer2','$2a$10$JTQlmI5Z2TY4hfz8nvvE8ewy.yfSQBliPv1lu2thKHI/x3OMPOnXO','customer','Customer 2','customer2@gmail.com','01234567890','Jakarta',1),
(8,'Customer_3','$2a$10$6yPO8FUW3spADMS4gdOepuFfKVPeyukJaWS42EWybkxbpUrWAJmoW','customer','Customer 3','customer3@outlook.com','0801234567890','Jakarta Timur',1),
(9,'Customer4','$2a$10$pI2NqzRZX8V9kPNacP69MuteD0li3iw/6BW6bow6gM8ZYAVQTFJ2O','customer','Customer 4','customer4@outlook.com','0123456789','Jl. Abcd No.1, Bekasi',1),
(10,'Test123','$2a$10$Vmu2vh/DZzZGoWHBMr/lr.LwzTUZEqaFjijxWr7rXqNrJZrpS8PO2','customer','Test Nama','Test123@gmail.com','96417991','Bandung',1),
(11,'Customer5','$2a$10$H/sr4AtKqGNYLkjMLUDqGuaC82pEHvk9464eTSE1FS/0wRry9Alie','customer','Customer 5','Customer5@gmail.com','0735283994','Bandung',1),
(12,'Customer6','$2a$10$LW84VXTJA47DekAuhXN7i.LtRlT4UtALmkcWlxOUlU2of5FQzDoYu','admin','Customer 6','Customer6@gmail.com','985687436508','Bandung',1),
(13,'Admin2','$2a$10$i3e3o3TW/9li7Jwe71zFpOTsinvmGCTISm3lICOyu444V8WM9kt3y','admin','Admin 2','admin2@gmail.com','98658764875','Jakarta',1),
(14,'Admin3','$2a$10$9xD7VI.xJeDl4TPzdccKvuuj1kxok2cvRWixkqAriRZM3OgVd8kXW','admin','Admin 3','Admin3@gmail.com','6788574653','Jakarta',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
