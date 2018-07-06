-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: yascmf_base
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `yascmf_articles`
--

DROP TABLE IF EXISTS `yascmf_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `thumb` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_0`
--

DROP TABLE IF EXISTS `yascmf_articles_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_1`
--

DROP TABLE IF EXISTS `yascmf_articles_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_10`
--

DROP TABLE IF EXISTS `yascmf_articles_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_11`
--

DROP TABLE IF EXISTS `yascmf_articles_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_12`
--

DROP TABLE IF EXISTS `yascmf_articles_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_13`
--

DROP TABLE IF EXISTS `yascmf_articles_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_14`
--

DROP TABLE IF EXISTS `yascmf_articles_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_15`
--

DROP TABLE IF EXISTS `yascmf_articles_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_16`
--

DROP TABLE IF EXISTS `yascmf_articles_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_16` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_17`
--

DROP TABLE IF EXISTS `yascmf_articles_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_17` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_18`
--

DROP TABLE IF EXISTS `yascmf_articles_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_18` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_19`
--

DROP TABLE IF EXISTS `yascmf_articles_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_19` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_2`
--

DROP TABLE IF EXISTS `yascmf_articles_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_20`
--

DROP TABLE IF EXISTS `yascmf_articles_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_20` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_201804`
--

DROP TABLE IF EXISTS `yascmf_articles_201804`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_201804` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_21`
--

DROP TABLE IF EXISTS `yascmf_articles_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_21` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_22`
--

DROP TABLE IF EXISTS `yascmf_articles_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_22` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_23`
--

DROP TABLE IF EXISTS `yascmf_articles_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_23` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_24`
--

DROP TABLE IF EXISTS `yascmf_articles_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_24` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_25`
--

DROP TABLE IF EXISTS `yascmf_articles_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_25` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_26`
--

DROP TABLE IF EXISTS `yascmf_articles_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_26` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_27`
--

DROP TABLE IF EXISTS `yascmf_articles_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_27` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_28`
--

DROP TABLE IF EXISTS `yascmf_articles_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_28` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_29`
--

DROP TABLE IF EXISTS `yascmf_articles_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_29` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_3`
--

DROP TABLE IF EXISTS `yascmf_articles_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_30`
--

DROP TABLE IF EXISTS `yascmf_articles_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_30` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_31`
--

DROP TABLE IF EXISTS `yascmf_articles_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_31` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_32`
--

DROP TABLE IF EXISTS `yascmf_articles_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_32` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_33`
--

DROP TABLE IF EXISTS `yascmf_articles_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_33` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_34`
--

DROP TABLE IF EXISTS `yascmf_articles_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_34` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_35`
--

DROP TABLE IF EXISTS `yascmf_articles_35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_35` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_36`
--

DROP TABLE IF EXISTS `yascmf_articles_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_36` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_37`
--

DROP TABLE IF EXISTS `yascmf_articles_37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_37` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_38`
--

DROP TABLE IF EXISTS `yascmf_articles_38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_38` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_39`
--

DROP TABLE IF EXISTS `yascmf_articles_39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_39` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_4`
--

DROP TABLE IF EXISTS `yascmf_articles_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_40`
--

DROP TABLE IF EXISTS `yascmf_articles_40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_40` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_41`
--

DROP TABLE IF EXISTS `yascmf_articles_41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_41` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_42`
--

DROP TABLE IF EXISTS `yascmf_articles_42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_42` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_43`
--

DROP TABLE IF EXISTS `yascmf_articles_43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_43` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_44`
--

DROP TABLE IF EXISTS `yascmf_articles_44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_44` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_45`
--

DROP TABLE IF EXISTS `yascmf_articles_45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_45` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_46`
--

DROP TABLE IF EXISTS `yascmf_articles_46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_46` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_47`
--

DROP TABLE IF EXISTS `yascmf_articles_47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_47` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_48`
--

