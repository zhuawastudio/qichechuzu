/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qichechuzu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qichechuzu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qichechuzu`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号  Search111 ',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_yanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliang_chepai` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliang_zhuangtai_types` int(11) DEFAULT NULL COMMENT '车辆状态 Search111',
  `cheliang_jiage` decimal(10,2) DEFAULT NULL COMMENT '车辆价格 ',
  `cheliang_yajin_jiage` decimal(10,2) DEFAULT NULL COMMENT '所需押金 ',
  `cheliang_new_jiage` decimal(10,2) DEFAULT NULL COMMENT '现价/天 ',
  `cheliang_content` text COMMENT '车辆介绍 ',
  `cheliang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_uuid_number`,`cheliang_name`,`cheliang_photo`,`cheliang_types`,`cheliang_yanse`,`cheliang_chepai`,`cheliang_zhuangtai_types`,`cheliang_jiage`,`cheliang_yajin_jiage`,`cheliang_new_jiage`,`cheliang_content`,`cheliang_delete`,`insert_time`,`create_time`) values (1,'164809276460414','车辆名称1','http://localhost:8080/qichechuzu/upload/cheliang1.jpg',4,'车辆颜色1','车牌号1',1,'592.01','13.26','909.33','车辆介绍1',1,'2022-03-24 11:32:44','2022-03-24 11:32:44'),(2,'16480927646056','车辆名称2','http://localhost:8080/qichechuzu/upload/cheliang2.jpg',1,'车辆颜色2','车牌号2',1,'244.42','344.34','484.51','车辆介绍2',1,'2022-03-24 11:32:44','2022-03-24 11:32:44'),(3,'16480927646069','车辆名称3','http://localhost:8080/qichechuzu/upload/cheliang3.jpg',4,'车辆颜色3','车牌号3',2,'464.17','915.36','968.45','车辆介绍3',1,'2022-03-24 11:32:44','2022-03-24 11:32:44'),(4,'164809276460615','车辆名称4','http://localhost:8080/qichechuzu/upload/cheliang4.jpg',1,'车辆颜色4','车牌号4',1,'345.43','133.19','162.71','车辆介绍4',1,'2022-03-24 11:32:44','2022-03-24 11:32:44'),(5,'16480927646068','车辆名称5','http://localhost:8080/qichechuzu/upload/cheliang5.jpg',1,'车辆颜色5','车牌号5',2,'815.08','999.28','774.50','车辆介绍5',1,'2022-03-24 11:32:44','2022-03-24 11:32:44');

/*Table structure for table `cheliang_jiancha` */

DROP TABLE IF EXISTS `cheliang_jiancha`;

CREATE TABLE `cheliang_jiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `cheliang_order_id` int(11) DEFAULT NULL COMMENT '车辆出租',
  `cheliang_jiancha_uuid_number` varchar(200) DEFAULT NULL COMMENT '检查单号 Search111 ',
  `cheliang_jiancha_types` int(11) DEFAULT NULL COMMENT '检查结果 Search111 ',
  `cheliang_order_wenti_content` text COMMENT '存在问题',
  `cheliang_jiancha_peifu_jine` decimal(10,2) DEFAULT NULL COMMENT '赔付金额',
  `cheliang_order_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='检查单';

/*Data for the table `cheliang_jiancha` */

insert  into `cheliang_jiancha`(`id`,`yuangong_id`,`cheliang_order_id`,`cheliang_jiancha_uuid_number`,`cheliang_jiancha_types`,`cheliang_order_wenti_content`,`cheliang_jiancha_peifu_jine`,`cheliang_order_content`,`insert_time`,`create_time`) values (6,1,14,'1648109917438',1,'<p>无</p>','0.00','<p>正常还车</p>','2022-03-24 16:18:59','2022-03-24 16:18:59');

/*Table structure for table `cheliang_order` */

DROP TABLE IF EXISTS `cheliang_order`;

CREATE TABLE `cheliang_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '出租单号 Search111 ',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `zuche_kaishi_time` date DEFAULT NULL COMMENT '租车开始日期 Search111 ',
  `zuche_jieshu_time` date DEFAULT NULL COMMENT '租车结束日期 Search111 ',
  `cheliang_order_number` int(11) DEFAULT NULL COMMENT '租用天数',
  `cheliang_order_zong_jine` decimal(10,2) DEFAULT NULL COMMENT '花费金额',
  `cheliang_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `cheliang_order_content` text COMMENT '订单备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车辆出租';

/*Data for the table `cheliang_order` */

insert  into `cheliang_order`(`id`,`cheliang_order_uuid_number`,`cheliang_id`,`yuangong_id`,`kehu_id`,`zuche_kaishi_time`,`zuche_jieshu_time`,`cheliang_order_number`,`cheliang_order_zong_jine`,`cheliang_order_types`,`cheliang_order_content`,`insert_time`,`create_time`) values (2,'1648099992387',2,1,3,'2022-03-24','2022-03-24',1,'484.51',2,'<p>是</p>','2022-03-24 13:33:23','2022-03-24 13:33:23'),(3,'1648100011145',2,1,2,'2022-03-24','2022-03-25',2,'969.02',1,'<p>房间号</p>','2022-03-24 13:33:44','2022-03-24 13:33:44'),(5,'16480999923871',2,1,3,'2022-02-24','2022-02-24',1,'185.51',1,'<p>是</p>','2022-02-24 13:33:23','2022-02-24 13:33:23'),(6,'16481000111452',2,1,2,'2022-02-24','2022-02-25',2,'979.02',3,'<p>房间号</p>','2022-02-24 13:33:44','2022-02-24 13:33:44'),(9,'16480999923874',2,2,3,'2022-02-24','2022-02-24',1,'185.51',3,'<p>是</p>','2022-02-24 13:33:23','2022-02-24 13:33:23'),(10,'16480999923875',2,2,3,'2022-02-24','2022-02-24',1,'185.51',3,'<p>是</p>','2022-02-24 13:33:23','2022-02-24 13:33:23'),(14,'1648109863798',1,1,1,'2022-03-24','2022-03-26',3,'2727.99',4,'<p>撒法规</p>','2022-03-24 16:17:59','2022-03-24 16:17:59');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-24 11:29:16'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-24 11:29:16'),(3,'diqu_types','地区',1,'地区1',NULL,NULL,'2022-03-24 11:29:16'),(4,'diqu_types','地区',2,'地区2',NULL,NULL,'2022-03-24 11:29:16'),(5,'diqu_types','地区',3,'地区3',NULL,NULL,'2022-03-24 11:29:16'),(6,'cheliang_zhuangtai_types','车辆状态',1,'未出租',NULL,NULL,'2022-03-24 11:29:16'),(7,'cheliang_zhuangtai_types','车辆状态',2,'已出租',NULL,NULL,'2022-03-24 11:29:16'),(8,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2022-03-24 11:29:16'),(9,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2022-03-24 11:29:16'),(10,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2022-03-24 11:29:16'),(11,'cheliang_types','车辆类型',4,'车辆类型4',NULL,NULL,'2022-03-24 11:29:16'),(13,'cheliang_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-24 11:29:16'),(14,'cheliang_order_types','订单类型',3,'已取车',NULL,NULL,'2022-03-24 11:29:16'),(15,'cheliang_order_types','订单类型',4,'已还车',NULL,NULL,'2022-03-24 11:29:16'),(16,'cheliang_jiancha_types','检查结果',1,'正常',NULL,NULL,'2022-03-24 11:29:16'),(17,'cheliang_jiancha_types','检查结果',2,'有剐蹭',NULL,NULL,'2022-03-24 11:29:16'),(18,'cheliang_jiancha_types','检查结果',3,'有车祸',NULL,NULL,'2022-03-24 11:29:16'),(19,'cheliang_jiancha_types','检查结果',4,'其他情况',NULL,NULL,'2022-03-24 11:29:16'),(20,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-24 14:00:17'),(21,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-24 14:00:17'),(22,'cheliang_order_types','订单类型',1,'已支付',NULL,'','2022-03-24 11:29:16'),(34,'diqu_types','地区',4,'地区4',NULL,'','2022-03-24 16:16:51');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告1','http://localhost:8080/qichechuzu/upload/1648109824810.jpg',2,'2022-03-24 16:17:08','<p>公告1</p>','2022-03-24 16:17:08');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户头像',
  `kehu_address` varchar(200) DEFAULT NULL COMMENT '客户地址',
  `kehu_zhiye` varchar(200) DEFAULT NULL COMMENT '客户职业',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `diqu_types` int(11) DEFAULT NULL COMMENT '地区 Search111 ',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`username`,`password`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`kehu_address`,`kehu_zhiye`,`sex_types`,`diqu_types`,`kehu_email`,`create_time`) values (1,'a1','123456','客户姓名1','17703786901','410224199610232001','http://localhost:8080/qichechuzu/upload/kehu1.jpg','客户地址1','客户职业1111',2,3,'1@qq.com','2022-03-24 11:32:44'),(2,'a2','123456','客户姓名2','17703786902','410224199610232002','http://localhost:8080/qichechuzu/upload/kehu2.jpg','客户地址2','客户职业2',2,2,'2@qq.com','2022-03-24 11:32:44'),(3,'a3','123456','客户姓名3','17703786903','410224199610232003','http://localhost:8080/qichechuzu/upload/kehu3.jpg','客户地址3','客户职业3',1,2,'3@qq.com','2022-03-24 11:32:44');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','nfna9r7ml9csic79t7w803ggikf2sokq','2022-03-24 11:36:21','2022-03-24 17:15:01'),(2,1,'a1','yuangong','员工','1pmoudmyhmu1ldbr78t1psclnm6aqf4k','2022-03-24 13:08:47','2022-03-24 17:17:34'),(3,1,'a1','kehu','客户','vqro7643tp9ra0pfql8tify8qll6u6uc','2022-03-24 16:19:24','2022-03-24 17:19:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `yuangong_address` varchar(200) DEFAULT NULL COMMENT '员工地址',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`yuangong_address`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199610232001','http://localhost:8080/qichechuzu/upload/yuangong1.jpg','员工地址1',1,'1@qq.com','2022-03-24 11:32:44'),(2,'a2','123456','员工姓名2','17703786902','410224199610232002','http://localhost:8080/qichechuzu/upload/yuangong2.jpg','员工地址2',1,'2@qq.com','2022-03-24 11:32:44'),(3,'a3','123456','员工姓名3','17703786903','410224199610232003','http://localhost:8080/qichechuzu/upload/yuangong3.jpg','员工地址3',2,'3@qq.com','2022-03-24 11:32:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
