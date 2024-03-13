/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - xiaoqutuangou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoqutuangou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoqutuangou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-05-09 15:22:15','2022-05-09 15:22:15','2022-05-09 15:22:15'),(2,2,'收货人2','17703786902','地址2',1,'2022-05-09 15:22:15','2022-05-09 15:22:15','2022-05-09 15:22:15'),(3,3,'收货人3','17703786903','地址3',1,'2022-05-09 15:22:15','2022-05-09 15:22:15','2022-05-09 15:22:15'),(4,1,'收货人4','17703786904','地址4',1,'2022-05-09 15:22:15','2022-05-09 15:22:15','2022-05-09 15:22:15'),(5,1,'收货人5','17703786905','地址5',1,'2022-05-09 15:22:15','2022-05-09 15:22:15','2022-05-09 15:22:15');

/*Table structure for table `caigouyuan` */

DROP TABLE IF EXISTS `caigouyuan`;

CREATE TABLE `caigouyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `caigouyuan_name` varchar(200) DEFAULT NULL COMMENT '采购员姓名 Search111 ',
  `caigouyuan_phone` varchar(200) DEFAULT NULL COMMENT '采购员手机号',
  `caigouyuan_id_number` varchar(200) DEFAULT NULL COMMENT '采购员身份证号',
  `caigouyuan_photo` varchar(200) DEFAULT NULL COMMENT '采购员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `caigouyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='采购员';

/*Data for the table `caigouyuan` */