DROP TABLE IF EXISTS `yascmf_articles_48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_48` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_49`
--

DROP TABLE IF EXISTS `yascmf_articles_49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_49` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_5`
--

DROP TABLE IF EXISTS `yascmf_articles_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_50`
--

DROP TABLE IF EXISTS `yascmf_articles_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_50` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_51`
--

DROP TABLE IF EXISTS `yascmf_articles_51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_51` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_52`
--

DROP TABLE IF EXISTS `yascmf_articles_52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_52` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_53`
--

DROP TABLE IF EXISTS `yascmf_articles_53`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_53` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_54`
--

DROP TABLE IF EXISTS `yascmf_articles_54`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_54` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_55`
--

DROP TABLE IF EXISTS `yascmf_articles_55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_55` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_56`
--

DROP TABLE IF EXISTS `yascmf_articles_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_56` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_57`
--

DROP TABLE IF EXISTS `yascmf_articles_57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_57` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_58`
--

DROP TABLE IF EXISTS `yascmf_articles_58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_58` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_59`
--

DROP TABLE IF EXISTS `yascmf_articles_59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_59` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_6`
--

DROP TABLE IF EXISTS `yascmf_articles_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_60`
--

DROP TABLE IF EXISTS `yascmf_articles_60`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_60` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_61`
--

DROP TABLE IF EXISTS `yascmf_articles_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_61` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_62`
--

DROP TABLE IF EXISTS `yascmf_articles_62`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_62` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_63`
--

DROP TABLE IF EXISTS `yascmf_articles_63`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_63` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_64`
--

DROP TABLE IF EXISTS `yascmf_articles_64`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_64` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_65`
--

DROP TABLE IF EXISTS `yascmf_articles_65`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_65` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_66`
--

DROP TABLE IF EXISTS `yascmf_articles_66`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_66` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_67`
--

DROP TABLE IF EXISTS `yascmf_articles_67`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_67` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_68`
--

DROP TABLE IF EXISTS `yascmf_articles_68`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_68` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_69`
--

DROP TABLE IF EXISTS `yascmf_articles_69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_69` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_7`
--

DROP TABLE IF EXISTS `yascmf_articles_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_70`
--

DROP TABLE IF EXISTS `yascmf_articles_70`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_70` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_71`
--

DROP TABLE IF EXISTS `yascmf_articles_71`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_71` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_72`
--

DROP TABLE IF EXISTS `yascmf_articles_72`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_72` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_73`
--

DROP TABLE IF EXISTS `yascmf_articles_73`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_73` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_74`
--

DROP TABLE IF EXISTS `yascmf_articles_74`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_74` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_75`
--

DROP TABLE IF EXISTS `yascmf_articles_75`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_75` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_76`
--

DROP TABLE IF EXISTS `yascmf_articles_76`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_76` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_77`
--

DROP TABLE IF EXISTS `yascmf_articles_77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_77` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_78`
--

DROP TABLE IF EXISTS `yascmf_articles_78`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_78` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_79`
--

DROP TABLE IF EXISTS `yascmf_articles_79`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_79` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_8`
--

DROP TABLE IF EXISTS `yascmf_articles_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_80`
--

DROP TABLE IF EXISTS `yascmf_articles_80`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_80` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_81`
--

DROP TABLE IF EXISTS `yascmf_articles_81`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_81` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_82`
--

DROP TABLE IF EXISTS `yascmf_articles_82`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_82` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_83`
--

DROP TABLE IF EXISTS `yascmf_articles_83`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_83` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_84`
--

DROP TABLE IF EXISTS `yascmf_articles_84`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_84` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_85`
--

DROP TABLE IF EXISTS `yascmf_articles_85`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_85` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_86`
--

DROP TABLE IF EXISTS `yascmf_articles_86`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_86` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_87`
--

DROP TABLE IF EXISTS `yascmf_articles_87`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_87` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_88`
--

DROP TABLE IF EXISTS `yascmf_articles_88`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_88` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_89`
--

DROP TABLE IF EXISTS `yascmf_articles_89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_89` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_9`
--

