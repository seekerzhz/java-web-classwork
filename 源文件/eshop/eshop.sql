-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: eshop
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `consigneeName` varchar(45) NOT NULL,
  `consigneeAddress` varchar(45) DEFAULT NULL,
  `consigneePhone` varchar(45) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户的收货地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'张三','徐州市金山东路1号文昌校区','12345678','220000',1),(2,'张冯毅','徐州市金山东路2号南湖校区三环南路高架','13456700','220001',1),(3,'李四','徐州解放南路8号','1395160987','220008',2),(13,'钱七八','北京市海淀区解放南路222号中科院自动化所311室','18612345678','100100',1),(580,'孙五七','南京市中山路3号夫子庙小学','15909876543','220012',1),(588,'李四光','江苏省徐州市金山东路1号','13789898988','221000',2),(590,'用户14','泉山区','13789898987','221000',35);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '正文',
  `pic` varchar(255) DEFAULT NULL COMMENT '标题图片',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='推荐文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'最佳户外羽绒服品牌推荐！怕冷星人的终极福音','生命诚可贵，保暖价更高！<br>\n相对普通的羽绒服来说，户外羽绒服的功能性更多一点，选料更加考究，考虑到户外运动的功能所以具备轻量、保暖、防水防钻毛等的特点，户外羽绒服能满足包括在恶劣环境下的徒步穿越、滑雪登山在内的保暖需求，所以在东北，有一件品质优良，性价比超高的户外羽绒服送给男朋友，是非常正确的选择！','assets/images/product/p6.jpg','2022-01-15 00:00:00',11),(2,'柒牌男装-这一款您一定喜欢','除了日常休闲之外，柒牌的商务装确实做得不错，毕竟他们家的各种进口设备真的算是蛮厉害的了。国际巨星李连杰、影视巨星黄磊、首席男模李学庆、国际足坛超级巨星 克里斯蒂亚诺·罗纳尔多（C罗）都是他们的形象代言人。<br>\n柒牌集团始终坚持“让中华时尚在世界传承”的企业使命,以“柒牌男装比肩世界,中华立领风行天下”为企业愿景,秉承“创新、诚信、卓越、感恩”的价值理念,演绎柒牌“比肩世界男装”的品牌形象。','assets/images/product/p3.jpg','2022-02-10 00:00:00',15),(3,'最美的冬奥滑雪衣服','冬奥滑雪衣服，最新一款来袭','assets/images/product/p4.jpg','2022-01-18 00:00:00',18),(4,'荣耀畅玩20 5000mAh超大电池续航','荣耀畅玩20 5000mAh超大电池续航 6.5英寸大屏 莱茵护眼 8GB+128GB 极光蓝 双卡双待 全网通 ','assets/images/product/p5.jpg','2022-03-03 00:00:00',15),(5,'惠普（HP）7720 /7740 A3 A4彩色办公打印机一体机喷墨复印','惠普（HP）7720 /7740 A3 A4彩色办公打印机一体机喷墨复印扫描传真无线双面办公商务连供 7720+标配【A3打印/A4复印扫描】百亿补贴','assets/images/product/p1.jpg','2021-12-03 00:00:00',18),(6,'蓝靖儿 加绒牛仔裤女加厚高腰修身显瘦','蓝靖儿 加绒牛仔裤女加厚高腰修身显瘦','assets/images/product/p1.jpg','2022-01-27 00:00:00',11),(7,'伊衫琳 加绒加厚牛仔裤女2021秋冬季新','伊衫琳 加绒加厚牛仔裤女2021秋冬季新','assets/images/product/p5.jpg','2022-01-28 00:00:00',15),(8,'诗迪芙牛仔裤女网红小直筒裤女春秋新款','诗迪芙牛仔裤女网红小直筒裤女春秋新款','assets/images/product/p4.jpg','2022-01-29 00:00:00',11),(9,'米兰登2021冬季新款中老年妈妈装加厚米兰登2021冬季新款中老年妈妈装加厚保暖高腰牛仔直筒棉裤女宽松舒适气质百搭','米兰登2021冬季新款中老年妈妈装加厚保暖高腰牛仔直筒棉裤女宽松舒适气质百搭','assets/images/product/p4.jpg','2022-01-30 00:00:00',18),(10,'BBLLUUEE/粉蓝衣橱改良旗袍式连衣裙女','BBLLUUEE/粉蓝衣橱改良旗袍式连衣裙女2022春夏新款中式立领A字裙 珊瑚橙 ','assets/images/product/p5.jpg','2022-01-31 00:00:00',18);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` decimal(19,4) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,0.0000,1),(2,0.0000,2),(3,44.0000,3),(4,646.0000,4),(5,234.0000,5),(6,45.0000,6),(7,234.0000,7),(8,52.0000,8),(9,3546.0000,9),(10,632.0000,10),(11,783.0000,11),(12,324.3200,12),(13,24.0000,13),(14,454.0000,14),(15,245.0000,15),(16,563.0000,16),(17,345635.0000,17),(18,676.0000,18),(23,234.0000,23),(24,145.0000,24),(27,562.0000,27),(28,45.0000,28),(29,5636.0000,29),(30,0.0000,30),(31,0.0000,31),(32,0.0000,32),(33,0.0000,33),(34,0.0000,34),(35,0.0000,35);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='购物车的购物项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (4,2,3,3,87.0000);
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `grade` int DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `parent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品的分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'手机数码',0,'las la-mouse',NULL),(2,'电脑办公',0,'las la-laptop',NULL),(3,'家用电器',0,'las la-tablet-alt',NULL),(4,'服装鞋靴',0,'las la-print',NULL),(5,'化妆护理',0,'las la-camera',NULL),(6,'家居家装',0,'las la-headphones',NULL),(7,'手机通讯',1,NULL,1),(8,'手机配件',1,NULL,1),(9,'摄影摄像',1,NULL,1),(10,'数码配件',1,NULL,1),(11,'智能设备',1,NULL,1),(12,'时尚影音',1,NULL,1),(13,'电子教育',1,NULL,1),(14,'电脑整机',1,NULL,2),(15,'电脑配件',1,NULL,2),(16,'电脑外设',1,NULL,2),(17,'网络设备',1,NULL,2),(18,'办公打印',1,NULL,2),(19,'办公文仪',1,NULL,2),(20,'办公耗材',1,NULL,2),(21,'生活电器',1,NULL,3),(22,'厨卫电器',1,NULL,3),(23,'个护健康',1,NULL,3),(24,'五金家装',1,NULL,3),(25,'大家电',1,NULL,3),(26,'品质男装',1,NULL,4),(27,'时尚女装',1,NULL,4),(28,'精品内衣',1,NULL,4),(29,'精品男鞋',1,NULL,4),(30,'潮流女鞋',1,NULL,4),(31,'面部护肤',1,NULL,5),(32,'身体护肤',1,NULL,5),(33,'口腔护理',1,NULL,5),(34,'洗发护发',1,NULL,5),(35,'香水彩妆',1,NULL,5),(36,'家纺布艺',1,NULL,6),(37,'家居照明',1,NULL,6),(38,'家装建材',1,NULL,6),(39,'生活日用',1,NULL,6),(40,'清洁用品',1,NULL,6),(41,'图书文娱',0,'las la-stopwatch',NULL),(42,'幼儿读物',1,NULL,41),(43,'小学教辅',1,NULL,41),(44,'中学教材',1,NULL,41),(45,'小说戏剧',1,NULL,41),(46,'计算机类',1,NULL,41),(47,'财政经济',1,NULL,41),(48,'法律政策',1,NULL,41),(49,'字典词典',1,NULL,41);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `createtime` datetime DEFAULT NULL COMMENT '评论时间',
  `user_id` int NOT NULL COMMENT '评论人',
  `blog_id` int NOT NULL COMMENT '所评文章',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='对推荐文章的评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'确实不错的衣服。性价比高。','2022-01-16 00:00:00',1,1),(2,'质优价美，特别合身。','2022-02-18 00:00:00',1,2),(3,'款式真不错。适合冬天穿着。','2022-03-01 00:00:00',2,1),(6,'保暖性好。款式新颖。','2022-01-17 00:00:00',1,1),(7,'保暖性好。款式新颖。','2022-01-17 00:00:00',1,5),(8,'做工较细致，款式上身比较修身，发货速度速度快，是物有所值的一件衣服。','2022-01-17 00:00:00',1,1),(9,'这种衣服质量很差，还推荐。真是*。','2022-01-18 00:00:00',1,4),(10,'我喜欢柒牌和七匹狼男装。','2022-01-19 00:00:00',1,2),(11,'这是一条不错的裙子。我很喜欢。','2022-01-19 00:00:00',1,3),(12,'户外羽绒服，珍惜你的衣服。','2022-01-23 17:38:05',2,1),(13,'图片和正文不一致。小编的鸡腿没了。','2022-01-24 01:41:18',1,5),(14,'加绒加厚牛仔裤，温暖舒适','2022-01-28 11:52:33',1,7),(15,'真是乱评论。脑残。','2022-01-29 23:29:01',1,2),(16,'男装不错。物美价廉，质优价美。快递也一天到。','2022-01-29 23:36:24',1,2),(17,'男装不错。物美价廉，质优价美。快递也一天到。','2022-01-29 23:37:57',1,2),(18,'测试以下过滤器是否能用。能不能骂人？','2022-02-07 22:51:12',1,5),(19,'衣服非常不错，大小合适。','2022-03-03 16:48:53',2,2),(20,'非常不错的裙子，大小合适。','2022-03-03 16:51:41',3,3),(21,'大小合适，物美价廉，快递迅速。','2022-03-03 16:54:15',2,2),(22,'这是骂人的话','2022-03-03 16:59:54',2,2),(23,'测试mybatis的提交评论（commentMap）功能。','2022-03-12 01:29:17',29,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品评价表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'物美价廉，物流真快，上午下单，下午就到了。','2022-01-03',1,1),(2,'外观设计采用直角边框，手感摸着超级舒适。','2022-02-02',2,1);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='常见问题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'运费是免费的吗？','运费是根据购物金额来计算的。金额超过99元，是免运费的。如果不超过99元，则根据收货地进行计算。'),(2,'如何退货？','退货请在订单页面的右侧，点击退货，按照表格填写即可。');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,2,1,233.0000),(2,2,3,1,432.0000),(3,1,5,4,90.0000),(4,3,1,3,988.0000),(5,1,2,5,15998.0000),(6,2,1,6,3888.0000),(7,2,1,7,3888.0000),(8,1,2,7,15998.0000),(9,3,5,7,7940.0000),(10,3,2,9,3176.0000),(11,2,2,9,7776.0000),(12,2,1,1,288.0000),(13,1,1,1,7999.0000),(14,3,3,1,4764.0000),(15,4,4,1,9504.0000),(16,2,2,1,345.0000),(17,3,1,1,4655.0000),(18,13,1,1,234.0000),(19,5,1,1,2389.0000),(27,11,1,31,234.0000),(28,7,1,28,12.0000),(29,2,1,28,3888.0000),(30,3,2,1,3176.0000),(31,3,1,1,377.0000),(32,1,1,1,7999.0000),(33,2,1,1,3888.0000),(34,5,1,1,2389.0000),(35,4,1,1,2376.0000),(36,2,1,1,3888.0000),(37,9,1,1,555.0000),(38,2,2,1,7776.0000),(39,3,1,1,1588.0000),(40,1,1,1,7999.0000),(41,2,2,1,7776.0000),(42,9,1,38,555.0000),(43,3,1,38,1588.0000);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` decimal(19,4) DEFAULT NULL,
  `user_id` int NOT NULL,
  `address_id` int unsigned DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单，因为order是sql关键字，所以本表名后加了个s';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,23.0000,1,1,1,'2022-01-02 00:00:00'),(2,34.0000,2,1,1,'2022-01-01 00:00:00'),(3,456.0000,1,1,2,'2022-01-03 00:00:00'),(4,234.0000,4,2,2,'2022-01-02 00:00:00'),(5,23.0000,1,3,3,'2022-02-28 00:00:00'),(6,233.0000,1,4,3,'2022-10-15 00:00:00'),(7,565.0000,4,5,4,'2022-09-11 00:00:00'),(8,0.0000,4,4,4,'2022-07-31 00:00:00'),(9,234.0000,1,1,1,'2022-07-31 00:00:00'),(10,0.0000,1,2,2,'2022-07-31 00:00:00'),(11,0.0000,1,3,3,'2022-07-31 00:00:00'),(12,34442.0000,1,2,4,'2022-01-25 16:05:51'),(28,3900.0000,1,1,3,'2022-01-28 00:00:00'),(29,3176.0000,1,1,4,'2022-03-04 00:39:32'),(30,0.0000,1,1,4,'2022-03-04 00:40:32'),(31,34.0000,2,3,4,'2022-03-10 23:26:28'),(32,11887.0000,1,2,4,'2022-03-13 18:50:26'),(33,4765.0000,1,2,4,'2022-03-13 19:04:34'),(34,4443.0000,1,580,4,'2022-03-13 19:08:26'),(35,7776.0000,1,1,4,'2022-03-13 19:19:06'),(36,1588.0000,1,1,4,'2022-03-13 19:30:14'),(37,15775.0000,2,3,4,'2022-03-13 19:57:34'),(38,2143.0000,35,590,4,'2022-03-17 14:49:09');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(45) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品的图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,'assets/images/electronic/product/01.jpg',1),(2,'assets/images/electronic/product/02.jpg',1),(3,'assets/images/electronic/product/06.jpg',1),(4,'assets/images/kids/product/p6.jpg',2);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  `original_price` decimal(19,4) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `detail` varchar(1023) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `hot` tinyint(1) DEFAULT '1',
  `latest` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'apple iphone 13',7999.0000,8999.0000,'苹果最新一代的手机产品','苹果公司的最新手机款式，拥有7寸的显示屏，16G内存等等',1899,'assets/images/product/p10.jpg','assets/images/product/p10_hover.jpg',7,1,1),(2,'波司登羽绒服',3888.0000,3988.0000,'波司登羽绒服，冬季必备衣物','波司登羽绒服的详细信息',199,'assets/images/product/p6.jpg','assets/images/product/p6_hover.jpg',27,1,1),(3,'雪中飞羽绒服',1588.0000,2699.0000,'雪中飞羽绒服，青春活力','雪中飞羽绒服，青春活力',0,'assets/images/product/p3.jpg','assets/images/product/p3_hover.jpg',27,1,1),(4,'海尔冰箱',2376.0000,2567.0000,'海尔冰箱，制冷小帮手','海尔冰箱，制冷小帮手',1,'assets/images/electronic/product/01.jpg','assets/images/electronic/product/01.jpg',7,1,1),(5,'汾酒 53度 青花20 500mL *6瓶 整箱 清香型白酒',2389.0000,2897.0000,'汾酒 53度 青花20 500mL *6瓶 整箱 清香型白酒','汾酒 53度 青花20 500mL *6瓶 整箱 清香型白酒',34,'assets/images/electronic/product/02.jpg','assets/images/electronic/product/012.jpg',7,1,1),(6,'HUAWEI nova 9 Pro 4G全网通',2397.0000,3298.0000,'HUAWEI nova 9 Pro 4G全网通 双3200万前置Vlog镜头 100W超级快充 10亿色臻彩屏 8+128GB 亮黑色华为手机 ','HUAWEI nova 9 Pro 4G全网通 双3200万前置Vlog镜头 100W超级快充 10亿色臻彩屏 8+128GB 亮黑色华为手机 ',333,'assets/images/electronic/product/03.jpg','assets/images/electronic/product/03.jpg',7,1,1),(7,'儿童小学生毛笔楷书法练习字帖 水写布',12.0000,15.0000,'妙轩阁 文房四宝水写布套装初学者入门成人儿童小学生毛笔楷书法练习字帖 水写布','妙轩阁 文房四宝水写布套装初学者入门成人儿童小学生毛笔楷书法练习字帖 水写布',22,'assets/images/electronic/product/03.jpg','assets/images/electronic/product/034.jpg',2,1,1),(8,'美的(Midea) 新一级 焕新风 大1.5匹京东',3334.0000,4444.0000,'美的(Midea) 新一级 焕新风 大1.5匹京东','美的(Midea) 新一级 焕新风 大1.5匹京东',435,'assets/images/electronic/product/03.jpg','assets/images/electronic/product/01.jpg',7,1,1),(9,'万和 （Vanward ）16升零冷水燃气热水器分屏控制小魔方远程控温',555.0000,4345.0000,'万和 （Vanward ）16升零冷水燃气热水器分屏控制小魔方远程控温',' 万和 （Vanward ）16升零冷水燃气热水器分屏控制小魔方远程控温一级能效冷凝式天然气 JSLQ27-LS6D16升级款 ',34,'assets/images/electronic/product/02.jpg','assets/images/electronic/product/02.jpg',7,1,0),(10,'腾讯（Tencent）极光投影仪T1便携投影仪 移动办公投影机',454.0000,345.0000,'腾讯（Tencent）极光投影仪T1便携投影仪 移动办公投影机','腾讯（Tencent）极光投影仪T1便携投影仪 移动办公投影机（便携爆品 内置电池 京东小家智能生态',45,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',7,0,1),(11,'波司登羽绒服',234.0000,45.0000,'波司登羽绒服','波司登羽绒服，冬季必备衣物',66,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',7,0,0),(12,'波司登羽绒服',234.0000,456.0000,'波司登羽绒服','波司登羽绒服，冬季必备衣物',66,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',7,0,1),(13,'波司登羽绒服',234.0000,456.0000,'波司登羽绒服，冬季必备衣物','波司登羽绒服，冬季必备衣物',66,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',2,1,1),(14,'波司登羽绒服',453.0000,456.0000,'波司登羽绒服，冬季必备衣物','波司登羽绒服，冬季必备衣物',55,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',2,1,1),(15,'波司登羽绒服',463.0000,657.0000,'波司登羽绒服，冬季必备衣物','波司登羽绒服，冬季必备衣物',4,'assets/images/electronic/product/02.jpg','assets/images/product/p3_hover.jpg',4,1,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(12) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','12345','13505221242','13505162382@qq.com',NULL,'member\\1\\member1.png',NULL,NULL),(2,'user2','12345','1239823','zhangsan23@qq.com','1998-01-12 00:00:00','member\\1\\member1.png',NULL,NULL),(3,'user3','12345','189','lisi@qq.com','1998-01-12 00:00:00','member\\1\\member1.png',NULL,NULL),(4,'wangwu','12345','234324','wanger@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',NULL,NULL),(5,'admin123','12345','13505221234','admin@eshop.com','1999-12-31 00:00:00','member\\1\\member1.png',NULL,NULL),(6,'adminadsf','12345ads','adfs','asd@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',NULL,NULL),(7,'qianqi','12345','123434','qianqi@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',NULL,NULL),(8,'zhaojiu','12345','135000000','adf@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',1,'总工办'),(11,'admin1','12345','123244','admin@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',1,'宣传部'),(15,'admin2','12345','1234345','admin2@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',1,'公关部'),(18,'admin3','12345','13812345678','admin1@qq.com','1999-12-31 00:00:00','member\\1\\member1.png',1,'研发部'),(23,'user4','12345','13505164444','admin@qq.com','1999-12-31 00:00:00',NULL,NULL,NULL),(24,'user5','12345','13505164444','admin@qq.com','1999-12-31 00:00:00',NULL,NULL,NULL),(27,'user6','12345','13505221247','12@11.com','1999-12-31 00:00:00',NULL,NULL,NULL),(28,'user7','12345','134354545','user7@qq.com','1998-01-12 00:00:00',NULL,NULL,NULL),(29,'user8','12345','12324324545','adfdsaf@qq.com',NULL,NULL,NULL,NULL),(30,'user9','12345','2340332','ads@qq.com',NULL,NULL,NULL,NULL),(31,'user10','12345','123343245','user10@qq.com',NULL,NULL,NULL,NULL),(32,'user11','12345','1343532','user11@qq.com',NULL,NULL,NULL,NULL),(33,'user12','12345','4325321','user12@qq.com',NULL,NULL,NULL,NULL),(34,'user13','12345','324536','user13@qq.com',NULL,NULL,NULL,NULL),(35,'user14','12345','324321','user14@qq.com',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 14:56:50
