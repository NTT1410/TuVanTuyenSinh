CREATE DATABASE  IF NOT EXISTS `universityentrance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universityentrance`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: universityentrance
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Banner 1','banner1.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837059/MyImages/UniversityEntrance/banner/banner1_uosk46.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',1),(2,'Banner 2','banner2.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837059/MyImages/UniversityEntrance/banner/banner2_w70vsb.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0),(3,'Banner 3','banner3.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691949896/MyImages/UniversityEntrance/banner/modern-university-admission-banner-template-design-168ce33d82bc9d6823f5a58bc1a51092_screen_bbor76.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0),(4,'Banner 4','banner4.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691950360/MyImages/UniversityEntrance/banner/maroon-university-enrollment-banner-design-template-ed350a837743449b01870b3e812a72d5_screen_ejuuvt.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',1),(5,'Banner 5','banner5.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691950562/MyImages/UniversityEntrance/banner/Web_20Banner_202_y8l2un.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',1),(6,'Banner 6','banner6.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691950495/MyImages/UniversityEntrance/banner/CDOE-Banner_tynlsa.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0),(7,'Banner 7','banner7.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691950532/MyImages/UniversityEntrance/banner/OL-Banner-3_rn8jyc.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0),(8,'Banner 8','banner8.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691949896/MyImages/UniversityEntrance/banner/modern-university-admission-banner-template-design-168ce33d82bc9d6823f5a58bc1a51092_screen_bbor76.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0),(9,'Banner 9','banner9.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837059/MyImages/UniversityEntrance/banner/banner1_uosk46.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',1),(10,'Banner 10','banner10.jpg','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837059/MyImages/UniversityEntrance/banner/banner2_w70vsb.jpg','2023-08-05 08:20:42','2023-08-05 08:20:42',0);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Đào tạo đại học chính quy','Dành cho các sinh viên chính quy'),(2,'Đào tạo từ xa','Dành cho các sinh viên học đại học từ xa'),(3,'Đào tạo văn bằng 2 và liên thông','Dành cho người đi làm, muốn có bằng đại học thứ 2, hoặc liên thông lên đại học');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `new_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_newid_cmts_news_idx` (`new_id`),
  KEY `fk_userid_cmts_users_idx` (`user_id`),
  CONSTRAINT `fk_newid_cmts_news` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`),
  CONSTRAINT `fk_userid_cmts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Who make it?','2023-08-05 08:48:32'),(2,1,2,'Who make it?','2023-08-05 08:48:32'),(3,2,1,'Who make it?','2023-08-05 08:48:32'),(4,3,1,'Who make it?','2023-08-05 08:48:32'),(5,1,5,'Who make it?','2023-08-05 08:48:32'),(6,3,2,'Who make it?','2023-08-05 08:48:32'),(7,5,8,'Who make it?','2023-08-05 08:48:32');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `average_score` float NOT NULL,
  `cateid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cateid_idx` (`cateid`),
  CONSTRAINT `fk_cateid` FOREIGN KEY (`cateid`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Khoa Công nghệ Thông tin','Chương trình đào tạo của Khoa Công nghệ Thông tin cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những kỹ sư phần mềm có trình độ cao. Chương trình đào tạo bao gồm các môn học về khoa học máy tính, kỹ thuật phần mềm, hệ thống máy tính, mạng máy tính và cơ sở dữ liệu. Sinh viên tốt nghiệp Khoa Công nghệ Thông tin có thể làm việc trong các lĩnh vực như phát triển phần mềm, quản trị mạng, quản trị hệ thống và tư vấn công nghệ thông tin.','https://www.uit.edu.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',8.5,1),(2,'Khoa Kinh tế','Chương trình đào tạo của Khoa Kinh tế cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những nhà kinh tế có trình độ cao. Chương trình đào tạo bao gồm các môn học về kinh tế học, tài chính, kế toán, quản trị kinh doanh và marketing. Sinh viên tốt nghiệp Khoa Kinh tế có thể làm việc trong các lĩnh vực như ngân hàng, tài chính, kế toán, quản lý, kinh doanh và marketing.','https://www.hus.edu.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',8,1),(3,'Khoa Luật','Chương trình đào tạo của Khoa Luật cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những luật sư có trình độ cao. Chương trình đào tạo bao gồm các môn học về luật học, pháp luật, tố tụng hình sự, tố tụng dân sự và luật kinh tế. Sinh viên tốt nghiệp Khoa Luật có thể làm việc trong các lĩnh vực như luật sư, thẩm phán, công tố viên, luật sư tư vấn và giảng dạy luật.','https://www.luật.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',7.5,3),(4,'Khoa Y','Chương trình đào tạo của Khoa Y cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những bác sĩ có trình độ cao. Chương trình đào tạo bao gồm các môn học về y học, giải phẫu học, sinh lý học, dược lý học và bệnh học. Sinh viên tốt nghiệp Khoa Y có thể làm việc trong các lĩnh vực như bác sĩ, phẫu thuật viên, bác sĩ nội trú và bác sĩ đa khoa.','https://www.ykhoahanoi.edu.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',9,1),(5,'Khoa Dược','Chương trình đào tạo của Khoa Dược cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những dược sĩ có trình độ cao. Chương trình đào tạo bao gồm các môn học về dược học, hóa học, sinh học, dược lý học và bào chế thuốc. Sinh viên tốt nghiệp Khoa Dược có thể làm việc trong các lĩnh vực như dược sĩ, nhà nghiên cứu dược phẩm và kiểm soát chất lượng thuốc.','https://www.dược.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',8.5,2),(6,'Khoa Giáo dục','Chương trình đào tạo của Khoa Giáo dục cung cấp kiến thức và kỹ năng cần thiết cho sinh viên để trở thành những giáo viên có trình độ cao. Chương trình đào tạo bao gồm các môn học về giáo dục học, tâm lý học giáo dục, phương pháp giảng dạy và quản lý giáo dục. Sinh viên tốt nghiệp Khoa Giáo dục có thể làm việc trong các lĩnh vực như giáo viên, nhà quản lý giáo dục và nhà nghiên cứu giáo dục.','https://www.gd.vn/','https://www.youtube.com/watch?v=dQw4w9WgXcQ',8,2);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livestreams`
--

DROP TABLE IF EXISTS `livestreams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livestreams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestreams`
--

LOCK TABLES `livestreams` WRITE;
/*!40000 ALTER TABLE `livestreams` DISABLE KEYS */;
INSERT INTO `livestreams` VALUES (1,'Livestream 1','This is a livestream about the latest news.','2023-03-08 00:00:00','10:00:00'),(2,'Livestream 2','This is a livestream about a new product launch.','2023-03-09 00:00:00','12:00:00'),(3,'Livestream 3','This is a livestream about a live event.','2023-03-10 00:00:00','14:00:00'),(4,'Livestream 4','This is a livestream about a Q&A session.','2023-03-11 00:00:00','16:00:00'),(5,'Livestream 5','This is a livestream about a live chat.','2023-03-12 00:00:00','18:00:00'),(6,'Livestream 6','This is a livestream about a live game.','2023-03-13 00:00:00','20:00:00'),(7,'Livestream 7','This is a livestream about a live concert.','2023-03-14 00:00:00','22:00:00'),(8,'Livestream 8','This is a livestream about a live performance.','2023-03-15 00:00:00','24:00:00'),(9,'Livestream 9','This is a livestream about a live event.','2023-03-16 00:00:00','02:00:00'),(10,'Livestream 10','This is a livestream about a live event.','2023-03-17 00:00:00','04:00:00');
/*!40000 ALTER TABLE `livestreams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `status` tinyint NOT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a_idx` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Tuyển sinh hệ chính quy năm 2023','Tuyển sinh hệ chính quy năm 2023. Thời gian tuyển sinh từ ngày 10 tháng 1 đến ngày 30 tháng 4 năm 2023. Yêu cầu tuyển sinh: Tốt nghiệp THPT hoặc tương đương. Điểm chuẩn: 24 điểm.','2023-07-14 07:08:58','2023-08-14 07:08:58',0,0),(2,'Tuyển sinh hệ liên thông năm 2023','Tuyển sinh hệ liên thông năm 2023. Thời gian tuyển sinh từ ngày 1 tháng 5 đến ngày 30 tháng 6 năm 2023. Yêu cầu tuyển sinh: Tốt nghiệp trung cấp hoặc cao đẳng. Điểm chuẩn: 20 điểm.','2023-08-05 07:09:10','2023-08-11 07:09:10',0,0),(3,'Tuyển sinh cao học năm 2023','Tuyển sinh cao học năm 2023. Thời gian tuyển sinh từ ngày 1 tháng 7 đến ngày 31 tháng 8 năm 2023. Yêu cầu tuyển sinh: Tốt nghiệp đại học. Điểm chuẩn: 28 điểm.','2023-08-05 08:46:52','2023-08-14 07:09:34',0,0),(4,'Tuyển sinh thạc sĩ năm 2023','Tuyển sinh thạc sĩ năm 2023. Thời gian tuyển sinh từ ngày 1 tháng 9 đến ngày 30 tháng 10 năm 2023. Yêu cầu tuyển sinh: Tốt nghiệp thạc sĩ. Điểm chuẩn: 32 điểm.','2023-08-05 08:46:52','2023-08-07 08:46:52',0,0),(5,'Tuyển sinh đào tạo từ xa năm 2023','Tuyển sinh đào tạo từ xa năm 2023. Thời gian tuyển sinh từ ngày 1 tháng 11 đến ngày 31 tháng 12 năm 2023. Yêu cầu tuyển sinh: Tốt nghiệp THPT hoặc tương đương. Điểm chuẩn: 22 điểm.','2023-08-12 07:09:46','2023-08-14 07:09:46',0,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `answer` text NOT NULL,
  `user_id` int NOT NULL,
  `livestream_id` int NOT NULL,
  `created_date` datetime NOT NULL,
  `answered_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid_ques_users_idx` (`user_id`),
  KEY `fk_liveid_ques_live_idx` (`livestream_id`),
  CONSTRAINT `fk_liveid_ques_live` FOREIGN KEY (`livestream_id`) REFERENCES `livestreams` (`id`),
  CONSTRAINT `fk_userid_ques_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Khi nào là thời gian tốt nhất để đăng ký học?','Thời gian tốt nhất để đăng ký học là khi bạn đã có quyết định và sẵn sàng bắt đầu. Tuy nhiên, nếu bạn vẫn đang phân vân, bạn có thể đăng ký học sớm hơn để có thêm thời gian suy nghĩ.',1,5,'2023-08-05 09:12:41','2023-08-05 09:13:31'),(2,'Tôi có thể học gì sau khi tốt nghiệp?','Sau khi tốt nghiệp, bạn có thể học tiếp lên cao hoặc tìm kiếm một công việc. Nếu bạn muốn học tiếp lên cao, bạn có thể học thạc sĩ hoặc tiến sĩ. Nếu bạn muốn tìm kiếm một công việc, bạn có thể tìm kiếm một công việc trong lĩnh vực mà bạn đã học hoặc tìm kiếm một công việc trong một lĩnh vực khác.',2,1,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(3,'Tôi có thể làm gì để chuẩn bị cho kỳ thi?','Bạn có thể chuẩn bị cho kỳ thi bằng cách học tập chăm chỉ và làm bài tập về nhà. Bạn cũng có thể tham gia các lớp học luyện thi và ôn tập các đề thi cũ.',3,1,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(4,'Tôi nên chọn trường nào?','Bạn nên chọn trường dựa trên các yếu tố như chất lượng giảng dạy, cơ sở vật chất, vị trí và chi phí. Bạn cũng nên xem xét các yếu tố cá nhân như sở thích và nhu cầu của bạn.',4,4,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(5,'Tôi có thể học trực tuyến được không?','Có, bạn có thể học trực tuyến. Có rất nhiều chương trình học trực tuyến có chất lượng cao. Bạn có thể tìm kiếm các chương trình học trực tuyến trên các trang web như Coursera, edX và Udacity.',5,2,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(6,'Tôi có thể làm gì nếu tôi không đạt được điểm cao trong kỳ thi?','Nếu bạn không đạt được điểm cao trong kỳ thi, bạn có thể làm lại kỳ thi. Bạn cũng có thể tìm kiếm các chương trình học khác hoặc tìm kiếm một công việc mà không cần bằng cấp.',6,1,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(7,'Tôi có thể làm gì nếu tôi không biết mình muốn học gì?','Nếu bạn không biết mình muốn học gì, bạn có thể tham khảo ý kiến của bạn bè, gia đình và cố vấn học tập. Bạn cũng có thể tìm kiếm các bài kiểm tra và bài trắc nghiệm trực tuyến để giúp bạn tìm ra con đường sự nghiệp phù hợp với mình.',7,3,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(8,'Tôi có thể làm gì nếu tôi không có đủ tiền để học?','Nếu bạn không có đủ tiền để học, bạn có thể tìm kiếm các học bổng và trợ cấp. Bạn cũng có thể tìm kiếm các chương trình học miễn phí hoặc giá rẻ.',8,3,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(9,'Tôi có thể làm gì nếu tôi không có thời gian để học?','Nếu bạn không có thời gian để học, bạn có thể tìm kiếm các chương trình học online hoặc các chương trình học có thể hoàn thành trong thời gian ngắn. Bạn cũng có thể tìm kiếm các chương trình học có thể học ngoài giờ làm việc.',9,2,'2023-08-05 09:12:41','2023-08-05 09:14:40'),(10,'Tôi có thể làm gì nếu tôi không biết tiếng Anh?','Nếu bạn không biết tiếng Anh, bạn có thể tìm kiếm các chương trình học có giảng dạy bằng tiếng Anh. Bạn cũng có thể tìm kiếm các khóa học tiếng Anh để giúp bạn cải thiện khả năng ngôn ngữ của mình.',10,3,'2023-08-05 09:12:41','2023-08-05 09:14:40');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`name`),
  KEY `fk_roleid_users_roles_idx` (`role_id`),
  CONSTRAINT `fk_roleid_users_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','password1','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837083/MyImages/UniversityEntrance/avatar/avt3_atudsl.jpg',1),(2,'tru','password2','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837083/MyImages/UniversityEntrance/avatar/avt2_nwbeon.jpg',1),(3,'Peter Smith','password3','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837082/MyImages/UniversityEntrance/avatar/avt1_bgmadm.jpg',2),(4,'Mary Jones','password4','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837082/MyImages/UniversityEntrance/avatar/avt4_byi2ba.jpg',2),(5,'David Brown','password5','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837083/MyImages/UniversityEntrance/avatar/avt3_atudsl.jpg',2),(6,'Sarah Green','password6','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837083/MyImages/UniversityEntrance/avatar/avt2_nwbeon.jpg',2),(7,'Michael White','password7','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837082/MyImages/UniversityEntrance/avatar/avt1_bgmadm.jpg',2),(8,'Emily Black','password8','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837082/MyImages/UniversityEntrance/avatar/avt4_byi2ba.jpg',2),(9,'William Gray','password9','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837083/MyImages/UniversityEntrance/avatar/avt2_nwbeon.jpg',2),(10,'Alice Red','password10','https://res.cloudinary.com/ds8i6jriz/image/upload/v1691837082/MyImages/UniversityEntrance/avatar/avt4_byi2ba.jpg',2);
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

-- Dump completed on 2023-08-21 23:19:02