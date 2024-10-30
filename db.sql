/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xsbd-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xsbd-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xsbd-ssmj`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名  Search',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-02-01 13:46:50'),(2,'sex_types','性别',1,'女',NULL,'2021-02-01 13:46:50'),(3,'report_types','是否报到',1,'已报到',NULL,'2021-02-01 13:46:50'),(4,'report_types','是否报到',2,'未报到',NULL,'2021-02-01 13:46:50'),(5,'college_types','学院',1,'数学科学学院',NULL,'2021-02-01 13:46:50'),(6,'college_types','学院',2,'信息科学技术学院',NULL,'2021-02-01 13:46:50'),(7,'college_types','学院',3,'物理学院',NULL,'2021-02-01 13:46:51'),(8,'major_types','专业',1,'财务金融专业',NULL,'2021-02-01 13:46:51'),(9,'major_types','专业',2,'新闻学专业',NULL,'2021-02-01 13:46:51'),(10,'major_types','专业',3,'临床医学专业',NULL,'2021-02-01 13:46:51'),(11,'clazz_types','班级',1,'班级1',NULL,'2021-02-01 13:46:51'),(12,'clazz_types','班级',2,'班级2',NULL,'2021-02-01 13:46:51'),(13,'clazz_types','班级',3,'班级3',NULL,'2021-02-01 13:46:51'),(14,'pay_flag','是否缴费',1,'已缴费',NULL,'2021-02-01 13:46:51'),(15,'pay_flag','是否缴费',2,'未交费',NULL,'2021-02-01 13:46:51'),(16,'notice_types','通知类型',1,'省通知',NULL,'2021-02-01 13:46:51'),(17,'notice_types','通知类型',2,'市通知',NULL,'2021-02-01 13:46:51'),(18,'notice_types','通知类型',3,'县通知',NULL,'2021-02-01 13:46:51'),(20,'clazz_types',NULL,4,'班级4',NULL,'2021-02-03 10:18:48'),(22,'major_types',NULL,9,'专业9',NULL,'2021-02-03 14:57:45'),(24,'clazz_types',NULL,98,'99',NULL,'2021-02-03 15:35:24');

/*Table structure for table `dormitory` */

DROP TABLE IF EXISTS `dormitory`;

CREATE TABLE `dormitory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋  Search',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元  Search',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='宿舍信息表';

/*Data for the table `dormitory` */

insert  into `dormitory`(`id`,`building`,`unit`,`room`,`create_time`) values (6,'9','9','901','2021-02-03 15:51:09'),(7,'9','9','102','2021-02-03 15:52:59');

/*Table structure for table `dormitory_xuesheng` */

DROP TABLE IF EXISTS `dormitory_xuesheng`;

CREATE TABLE `dormitory_xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '用户id(xuesheng表)',
  `dormitory_id` int(11) DEFAULT NULL COMMENT '宿舍id(dormitory表)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='宿舍与学生一对多关系表';

/*Data for the table `dormitory_xuesheng` */

insert  into `dormitory_xuesheng`(`id`,`xuesheng_id`,`dormitory_id`,`create_time`) values (3,-1,NULL,'2021-02-02 10:07:21'),(11,19,7,'2021-02-03 15:53:11');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `users_id` int(11) DEFAULT NULL COMMENT '发通知的人id(user表)',
  `notice_types` tinyint(4) DEFAULT NULL COMMENT ' 通知类型  Search',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '通知内容',
  `notice_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '通知时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='通知表';

/*Data for the table `notice` */

insert  into `notice`(`id`,`users_id`,`notice_types`,`notice_content`,`notice_time`,`create_time`) values (2,6,1,'3334\r\n','2021-02-02 11:15:59','2021-02-02 11:15:46'),(4,7,2,'9999\r\n','2021-02-03 11:00:45','2021-02-03 11:00:45'),(6,6,3,'999\r\n','2021-02-03 15:27:14','2021-02-03 15:27:14'),(7,7,1,'通知内容<img src=\"http://localhost:8080/xsbd-ssmj/upload/1612337533145.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/xsbd-ssmj/upload/1612337533145.jpg\">\r\n','2021-02-03 15:32:15','2021-02-03 15:32:15');

/*Table structure for table `pay` */

DROP TABLE IF EXISTS `pay`;

CREATE TABLE `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '用户id(xuesheng表)',
  `money` decimal(6,2) DEFAULT NULL COMMENT '缴费金额',
  `pay_flag` tinyint(4) DEFAULT NULL COMMENT ' 是否缴费  Search',
  `money_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '缴费时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='缴费信息表';

/*Data for the table `pay` */

insert  into `pay`(`id`,`xuesheng_id`,`money`,`pay_flag`,`money_time`,`create_time`) values (12,18,'33.30',2,'2021-02-03 15:51:52','2021-02-03 15:51:52'),(13,19,'33.30',1,'2021-02-03 15:52:46','2021-02-03 15:52:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','5gmjz1frx60jel45dh6vmxdiajtcp676','2021-01-29 14:52:36','2021-02-03 16:48:20'),(9,7,'admin2','users','宿舍管理员','dbjxhus142aevszrrh0pb9gi6tbhh4kd','2021-02-02 12:02:15','2021-02-03 16:31:08'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','0ajb0bm12yiyst9zf0vhn12bfc9u90fy','2021-02-03 11:05:39','2021-02-03 16:33:05'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,9,'admin4','users','辅导员','ahzgbc8f7gbw8uvr4tt4ujq9yaaitvxk','2021-02-03 15:34:47','2021-02-03 16:40:45'),(15,17,'999','users','学生','1jz7k7lm39f9er45dznshe7x4ssl5vh4','2021-02-03 15:43:59','2021-02-03 16:44:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin1','admin1','学院管理员','2021-01-29 14:51:13'),(7,'admin2','admin2','宿舍管理员','2021-01-29 14:51:13'),(8,'admin3','admin3','财务管理员','2021-01-29 14:51:13'),(9,'admin4','9898','辅导员','2021-01-29 14:51:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(200) NOT NULL COMMENT '账户',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名  Search',
  `notification_code` varchar(200) NOT NULL COMMENT '录取通知单编码  Search',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话  Search',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `portrait_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `report_types` tinyint(4) DEFAULT NULL COMMENT '是否报道',
  `college_types` tinyint(4) DEFAULT NULL COMMENT '学院id',
  `major_types` tinyint(4) DEFAULT NULL COMMENT '专业id',
  `clazz_types` tinyint(4) DEFAULT NULL COMMENT '班级id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`account`,`mima`,`xingming`,`notification_code`,`sex_types`,`age`,`phone`,`email`,`portrait_photo`,`report_types`,`college_types`,`major_types`,`clazz_types`,`create_time`) values (17,'999','998','姓名99','99',1,19,'17703789999','228@qq.com','http://localhost:8080/xsbd-ssmj/file/download?fileName=1612338174064.jpg',1,3,3,3,'2021-02-03 15:29:21'),(18,'','','学生1','9898',1,19,'17703786999','228@qq.com','http://localhost:8080/xsbd-ssmj/file/download?fileName=1612338706388.jpg',2,3,2,98,'2021-02-03 15:51:51'),(19,'','','学生2','998',1,18,'17703333333','228@qq.com','http://localhost:8080/xsbd-ssmj/file/download?fileName=1612338743154.jpg',2,1,2,4,'2021-02-03 15:52:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
