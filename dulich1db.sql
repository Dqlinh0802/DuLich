-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dulich1db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noiDung` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayBL` datetime DEFAULT NULL,
  `idTour` int NOT NULL,
  `idNguoiDung` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idNguoiDung_idx` (`idNguoiDung`),
  KEY `fk_idTour_idx` (`idTour`),
  CONSTRAINT `fk_idNguoiDung_binhLuan` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`),
  CONSTRAINT `fk_idTour_binhLuan` FOREIGN KEY (`idTour`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
INSERT INTO `binhluan` VALUES (1,'Rất đẹp','2021-09-24 00:00:00',3,10),(2,'10 điểm','2021-02-24 00:00:00',6,12),(3,'Cũng tạm','2021-01-24 00:00:00',7,14),(4,'Cũng tạm','2021-03-02 00:00:00',3,12),(5,'Cũng tạm','2021-09-24 00:00:00',3,14),(6,'Chuyến đi hơi ngắn','2021-01-24 00:00:00',3,10),(7,'Cũng tạm, nhưng hướng dẫn viên rất nhiệt tình','2021-01-24 00:00:00',7,10),(8,'Rất đẹp hướng dẫn viên rất nhiệt tình','2021-04-23 00:00:00',6,10),(23,'Tuyệt vời','2021-10-02 00:00:00',6,8),(24,'10 điểm','2021-10-02 00:00:00',49,8),(25,'Tuyệt vời','2021-10-02 00:00:00',6,8),(26,'Tạm ổn','2021-10-02 00:00:00',49,8),(27,'Tuyệt vời','2021-10-02 00:00:00',6,8),(28,'Xin chào','2021-10-02 00:00:00',49,8),(29,'Tuyệt vời','2021-10-02 00:00:00',6,8),(30,'Tuyệt vời','2021-10-02 00:00:00',6,8),(31,'Tuyệt vời','2014-12-22 00:00:00',6,8),(32,'Tuyệt vời','2021-10-02 14:13:31',6,8),(33,'Đẹp lắm','2021-10-02 14:13:49',49,8),(34,'Chuyến đi tốt tôi sẽ đi lại','2021-10-02 14:19:03',49,8),(35,'Chuyến đi tốt tôi sẽ đi lại','2021-10-02 14:19:57',49,8),(36,'Đẹp lắm','2021-10-02 14:20:07',49,8),(37,'Hải Phong ơi','2021-10-02 14:26:03',3,8),(60,'Ảnh đẹp','2021-10-02 21:25:01',3,8),(61,'Tuyệt vời','2021-10-03 19:50:13',6,8),(62,'Ảnh đẹp','2021-10-03 19:50:42',3,8);
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethoadon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soLuong` int NOT NULL,
  `gia` decimal(10,0) NOT NULL,
  `idHoaDon` int NOT NULL,
  `idTour` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idTour_idx` (`idTour`),
  KEY `fk_idHoaDon_idx` (`idHoaDon`),
  CONSTRAINT `fk_idHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `hoadon` (`id`),
  CONSTRAINT `fk_idTour` FOREIGN KEY (`idTour`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (1,1,5000000,1,2),(2,1,5000000,1,3),(3,2,5000000,2,3),(4,1,5000000,3,3),(5,1,12300000,3,6),(6,1,5000000,4,3),(7,5,5000000,5,3),(8,1,12300000,5,6),(9,1,12000000,5,7),(10,8,3000000,5,12),(11,1,12300000,6,6),(12,1,12000000,6,7),(13,1,5000000,7,3),(14,4,5000000,8,3),(15,1,12300000,8,6);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diemthamquan`
--

DROP TABLE IF EXISTS `diemthamquan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diemthamquan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenDiaDanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemthamquan`
--

LOCK TABLES `diemthamquan` WRITE;
/*!40000 ALTER TABLE `diemthamquan` DISABLE KEYS */;
/*!40000 ALTER TABLE `diemthamquan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tongTien` decimal(10,0) NOT NULL,
  `ngayMua` datetime DEFAULT NULL,
  `idNguoiDung` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idKhachHang_idx` (`idNguoiDung`),
  CONSTRAINT `fk_idKhachHangDK` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,10000000,NULL,NULL),(2,10000000,'2021-10-02 14:25:08',NULL),(3,17300000,'2021-10-02 15:28:26',NULL),(4,5000000,'2021-10-02 17:34:23',NULL),(5,73300000,'2021-10-02 21:20:07',NULL),(6,24300000,'2021-10-02 21:26:04',NULL),(7,5000000,'2021-10-03 19:39:22',NULL),(8,32300000,'2021-10-03 19:45:23',NULL);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huongdanvien`
--

DROP TABLE IF EXISTS `huongdanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huongdanvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenHDV` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huongdanvien`
--

LOCK TABLES `huongdanvien` WRITE;
/*!40000 ALTER TABLE `huongdanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `huongdanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachsan`
--

DROP TABLE IF EXISTS `khachsan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachsan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenKhachSan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `diaChi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idDiemThamQuan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_DiemThamQuan_KS_idx` (`idDiemThamQuan`),
  CONSTRAINT `fk_DiemThamQuan_KS` FOREIGN KEY (`idDiemThamQuan`) REFERENCES `diemthamquan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachsan`
--

LOCK TABLES `khachsan` WRITE;
/*!40000 ALTER TABLE `khachsan` DISABLE KEYS */;
/*!40000 ALTER TABLE `khachsan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ho` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sdt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `taiKhoan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `matKhau` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vaiTro` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taiKhoan_UNIQUE` (`taiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (1,'Nguyen Van','1','123@gmail.com','123','linh','$2a$10$j3G/EwRAIS6cqeDYfTmAM.bDLfod43KtH5TBDfkYD7FAM5bZ6LiRy',NULL,NULL,'ROLE_MANAGE'),(2,'Nguyen Van','A','1233@gmail.com','2','123','$2a$10$FH8Xn6VE7e8LECjoygv0iuvrE5NB0XiLpVkpwlV28ZHnSVd4t9FMi',NULL,NULL,'ROLE_USER'),(3,'Nguyen Van','A','teolinh123@yahoo.com','0123456789','admin','$2a$10$ukPbAVc.0YB.sYAdbKHRIuhg2fsbUs9AL73pD9aI2x1POv0EVv8Eq',NULL,NULL,'ROLE_ADMIN'),(8,'Nguyen Van','A','teolinh1231@yahoo.com','0123456789','admin123332323','$2a$10$6D8.yqb6QmUVkhcpVqBh1OzjAgSl9Ufze0JlTdgc32oCySFTcMrsS',NULL,NULL,'ROLE_USER'),(9,'Nguyen Van','A','teophuong147@gmail.com','0123456789','5','$2a$10$B9rIQbhC.gmrZ2gc30MxAeq14IGVyGuDmwBUwD0T98R7zSulI3OuO',NULL,NULL,'ROLE_USER'),(10,'Huynh','Bao','12ss@gmail.com','0123456789','bao','$2a$10$hFCx7YTs3p.GltqujD.87.XvRAtV48LNlSGM.RmkQwoFkkQXVjgA2',NULL,NULL,'ROLE_MANAGE'),(12,'1','1','123@gmail.com','123','2r2','$2a$10$LFiaKBKi6o17lI626cZx.ewNm503z4h1YM4B0SM82w2FgQni9eM/.',NULL,NULL,'ROLE_USER'),(14,'2','o','2q@gmail.com','2','223','$2a$10$UfF.5dUzWvqxlNhX/TZMaOB37GL0kiLiLL0ahM6/4c44kEfrR6R/2',NULL,NULL,'ROLE_USER'),(15,'Nguyen Van','A','teolin2w23@yahoo.com','0123456789','ngan','$2a$10$hFCx7YTs3p.GltqujD.87.XvRAtV48LNlSGM.RmkQwoFkkQXVjgA2','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631969857/aueuqwacoxlpd1grqwhn.png',NULL,'ROLE_USER'),(16,'','','','','','$2a$10$UUbDtd7WTaBxxA1JRoODVu1n57QfyjoKMUdv3aENKGKjNdirnuD6i','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633185605/r4johtaxzuf16u4m6jf6.png',NULL,'ROLE_USER'),(17,'Nguyen Van','Toan','s@jibee.com.vn','0123456789','toantona','$2a$10$JEs.Vf2g48ZlFDArf3eXoeqE27XoLMaO1gqxTZfqZBnykdqx89pyK','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633258028/ziytdlcwmodsimoja1wt.png',NULL,'ROLE_USER'),(18,'Nguyen Van','Toan','jbv2@jo2e.com.vn','0123456789','tienMinh','$2a$10$mc.61lYFLq0Fg775C3O.bu8rCsX7icf.CRs8b73UW9bmLiLNH1Gl2','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633258145/uwacxiypvizfg4nggdwx.png',NULL,'ROLE_USER'),(19,'Nguyen Van','Linh','teoph@gmail.com','0123456789','thanhTien','$2a$10$mYGGZMERQ3DLcUfsfaey7OFxdYiJ5S34XL43cF/gUgPNjjnOIaSDu','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633258263/j1ama0ytj6wfqnxql6wl.png',NULL,'ROLE_MANAGE'),(20,'Nguyen Van','An','123@gmail.com','0988855956','nhan','$2a$10$dQ.r7YugHsTRmwMnjDY0pe500pEqxBTInq/eIxPp958d2mgu1VDdK','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633264434/s1ibdieaq8fjiv5nsuer.png',NULL,'ROLE_USER'),(21,'Nguyen Van','A','dqlinh0802@gmail.com','0988855956','linh123','$2a$10$ZOvY6sast9wRdRB7jrQdG.YiNWIu/n1O1bAQx748iMi0jzhCf2DWC','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633264457/lv4mwftm5aad83ik3ciw.png',NULL,'ROLE_USER'),(22,'Nguyen Van','A','123@gmail.com','0123456789','linh2','$2a$10$I0oArpIjgiH5EuZ3Aec/BeHBABAVRYq.2V/2jEPTkY4N314ms9g3S','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633264945/htjanwl4gblz6ktj4gco.png',NULL,'ROLE_USER');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenTour` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayBD` datetime DEFAULT NULL,
  `ngayKT` datetime DEFAULT NULL,
  `gia` decimal(10,0) NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idHDV` int DEFAULT NULL,
  `idDiemThamQuan` int DEFAULT NULL,
  `moTa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idHDV_idx` (`idHDV`),
  KEY `fk_idDiemThamQuan_idx` (`idDiemThamQuan`),
  CONSTRAINT `fk_idDiemThamQuan` FOREIGN KEY (`idDiemThamQuan`) REFERENCES `diemthamquan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idHDV` FOREIGN KEY (`idHDV`) REFERENCES `huongdanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tiền Giang','2021-08-09 00:00:00','2021-08-09 00:00:00',5000000,NULL,NULL,NULL,'Tiền Giang là một tỉnh ven biển thuộc đồng bằng sông Cửu Long, Việt Nam.'),(2,'Hạ Long','2021-08-09 00:00:00','2021-08-09 00:00:00',5000000,NULL,NULL,NULL,'Hạ Long là thành phố tỉnh lỵ của tỉnh Quảng Ninh, Việt Nam.'),(3,'Hải Phòng','2021-08-25 00:00:00','2021-08-25 00:00:00',5000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633197826/lv0qp643hsrlh61jxoe1.jpg',NULL,NULL,'Hải Phòng là thành phố cảng quan trọng, trung tâm công nghiệp, cảng biển.'),(6,'Hà Nội','2021-09-04 00:00:00','2021-09-24 00:00:00',12300000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631604971/tscnqclfxlfui2gavov8.jpg',NULL,NULL,'Hà Nội, thủ đô của Việt Nam, nổi tiếng với kiến trúc trăm tuổi và nền văn hóa phong phú với sự ảnh hưởng của khu vực Đông Nam Á.'),(7,'Bến Tre','2021-09-04 00:00:00','2021-09-24 00:00:00',12000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631669268/c2hdlkcenffhpmno7s0m.jpg',NULL,NULL,'Bến Tre xứ sở của những cây dừa được mệnh danh là \"Xứ sở dừa Việt Nam\" mang đặc trưng của sông nước miệt vườn Nam Bộ'),(8,'Cam Ranh','2021-09-04 00:00:00','2021-09-24 00:00:00',2500000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631951160/mqrzf0dr35v5ntwhuaki.jpg',NULL,NULL,'Cam Ranh là một thành phố ven biển trực thuộc tỉnh Khánh Hòa'),(9,'Cam Ranh','2021-09-04 00:00:00','2021-09-24 00:00:00',2500000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631951160/mqrzf0dr35v5ntwhuaki.jpg',NULL,NULL,'Cam Ranh là một thành phố ven biển trực thuộc tỉnh Khánh Hòa'),(10,'Cát Bà','2021-09-04 00:00:00','2021-09-24 00:00:00',3000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631581877/hkrllqhje0raa9aemxgu.jpg',NULL,NULL,'Cát Bà là thị trấn huyện lỵ của huyện Cát Hải, thành phố Hải Phòng'),(12,'Cát Bà','2021-09-04 00:00:00','2021-09-24 00:00:00',3000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631581877/hkrllqhje0raa9aemxgu.jpg',NULL,NULL,'Cát Bà là thị trấn huyện lỵ của huyện Cát Hải, thành phố Hải Phòng'),(13,'Hà Nội','2021-09-03 00:00:00','2021-10-06 00:00:00',12000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631958186/kol61kpmawihovhr5rdm.jpg',NULL,NULL,'Hà Nội, thủ đô của Việt Nam, nổi tiếng với kiến trúc trăm tuổi và nền văn hóa phong phú với sự ảnh hưởng của khu vực Đông Nam Á.'),(14,'Cao Bằng','2021-09-02 00:00:00','2021-09-21 00:00:00',2300000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632109824/kmq9inysb7wgjq4p2afy.jpg',NULL,NULL,'Thành phố Cao Bằng hiện là đô thị loại III, là trung tâm kinh tế, văn hóa, giáo dục, chính trị của tỉnh Cao Bằng và là một trong những trung tâm kinh tế của vùng Đông Bắc.'),(15,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(16,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(17,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(18,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632114689/st5qtecmgouxpytymuci.png',NULL,NULL,'Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(19,'Long An','2021-09-01 00:00:00','2021-09-02 00:00:00',285000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632470339/yg3a76bgpcswhnuvlxcd.jpg',NULL,NULL,'Long An là một tỉnh thuộc vùng đồng bằng sông Cửu Long. Là tỉnh duy nhất của miền Tây nối liền cửa ngõ Thành phố Hồ Chí Minh.'),(20,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(21,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(22,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(23,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632114689/st5qtecmgouxpytymuci.png',NULL,NULL,'Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(24,'Long An','2021-09-01 00:00:00','2021-09-02 00:00:00',285000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632470339/yg3a76bgpcswhnuvlxcd.jpg',NULL,NULL,'Long An là một tỉnh thuộc vùng đồng bằng sông Cửu Long. Là tỉnh duy nhất của miền Tây nối liền cửa ngõ Thành phố Hồ Chí Minh.'),(25,'Cát Bà','2021-09-04 00:00:00','2021-09-24 00:00:00',3000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631581877/hkrllqhje0raa9aemxgu.jpg',NULL,NULL,'Cát Bà là thị trấn huyện lỵ của huyện Cát Hải, thành phố Hải Phòng'),(26,'Hà Nội','2021-09-03 00:00:00','2021-10-06 00:00:00',12000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631958186/kol61kpmawihovhr5rdm.jpg',NULL,NULL,'Hà Nội, thủ đô của Việt Nam, nổi tiếng với kiến trúc trăm tuổi và nền văn hóa phong phú với sự ảnh hưởng của khu vực Đông Nam Á.'),(27,'Cao Bằng','2021-09-02 00:00:00','2021-09-21 00:00:00',2300000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632109824/kmq9inysb7wgjq4p2afy.jpg',NULL,NULL,'Thành phố Cao Bằng hiện là đô thị loại III, là trung tâm kinh tế, văn hóa, giáo dục, chính trị của tỉnh Cao Bằng và là một trong những trung tâm kinh tế của vùng Đông Bắc.'),(28,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(29,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(30,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(31,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632114689/st5qtecmgouxpytymuci.png',NULL,NULL,'Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(32,'Long An','2021-09-01 00:00:00','2021-09-02 00:00:00',285000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632470339/yg3a76bgpcswhnuvlxcd.jpg',NULL,NULL,'Long An là một tỉnh thuộc vùng đồng bằng sông Cửu Long. Là tỉnh duy nhất của miền Tây nối liền cửa ngõ Thành phố Hồ Chí Minh.'),(33,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(34,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(35,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(36,'Hà Nội','2021-09-03 00:00:00','2021-10-06 00:00:00',12000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1631958186/kol61kpmawihovhr5rdm.jpg',NULL,NULL,'Hà Nội, thủ đô của Việt Nam, nổi tiếng với kiến trúc trăm tuổi và nền văn hóa phong phú với sự ảnh hưởng của khu vực Đông Nam Á.'),(37,'Cao Bằng','2021-09-02 00:00:00','2021-09-21 00:00:00',2300000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632109824/kmq9inysb7wgjq4p2afy.jpg',NULL,NULL,'Thành phố Cao Bằng hiện là đô thị loại III, là trung tâm kinh tế, văn hóa, giáo dục, chính trị của tỉnh Cao Bằng và là một trong những trung tâm kinh tế của vùng Đông Bắc.'),(38,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(39,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(40,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(41,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632114689/st5qtecmgouxpytymuci.png',NULL,NULL,'Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(42,'Long An','2021-09-01 00:00:00','2021-09-02 00:00:00',285000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632470339/yg3a76bgpcswhnuvlxcd.jpg',NULL,NULL,'Long An là một tỉnh thuộc vùng đồng bằng sông Cửu Long. Là tỉnh duy nhất của miền Tây nối liền cửa ngõ Thành phố Hồ Chí Minh.'),(43,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(44,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(45,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(46,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632114689/st5qtecmgouxpytymuci.png',NULL,NULL,'Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(47,'Long An','2021-09-01 00:00:00','2021-09-02 00:00:00',285000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632470339/yg3a76bgpcswhnuvlxcd.jpg',NULL,NULL,'Long An là một tỉnh thuộc vùng đồng bằng sông Cửu Long. Là tỉnh duy nhất của miền Tây nối liền cửa ngõ Thành phố Hồ Chí Minh.'),(48,'Đà Lạt','2021-09-20 00:00:00','2021-09-21 00:00:00',200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113566/y7spo9zpbzoj0mjusrgk.jpg',NULL,NULL,'Đà Lạt được mệnh danh là \"thành phố của mùa Xuân\". Nằm trên độ cao 1.475m so với mặt nước biển nên dù là một xứ nhiệt đới.'),(49,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113629/dgbsbrv9hxwept9jaolu.jpg',NULL,NULL,'Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(50,'Vũng Tàu','2021-09-14 00:00:00','2021-09-15 00:00:00',850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632113678/ojrqnmoparvj4jg8d9uj.jpg',NULL,NULL,'Nằm cách thành phố Hồ Chí Minh khoảng 100 km, Vũng Tàu được mệnh danh là thành phố biển đẹp nhất nhì phía Nam.'),(51,'Sài Gòn','2021-08-31 00:00:00','2021-09-02 00:00:00',952000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1632736349/spdegc6zv3d0idpszbeh.jpg',NULL,NULL,'Thành phố Hồ Chí Minh (thường được gọi là Sài Gòn) là một thành phố ở miền nam Việt Nam nổi tiếng với vai trò nòng cốt trong chiến tranh Việt Nam. Sài Gòn cũng được biết đến với địa danh của thực dân Pháp, trong đó có Nhà thờ Đức Bà được xây dựng hoàn toàn bằng nguyên liệu nhập khẩu từ Pháp và Bưu điện trung tâm được xây dựng vào thế kỷ 19.'),(52,'Hà Nội','2021-10-08 00:00:00','2021-10-17 00:00:00',12000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633129538/m5gurz7txnptdgoxuiej.jpg',NULL,NULL,'Đẹp'),(53,'Tiền Giang','2021-10-15 00:00:00','2021-10-16 00:00:00',1,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633185555/uodmkmkyrhrq2nxkqryq.jpg',NULL,NULL,'Tỉnh miền Nam sông nước, thơ mộng');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-03 20:42:56
