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
  CONSTRAINT `fk_idNguoiDung_binhLuan` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idTour_binhLuan` FOREIGN KEY (`idTour`) REFERENCES `tour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
INSERT INTO `binhluan` VALUES (1,'Rất đẹp','2021-09-24 00:00:00',3,10),(6,'Chuyến đi hơi ngắn','2021-01-24 00:00:00',3,10),(7,'Cũng tạm, nhưng hướng dẫn viên rất nhiệt tình','2021-01-24 00:00:00',7,10),(24,'10 điểm','2021-10-02 00:00:00',49,8),(26,'Tạm ổn','2021-10-02 00:00:00',49,8),(28,'Xin chào','2021-10-02 00:00:00',49,8),(33,'Đẹp lắm','2021-10-02 14:13:49',49,8),(34,'Chuyến đi tốt tôi sẽ đi lại','2021-10-02 14:19:03',49,8),(35,'Chuyến đi tốt tôi sẽ đi lại','2021-10-02 14:19:57',49,8),(36,'Đẹp lắm','2021-10-02 14:20:07',49,8),(37,'Hải Phong ơi','2021-10-02 14:26:03',3,8),(60,'Ảnh đẹp','2021-10-02 21:25:01',3,8),(62,'Ảnh đẹp','2021-10-03 19:50:42',3,8),(63,'Tuyệt vời','2021-10-05 14:24:14',7,8),(64,'đẹp','2021-10-06 20:44:31',2,8),(65,'Núi đẹp lắm','2021-10-07 16:09:02',2,8),(66,'Đẹp lắm','2021-10-08 18:47:51',2,15),(67,'Đẹp lắm','2021-10-08 18:47:53',2,15),(68,'a','2021-10-08 18:51:41',2,15),(69,'a','2021-10-08 19:37:59',2,3),(70,'Thác nước rất đẹp\n','2021-10-08 20:39:57',3,10),(71,'Rất nhiều cảnh đẹp','2021-10-09 16:26:17',2,3),(72,'Kì quan của Việt Nam','2021-10-09 17:17:14',3,27),(73,'Đẹp','2021-10-09 19:13:09',2,10),(74,'Nhiều cây cối, đang để đi','2021-10-10 00:18:15',49,15),(75,'Đẹp thiệc','2021-10-10 00:34:57',1,3),(76,'Muốn đi lại','2021-10-10 00:35:02',1,3),(77,'Đẹp','2021-10-10 21:42:51',1,15),(78,'Đẹp lắm','2021-10-11 05:58:58',12,23),(79,'Hoàng hôn đẹp','2021-11-12 11:56:54',2,15);
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
  CONSTRAINT `fk_idHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `hoadon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idTour` FOREIGN KEY (`idTour`) REFERENCES `tour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (70,1,5000000,32,2),(71,1,5000000,32,3),(72,1,3000000,32,12),(73,1,250000,33,18),(74,1,650000,33,82),(75,1,1200000,33,7),(76,1,2500000,33,57),(77,1,5000000,34,3),(78,1,5000000,35,1),(79,1,5000000,35,2),(80,1,1200000,36,7),(81,1,870000,37,62),(82,1,1200000,38,7),(83,1,453000,39,59),(84,1,250000,40,96),(85,1,750000,41,99),(86,1,650000,42,82),(87,1,850000,43,58),(88,1,5000000,44,2);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
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
  CONSTRAINT `fk_idKhachHangDK` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (32,13000000,'2021-10-13 08:18:45',3),(33,4600000,'2021-10-13 08:19:09',15),(34,5000000,'2021-10-14 06:46:53',3),(35,10000000,'2021-10-31 10:38:53',3),(36,1200000,'2021-10-31 10:47:19',3),(37,870000,'2021-10-31 10:49:51',15),(38,1200000,'2021-10-31 10:50:48',15),(39,453000,'2021-10-31 10:52:19',15),(40,250000,'2021-10-31 10:55:58',15),(41,750000,'2021-10-31 10:57:08',15),(42,650000,'2021-10-31 10:57:39',15),(43,850000,'2021-10-31 10:58:14',15),(44,5000000,'2021-11-12 11:55:19',15);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (1,'Nguyen Van','Linh','123@gmail.com','123','linh','$2a$10$j3G/EwRAIS6cqeDYfTmAM.bDLfod43KtH5TBDfkYD7FAM5bZ6LiRy',NULL,NULL,'ROLE_MANAGE'),(2,'Pham Van','Hai','1233@gmail.com','2','123','$2a$10$FH8Xn6VE7e8LECjoygv0iuvrE5NB0XiLpVkpwlV28ZHnSVd4t9FMi',NULL,NULL,'ROLE_USER'),(3,'admin','admin','teolinh123@yahoo.com','0123456789','admin','$2a$10$ukPbAVc.0YB.sYAdbKHRIuhg2fsbUs9AL73pD9aI2x1POv0EVv8Eq','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633425603/ofa3fbmsxppus4suqe3o.png',NULL,'ROLE_ADMIN'),(8,'Nguyen Quynh','Anh','teolinh1231@yahoo.com','0123456789','admin123332323','$2a$10$6D8.yqb6QmUVkhcpVqBh1OzjAgSl9Ufze0JlTdgc32oCySFTcMrsS',NULL,NULL,'ROLE_USER'),(9,'Phan Văn','Thanh','teophuong147@gmail.com','0123456789','5','$2a$10$B9rIQbhC.gmrZ2gc30MxAeq14IGVyGuDmwBUwD0T98R7zSulI3OuO',NULL,NULL,'ROLE_USER'),(10,'Huỳnh','Bảo','12ss@gmail.com','0123456789','bao','$2a$10$hFCx7YTs3p.GltqujD.87.XvRAtV48LNlSGM.RmkQwoFkkQXVjgA2','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633185605/r4johtaxzuf16u4m6jf6.png',NULL,'ROLE_MANAGE'),(15,'Trần Bảo','Ngân','teolin2w23@yahoo.com','0123456789','ngan','$2a$10$hFCx7YTs3p.GltqujD.87.XvRAtV48LNlSGM.RmkQwoFkkQXVjgA2','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1630882046/n3ybqtlh1ncuoa7zb1hr.jpg',NULL,'ROLE_USER'),(17,'Nguyen Van','Toan','s@jibee.com.vn','0123456789','toantona','$2a$10$JEs.Vf2g48ZlFDArf3eXoeqE27XoLMaO1gqxTZfqZBnykdqx89pyK','',NULL,'ROLE_USER'),(18,'Nguyen','Toan','jbv2@jo2e.com.vn','0123456789','tienMinh','$2a$10$mc.61lYFLq0Fg775C3O.bu8rCsX7icf.CRs8b73UW9bmLiLNH1Gl2','',NULL,'ROLE_USER'),(19,'Quang','Linh','teoph@gmail.com','0123456789','thanhTien','$2a$10$mYGGZMERQ3DLcUfsfaey7OFxdYiJ5S34XL43cF/gUgPNjjnOIaSDu','',NULL,'ROLE_MANAGE'),(20,'Thành','Tâm','123@gmail.com','0988855956','nhan','$2a$10$dQ.r7YugHsTRmwMnjDY0pe500pEqxBTInq/eIxPp958d2mgu1VDdK','',NULL,'ROLE_USER'),(22,'Phùng Thanh','Độ','123@gmail.com','0123456789','do2','$2a$10$I0oArpIjgiH5EuZ3Aec/BeHBABAVRYq.2V/2jEPTkY4N314ms9g3S','',NULL,'ROLE_USER'),(23,'Ben','Toan','benbenben@gmail.com','0123456789','ben1232','$2a$10$n8uEsScJILhVot7atALCquBt7vIcAjxLVby0mfLGKgwgJH73AFIMK','',NULL,'ROLE_USER'),(25,'Huỳnh Văn','Bánh','Kha@gmail.com','0123456789','Kha123','$2a$10$IoFdq3ia4rlizc7gwXJGquOFqKFXsvRKOpkfBd89VqQ4zFQrk5MAq','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633597932/okltsjkm494kw77wu5ec.jpg',NULL,'ROLE_USER'),(26,'Trương Ngọc Thảo','Nguyên','dq02@gmail.com','03222335223','AnAn','$2a$10$qPHJVDDt86NeNrYg7Bl5g.6JK9Xl6OjVqVj7P0PAQpyb4hGuBdVci','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633772593/zpjsshu2yaqcfonngyee.png',NULL,'ROLE_MANAGE'),(27,'Đinh Đức','Đạt','Thanh@gmail.com','0988555956','Thanh','$2a$10$ivI4Ss4UEAr5WOYinLp1Juzrwgy82nn4.uyzgxo44nP9RODP.ISca','https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633774606/pdvqolrwcjfu3rzjvc5i.png',NULL,'ROLE_USER');
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
  `soCho` int DEFAULT '0',
  `gia` decimal(10,0) NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moTa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tiền Giang','2021-08-09 00:00:00','2021-08-09 00:00:00',12,5000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633823442/jho2ssdjabkh2qseeqxj.gif','Tiền Giang là một tỉnh ven biển thuộc đồng bằng sông Cửu Long, Việt Nam.'),(2,'Hạ Long','2021-08-09 00:00:00','2021-08-09 00:00:00',11,5000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1636693211/lfcx8fdsdks8kx3tjz4y.gif','Hạ Long là thành phố tỉnh lỵ của tỉnh Quảng Ninh, Việt Nam.'),(3,'Hải Phòng','2021-08-25 00:00:00','2021-08-25 00:00:00',7,5000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633823425/hjh0nud0nhaysuthsmlj.gif','Hải Phòng là thành phố cảng quan trọng, trung tâm công nghiệp, cảng biển.'),(7,'Bến Tre','2021-09-04 00:00:00','2021-09-24 00:00:00',21,1200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633809783/yl30kr9nhzkoe4iagrgg.jpg','Bến Tre xứ sở của những cây dừa được mệnh danh là \"Xứ sở dừa Việt Nam\" mang đặc trưng của sông nước miệt vườn Nam Bộ'),(12,'Cát Bà','2021-09-04 00:00:00','2021-09-24 00:00:00',13,3000000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633809811/rvdk2jy08g0ifdizhzoi.gif','Cát Bà là thị trấn huyện lỵ của huyện Cát Hải, thành phố Hải Phòng'),(18,'Kon Tum','2021-10-10 00:00:00','2021-10-10 00:00:00',5,250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633417577/oohcegxf1lwvueo8g1h0.jpg','Tỉnh cực bắc Tây Nguyên được mệnh danh là \"ngã 3 Đông Dương\".'),(49,'Đà Nẵng','2021-09-21 00:00:00','2021-09-23 00:00:00',7,900000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633805037/tuumpjtpm3l6s1sslppa.gif','Đà Nẵng được mệnh danh là \"thành phố của những cây cầu\".'),(56,'Cao Bằng','2021-10-08 00:00:00','2021-10-15 00:00:00',12,1230000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633809824/fbvtp8bs3ud4mbjsjfiv.jpg','Không ít người trước đây vốn lầm tưởng Cao Bằng chỉ có những địa danh nổi tiếng gắn liền với lịch sử của dân tộc trong thời kì chống Pháp. Thế nhưng ít ai biết rằng nơi đây còn có những địa danh nổi tiếng bởi nét đẹp hoang sơ, hùng vĩ và tráng lệ hiếm có. '),(57,'Đà Nẵng 2','2021-10-01 00:00:00','2021-10-31 00:00:00',19,2500000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633822523/iwxznoxjthgbtwwvjc9f.jpg','Du lịch miền Trung luôn hấp dẫn du khách với những món ăn ngon, bãi biển xinh đẹp và những hòn đảo thơ mộng mà ít nơi nào có được. Nhưng bên cạnh đó khi tới vùng đất này bạn còn có thể khám phá những địa danh, di tích lịch sử đã tồn tại từ hàng ngàn năm nay. '),(58,'Phan Thiết','2021-10-14 00:00:00','2021-10-15 00:00:00',17,850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633417412/dyyrhjk1lxjojfi7f04d.gif','Chương trình Free & Easy này là loại hình du lịch tiết kiệm, linh hoạt, đơn giản và tiện lợi, phù hợp nhu cầu của phần đông du khách hiện nay: khách có thể lựa chọn điểm đến, đặt dịch vụ đặt vé máy bay hoặc xe, khách sạn & resort, xe đón tiễn sân bay và tự do tham quan tuỳ theo sở thích và thời gian của khách.'),(59,'Đà Lạt','2021-10-06 00:00:00','2021-10-07 00:00:00',14,453000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633417577/oohcegxf1lwvueo8g1h0.jpg','Đến với Đà Lạt ư? Vô vàn thứ sẽ dần thấm vào trong người bạn, khiến bạn yêu nó lúc nào không biết, cái thấm ấy nó nhẹ nhàng len lỏi như những cái se se lạnh của thành phố sương mù này. Thưởng thức kỳ nghỉ tại \'Miền đất lạnh của miền Tây Nguyên\', khám phá những gì đặc trưng nhất của Đà Lạt hẳn là một trải nghiệm đáng nhớ cùng người thân của mình đúng không? Cùng khám phá ngay hôm nay! '),(61,'Phú Yên','2021-10-05 00:00:00','2021-10-06 00:00:00',15,12300600,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633417793/rvogbphlppcy8cbnn5qn.gif','Phú Yên là một tỉnh ven biển thuộc duyên hải Nam Trung Bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Không chỉ là Gành đá dĩa có 1 không 2, cũng không chỉ là vùng đất của :”Hoa vàng trên cỏ xanh” nữa, mà là có 1 Đà Lạt ở Phú Yên liệu bạn đã biết?'),(62,'Châu Đốc','2021-10-08 00:00:00','2021-10-09 00:00:00',19,870000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633417952/kozgwecfobbiga5zji61.jpg','Châu Đốc được xem là một trong những trung tâm du lịch của An Giang, muốn khám phá hết An Giang có gì thì nhất định các bạn chẳng nên bỏ qua những địa điểm du lịch “đặc sản” tại đây từ những khu rừng ngập mặn, những khu chợ nổi cho đến những điểm vui chơi check in chụp hình khó đụng hàng ở bất kì nơi đâu.'),(63,'Cao Bằng','2021-10-08 00:00:00','2021-10-15 00:00:00',15,12300000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633376391/b5zfn0bh9klcjblzg6sq.jpg','Không ít người trước đây vốn lầm tưởng Cao Bằng chỉ có những địa danh nổi tiếng gắn liền với lịch sử của dân tộc trong thời kì chống Pháp. Thế nhưng ít ai biết rằng nơi đây còn có những địa danh nổi tiếng bởi nét đẹp hoang sơ, hùng vĩ và tráng lệ hiếm có. '),(81,'Quy Nhơn 1','2021-10-09 00:00:00','2021-10-10 00:00:00',14,999000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633772867/ccgnvmpm8gszgwdgxzxo.gif','Cũng có cát trắng, nắng vàng, biển xanh, thế nhưng cái tên Cù Lao Xanh cũng gợi lên chút gì đó “hoang sơ” khiến nhiều người mới nghe thôi cũng thấy thèm để được đến dù chỉ một lần trong đời. Sự hoang sơ, thuần khiết và thơ mộng, Cù Lao Xanh cũng khiến du khách thập phương không nỡ rời đi.'),(82,'Nha Trang 1','2021-09-27 00:00:00','2021-09-29 00:00:00',16,650000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633772978/l0ehckpai14cbbygktkt.gif','Khu du lịch Vịnh San Hô Nha Trang là một trong những khu du lịch mới tại Nha Trang. Bãi biển đẹp, nước xanh và cát trắng. Ngoài ra, Vịnh San Hô Nha Trang còn thu hút khách du lịch bởi những hoạt động lặn biển, đi bộ dưới lòng biển. Đến Khu tắm bùn Hòn Tằm - nơi du khách có thể phóng tầm mắt ngắm trọn vẻ đẹp của vịnh Nha Trang, ngâm mình thư giãn trong bùn khoáng nóng giúp giải toả mọi căng thẳng, đẹp da và trẻ hóa cơ thể. '),(83,'Cần Thơ 2','2021-09-08 00:00:00','2021-09-11 00:00:00',6,750000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773146/pzphyerll0inisdn33ff.gif','Cuộc sống thường nhật tại đồng bằng sông Cửu Long tập trung chủ yếu trên sông nước: những khu nhà sàn nổi trên nước, khu chợ nổi trên sông... hằng ngày luôn nhộn nhịp người dân buôn bán, đánh bắt, sinh hoạt.'),(84,'Hạ Long 2','2021-10-29 00:00:00','2021-10-30 00:00:00',8,777000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773255/wddeaxzira8g277gjhzy.gif','Du thuyền Heritage Bình Chuẩn đưa du khách đi trên hải trình mới lạ thăm quan vịnh Lan Hạ, nơi nổi tiếng với quần đảo Cát Bà yên bình và những địa điểm còn hoang sơ như khu vực Ba Trái Đào, hang Sáng Tối. Với lịch trình 2 ngày trên vịnh, bạn sẽ có những trải nghiệm đáng nhớ như tắm ở 1 trong những bãi biển sạch nhất, chèo kayak và lạc mình vào thiên đường hang động kỳ vĩ.'),(85,'Hạ Long 2N2','2021-10-09 00:00:00','2021-10-11 00:00:00',15,850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773323/uvwjiqs1lumvkqs2r5in.gif','Du thuyền Heritage Bình Chuẩn đưa du khách đi trên hải trình mới lạ thăm quan vịnh Lan Hạ, nơi nổi tiếng với quần đảo Cát Bà yên bình và những địa điểm còn hoang sơ như khu vực Ba Trái Đào, hang Sáng Tối. Với lịch trình 2 ngày trên vịnh, bạn sẽ có những trải nghiệm đáng nhớ như tắm ở 1 trong những bãi biển sạch nhất, chèo kayak và lạc mình vào thiên đường hang động kỳ vĩ.'),(86,'Hang Sáng Tối','2021-09-17 00:00:00','2021-09-17 00:00:00',8,500000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773412/da7gi0f9qbu8qj5usrnm.gif','- Hang Sáng Tối (Hay còn gọi hang Sáng, hang Tối) nằm trên Vịnh Lan Hạ thuộc quần đảo Cát Bà – Hải Phòng. Đây là một hàng dài 70m xuyên qua núi nhưng lại nằm trên mặt nước, do vậy để thăm được hang du khách thường phải chèo thuyền nan hoặc chèo kayak. Ngày này hang Sáng Tối là một điểm đến không thể bỏ qua với du khách thăm quan và nghỉ dưỡng trên Vịnh Lan Hạ. '),(87,'Ngũ Hành Sơn','2021-10-15 00:00:00','2021-10-16 00:00:00',7,650000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773499/nykmqnjd8z3nkjqg0hjy.gif','- Ngũ Hành Sơn hay núi Non Nước là một thắng cảnh nổi tiếng, trong ký ức của nhiều người đây còn là vùng “địa linh” của xứ Quảng xưa nay.'),(88,'Phố cổ Hội An','2021-10-22 00:00:00','2021-10-23 00:00:00',15,199000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773553/l3gbmb3fqpcelh2wdltq.jpg','- Phố cổ Hội An như một bức tranh mộc mạc, giản dị và nên thơ, từng là một thương cảng quốc tế sầm uất, đã được UNESCO công nhận là di sản văn hóa thế giới năm 1999.'),(89,'Bà Nà Núi Chùa','2021-07-30 00:00:00','2021-07-31 00:00:00',7,830000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633773627/g0hdaepe19ic44eietcd.gif','- Bà Nà Núi Chúa: khu nghỉ dưỡng trên đỉnh núi xinh đẹp như bao trọn toàn bộ các dịch vụ vui chơi, giải trí cả nước nơi đây.'),(90,'Mũi Né - Đồi Cát Bay','2021-11-06 00:00:00','2021-11-07 00:00:00',16,1105000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633801696/bl4mgzzjgbhlwb5s0rv4.gif','hiên Đường Miền Nhiệt Đới\r\nPhan Thiết từ lâu đã là một địa điểm du lịch biển nổi tiếng ở Việt Nam với những bờ cát trắng trải dài, biển xanh và những hàng dừa cong vút hay là một điểm đến du lịch văn hóa hấp dẫn với những cộng đồng dân cư đa dạng người Hoa, người Chăm. Với các địa danh nổi tiếng như Mũi Né và Mũi Kê Gà, Phan Thiết là điểm đến lý tưởng cho những người mê du lịch biển.'),(95,'Phú Quốc','2021-10-13 00:00:00','2021-10-14 00:00:00',9,550000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871514/oiswmxnkf90ilbjd4bng.jpg','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(96,'Phú Quốc 2N1','2021-09-27 00:00:00','2021-09-29 00:00:00',19,250000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871717/wyv4yxl0btngetvzgtfx.gif','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(97,'Phúc Quốc E2A','2021-10-08 00:00:00','2021-10-16 00:00:00',8,850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871781/zui0xthghxqcqieuejw3.gif','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(98,'Phúc Quốc A1','2021-10-13 00:00:00','2021-10-14 00:00:00',4,1200000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871821/tbyrwdi9hjsku9vqs97z.gif','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(99,'Phú Quốc 2M','2021-10-10 00:00:00','2021-10-10 00:00:00',14,750000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871871/gnmccvmbc87flirrz1gc.jpg','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(100,'Phú Quốc N2','2021-10-07 00:00:00','2021-10-09 00:00:00',4,850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1633871907/vz19onumssa9hluvqhow.gif','Phú Quốc được mệnh danh là Đảo Ngọc, được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.'),(103,'Bà Nà 2C3','2021-10-17 00:00:00','2021-10-26 00:00:00',0,2500000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1634078622/wg7pzt0dj09hpls11jl5.gif','2'),(104,'Đà Lạt 2C','2021-10-07 00:00:00','2021-10-16 00:00:00',0,850000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1634078686/xwvsbxvxndwxskkcw0ga.gif','3'),(105,'Bình Ba','2021-12-10 00:00:00','2021-12-12 00:00:00',16,620000,'https://res.cloudinary.com/xxxs1mplexxx/image/upload/v1635822149/kakxczfi5a5dzglz2pvg.jpg','Bình Ba đang ngày càng hot về độ đẹp, độ “chịu chơi”, nơi đây được mệnh danh là “quốc đảo tôm hùm” với biển xanh cát trắng thơ mộng. Khách du lịch tìm đến Bình Ba không chỉ để thưởng thức hải sản, trải nghiệm những hoạt động mà còn là cơ hội để nghỉ ngơi sau những ngày làm việc mệt mỏi. Với khung cảnh hoang sơ, thanh bình của những bãi biển xanh trong, cát trắng mịn trải dài đã trở thành địa điểm chụp hình Bình Ba dành cho ai muốn có được những album đẹp mê ly.');
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

-- Dump completed on 2021-11-12 17:13:32