insert  into `caigouyuan`(`id`,`username`,`password`,`caigouyuan_name`,`caigouyuan_phone`,`caigouyuan_id_number`,`caigouyuan_photo`,`sex_types`,`caigouyuan_email`,`create_time`) values (1,'a1','123456','采购员姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoqutuangou/upload/caigouyuan1.jpg',2,'1@qq.com','2022-05-09 15:22:15'),(2,'a2','123456','采购员姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoqutuangou/upload/caigouyuan2.jpg',2,'2@qq.com','2022-05-09 15:22:15'),(3,'a3','123456','采购员姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoqutuangou/upload/caigouyuan3.jpg',1,'3@qq.com','2022-05-09 15:22:15');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoqutuangou/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoqutuangou/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoqutuangou/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-05-09 15:21:06'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-05-09 15:21:06'),(3,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-09 15:21:06'),(4,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-09 15:21:06'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-05-09 15:21:06'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-05-09 15:21:06'),(7,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-05-09 15:21:06'),(8,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-05-09 15:21:06'),(9,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-05-09 15:21:06'),(10,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-09 15:21:06'),(11,'shangpin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-05-09 15:21:07'),(12,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-05-09 15:21:07'),(13,'shangpin_order_types','订单类型',3,'已分配采购员',NULL,NULL,'2022-05-09 15:21:07'),(14,'shangpin_order_types','订单类型',4,'采购已完成',NULL,NULL,'2022-05-09 15:21:07'),(15,'shangpin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-05-09 15:21:07'),(16,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-05-09 15:21:07'),(17,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-09 15:21:07'),(18,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-09 15:21:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xiaoqutuangou/upload/news1.jpg',2,'2022-05-09 15:22:15','公告详情1','2022-05-09 15:22:15'),(2,'公告名称2','http://localhost:8080/xiaoqutuangou/upload/news2.jpg',2,'2022-05-09 15:22:15','公告详情2','2022-05-09 15:22:15'),(3,'公告名称3','http://localhost:8080/xiaoqutuangou/upload/news3.jpg',2,'2022-05-09 15:22:15','公告详情3','2022-05-09 15:22:15'),(4,'公告名称4','http://localhost:8080/xiaoqutuangou/upload/news4.jpg',1,'2022-05-09 15:22:15','公告详情4','2022-05-09 15:22:15'),(5,'公告名称5','http://localhost:8080/xiaoqutuangou/upload/news5.jpg',2,'2022-05-09 15:22:15','公告详情5','2022-05-09 15:22:15');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`create_time`) values (1,'商品名称1','165208093555889','http://localhost:8080/xiaoqutuangou/upload/shangpin1.jpg',1,99,'861.05','122.28',111,'商品介绍1',1,1,'2022-05-09 15:22:15'),(2,'商品名称2','165208093556161','http://localhost:8080/xiaoqutuangou/upload/shangpin2.jpg',1,98,'972.84','156.55',206,'商品介绍2',1,1,'2022-05-09 15:22:15'),(3,'商品名称3','165208093556192','http://localhost:8080/xiaoqutuangou/upload/shangpin3.jpg',1,102,'587.65','72.90',373,'商品介绍3',1,1,'2022-05-09 15:22:15'),(4,'商品名称4','165208093556141','http://localhost:8080/xiaoqutuangou/upload/shangpin4.jpg',1,101,'803.51','458.52',489,'商品介绍4',1,1,'2022-05-09 15:22:15'),(5,'商品名称5','165208093556142','http://localhost:8080/xiaoqutuangou/upload/shangpin5.jpg',2,105,'684.76','375.92',91,'商品介绍5',1,1,'2022-05-09 15:22:15');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-05-09 15:22:15','2022-05-09 15:22:15'),(2,2,2,1,'2022-05-09 15:22:15','2022-05-09 15:22:15'),(4,4,1,1,'2022-05-09 15:22:15','2022-05-09 15:22:15'),(6,2,1,1,'2022-05-09 16:22:11','2022-05-09 16:22:11');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-05-09 15:22:15','回复信息1','2022-05-09 15:22:15','2022-05-09 15:22:15'),(2,2,3,'评价内容2','2022-05-09 15:22:15','回复信息2','2022-05-09 15:22:15','2022-05-09 15:22:15'),(3,3,1,'评价内容3','2022-05-09 15:22:15','回复信息3','2022-05-09 15:22:15','2022-05-09 15:22:15'),(4,4,3,'评价内容4','2022-05-09 15:22:15','回复信息4','2022-05-09 15:22:15','2022-05-09 15:22:15'),(5,5,2,'评价内容5','2022-05-09 15:22:15','回复信息5','2022-05-09 15:22:15','2022-05-09 15:22:15'),(6,2,1,'478','2022-05-09 16:14:27','管理回复11','2022-05-09 16:20:40','2022-05-09 16:14:27'),(7,2,1,'5445645','2022-05-09 16:21:35',NULL,NULL,'2022-05-09 16:21:35'),(8,1,1,'987','2022-05-09 16:22:03',NULL,NULL,'2022-05-09 16:22:03');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caigouyuan_id` int(11) DEFAULT NULL COMMENT '采购员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`buy_number`,`shangpin_order_true_price`,`caigouyuan_id`,`yonghu_id`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1652083277120',4,2,1,'156.55',1,1,5,1,'2022-05-09 16:01:17','2022-05-09 16:01:17'),(2,'1652083277120',4,3,1,'72.90',3,1,3,1,'2022-05-09 16:01:17','2022-05-09 16:01:17'),(3,'1652083277120',4,4,3,'1375.56',3,1,3,1,'2022-05-09 16:01:17','2022-05-09 16:01:17'),(4,'1652084393283',5,1,2,'244.56',1,1,5,1,'2022-05-09 16:19:53','2022-05-09 16:19:53'),(5,'1652084393283',5,2,3,'469.65',1,1,5,1,'2022-05-09 16:19:53','2022-05-09 16:19:53'),(6,'1652084393283',5,3,5,'364.50',NULL,1,2,1,'2022-05-09 16:19:53','2022-05-09 16:19:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','2po98ir67escav6ft2b0tgkj021d13pd','2022-05-09 15:42:39','2022-05-09 17:22:50'),(2,1,'a1','yonghu','用户','hbp64b2xnb8kp1tox2jj7jj9chocol9t','2022-05-09 16:00:47','2022-05-09 17:22:09'),(3,1,'a1','caigouyuan','采购员','x22li2lcrs6wq58nor8tpp8kdv1867or','2022-05-09 16:10:46','2022-05-09 17:21:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-08-01 08:15:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoqutuangou/upload/yonghu1.jpg',2,'1@qq.com','8354.94','2022-05-09 15:22:15'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoqutuangou/upload/yonghu2.jpg',2,'2@qq.com','875.51','2022-05-09 15:22:15'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoqutuangou/upload/yonghu3.jpg',1,'3@qq.com','116.82','2022-05-09 15:22:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
