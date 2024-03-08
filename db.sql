/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ershouchejiaoyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ershouchejiaoyi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ershouchejiaoyi`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '汽车名称  Search111 ',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '汽车照片',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '汽车品牌 Search111',
  `cheliang_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格 ',
  `cheliang_clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `cheliang_content` text COMMENT '汽车介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `cheliang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='汽车';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`shangjia_id`,`cheliang_name`,`cheliang_photo`,`cheliang_types`,`cheliang_new_money`,`cheliang_clicknum`,`zan_number`,`cai_number`,`cheliang_content`,`shangxia_types`,`cheliang_delete`,`create_time`) values (1,2,'汽车名称1','http://localhost:8080/ershouchejiaoyi/upload/cheliang1.jpg',2,'174.44',442,451,199,'汽车介绍1',1,1,'2022-04-25 11:59:30'),(2,1,'汽车名称2','http://localhost:8080/ershouchejiaoyi/upload/cheliang2.jpg',2,'27.59',212,484,231,'汽车介绍2',1,1,'2022-04-25 11:59:30'),(3,2,'汽车名称3','http://localhost:8080/ershouchejiaoyi/upload/cheliang3.jpg',1,'203.85',56,99,34,'汽车介绍3',1,1,'2022-04-25 11:59:30'),(4,3,'汽车名称4','http://localhost:8080/ershouchejiaoyi/upload/cheliang4.jpg',2,'217.38',345,63,177,'汽车介绍4',1,1,'2022-04-25 11:59:30'),(5,2,'汽车名称5','http://localhost:8080/ershouchejiaoyi/upload/cheliang5.jpg',1,'308.96',143,154,377,'汽车介绍5',2,1,'2022-04-25 11:59:30');

/*Table structure for table `cheliang_collection` */

DROP TABLE IF EXISTS `cheliang_collection`;

CREATE TABLE `cheliang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='汽车收藏';

/*Data for the table `cheliang_collection` */

insert  into `cheliang_collection`(`id`,`cheliang_id`,`yonghu_id`,`cheliang_collection_types`,`insert_time`,`create_time`) values (2,2,3,1,'2022-04-25 11:59:30','2022-04-25 11:59:30'),(3,3,2,1,'2022-04-25 11:59:30','2022-04-25 11:59:30'),(4,4,3,1,'2022-04-25 11:59:30','2022-04-25 11:59:30'),(5,5,3,1,'2022-04-25 11:59:30','2022-04-25 11:59:30'),(6,1,1,2,'2022-04-25 14:57:03','2022-04-25 14:57:03'),(8,2,1,1,'2022-04-25 14:57:15','2022-04-25 14:57:15'),(9,2,1,2,'2022-04-25 14:57:29','2022-04-25 14:57:29');

/*Table structure for table `cheliang_liuyan` */

DROP TABLE IF EXISTS `cheliang_liuyan`;

CREATE TABLE `cheliang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车留言';

/*Data for the table `cheliang_liuyan` */

