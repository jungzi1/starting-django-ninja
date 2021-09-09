-- MySQL dump 10.13  Distrib 8.0.25, for macos10.15 (x86_64)
--
-- Host: localhost    Database: itsadeal
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add content type',3,'add_contenttype'),(10,'Can change content type',3,'change_contenttype'),(11,'Can delete content type',3,'delete_contenttype'),(12,'Can view content type',3,'view_contenttype'),(13,'Can add session',4,'add_session'),(14,'Can change session',4,'change_session'),(15,'Can delete session',4,'delete_session'),(16,'Can view session',4,'view_session'),(17,'Can add company category',5,'add_companycategory'),(18,'Can change company category',5,'change_companycategory'),(19,'Can delete company category',5,'delete_companycategory'),(20,'Can view company category',5,'view_companycategory'),(21,'Can add gender',6,'add_gender'),(22,'Can change gender',6,'change_gender'),(23,'Can delete gender',6,'delete_gender'),(24,'Can view gender',6,'view_gender'),(25,'Can add user type',7,'add_usertype'),(26,'Can change user type',7,'change_usertype'),(27,'Can delete user type',7,'delete_usertype'),(28,'Can view user type',7,'view_usertype'),(29,'Can add company',8,'add_company'),(30,'Can change company',8,'change_company'),(31,'Can delete company',8,'delete_company'),(32,'Can view company',8,'view_company'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add requester',10,'add_requester'),(38,'Can change requester',10,'change_requester'),(39,'Can delete requester',10,'delete_requester'),(40,'Can view requester',10,'view_requester'),(41,'Can add provider',11,'add_provider'),(42,'Can change provider',11,'change_provider'),(43,'Can delete provider',11,'delete_provider'),(44,'Can view provider',11,'view_provider'),(45,'Can add request',12,'add_request'),(46,'Can change request',12,'change_request'),(47,'Can delete request',12,'delete_request'),(48,'Can view request',12,'view_request'),(49,'Can add service',13,'add_service'),(50,'Can change service',13,'change_service'),(51,'Can delete service',13,'delete_service'),(52,'Can view service',13,'view_service'),(53,'Can add reference image url',14,'add_referenceimageurl'),(54,'Can change reference image url',14,'change_referenceimageurl'),(55,'Can delete reference image url',14,'delete_referenceimageurl'),(56,'Can view reference image url',14,'view_referenceimageurl'),(57,'Can add service category',15,'add_servicecategory'),(58,'Can change service category',15,'change_servicecategory'),(59,'Can delete service category',15,'delete_servicecategory'),(60,'Can view service category',15,'view_servicecategory'),(61,'Can add providing service',16,'add_providingservice'),(62,'Can change providing service',16,'change_providingservice'),(63,'Can delete providing service',16,'delete_providingservice'),(64,'Can view providing service',16,'view_providingservice'),(65,'Can add requesting service',17,'add_requestingservice'),(66,'Can change requesting service',17,'change_requestingservice'),(67,'Can delete requesting service',17,'delete_requestingservice'),(68,'Can view requesting service',17,'view_requestingservice'),(69,'Can add provide',18,'add_provide'),(70,'Can change provide',18,'change_provide'),(71,'Can delete provide',18,'delete_provide'),(72,'Can view provide',18,'view_provide');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_users`
--

DROP TABLE IF EXISTS `base_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `gender_id` bigint DEFAULT NULL,
  `user_type_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `base_users_gender_id_891bbe3f_fk_genders_id` (`gender_id`),
  KEY `base_users_user_type_id_10b2e943_fk_user_types_id` (`user_type_id`),
  CONSTRAINT `base_users_gender_id_891bbe3f_fk_genders_id` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  CONSTRAINT `base_users_user_type_id_10b2e943_fk_user_types_id` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_users`
--