DROP TABLE IF EXISTS `yascmf_articles_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_90`
--

DROP TABLE IF EXISTS `yascmf_articles_90`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_90` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_91`
--

DROP TABLE IF EXISTS `yascmf_articles_91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_91` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_92`
--

DROP TABLE IF EXISTS `yascmf_articles_92`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_92` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_93`
--

DROP TABLE IF EXISTS `yascmf_articles_93`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_93` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_94`
--

DROP TABLE IF EXISTS `yascmf_articles_94`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_94` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_95`
--

DROP TABLE IF EXISTS `yascmf_articles_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_95` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_96`
--

DROP TABLE IF EXISTS `yascmf_articles_96`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_96` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_97`
--

DROP TABLE IF EXISTS `yascmf_articles_97`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_97` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_98`
--

DROP TABLE IF EXISTS `yascmf_articles_98`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_98` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_99`
--

DROP TABLE IF EXISTS `yascmf_articles_99`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_99` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '推荐位',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网址缩略名，文章、单页与碎片模型有缩略名',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `sub_cid` int(10) unsigned DEFAULT '0' COMMENT '二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `in_sub_cid` int(10) unsigned DEFAULT '0' COMMENT '此分博客二级分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章正文',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_slug_unique` (`slug`),
  KEY `title` (`title`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_0`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_1`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_2`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_3`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_4`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_5`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_6`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_7`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_8`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_cat_9`
--

DROP TABLE IF EXISTS `yascmf_articles_cat_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_cat_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_index_1`
--

DROP TABLE IF EXISTS `yascmf_articles_index_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_index_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_0`
--

DROP TABLE IF EXISTS `yascmf_articles_user_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_1`
--

DROP TABLE IF EXISTS `yascmf_articles_user_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_2`
--

DROP TABLE IF EXISTS `yascmf_articles_user_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_3`
--

DROP TABLE IF EXISTS `yascmf_articles_user_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_4`
--

DROP TABLE IF EXISTS `yascmf_articles_user_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_5`
--

DROP TABLE IF EXISTS `yascmf_articles_user_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_6`
--

DROP TABLE IF EXISTS `yascmf_articles_user_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_7`
--

DROP TABLE IF EXISTS `yascmf_articles_user_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_8`
--

DROP TABLE IF EXISTS `yascmf_articles_user_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_articles_user_9`
--

DROP TABLE IF EXISTS `yascmf_articles_user_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_articles_user_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0' COMMENT '分类id：文章分类id不为0，单页与碎片分类id默认为0',
  `slug` int(10) unsigned DEFAULT '0' COMMENT '文章slug',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容摘要',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_categories`
--

DROP TABLE IF EXISTS `yascmf_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '分裂别名',
  `sort` int(3) DEFAULT '999' COMMENT '排序，序号越大越靠前',
  `slug` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '分类英文或拼音别名',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_password_resets`
--

DROP TABLE IF EXISTS `yascmf_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_permission_role`
--

DROP TABLE IF EXISTS `yascmf_permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_permissions`
--

DROP TABLE IF EXISTS `yascmf_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_role_user`
--

DROP TABLE IF EXISTS `yascmf_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_roles`
--

DROP TABLE IF EXISTS `yascmf_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_system_logs`
--

DROP TABLE IF EXISTS `yascmf_system_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_system_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统日志id',
  `user_id` int(12) DEFAULT '0' COMMENT '用户id（为0表示系统级操作，其它一般为管理型用户操作）',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '操作类型',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT '-' COMMENT '操作发起的url',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作内容',
  `operator_ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作者ip',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_system_options`
--

DROP TABLE IF EXISTS `yascmf_system_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_system_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置选项名',
  `value` text COLLATE utf8_unicode_ci COMMENT '配置选项值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_option_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统配置选项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yascmf_users`
--

DROP TABLE IF EXISTS `yascmf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yascmf_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1锁定,0正常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-30  2:19:26