insert  into `cheliang_liuyan`(`id`,`cheliang_id`,`yonghu_id`,`cheliang_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2022-04-25 11:59:30','回复信息1','2022-04-25 11:59:30','2022-04-25 11:59:30'),(2,2,2,'留言内容2','2022-04-25 11:59:30','回复信息2','2022-04-25 11:59:30','2022-04-25 11:59:30'),(3,3,2,'留言内容3','2022-04-25 11:59:30','回复信息3','2022-04-25 11:59:30','2022-04-25 11:59:30'),(4,4,2,'留言内容4','2022-04-25 11:59:30','回复信息4','2022-04-25 11:59:30','2022-04-25 11:59:30'),(5,5,2,'留言内容5','2022-04-25 11:59:30','回复信息5','2022-04-25 11:59:30','2022-04-25 11:59:30'),(6,2,1,'留言123','2022-04-25 14:57:25','123','2022-04-25 15:00:25','2022-04-25 14:57:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/ershouchejiaoyi/upload/1650869539389.jpg'),(2,'轮播图2','http://localhost:8080/ershouchejiaoyi/upload/1650869549689.jpg'),(3,'轮播图3','http://localhost:8080/ershouchejiaoyi/upload/1650869561982.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-25 11:59:13'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-25 11:59:13'),(3,'cheliang_types','汽车品牌',1,'汽车品牌1',NULL,NULL,'2022-04-25 11:59:13'),(4,'cheliang_types','汽车品牌',2,'汽车品牌2',NULL,NULL,'2022-04-25 11:59:13'),(5,'cheliang_types','汽车品牌',3,'汽车品牌3',NULL,NULL,'2022-04-25 11:59:13'),(6,'cheliang_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-25 11:59:13'),(7,'cheliang_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-04-25 11:59:13'),(8,'cheliang_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-04-25 11:59:13'),(9,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-25 11:59:13'),(10,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-25 11:59:13'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-25 11:59:13'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-25 11:59:13'),(13,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-25 11:59:13'),(14,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-25 11:59:13'),(15,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-25 11:59:13');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',NULL,1,'2022-04-25 11:59:30','2022-04-25 11:59:30','2022-04-25 11:59:30'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',NULL,1,'2022-04-25 11:59:30','2022-04-25 11:59:30','2022-04-25 11:59:30'),(3,'帖子标题3',NULL,3,NULL,'发布内容3',NULL,1,'2022-04-25 11:59:30','2022-04-25 11:59:30','2022-04-25 11:59:30'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',NULL,1,'2022-04-25 11:59:30','2022-04-25 11:59:30','2022-04-25 11:59:30'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',NULL,1,'2022-04-25 11:59:30','2022-04-25 11:59:30','2022-04-25 11:59:30'),(6,NULL,1,NULL,NULL,'评论内容12',5,2,'2022-04-25 14:57:42',NULL,'2022-04-25 14:57:42'),(7,NULL,NULL,NULL,1,'管理112',5,2,'2022-04-25 14:58:32',NULL,'2022-04-25 14:58:32'),(8,NULL,NULL,1,NULL,'123',5,2,'2022-04-25 15:00:36',NULL,'2022-04-25 15:00:36');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/ershouchejiaoyi/upload/news1.jpg','2022-04-25 11:59:30','公告详情1','2022-04-25 11:59:30'),(2,'公告标题2',2,'http://localhost:8080/ershouchejiaoyi/upload/news2.jpg','2022-04-25 11:59:30','公告详情2','2022-04-25 11:59:30'),(3,'公告标题3',3,'http://localhost:8080/ershouchejiaoyi/upload/news3.jpg','2022-04-25 11:59:30','公告详情3','2022-04-25 11:59:30'),(4,'公告标题4',1,'http://localhost:8080/ershouchejiaoyi/upload/news4.jpg','2022-04-25 11:59:30','公告详情4','2022-04-25 11:59:30'),(5,'公告标题5',3,'http://localhost:8080/ershouchejiaoyi/upload/news5.jpg','2022-04-25 11:59:30','公告详情5','2022-04-25 11:59:30');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','商家简介1',1,'2022-04-25 11:59:30'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','商家简介2',1,'2022-04-25 11:59:30'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','商家简介3',1,'2022-04-25 11:59:30');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','dktoq9a7owqy5x766fvt2et9rvkdkouj','2022-04-25 13:33:20','2022-04-25 15:51:50'),(2,1,'a1','yonghu','用户','xw43fshtzssq84cgycxttw4du13krv8f','2022-04-25 14:50:22','2022-04-25 16:00:44'),(3,1,'a1','shangjia','商家','0s7vgy4rd6z2ctzl8qmn3sgyc7udgfd1','2022-04-25 15:00:14','2022-04-25 16:00:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

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
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/ershouchejiaoyi/upload/yonghu1.jpg',1,'1@qq.com','2022-04-25 11:59:30'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/ershouchejiaoyi/upload/yonghu2.jpg',2,'2@qq.com','2022-04-25 11:59:30'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/ershouchejiaoyi/upload/yonghu3.jpg',1,'3@qq.com','2022-04-25 11:59:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