LOCK TABLES `base_users` WRITE;
/*!40000 ALTER TABLE `base_users` DISABLE KEYS */;
INSERT INTO `base_users` VALUES (1,'!3rcUqFi7uQUSBH7cRHBi9R4YmMI51xqVvvvkxjOR',NULL,0,'ggim@dreamwiz.com','권우진','+8211164759382','2004-02-04','2021-09-09 11:13:32.666781',1,3),(2,'!Hfbp65Me6Rrqc1AWCdvqudd3YsyZgu5lyKNbc0Vr',NULL,0,'yujingang@naver.com','이숙자','+8211189241157','1997-10-30','2021-09-09 11:15:55.681046',2,8),(3,'!G6tPHkqYro9WxJv93FGOmxVoVYRAlyqHdWXs6cyZ',NULL,0,'minsu80@daum.net','최상호','+8211160975351','1989-05-24','2021-09-09 11:15:55.686503',1,9),(4,'!XSOf1ANPJs4H8cm3q2IoGXBSL5T3usS2exgExmNC',NULL,0,'gimjeongsu@dreamwiz.com','안영철','+8211114841858','2009-02-24','2021-09-09 11:15:55.691932',1,1),(5,'!NyfaYnXx4s6Ep79OwACtF62bAKgIhyvF51VDKww8',NULL,0,'pi@gimryu.com','배현숙','+8211194711220','2043-07-30','2021-09-09 11:15:55.696731',2,9),(6,'!o35OKhBLFYRrwGkrw5iRayiZ6vHPohF3AsahvBLt',NULL,0,'jeonghyison@live.com','최성진','+8211194775159','1995-11-29','2021-09-09 11:15:55.701748',1,3),(7,'!kFMWCjhIM6QyfdVVZjpmmmRom7rPYu6c2zYP6Rgc',NULL,0,'sanghun35@yu.com','윤예준','+8211112309891','2048-05-21','2021-09-09 11:15:55.707494',2,7),(8,'!ePTTMir4fOFT0AnzHiWQ7Z8TiNZ4p4ADdSVPySqJ',NULL,0,'ihyeonju@gmail.com','김영자','+8211190321730','1983-10-25','2021-09-09 11:15:55.712691',2,9),(9,'!s0DDjuPBRWED9fn91aHMSux8n4trkM3UKWM1NZKM',NULL,0,'minjaei@gimbaggim.com','김정숙','+8211163457923','1992-01-16','2021-09-09 11:15:55.717748',2,7),(10,'!tFQhC782Y3POKqBfvIoS83X5vpmD8TFQJDKkPDOe',NULL,0,'coejinho@hotmail.com','김윤서','+8211107698456','1971-09-11','2021-09-09 11:15:55.723562',2,1),(11,'!tvxad0a1US11DN3MGQhwVqe2rkLgexbBChyxlhJi',NULL,0,'ogsun84@jusighoesa.kr','이재호','+8211159459924','1970-03-17','2021-09-09 11:15:55.728800',1,3),(12,'!gjbdICviIFpHrYlqakygOhhBVVvI7GvhwhF0C44m',NULL,0,'yeongilyun@live.com','김민재','+8211196069602','2041-10-20','2021-09-09 11:15:55.733602',2,5),(13,'!Q8WBnOZGZHRDIzDiSywmfq6VVXjGlELQ6Pc5delm',NULL,0,'bagjeongnam@gimryuu.kr','김정훈','+8211138120665','2041-11-28','2021-09-09 11:15:55.739140',1,2),(14,'!vSCxwOUL8bVKh3d1GrbbaBCvBfmaUYCJAESPTtV3',NULL,0,'josiu@igu.com','박재호','+8211176104714','2017-03-27','2021-09-09 11:15:55.744994',1,8),(15,'!mmWUUha8Q9j5HcpjKa0NHjSRKSppr8kIxhLYEz2a',NULL,0,'jimin00@yu.com','이성민','+8211190977658','1988-11-04','2021-09-09 11:15:55.750392',2,5),(16,'!a4jdU2kqFOwun6W2pmjURlP6Gi53s9hdqNbM1qnX',NULL,0,'jeongung51@nate.com','진민수','+8211190042294','1985-08-21','2021-09-09 11:15:55.756633',1,2),(17,'!Ob1d6kIf34KhTgU62mv7pw7i0rnUx9PkYkOwowFL',NULL,0,'ijimin@yu.com','이수진','+8211187755171','1991-03-10','2021-09-09 11:15:55.761997',2,5),(18,'!OkJ1dBL7vL3Psp4kl9bK06x04NJZnm9Sr1OZAn7S',NULL,0,'gimbyeongceol@hanmail.net','박영환','+8211106016884','1999-07-27','2021-09-09 11:15:55.767046',1,7),(19,'!mBWW8EoyMBX1lYaS3U8rXWsKZ8smjFpjfQFnxcxL',NULL,0,'yeongsu49@yuhanhoesa.com','윤현준','+8211110873176','1999-05-21','2021-09-09 11:15:55.772460',1,8),(20,'!tySuJKogTAO0ULJSUWW43T1oOQZ0Vdiat4t7YOSE',NULL,0,'hyeonjuni@ju.kr','윤채원','+8211129668757','2043-11-17','2021-09-09 11:15:55.777943',1,2),(21,'!483YImfG2AJU5eliRjHg7Fl9PQzKPEm8mdPpGkhQ',NULL,0,'yeweon55@jusighoesa.kr','김건우','+8211194711801','2031-01-20','2021-09-09 11:15:55.782896',1,3),(22,'!uvUf1U7SgmmqumcrvAEiXcJRJMR21sTZVV4IgwnY',NULL,0,'jiyeonbag@bagbae.kr','배승현','+8211109189163','2035-08-18','2021-09-09 11:15:55.788097',1,1),(23,'!C3LDhe3Arl5Rx7EWThEt4ROQXFT7Szo3tMtCOXJQ',NULL,0,'yungeonu@yu.com','윤민수','+8211151744666','2009-01-27','2021-09-09 11:15:55.793561',1,6),(24,'!edN1ZPmZi1lGwzDJievVwCZkteqedqHLKiJETWtc',NULL,0,'bagseongsu@jusighoesa.kr','김순옥','+8211167017200','2044-09-27','2021-09-09 11:15:55.798610',2,3),(25,'!Uzpq97AS5mNVnUiasLDQpXFuaxc6SGJQxUHdGwlC',NULL,0,'xan@gimgimhan.kr','안서연','+8211151942641','2023-05-10','2021-09-09 11:15:55.803657',2,4),(26,'!mAtoBkrgU0EadTsQoUaqGiXhlnUSIDCHRAXWWLPR',NULL,0,'hyeonjunan@daum.net','김지영','+8211100740899','2038-05-19','2021-09-09 11:15:55.809224',1,7),(27,'!4yfMbqmcJ6zkX78HqJ63AqU0KS6abSU9QQjTUbhU',NULL,0,'hayun26@live.com','이영자','+8211111611620','2037-08-04','2021-09-09 11:15:55.814680',2,2),(28,'!qkh9Tc07aSy0MfXVbmT2lB6i81KNhMTEJPzTm0Zb',NULL,0,'isanghun@gmail.com','김서영','+8211155203519','1986-10-07','2021-09-09 11:15:55.819561',2,4),(29,'!RxTw5PvISCtlM80cnVWvWUEhSs28TNKyT2Ev4fEs',NULL,0,'yeongja93@hotmail.com','이예은','+8211127175420','2009-10-29','2021-09-09 11:15:55.825630',2,4),(30,'!C2e4DQqvEVFDRuucK8TCm5FgsdUUVA9n52PrY7uX',NULL,0,'seohyeongim@naver.com','김성호','+8211126223583','1976-04-18','2021-09-09 11:15:55.830572',1,9),(31,'!qno2xICNfvPzOlTMUUVeo7XiCyGBC1kYYML2e26e',NULL,0,'egim@yuhanhoesa.kr','윤옥자','+8211129645137','2021-03-26','2021-09-09 11:15:55.835661',1,4),(32,'!DVI3b3fRqfBRjppqFl6k5zI3Ahh6FSoBEwJSjqMA',NULL,0,'uca@gimibag.com','이민준','+8211114189276','2031-09-18','2021-09-09 11:15:55.841276',2,4),(33,'!rDwJ9Ta9nassOr0p7buHXjgIlIySLQaBgPVfB0zR',NULL,0,'hyeonjun17@yu.net','김정자','+8211179703414','2034-03-01','2021-09-09 11:15:55.846695',1,5),(34,'!gx3LS8Z3XwgNeMzqmpdlSOBYnP2x3d4iC9SSjE0D',NULL,0,'minseoi@gmail.com','박지아','+8211114004689','2018-02-26','2021-09-09 11:15:55.851656',2,5),(35,'!bqWBhfgKzRzfM2UZ9HFalvIIeCnl8lCQpYkZkBsa',NULL,0,'gimeunyeong@baggim.org','강옥자','+8211132164482','2025-11-29','2021-09-09 11:15:55.857496',1,4),(36,'!Kq7PrGKJA1p21SS3F2oHAPVSVI8y7O668ii4VJHh',NULL,0,'jaehyeon59@hotmail.com','이은주','+8211121166972','2026-07-01','2021-09-09 11:15:55.863278',1,4),(37,'!my63a4kuyepSeT8RxIBgphp9Wx7D58Yl5dk7QlcT',NULL,0,'uhan@dreamwiz.com','박중수','+8211107427093','1971-05-18','2021-09-09 11:15:55.869120',1,9),(38,'!xWQ1i6pXYipAA8SeYX4jvZmlK176QvTGr2jfgRj9',NULL,0,'imogsun@gimgimgang.com','이민준','+8211143294316','2027-05-25','2021-09-09 11:15:55.875108',2,2),(39,'!n1Qdq4FesDkVHqVNL6UzZL4yNoXwwNNzjRufQcmB',NULL,0,'jsim@gimbaeg.kr','최명숙','+8211156676337','2022-11-08','2021-09-09 11:15:55.880696',1,5),(40,'!eaxez3NRAoLyZXXAxh2TzrhD5RZtSEX4mC2NpLt3',NULL,0,'munjongsu@jusighoesa.kr','윤유진','+8211118456708','2028-08-09','2021-09-09 11:15:55.886129',1,6),(41,'!FVOyeDKXq4em8FWjO8gzj3J9zkZAuCq3sRTj8sta',NULL,0,'yeweon35@naver.com','안정수','+8211100025040','2023-12-19','2021-09-09 11:15:55.892336',1,4),(42,'!HPSb1XmfLGev193ENfAWq2QIbaNYNthUOCRxbrha',NULL,0,'jeonghogim@daum.net','이상철','+8211155875408','2041-05-21','2021-09-09 11:15:55.897644',1,5),(43,'!H0y2DrCBpgfaxzNBvyfVydoHgi6fqO1xpcthOXbS',NULL,0,'yeongceolseo@igo.com','오광수','+8211175304810','2026-02-02','2021-09-09 11:15:55.902883',1,1),(44,'!nkVHtSveKgyvowuSkMeDm9ZAQ59q3TgbpUoLJT6y',NULL,0,'fgim@hanmail.net','손영숙','+8211112637916','1994-07-21','2021-09-09 11:15:55.908627',1,1),(45,'!achFaKW6V7Ui9PiEfkDvHUTbLLw7HlCVc8X4mPAR',NULL,0,'seojunmun@nate.com','황옥순','+8211156184983','2032-11-20','2021-09-09 11:15:55.914055',1,3),(46,'!WHGdZuhvjj5X3JWxScwgsZlB9UaOncc74xCjeEL9',NULL,0,'yeongil19@daum.net','김성훈','+8211126334088','2007-02-01','2021-09-09 11:15:55.919101',1,3),(47,'!bYLwKiIcI69wwMVt24oqwPMM9aFwfkZE0ugqua3X',NULL,0,'yeongsughan@naver.com','이보람','+8211133184535','1972-02-10','2021-09-09 11:15:55.924874',1,6),(48,'!FOH52yQkcoVJZM3Bq73RM60PoHAgvklhhcuO7KzU',NULL,0,'seoyun02@live.com','주서현','+8211122812379','1987-12-26','2021-09-09 11:15:55.930250',2,6),(49,'!mG0eV3yVPNjWxPZoicSc5P5ngzJPLoBIYQlLw4mB',NULL,0,'sumin27@daum.net','김재호','+8211190895774','2037-04-30','2021-09-09 11:15:55.935548',2,4),(50,'!yedWNxsXZ1gbcvtNE2iP3w4vOj4H2mCyxbs5Vajb',NULL,0,'gimsumin@hanmail.net','박정웅','+8211154603053','2000-09-30','2021-09-09 11:15:55.941113',1,3),(51,'!La0gEEl3ObsfqY4YdNncFwDIIQDGbETANl60HN7Z',NULL,0,'jaehoi@gmail.com','노성진','+8211125070030','1978-06-30','2021-09-09 11:15:55.946444',1,6),(52,'!Djy1XfOp827Vn4gScEmNBts1bweRXA6QBVoGOBUB',NULL,0,'jiugim@live.com','이영진','+8211125425660','2032-12-19','2021-09-09 11:15:55.951538',1,6),(53,'!VHiYjJbCtYzzxH0yVS0iauPk0r8eqgC9jT0WmMt7',NULL,0,'kgwag@jusighoesa.net','홍윤서','+8211121532302','1980-09-06','2021-09-09 11:15:55.957594',1,6),(54,'!MyBJhba5oYhd2i1uRzBq7sVUuSGCuf0WhioFG7m8',NULL,0,'no@yu.net','김지아','+8211107154273','2015-12-15','2021-09-09 11:15:55.962889',2,3),(55,'!WPhXvXOMevJfDnmCVe2TcSftOMigTranpouZcNnS',NULL,0,'hgim@naver.com','오승민','+8211187089840','2037-07-04','2021-09-09 11:15:55.968593',2,9),(56,'!7yULvwfuwxZ912xHsMZTbQ1E9gi4cTQuKtIiQTR5',NULL,0,'ogsun04@jigweon.org','송현정','+8211188564319','2003-01-10','2021-09-09 11:15:55.974462',2,9),(57,'!yRlhoWvKicSwmwSW3CGyYLFMO2pTZVVIGm65ZcqP',NULL,0,'jihyeonbae@nate.com','이지영','+8211109092554','2028-08-29','2021-09-09 11:15:55.980196',2,4),(58,'!qGr9OAWa1yRVzSHV4eOaWZS4e13QLBVlEGhbVpXg',NULL,0,'seoyeonbag@namha.kr','김은주','+8211149318642','2048-11-23','2021-09-09 11:15:55.985425',2,2),(59,'!J0s2MyEawvBIQUy9YcAoJNXX5cXKgXvfcVnWspSL',NULL,0,'si@gmail.com','황주원','+8211164488855','1970-10-22','2021-09-09 11:15:55.991615',1,2),(60,'!7uP6kGFpOZUTha89DMMQAWSsNf39QxgNmXkaMie5',NULL,0,'ci@yunangweon.com','김서연','+8211158235703','2027-02-28','2021-09-09 11:15:55.997553',2,3),(61,'!M8E9ACXkPyPA77dyXM91mc7WG2cheaKr0xkLduPV',NULL,0,'ogjabag@daum.net','권성현','+8211132716644','2014-08-11','2021-09-09 11:15:56.002682',1,3),(62,'!P70jdmkAAPAv1irRWxeM7wnUqRCCFSGo4EhbAByv',NULL,0,'bagyunseo@hanmail.net','김정희','+8211166660975','2014-08-28','2021-09-09 11:15:56.008485',1,5),(63,'!oDVxvSStuhsWhTgVVSkXAphaDqpNBGYYXqvl7l5B',NULL,0,'iheo@gmail.com','박숙자','+8211119550131','1973-06-16','2021-09-09 11:15:56.013649',1,8),(64,'!aDryXuuad1iUflekC0UhQvnMvrUpoRPeB45L71Kd',NULL,0,'hyeonjigweon@naver.com','손지후','+8211162926480','1976-05-11','2021-09-09 11:15:56.018621',1,3),(65,'!QUBaEveaKYPTVGXwDTroH5WfNQgbRzcnYBJSXNWA',NULL,0,'wha@ju.com','강민준','+8211154487278','2039-09-18','2021-09-09 11:15:56.024105',2,8),(66,'!iogWmGAg0GVGJsZZK4fWnYDq1y0rz61S7XdSBIpl',NULL,0,'gimeunyeong@hanmail.net','류순자','+8211178252780','1980-11-20','2021-09-09 11:15:56.029554',1,5),(67,'!w1fgZjFgKVUwr8abDDRzIlNhYteQI8yX01a1d9QZ',NULL,0,'seoyeong56@nate.com','김영순','+8211112502205','1978-06-11','2021-09-09 11:15:56.034712',2,1),(68,'!95INk4FllNl17ZEo4lFZT51VaMzGnqU4Xce3JkjS',NULL,0,'joeunjeong@hotmail.com','장윤서','+8211151607599','2031-09-28','2021-09-09 11:15:56.040360',1,1),(69,'!FyUsTnLIXo1lg7jvBL7zyXO6TJTg2IRcMQWqVhAH',NULL,0,'bagyeongho@gimgimgim.com','고영진','+8211126905787','2024-09-14','2021-09-09 11:15:56.046119',2,5),(70,'!LwsDo3UVYrmZwV9jdsYCXSFCZUsiORaUh2yLgamK',NULL,0,'hongminjun@gwagbag.com','한민지','+8211128400652','1991-08-21','2021-09-09 11:15:56.051300',1,6),(71,'!hzHkky1zUo1vgQBDt87tJGSSW22Pz9abn5gyXukI',NULL,0,'bagjiu@live.com','양영길','+8211103345235','2046-12-13','2021-09-09 11:15:56.056715',2,1),(72,'!TgDTrlJWKtH23mZsRFsOZsBPemo7nqwQMjDlpbcT',NULL,0,'gimseoyun@live.com','유영환','+8211122005800','1990-02-06','2021-09-09 11:15:56.062050',1,7),(73,'!EFjMYjr5O1RxyTjAqW2KVkMajLARXHKrsCs690CE',NULL,0,'iseoyeon@nate.com','최성현','+8211132583861','1983-02-21','2021-09-09 11:15:56.067181',1,1),(74,'!1NSmHBegWz6pLJfT3PNBIaBXSA8ADvRmlJh0jZLX',NULL,0,'gyeongjagim@live.com','김우진','+8211137691448','2034-08-03','2021-09-09 11:15:56.072972',1,3),(75,'!yiCuBVD3Rk5C3e27ODlGdweevRmxdqOzHRSJHFv2',NULL,0,'gangjia@live.com','김영길','+8211118026066','2032-11-16','2021-09-09 11:15:56.078634',2,8),(76,'!MQJ3bPVip2uJnOuRQfWwjAlU3XBTyeCERTTbrNHy',NULL,0,'gyeongja29@gweongim.com','최성민','+8211152578034','1975-08-24','2021-09-09 11:15:56.083558',1,5),(77,'!0axGi3uQV4a6c1djl4posvF2bskf2qaS8xmP5BMR',NULL,0,'jangyeonghwan@hanmail.net','이도현','+8211152219520','1980-08-04','2021-09-09 11:15:56.089243',2,2),(78,'!ZRKk0ZhhuH2Nh7JYr7vdzzbsdYyzt1gSiY2Toscp',NULL,0,'seongjingim@jusighoesa.net','박민서','+8211145164258','2021-03-11','2021-09-09 11:15:56.094771',2,1),(79,'!yQZ11QWAwyh4iORsUXVsSBA4jddagzsz6iGEFjQd',NULL,0,'ei@caji.org','윤서영','+8211112209981','2039-11-18','2021-09-09 11:15:56.100025',2,1),(80,'!chyCcVYkRcfauzyBJnf5EWgCvOvQMYU6xuD80j8S',NULL,0,'junseoan@gmail.com','장지원','+8211115751759','2001-02-16','2021-09-09 11:15:56.105975',1,8),(81,'!bhHqTOmgX1TvbMeeHO2LPFQY3f7aDuw0PAuNIsKP',NULL,0,'doyunyun@yuhanhoesa.com','최하은','+8211176409262','1981-10-24','2021-09-09 11:15:56.111611',1,2),(82,'!JLU3GgdOaeOyTgrNwXzY4QerYgBFaxOZ6gJ2A7xV',NULL,0,'migyeongbag@dreamwiz.com','김성호','+8211191487867','2011-03-02','2021-09-09 11:15:56.116696',2,3),(83,'!U7WQPi2KFfOez9lAQJgEZ21BdQc2GAITRDfiLirj',NULL,0,'cagyeongja@live.com','김재호','+8211181473142','1977-09-19','2021-09-09 11:15:56.122495',2,7),(84,'!WMsh5IWqHWMVVgAeJAtczeRMo16EbRCnCOBSXJNx',NULL,0,'gimjunho@ogimbag.com','박진호','+8211151033744','2039-04-10','2021-09-09 11:15:56.128499',2,4),(85,'!A3MxDGOXNX24IxY2hZsXn113WvYegjEA0Uhc72aq',NULL,0,'ijihun@cago.com','황승민','+8211134375469','2038-01-31','2021-09-09 11:15:56.134205',1,7),(86,'!AkZKIXqywsnoIGe7sgU2pW5lu7WoqHGJ1E2pXPRR',NULL,0,'sugja56@ii.org','서현숙','+8211141741725','2016-01-06','2021-09-09 11:15:56.139897',2,7),(87,'!tCZrstfDhWc2M37Aln7ScmpdPHMTzXbsM0RVTBVi',NULL,0,'janghyeonju@baggugu.kr','김예은','+8211193684735','2023-08-30','2021-09-09 11:15:56.145410',1,1),(88,'!z60pnuCIbE3pIt0tOUdYXg8ZLrSyCjuo2jExXTKI',NULL,0,'coedohyeon@daum.net','김성훈','+8211143521250','1970-08-13','2021-09-09 11:15:56.150832',1,3),(89,'!EJFu2Y2YtoWjgDUCIf2wfdJoVTRz1moxtiQyVnjz',NULL,0,'minjunbag@yuhanhoesa.kr','김순자','+8211167063609','2020-01-05','2021-09-09 11:15:56.157113',2,5),(90,'!S3dxN1RlY56Hsjxs97tNyWpY230pCqNhHAj28V84',NULL,0,'seonyeonggim@daum.net','장서영','+8211114029263','2039-02-21','2021-09-09 11:15:56.221585',1,5),(91,'!vdj67IX0nAFro6WGTQSGxsN2acBGfOvPhxr5ZABl',NULL,0,'hangyeongja@bagbagi.kr','박진우','+8211146198537','1973-04-03','2021-09-09 11:15:56.233531',1,9),(92,'!sdBzYfhmr3pZmN0MlRupMS62cmqpH05PYrOXqxp5',NULL,0,'xseong@gimgimbag.com','김현숙','+8211137457928','1986-09-16','2021-09-09 11:15:56.246783',2,2),(93,'!HKG1VF2Sit07ashoKuzY55tqJxcLYrS80XkBo4aU',NULL,0,'dohyeon92@igimbag.com','오은서','+8211160583528','2029-01-27','2021-09-09 11:15:56.258911',2,7),(94,'!mCbQbb6H3JF0DGagZo78DNEfn8KOqfWDi3DsuBaJ',NULL,0,'seonyeonggim@dreamwiz.com','양우진','+8211195830002','1984-11-04','2021-09-09 11:15:56.270802',2,6),(95,'!VNRHe0DEbcmw7nzfdVSZI1HE4nkiOJ9r0pqgIQfo',NULL,0,'jiu57@hanmail.net','박민서','+8211125857675','1985-06-03','2021-09-09 11:15:56.281853',2,4),(96,'!ycjWmipZh6OcAFoNBQvjxMdJEKSA55HJUYyVJF4m',NULL,0,'no@nate.com','이서영','+8211100631699','1970-07-25','2021-09-09 11:15:56.290759',1,1),(97,'!NPAFkdXdRQ4fodJCHWQLBUbNcLJpmCGSf9YxZu0n',NULL,0,'junseo81@daum.net','김준서','+8211197036954','1973-10-18','2021-09-09 11:15:56.296885',2,4),(98,'!IutPBjgKmv2s86jWqzTomPDuUO2wf3kLBsHlaa4Y',NULL,0,'gyeongsuggim@dreamwiz.com','김민재','+8211143668539','2049-07-04','2021-09-09 11:15:56.303302',2,9),(99,'!Q6pOKDu8SUYYSuht3r4FtfbbTZBvZbsxcSK06yEy',NULL,0,'yi@ju.org','이성호','+8211120163044','1995-10-19','2021-09-09 11:15:56.309858',2,4),(100,'!vCNt6hxPGJJIIncrN5iTmKg9ohI5WjKjbQOaNc2L',NULL,0,'misug02@ryuyungim.com','김현준','+8211151986149','1987-06-16','2021-09-09 11:15:56.315388',2,5);
/*!40000 ALTER TABLE `base_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_users_groups`
--

DROP TABLE IF EXISTS `base_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_users_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_users_groups_user_id_group_id_856cfa26_uniq` (`user_id`,`group_id`),
  KEY `base_users_groups_group_id_3bbbaf0b_fk_auth_group_id` (`group_id`),
  CONSTRAINT `base_users_groups_group_id_3bbbaf0b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `base_users_groups_user_id_122ee265_fk_base_users_id` FOREIGN KEY (`user_id`) REFERENCES `base_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_users_groups`
--

LOCK TABLES `base_users_groups` WRITE;
/*!40000 ALTER TABLE `base_users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_users_user_permissions`
--

DROP TABLE IF EXISTS `base_users_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_users_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_users_user_permissions_user_id_permission_id_544afd67_uniq` (`user_id`,`permission_id`),
  KEY `base_users_user_perm_permission_id_491de090_fk_auth_perm` (`permission_id`),
  CONSTRAINT `base_users_user_perm_permission_id_491de090_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `base_users_user_permissions_user_id_40b43ecb_fk_base_users_id` FOREIGN KEY (`user_id`) REFERENCES `base_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_users_user_permissions`
--

LOCK TABLES `base_users_user_permissions` WRITE;
/*!40000 ALTER TABLE `base_users_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_users_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `company_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_company_category_id_25becdc6_fk_company_categories_id` (`company_category_id`),
  CONSTRAINT `companies_company_category_id_25becdc6_fk_company_categories_id` FOREIGN KEY (`company_category_id`) REFERENCES `company_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Hughes-Nelson','충청남도 수원시 권선구 서초대거리','999-7346-5905','2021-09-08 19:04:20.539648',1,20),(2,'Ponce Ltd','경상북도 괴산군 논현거리','999-8037-8719','2021-09-09 10:33:40.951992',1,29),(3,'Kim, Crane and Webster','대구광역시 성북구 도산대90거리 (민준권면)','999-1965-2576','2021-09-09 10:33:40.988928',1,26),(4,'Washington, Goodman and Ross','인천광역시 강동구 언주로','999-1816-3437','2021-09-09 10:33:41.021329',1,26),(5,'Ruiz-Nunez','충청북도 양평군 강남대로','999-1597-8510','2021-09-09 10:33:41.049691',1,23),(6,'Thompson, Jackson and Barnett','충청남도 증평군 역삼로','999-3986-4452','2021-09-09 10:33:41.077875',1,32),(7,'Banks Group','서울특별시 강남구 선릉길 (건우이정마을)','999-2273-6810','2021-09-09 10:33:41.105724',1,29),(8,'Anderson PLC','울산광역시 용산구 양재천길 (지은이읍)','999-3286-3639','2021-09-09 10:33:41.133064',1,8),(9,'Martinez, Butler and Johnson','서울특별시 서대문구 양재천로','999-4610-4166','2021-09-09 10:33:41.160986',1,32),(10,'Watkins LLC','광주광역시 종로구 개포거리 (현주김장읍)','999-5236-5847','2021-09-09 10:33:41.190318',1,2),(11,'Williams Inc','세종특별자치시 동작구 양재천03가 (지연노남동)','999-5529-9076','2021-09-09 10:33:41.219968',1,31),(12,'Johnson, Harris and Adams','충청남도 의왕시 역삼거리 (지아박리)','999-5359-3881','2021-09-09 10:33:41.248085',1,4),(13,'Ramirez, Gross and Blanchard','경상남도 금산군 학동0가 (성진한동)','999-1047-3207','2021-09-09 10:33:41.279353',1,30),(14,'Ramirez, Spears and Holden','경기도 용인시 처인구 삼성4가 (재현이박동)','999-9380-9123','2021-09-09 10:33:41.307369',1,31),(15,'Patterson Ltd','대전광역시 강서구 학동3로','999-4135-7330','2021-09-09 10:33:41.339900',1,10),(16,'Franco-Lin','전라남도 단양군 압구정2거리 (건우김최면)','999-9162-2755','2021-09-09 10:33:41.369322',1,33),(17,'Boyd-Armstrong','강원도 횡성군 학동길 (중수주이읍)','999-8844-6564','2021-09-09 10:33:41.396657',1,10),(18,'Parks Group','인천광역시 동구 강남대1거리 (은영이면)','999-3322-4685','2021-09-09 10:33:41.424054',1,1),(19,'Murphy LLC','대구광역시 종로구 오금거리','999-2308-9281','2021-09-09 10:33:41.452289',1,11),(20,'Key, Guzman and Foster','경상남도 양주시 서초대로 (현정김면)','999-0793-2159','2021-09-09 10:33:41.481155',1,32),(21,'Medina, Evans and Guerra','서울특별시 종로구 논현074거리 (현정조이마을)','999-2017-0575','2021-09-09 10:33:41.508584',1,5);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_categories`
--

DROP TABLE IF EXISTS `company_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_categories`
--

LOCK TABLES `company_categories` WRITE;
/*!40000 ALTER TABLE `company_categories` DISABLE KEYS */;
INSERT INTO `company_categories` VALUES (1,'서비스업'),(2,'금융/은행업'),(3,'IT/정보통신업'),(4,'판매/유통업'),(5,'제조/생산/화학업'),(6,'교육업'),(7,'건설업'),(8,'의료/제약업'),(9,'미디어/광고업'),(10,'문화/예술/디자인업'),(11,'기관/협회'),(23,'서비스업'),(24,'금융/은행업'),(25,'IT/정보통신업'),(26,'판매/유통업'),(27,'제조/생산/화학업'),(28,'교육업'),(29,'건설업'),(30,'의료/제약업'),(31,'미디어/광고업'),(32,'문화/예술/디자인업'),(33,'기관/협회');
/*!40000 ALTER TABLE `company_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'auth','group'),(1,'auth','permission'),(3,'contenttypes','contenttype'),(18,'service','provide'),(16,'service','providingservice'),(14,'service','referenceimageurl'),(12,'service','request'),(17,'service','requestingservice'),(13,'service','service'),(15,'service','servicecategory'),(4,'sessions','session'),(8,'user','company'),(5,'user','companycategory'),(6,'user','gender'),(11,'user','provider'),(10,'user','requester'),(9,'user','user'),(7,'user','usertype');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-07 09:42:45.700942'),(2,'contenttypes','0002_remove_content_type_name','2021-09-07 09:42:45.737983'),(3,'auth','0001_initial','2021-09-07 09:42:45.831622'),(4,'auth','0002_alter_permission_name_max_length','2021-09-07 09:42:45.853649'),(5,'auth','0003_alter_user_email_max_length','2021-09-07 09:42:45.859717'),(6,'auth','0004_alter_user_username_opts','2021-09-07 09:42:45.865396'),(7,'auth','0005_alter_user_last_login_null','2021-09-07 09:42:45.870976'),(8,'auth','0006_require_contenttypes_0002','2021-09-07 09:42:45.872795'),(9,'auth','0007_alter_validators_add_error_messages','2021-09-07 09:42:45.877862'),(10,'auth','0008_alter_user_username_max_length','2021-09-07 09:42:45.883544'),(11,'auth','0009_alter_user_last_name_max_length','2021-09-07 09:42:45.888912'),(12,'auth','0010_alter_group_name_max_length','2021-09-07 09:42:45.899690'),(13,'auth','0011_update_proxy_permissions','2021-09-07 09:42:45.905544'),(14,'auth','0012_alter_user_first_name_max_length','2021-09-07 09:42:45.910698'),(15,'sessions','0001_initial','2021-09-07 09:42:45.926812'),(16,'user','0001_initial','2021-09-07 09:42:46.233924'),(17,'service','0001_initial','2021-09-08 18:08:30.341906'),(18,'service','0002_auto_20210909_1122','2021-09-09 11:22:24.264730');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'male'),(2,'female');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `user_ptr_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `providers_company_id_0727d72e_fk_companies_id` (`company_id`),
  CONSTRAINT `providers_company_id_0727d72e_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `providers_user_ptr_id_2aecd713_fk_base_users_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `base_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,1,6),(3,1,3),(5,1,4),(7,1,14),(9,1,10),(11,1,7),(13,1,19),(15,1,21),(17,1,12),(19,1,2),(21,1,5),(23,1,18),(25,1,14),(27,1,18),(29,1,6),(31,1,6),(33,1,14),(35,1,18),(37,1,15),(39,1,19),(41,1,6),(43,1,5),(45,1,15),(47,1,13),(49,1,21),(51,1,16),(53,1,10),(55,1,4),(57,1,8),(59,1,4),(61,1,3),(63,1,3),(65,1,9),(67,1,4),(69,1,9),(71,1,19),(73,1,8),(75,1,9),(77,1,8),(79,1,3),(81,1,20),(83,1,20),(85,1,8),(87,1,14),(89,1,19),(91,1,21),(93,1,15),(95,1,20),(97,1,13),(99,1,8);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provides`
--

DROP TABLE IF EXISTS `provides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provides` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detail` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `company_id` bigint NOT NULL,
  `provider_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provides_company_id_0d78123c_fk_companies_id` (`company_id`),
  KEY `provides_provider_id_81cd8785_fk_providers_user_ptr_id` (`provider_id`),
  CONSTRAINT `provides_company_id_0d78123c_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `provides_provider_id_81cd8785_fk_providers_user_ptr_id` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provides`
--

LOCK TABLES `provides` WRITE;
/*!40000 ALTER TABLE `provides` DISABLE KEYS */;
/*!40000 ALTER TABLE `provides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providing_services`
--

DROP TABLE IF EXISTS `providing_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providing_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `etc_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `providing_services_company_id_e05e34c2_fk_companies_id` (`company_id`),
  KEY `providing_services_service_id_dee01d7d_fk_services_id` (`service_id`),
  CONSTRAINT `providing_services_company_id_e05e34c2_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `providing_services_service_id_dee01d7d_fk_services_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providing_services`
--

LOCK TABLES `providing_services` WRITE;
/*!40000 ALTER TABLE `providing_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `providing_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_image_urls`
--

DROP TABLE IF EXISTS `reference_image_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_image_urls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `provide_id` bigint DEFAULT NULL,
  `request_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reference_image_urls_provide_id_46a0b102_fk_provides_id` (`provide_id`),
  KEY `reference_image_urls_request_id_fe2ad220_fk_requests_id` (`request_id`),
  CONSTRAINT `reference_image_urls_provide_id_46a0b102_fk_provides_id` FOREIGN KEY (`provide_id`) REFERENCES `provides` (`id`),
  CONSTRAINT `reference_image_urls_request_id_fe2ad220_fk_requests_id` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_image_urls`
--

LOCK TABLES `reference_image_urls` WRITE;
/*!40000 ALTER TABLE `reference_image_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_image_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requesters`
--

DROP TABLE IF EXISTS `requesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requesters` (
  `user_ptr_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `requesters_company_id_d2ee15c5_fk_companies_id` (`company_id`),
  CONSTRAINT `requesters_company_id_d2ee15c5_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `requesters_user_ptr_id_fac9a377_fk_base_users_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `base_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requesters`
--

LOCK TABLES `requesters` WRITE;
/*!40000 ALTER TABLE `requesters` DISABLE KEYS */;
INSERT INTO `requesters` VALUES (2,1,4),(4,1,4),(6,1,15),(8,1,13),(10,1,20),(12,1,5),(14,1,17),(16,1,13),(18,1,5),(20,1,16),(22,1,2),(24,1,16),(26,1,19),(28,1,1),(30,1,7),(32,1,10),(34,1,18),(36,1,11),(38,1,8),(40,1,21),(42,1,1),(44,1,10),(46,1,19),(48,1,13),(50,1,15),(52,1,19),(54,1,19),(56,1,7),(58,1,3),(60,1,17),(62,1,15),(64,1,10),(66,1,6),(68,1,6),(70,1,14),(72,1,21),(74,1,11),(76,1,13),(78,1,16),(80,1,18),(82,1,20),(84,1,19),(86,1,2),(88,1,8),(90,1,18),(92,1,20),(94,1,11),(96,1,20),(98,1,4),(100,1,9);
/*!40000 ALTER TABLE `requesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requesting_services`
--

DROP TABLE IF EXISTS `requesting_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requesting_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `etc_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requesting_services_company_id_67027892_fk_companies_id` (`company_id`),
  KEY `requesting_services_service_id_d2426abf_fk_services_id` (`service_id`),
  CONSTRAINT `requesting_services_company_id_67027892_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `requesting_services_service_id_d2426abf_fk_services_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requesting_services`
--

LOCK TABLES `requesting_services` WRITE;
/*!40000 ALTER TABLE `requesting_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `requesting_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detail` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `need_start` date NOT NULL,
  `need_end` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `company_id` bigint NOT NULL,
  `requester_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_company_id_195d9261_fk_companies_id` (`company_id`),
  KEY `requests_requester_id_55c8f913_fk_requesters_user_ptr_id` (`requester_id`),
  CONSTRAINT `requests_company_id_195d9261_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `requests_requester_id_55c8f913_fk_requesters_user_ptr_id` FOREIGN KEY (`requester_id`) REFERENCES `requesters` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `icon_url` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES (1,'청소',NULL),(2,'교통',NULL),(3,'건물관리',NULL),(4,'시설',NULL),(5,'대여',NULL),(6,'식사',NULL),(7,'대리인',NULL),(8,'제휴',NULL),(9,'입점',NULL),(10,'주차',NULL),(11,'기타',NULL);
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `icon_url` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_category_id_a33744a9_fk_service_categories_id` (`category_id`),
  CONSTRAINT `services_category_id_a33744a9_fk_service_categories_id` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'visualize front-end paradigms','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(2,'revolutionize value-added web-readiness','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',10),(3,'streamline enterprise schemas','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(4,'re-contextualize frictionless niches','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(5,'whiteboard holistic channels','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',11),(6,'mesh vertical applications','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(7,'architect 24/365 synergies','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(8,'cultivate rich e-tailers','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',9),(9,'facilitate cutting-edge platforms','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',4),(10,'engage global experiences','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',10),(11,'cultivate customized solutions','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',4),(12,'matrix compelling web services','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',4),(13,'aggregate enterprise metrics','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',9),(14,'envisioneer collaborative experiences','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',4),(15,'unleash customized synergies','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',9),(16,'integrate B2C eyeballs','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(17,'visualize impactful partnerships','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(18,'syndicate sticky applications','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',5),(19,'implement frictionless networks','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',1),(20,'re-contextualize wireless info-mediaries','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(21,'engineer world-class web-readiness','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(22,'evolve dot-com e-business','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',5),(23,'utilize back-end channels','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',5),(24,'synergize extensible e-tailers','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',7),(25,'harness value-added experiences','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(26,'redefine end-to-end schemas','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(27,'productize collaborative mindshare','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(28,'maximize collaborative platforms','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',11),(29,'orchestrate enterprise experiences','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',6),(30,'enhance e-business mindshare','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',7),(31,'empower end-to-end technologies','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',9),(32,'exploit holistic initiatives','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',1),(33,'synthesize cross-platform ROI','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(34,'synthesize end-to-end vortals','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(35,'benchmark transparent mindshare','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(36,'mesh revolutionary web services','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(37,'benchmark intuitive synergies','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(38,'grow web-enabled channels','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(39,'productize extensible bandwidth','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',6),(40,'transition seamless mindshare','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',11),(41,'harness front-end eyeballs','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',10),(42,'engage one-to-one convergence','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',10),(43,'integrate bricks-and-clicks e-markets','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(44,'architect cross-media models','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',5),(45,'grow cross-media mindshare','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',5),(46,'maximize e-business applications','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',7),(47,'generate plug-and-play metrics','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',8),(48,'facilitate leading-edge content','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',3),(49,'productize B2B relationships','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',2),(50,'leverage interactive infrastructures','https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',6);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'대표'),(2,'사장'),(3,'이사'),(4,'사원'),(5,'부장'),(6,'과장'),(7,'기타'),(8,'인턴'),(9,'매니저');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-09 11:34:25
