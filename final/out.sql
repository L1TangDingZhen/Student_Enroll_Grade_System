-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: DDDD
-- ------------------------------------------------------
-- Server version	8.0.36

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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_newuser'),(2,'Can change user',1,'change_newuser'),(3,'Can delete user',1,'delete_newuser'),(4,'Can view user',1,'view_newuser'),(5,'Can add course',2,'add_course'),(6,'Can change course',2,'change_course'),(7,'Can delete course',2,'delete_course'),(8,'Can view course',2,'view_course'),(9,'Can add grade',3,'add_grade'),(10,'Can change grade',3,'change_grade'),(11,'Can delete grade',3,'delete_grade'),(12,'Can view grade',3,'view_grade'),(13,'Can add enrollment',4,'add_enrollment'),(14,'Can change enrollment',4,'change_enrollment'),(15,'Can delete enrollment',4,'delete_enrollment'),(16,'Can view enrollment',4,'view_enrollment'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add permission',6,'add_permission'),(22,'Can change permission',6,'change_permission'),(23,'Can delete permission',6,'delete_permission'),(24,'Can view permission',6,'view_permission'),(25,'Can add group',7,'add_group'),(26,'Can change group',7,'change_group'),(27,'Can delete group',7,'delete_group'),(28,'Can view group',7,'view_group'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add available',10,'add_available'),(38,'Can change available',10,'change_available'),(39,'Can delete available',10,'delete_available'),(40,'Can view available',10,'view_available');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_available`
--

DROP TABLE IF EXISTS `back_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_available` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `semester` varchar(10) NOT NULL,
  `capacity` int NOT NULL,
  `registration_deadline` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_available`
--

LOCK TABLES `back_available` WRITE;
/*!40000 ALTER TABLE `back_available` DISABLE KEYS */;
INSERT INTO `back_available` VALUES (1,2025,'Trimester2',30,'2025-12-31'),(2,2025,'Trimester3',12,'2025-12-31'),(3,2025,'Trimester3',6,'2025-12-31'),(4,2025,'Trimester3',61,'2025-12-31'),(5,2025,'Trimester3',20,'2025-12-31'),(6,2025,'Trimester3',15,'2025-12-31');
/*!40000 ALTER TABLE `back_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_course`
--

DROP TABLE IF EXISTS `back_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_course` (
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `available_id` bigint DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `back_course_teacher_id_fcfebf53_fk_back_newuser_student_id` (`teacher_id`),
  KEY `back_course_available_id_b48f394c_fk_back_available_id` (`available_id`),
  CONSTRAINT `back_course_available_id_b48f394c_fk_back_available_id` FOREIGN KEY (`available_id`) REFERENCES `back_available` (`id`),
  CONSTRAINT `back_course_teacher_id_fcfebf53_fk_back_newuser_student_id` FOREIGN KEY (`teacher_id`) REFERENCES `back_newuser` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_course`
--

LOCK TABLES `back_course` WRITE;
/*!40000 ALTER TABLE `back_course` DISABLE KEYS */;
INSERT INTO `back_course` VALUES ('','Flying','333',2),('001','Math','001',NULL),('002','Operating System','333',NULL),('003','ART','333',6),('004','PE','333',5),('005','Dance','333',1),('006','Hiking','333',4),('007','Driving ','333',3);
/*!40000 ALTER TABLE `back_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_enrollment`
--

DROP TABLE IF EXISTS `back_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_enrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `available_id` bigint DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `back_enrollment_student_id_course_id_b965c1ee_uniq` (`student_id`,`course_id`),
  KEY `back_enrollment_course_id_abde9c7e_fk_back_course_course_id` (`course_id`),
  KEY `back_enrollment_available_id_9485df47_fk_back_available_id` (`available_id`),
  CONSTRAINT `back_enrollment_available_id_9485df47_fk_back_available_id` FOREIGN KEY (`available_id`) REFERENCES `back_available` (`id`),
  CONSTRAINT `back_enrollment_course_id_abde9c7e_fk_back_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `back_course` (`course_id`),
  CONSTRAINT `back_enrollment_student_id_3b5783f9_fk_back_newuser_student_id` FOREIGN KEY (`student_id`) REFERENCES `back_newuser` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_enrollment`
--

LOCK TABLES `back_enrollment` WRITE;
/*!40000 ALTER TABLE `back_enrollment` DISABLE KEYS */;
INSERT INTO `back_enrollment` VALUES (10,'005','111',1,'Trimester2'),(11,'006','111',4,'Trimester3'),(12,'007','111',3,'Trimester3'),(13,'004','111',5,'Trimester3'),(14,'003','111',6,'Trimester3');
/*!40000 ALTER TABLE `back_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_grade`
--

DROP TABLE IF EXISTS `back_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_grade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `enroll_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enroll_id` (`enroll_id`),
  CONSTRAINT `back_grade_enroll_id_216a2d11_fk_back_enrollment_id` FOREIGN KEY (`enroll_id`) REFERENCES `back_enrollment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_grade`
--

LOCK TABLES `back_grade` WRITE;
/*!40000 ALTER TABLE `back_grade` DISABLE KEYS */;
INSERT INTO `back_grade` VALUES (1,23,12),(2,2,11),(3,33,10),(4,19,14),(5,44,13);
/*!40000 ALTER TABLE `back_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_newuser`
--

DROP TABLE IF EXISTS `back_newuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_newuser` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `is_teacher` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_newuser`
--

LOCK TABLES `back_newuser` WRITE;
/*!40000 ALTER TABLE `back_newuser` DISABLE KEYS */;
INSERT INTO `back_newuser` VALUES ('pbkdf2_sha256$720000$gbr5js7QoYAmtxZ5Z9YUyo$NtAhWBSCkr3ZEAPYpt3HTjN1cQMIicx4/VZn8PDl5BM=','2024-04-23 12:05:07.752792',1,'','','',1,1,'2024-04-23 12:04:09.318245','admin','001',0),('pbkdf2_sha256$720000$q4lwCcTiIIN2x9NdnewDgY$WNWNCRK9wDYz8esTcsVU5UNlKwQ7dS5Agqj+3nscrU0=',NULL,0,'','','',0,1,'2024-04-23 12:05:53.987494','111','111',0),('pbkdf2_sha256$720000$t87Jq80mb7JrviBL84XlWm$3gFi2gsF9a5h/F8hnzE85wfwPU7KdvSDo1Lnh6ywMyQ=',NULL,0,'','','',0,1,'2024-04-23 13:14:05.534803','333','333',1);
/*!40000 ALTER TABLE `back_newuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_newuser_groups`
--

DROP TABLE IF EXISTS `back_newuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_newuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `newuser_id` varchar(20) NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `back_newuser_groups_newuser_id_group_id_4c2a8f74_uniq` (`newuser_id`,`group_id`),
  KEY `back_newuser_groups_group_id_2c2fe5d9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `back_newuser_groups_group_id_2c2fe5d9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `back_newuser_groups_newuser_id_cd079e5a_fk_back_newu` FOREIGN KEY (`newuser_id`) REFERENCES `back_newuser` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_newuser_groups`
--

LOCK TABLES `back_newuser_groups` WRITE;
/*!40000 ALTER TABLE `back_newuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `back_newuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_newuser_user_permissions`
--

DROP TABLE IF EXISTS `back_newuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_newuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `newuser_id` varchar(20) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `back_newuser_user_permis_newuser_id_permission_id_f1193071_uniq` (`newuser_id`,`permission_id`),
  KEY `back_newuser_user_pe_permission_id_875a8eb0_fk_auth_perm` (`permission_id`),
  CONSTRAINT `back_newuser_user_pe_newuser_id_9782eab0_fk_back_newu` FOREIGN KEY (`newuser_id`) REFERENCES `back_newuser` (`student_id`),
  CONSTRAINT `back_newuser_user_pe_permission_id_875a8eb0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_newuser_user_permissions`
--

LOCK TABLES `back_newuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `back_newuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `back_newuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_back_newuser_student_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_back_newuser_student_id` FOREIGN KEY (`user_id`) REFERENCES `back_newuser` (`student_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(7,'auth','group'),(6,'auth','permission'),(10,'back','available'),(2,'back','course'),(4,'back','enrollment'),(3,'back','grade'),(1,'back','newuser'),(8,'contenttypes','contenttype'),(9,'sessions','session');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-23 12:02:07.957366'),(2,'contenttypes','0002_remove_content_type_name','2024-04-23 12:02:08.066916'),(3,'auth','0001_initial','2024-04-23 12:02:08.681878'),(4,'auth','0002_alter_permission_name_max_length','2024-04-23 12:02:08.779601'),(5,'auth','0003_alter_user_email_max_length','2024-04-23 12:02:08.787601'),(6,'auth','0004_alter_user_username_opts','2024-04-23 12:02:08.794853'),(7,'auth','0005_alter_user_last_login_null','2024-04-23 12:02:08.803935'),(8,'auth','0006_require_contenttypes_0002','2024-04-23 12:02:08.807941'),(9,'auth','0007_alter_validators_add_error_messages','2024-04-23 12:02:08.817866'),(10,'auth','0008_alter_user_username_max_length','2024-04-23 12:02:08.827570'),(11,'auth','0009_alter_user_last_name_max_length','2024-04-23 12:02:08.835851'),(12,'auth','0010_alter_group_name_max_length','2024-04-23 12:02:08.855451'),(13,'auth','0011_update_proxy_permissions','2024-04-23 12:02:08.862904'),(14,'auth','0012_alter_user_first_name_max_length','2024-04-23 12:02:08.869628'),(15,'back','0001_initial','2024-04-23 12:02:10.216725'),(16,'admin','0001_initial','2024-04-23 12:02:10.523285'),(17,'admin','0002_logentry_remove_auto_add','2024-04-23 12:02:10.532564'),(18,'admin','0003_logentry_add_action_flag_choices','2024-04-23 12:02:10.541599'),(19,'sessions','0001_initial','2024-04-23 12:02:10.602744'),(20,'back','0002_enrollment_capacity','2024-04-25 10:30:36.316814'),(21,'back','0003_available_remove_enrollment_capacity_and_more','2024-04-25 11:22:50.381124'),(22,'back','0004_available_registration_deadline','2024-04-25 12:13:28.556151'),(23,'back','0005_course_available','2024-04-25 13:48:29.607221'),(24,'back','0006_enrollment_semester','2024-04-28 09:14:56.573849');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3yo1bobtxbak88w7dudraphnt8a644cu','.eJxVjMEOwiAQRP-FsyHLUljq0bvfQIAlUjWQlPZk_Hcl6UFvk3lv5iV82Lfi955Xv7A4CwAlTr9tDOmR60B8D_XWZGp1W5cohyIP2uW1cX5eDvfvoIRevmvt7ExaETNgVEYjBAoqocojYTJOE4FhQ8YgAs8waRdZY7RxsoTi_QHonzZp:1rzEtX:60sxNbzo4Afc2C5gcDFtocnEGXfwSSV7EGb9wnh7hPs','2024-05-07 12:05:07.752792');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 16:36:34
