-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shopp
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments_products`
--

DROP TABLE IF EXISTS `attachments_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments_products` (
  `product_id` bigint NOT NULL,
  `attachment_id` bigint NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attachment_id`),
  KEY `attachment_product_attachment_fk` (`attachment_id`),
  CONSTRAINT `attachment_product_attachment_fk` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `attachment_product_product_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments_products`
--

LOCK TABLES `attachments_products` WRITE;
/*!40000 ALTER TABLE `attachments_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Обувь','Унисекс кроссовки и ботинки'),(2,'Рубашки','Унисекс рубашки от Всемирных брендов'),(3,'Шапки','Унисекс рубашки от Всемирных брендов'),(4,'Брюки','Чиносы, классические и спортивные брюки');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_products`
--

DROP TABLE IF EXISTS `categories_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_products` (
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_product_category_fk` (`category_id`),
  CONSTRAINT `category_product_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_product_product_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_products`
--

LOCK TABLES `categories_products` WRITE;
/*!40000 ALTER TABLE `categories_products` DISABLE KEYS */;
INSERT INTO `categories_products` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1),(7,1,1),(8,1,1),(9,1,1),(10,1,1),(11,1,1),(12,1,1),(13,2,1),(14,2,1),(15,2,1),(16,2,1),(17,2,1),(18,2,1),(19,2,1),(20,2,1),(21,2,1),(22,2,1),(23,2,1),(24,2,1),(25,3,1),(26,3,1),(27,3,1),(28,3,1),(29,3,1),(30,3,1),(31,3,1),(32,3,1),(33,3,1),(34,3,1),(35,3,1),(36,3,1),(37,4,1),(38,4,1),(39,4,1),(40,4,1),(41,4,1),(42,4,1),(43,4,1),(44,4,1),(45,4,1),(46,4,1),(47,4,1),(48,4,1);
/*!40000 ALTER TABLE `categories_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `price` float NOT NULL,
  `sale` float DEFAULT NULL,
  `promo` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'adidas Кроссовки ULTIMASHOW','Легкие, мягкие и удобные. Просто надеваешь и бежишь. Стандартная колодка, Шнуровка, Текстильный верх, Ощущение устойчивости, Кроссовки для бега',3711,0.5,0.2),(2,'adidas Кроссовки TERREX SWIFT','Трейловые кроссовки для активного отдыха в горах. Прочный верх с низким голенищем и система быстрой шнуровки обеспечивают необходимую поддержку на неровных поверхностях.',11129,0.3,0.1),(3,'adidas Кроссовки RUNFALCON 2.0','Надень эти кроссовки adidas и отправляйся на пробежку в парк, а затем пить кофе с друзьями. Сетчатый верх обеспечивает вентиляцию и комфорт в течение всего дня.',4239,0,0.2),(4,'Кроссовки Nike Air Max Bolt','СКОРОСТЬ, МЯГКОСТЬ И КОМФОРТ. Вдохновленные бегом кроссовки Nike Air Max Bolt щедро дополнены накладками, волнистыми линиями дизайна и большой видимой вставкой Air.',10790,0.2,0.3),(5,'Кроссовки Nike Venture Runner','ФАНТАСТИЧЕСКИЙ КОМФОРТ В СТИЛЕ 80-Х. Кроссовки Nike Venture Runner восходят к культовой модели из 80-х, которая запустила революцию в мире бега. Стиль OG дополняется амортизирующей стелькой и легким верхом из сетки.',15000,0.1,0.15),(6,'Кроссовки Nike Air Monarch IV','Кроссовки для занятий в зале/на каждый день Nike Air Monarch IV с легкой подошвой из материала Phylon и прочным кожаным верхом обеспечивают поддержку и амортизацию.',7400,0.6,0.3),(7,'Ботинки Kadi','Демисезонные ботинки из натуральной кожи К-51 можно на погоду от +18 до -7 градусов. Берцы отличается повышенной износостойкостью, устойчивы к деформации, но при этом имеют легкий вес и обладают повышенным комфортом при носке.',5400,0.5,0.1),(8,'Ботинки зимние ECCO','Зимние ботинки из натурального промасленного нубука ECCO ASTIR пропитаны специальным раствором ECCO HYDROMAX для сохранения водоотталкивающих свойств до 10 часов с момента намокания.',14200,0.1,0.1),(9,'Ботинки кожаные зимние DStep','Стильные зимние ботинки от бренда DStep изготовлены из натуральной кожи премиум класса Crazy Horse.',8300,0.2,0.4),(10,'Ботинки TSNAL','Особая конструкция язычка повышают практичность обуви, а насыщенный цвет натуральной кожи выделяет своего хозяина на улицах города, подчеркивая его уникальный стиль.',5300,0.1,0.15),(11,'Ботинки БУТЕКС','Ботинки летние/демисезонные Мангуст м.24046 сшиты из качественного велюра толщиной 1.3-1.5 мм, с водоотталкивающей пропиткой.',5200,0.15,0.1),(12,'Ботинки спортивные S-TEP','Черные минималистичные ботинки из натуральной кожи от российского бренда S-TEP выдержат самые суровые погодные условия.',4700,0.25,0.15),(13,'Рубашка мужская оверсайз \"Kally\"','Рубашка оверсайз \"Kally\" удлиненная с длинным рукавом подходит как для повседневного использования, так и для праздничных мероприятий, для танцев, фотосессий и т.д.',2711,0.1,0.2),(14,'Рубашка REVal','Рубашка унисекс классическая в клетку с длинным рукавом.',1129,0.4,0.5),(15,'Рубашка Homeland','Японские рубашки кимоно уже давно покорили сердца миллионов модников по всему миру. Ни для кого не секрет, что Япония передовой поставщик моды, да и корейские, китайские мотивы в одежде не отстают.',4239,0.1,0.2),(16,'Рубашка Envy Lab','Унисекс рубашка в клетку свободного (оверсайз) кроя с длинным рукавом из фланели.',5790,0.1,0.3),(17,'Рубашка SUN Street','Рубашка мужская оверсайз удлиненная с длинным рукавом Одежда женская Унисекс Подарок мужчине Рубашка мужская со стильным топовым принтом.',15000,0.1,0.15),(18,'Рубашка VNL','Базовая рубашка унисекс в стиле оверсайз.',3400,0.7,0.3),(19,'Рубашка Nouvelle Vague','Nouvelle Vague- Путь к твоей Безупречности! Рубашка классическая с длинным рукавом.',2400,0.4,0.2),(20,'Рубашка S.WELT','Давно искали новое прочтение привычного тренда? Записывайте рецепт. Берем актуальный крой оверсайз, топовый рыжий цвет и добавляем капельку фактуры.',7200,0.2,0.25),(21,'Рубашка GRANAT-TEX','Рубашка в клетку оверсайз незаменимая вещь в гардеробе каждого. Рубашка в клетку с капюшоном одна из самых трендовых позиций 2022 года благодаря своей универсальности.',4300,0.1,0.4),(22,'Рубашка MOSSMORE','Всегда актуальная фланелевая клетчатая рубашка. Теплая и невероятно мягкая из хлопковой фланели в крупную клетку - идеальный вариант для расслабленных осенних образов.',2300,0.2,0.15),(23,'Рубашка ILGA','Рубашка оверсайз теплая в клетку хлопковая удлиненная с длинным рукавом.',3200,0.25,0.1),(24,'Рубашка PIVOVAROFF WEAR','Рубашка оверсайз унисекс премиум качества из высококачественного хлопкового трикотажа. Модель с отложным воротником, заниженной линией плеча и рукавов 3/4.',5700,0.15,0.25),(25,'Шапка Nimfalida','Головные уборы можно точно назвать важным пазлом модного осенне-зимнего образа, о котором часто забывают.',1711,0.1,0.2),(26,'Шапка Yep','Шапка вязаная мужская, женская, унисекс, подростковая, бини, докера, без козырька.',929,0.1,0.2),(27,'Шапка Overcast','Шапка бини самая популярная и трендовая модель шапки. Шапка двойная с теплой подкладкой из мягкого флика идеально подходит на демисезон , осень , зиму и начало весны.',1239,0.1,0.2),(28,'Шапка SAPKA','Обязательно купите себе или в подарок нашу мужскую, женскую, детскую, унисекс шапку. Это теплая двухслойная вязаная бини с подворотом.',2790,0.1,0.3),(29,'Шапка Tezza','Шапка мужская и женская, тонкая двухслойная шапка, демисезонная шапка унисекс мелкой вязки придаёт ощущение комфорта.',3000,0.2,0.15),(30,'Шапка REGARZO','Шапка бини- это базовая вещь для мужчин и для женщин. Шапка мужская демисезонная отлично подойдет на осень, на весну, на зиму и даже на лето.',3400,0.7,0.3),(31,'Шапка One Click','Универсальная шапка с подворотом, хорошо облегает голову.',2400,0.1,0.2),(32,'Шапка estiloLux','Универсальная женская и мужская шапка, унисекс, без подкладки. Можно носить как с подворотом, так и без него.',1200,0.25,0.1),(33,'Шапка Bagner','Универсальная женская и мужская шапка без подкладки. Хорошо облегает голову. Можно носить как с подворотом, так и без него.',2300,0.15,0.1),(34,'Шапка DATKA','Стильная женская и мужская шапка унисекс, выполненная из высококачественного материала, определенно станет лучшим выбором для осени, зимы и весны.',3300,0.25,0.1),(35,'Шапка MMSTAR','Шапка зимняя подойдёт, как мужчинам, так и женщинам, так как не имеет размера - эластична и хорошо тянется.',900,0.3,0.1),(36,'Шапка MyLami','Удобная, универсальная осенняя весенняя шапка-бини базовый головной убор Вашего гардероба.',1700,0.2,0.25),(37,'Брюки MONIMON','Брюки сочетают стили drain, альт, гранж, худи панк, hip hop, дрейн стиль. Штаны оверсайз.',3711,0.1,0.2),(38,'Брюки Ananasino','Легкие, дышащие брюки в клетку тренд этого сезона.',1929,0.1,0.2),(39,'Брюки Yolo','Повседневные брюки джоггеры с принтом зайчики пелебой от бренда YOLO.',3239,0.2,0.2),(40,'Брюки SMENA','Современные брюки унисекс широкого кроя, чуть зауженные внизу из трикотажа с содержанием 80% хлопка.',1790,0.15,0.35),(41,'Брюки Garlands fashion','Брюки классические с высокой посадкой или брюки бананы визуально вытягивают силуэт.',3000,0.2,0.15),(42,'Брюки AGRESIF','Классические брюки незаменимая вещь в гардеробе. Брюки зауженные одна из самых трендовых позиций 2022 года благодаря своей универсальности.',2400,0.2,0.3),(43,'Брюки Сiяй','Чёрные базовые брюки - палаццо с завышенной талией. Зрительно удлинят ваш силуэт, широкие.',3400,0.1,0.2),(44,'Брюки PELVERT',' Брюки классические сочетаются с рубашкой, свитшотом, футболкой, худи, водолазкой и голым телом.',4200,0.2,0.15),(45,'Брюки Affine','Брюки классические AFFINE – тренд моды 2022 года. Штаны с высокой посадкой повседневные состоят из вискозы, полиэстера и эластана, благодаря чему дышат и тянутся.',3300,0.1,0.15),(46,'Брюки AxLer','Зауженные классические брюки, выполнены из смесовой маломнущейся ткани. Спереди два кармана с отрезным бочком, сзади справа один прорезной карман.',4300,0.2,0.1),(47,'Брюки STENSER','Повседневные брюки чиносы черного цвета, изготовленные по традиционным европейским канонам.',2900,0.35,0.1),(48,'Брюки Milton','Повседневные мужские брюки бананы. Уникальное сочетание высокого качества и стильного фасона.',6700,0.25,0.2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 17:43:36
