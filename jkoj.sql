/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.27-community-nt : Database - jkoj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jkoj` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `jkoj`;

/*Table structure for table `attend` */

DROP TABLE IF EXISTS `attend`;

CREATE TABLE `attend` (
  `id` int(11) NOT NULL auto_increment,
  `A_time` int(11) default NULL,
  `A_wrongsubmits` int(11) default NULL,
  `B_time` int(11) default NULL,
  `B_wrongsubmits` int(11) default NULL,
  `C_time` int(11) default NULL,
  `C_wrongsubmits` int(11) default NULL,
  `D_time` int(11) default NULL,
  `D_wrongsubmits` int(11) default NULL,
  `E_time` int(11) default NULL,
  `E_wrongsubmits` int(11) default NULL,
  `F_time` int(11) default NULL,
  `F_wrongsubmits` int(11) default NULL,
  `G_time` int(11) default NULL,
  `G_wrongsubmits` int(11) default NULL,
  `H_time` int(11) default NULL,
  `H_wrongsubmits` int(11) default NULL,
  `I_time` int(11) default NULL,
  `I_wrongsubmits` int(11) default NULL,
  `J_time` int(11) default NULL,
  `J_wrongsubmits` int(11) default NULL,
  `K_time` int(11) default NULL,
  `K_wrongsubmits` int(11) default NULL,
  `L_time` int(11) default NULL,
  `L_wrongsubmits` int(11) default NULL,
  `M_time` int(11) default NULL,
  `M_wrongsubmits` int(11) default NULL,
  `N_time` int(11) default NULL,
  `N_wrongsubmits` int(11) default NULL,
  `O_time` int(11) default NULL,
  `O_wrongsubmits` int(11) default NULL,
  `P_time` int(11) default NULL,
  `P_wrongsubmits` int(11) default NULL,
  `Q_time` int(11) default NULL,
  `Q_wrongsubmits` int(11) default NULL,
  `R_time` int(11) default NULL,
  `R_wrongsubmits` int(11) default NULL,
  `S_time` int(11) default NULL,
  `S_wrongsubmits` int(11) default NULL,
  `T_time` int(11) default NULL,
  `T_wrongsubmits` int(11) default NULL,
  `U_time` int(11) default NULL,
  `U_wrongsubmits` int(11) default NULL,
  `V_time` int(11) default NULL,
  `V_wrongsubmits` int(11) default NULL,
  `W_time` int(11) default NULL,
  `W_wrongsubmits` int(11) default NULL,
  `X_time` int(11) default NULL,
  `X_wrongsubmits` int(11) default NULL,
  `Y_time` int(11) default NULL,
  `Y_wrongsubmits` int(11) default NULL,
  `Z_time` int(11) default NULL,
  `Z_wrongsubmits` int(11) default NULL,
  `contest_id` int(11) default NULL,
  `defunct` varchar(255) collate utf8_bin default NULL,
  `penalty` int(11) default NULL,
  `score` int(11) default NULL,
  `solved` int(11) default NULL,
  `username` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `attend` */

insert  into `attend`(`id`,`A_time`,`A_wrongsubmits`,`B_time`,`B_wrongsubmits`,`C_time`,`C_wrongsubmits`,`D_time`,`D_wrongsubmits`,`E_time`,`E_wrongsubmits`,`F_time`,`F_wrongsubmits`,`G_time`,`G_wrongsubmits`,`H_time`,`H_wrongsubmits`,`I_time`,`I_wrongsubmits`,`J_time`,`J_wrongsubmits`,`K_time`,`K_wrongsubmits`,`L_time`,`L_wrongsubmits`,`M_time`,`M_wrongsubmits`,`N_time`,`N_wrongsubmits`,`O_time`,`O_wrongsubmits`,`P_time`,`P_wrongsubmits`,`Q_time`,`Q_wrongsubmits`,`R_time`,`R_wrongsubmits`,`S_time`,`S_wrongsubmits`,`T_time`,`T_wrongsubmits`,`U_time`,`U_wrongsubmits`,`V_time`,`V_wrongsubmits`,`W_time`,`W_wrongsubmits`,`X_time`,`X_wrongsubmits`,`Y_time`,`Y_wrongsubmits`,`Z_time`,`Z_wrongsubmits`,`contest_id`,`defunct`,`penalty`,`score`,`solved`,`username`) values (1,1570215,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'N',1570215,1,1,'Software_King'),(2,4820,9,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'N',4820,1,1,'sa'),(3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,'N',0,0,0,'Software_King'),(4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,'N',0,0,0,'zjf');

/*Table structure for table `compile_info` */

DROP TABLE IF EXISTS `compile_info`;

CREATE TABLE `compile_info` (
  `solution_id` int(11) NOT NULL,
  `error` text collate utf8_bin,
  PRIMARY KEY  (`solution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `compile_info` */

insert  into `compile_info`(`solution_id`,`error`) values (1,'OJ_TMPMain.java:23: 需要 \';\'\r\n			System.out.println(a+b)\r\n			                       ^\r\n1 错误\r\n'),(9,'OJ_TMPMain.java:23: 需要 \';\'\n			System.out.println(a+b)\n			                       ^\n1 错误\n'),(23,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(30,'OJ_TMPMain.java:23: 需要 \';\'\n			System.out.println(a+b)\n			                       ^\n1 错误\n'),(33,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(34,'OJ_TMPMain.java:27: 错误: 解析时已到达文件结尾\n	}\n	 ^\n1 个错误\n'),(35,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(36,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(37,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(38,'\'g++\' 不是内部或外部命令，也不是可运行的程序\n或批处理文件。\n'),(52,'OJ_TMP52.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP52.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(56,'OJ_TMP56.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP56.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(58,'OJ_TMP58.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP58.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(59,'OJ_TMP59.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP59.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(63,'OJ_TMP63.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP63.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(68,'OJ_TMP68.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP68.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(69,'OJ_TMP69.c:1:1: error: unknown type name \'import\'\n import java.util.Scanner;\n ^\nOJ_TMP69.c:1:12: error: expected \'=\', \',\', \';\', \'asm\' or \'__attribute__\' before \'.\' token\n import java.util.Scanner;\n            ^\nOJ_TMP69.c:5:1: error: unknown type name \'public\'\n public class Main \n ^\nOJ_TMP69.c:5:14: error: expected \'=\', \',\', \';\', \'asm\' or \'__attribute__\' before \'Main\'\n public class Main \n              ^\n'),(71,'OJ_TMP71.cpp:1:1: error: \'import\' does not name a type\n import java.util.Scanner;\n ^\nOJ_TMP71.cpp:5:1: error: expected unqualified-id before \'public\'\n public class Main \n ^\n'),(74,'OJ_TMPMain.java:23: 需要 \';\'\n			System.out.println(a*b)\n			                       ^\n1 错误\n'),(86,'OJ_TMPMain.java:23: 需要 \';\'\n			System.out.println(a+b)\n			                       ^\n1 错误\n'),(89,'OJ_TMPMain.java:23: 需要 \';\'\n			System.out.println(a+b)\n			                       ^\n1 错误\n');

/*Table structure for table `contest` */

DROP TABLE IF EXISTS `contest`;

CREATE TABLE `contest` (
  `contest_id` int(11) NOT NULL auto_increment,
  `create_time` datetime default NULL,
  `create_user` varchar(255) collate utf8_bin default NULL,
  `description` varchar(255) collate utf8_bin default NULL,
  `end_reg` datetime default NULL,
  `end_time` datetime default NULL,
  `password` varchar(255) collate utf8_bin default NULL,
  `private` int(11) default NULL,
  `start_reg` datetime default NULL,
  `start_time` datetime default NULL,
  `status` int(11) default NULL,
  `title` varchar(255) collate utf8_bin default NULL,
  `type` int(11) default NULL,
  `endReg1` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `contest` */

insert  into `contest`(`contest_id`,`create_time`,`create_user`,`description`,`end_reg`,`end_time`,`password`,`private`,`start_reg`,`start_time`,`status`,`title`,`type`,`endReg1`) values (1,NULL,NULL,'asas','2014-05-27 22:52:23','2014-05-28 18:11:23','123456',0,'2014-02-02 15:02:51','2014-03-03 17:52:23',1,'齐齐哈尔大学第三届程序设计大赛',0,NULL),(2,NULL,NULL,'sdsdsdsdsdsdsds','2014-02-18 15:02:51','2014-02-23 13:11:23','123456',1,'2014-02-18 15:02:51','2014-02-21 13:11:23',3,'齐齐哈尔大学第四届程序设计大赛',0,NULL),(3,NULL,NULL,'asasa','2014-04-11 15:02:51','2014-04-10 19:21:51','',1,'2014-04-10 15:02:51','2014-04-10 19:09:02',3,'asasas',0,'2014-04-10 15:02:51');

/*Table structure for table `contest_problem` */

DROP TABLE IF EXISTS `contest_problem`;

CREATE TABLE `contest_problem` (
  `id` int(11) NOT NULL auto_increment,
  `accepted` int(11) default NULL,
  `contest_id` int(11) default NULL,
  `defunct` varchar(255) collate utf8_bin default NULL,
  `num` varchar(255) collate utf8_bin default NULL,
  `point` int(11) default NULL,
  `problem_id` int(11) default NULL,
  `solved` int(11) default NULL,
  `submit` int(11) default NULL,
  `submit_user` int(11) default NULL,
  `title` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `contest_problem` */

insert  into `contest_problem`(`id`,`accepted`,`contest_id`,`defunct`,`num`,`point`,`problem_id`,`solved`,`submit`,`submit_user`,`title`) values (2,0,1,'N','A',1,1,3,20,3,'A+B Problem'),(3,0,1,'N','B',1,2,0,0,0,'A+B Problem'),(4,0,2,'N','C',1,2,0,0,0,'A+B Problem'),(5,0,3,'N','A',1,1,0,0,0,'A+B');

/*Table structure for table `problem` */

DROP TABLE IF EXISTS `problem`;

CREATE TABLE `problem` (
  `problem_id` int(11) NOT NULL auto_increment,
  `accepted` int(11) default NULL,
  `author` varchar(30) collate utf8_bin default NULL,
  `contest_id` int(11) default NULL,
  `description` text collate utf8_bin,
  `difficulty` float default NULL,
  `hint` text collate utf8_bin,
  `in_date` datetime default NULL,
  `input` text collate utf8_bin,
  `isvirtual` int(11) default NULL,
  `memory_limit` int(11) NOT NULL,
  `oj_name` varchar(255) collate utf8_bin default NULL,
  `oj_pid` int(11) default NULL,
  `output` text collate utf8_bin,
  `ratio` float default NULL,
  `sample_input` text collate utf8_bin,
  `sample_output` text collate utf8_bin,
  `solved` int(11) default NULL,
  `source` text collate utf8_bin,
  `spj` varchar(1) collate utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `submit` int(11) default NULL,
  `submit_user` int(11) default NULL,
  `tag` varchar(255) collate utf8_bin default NULL,
  `time_limit` int(11) NOT NULL,
  `title` varchar(200) collate utf8_bin NOT NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `problem` */

insert  into `problem`(`problem_id`,`accepted`,`author`,`contest_id`,`description`,`difficulty`,`hint`,`in_date`,`input`,`isvirtual`,`memory_limit`,`oj_name`,`oj_pid`,`output`,`ratio`,`sample_input`,`sample_output`,`solved`,`source`,`spj`,`status`,`submit`,`submit_user`,`tag`,`time_limit`,`title`,`type`) values (1,30,NULL,1,'<span style=\"color: rgb(19, 17, 11); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 15px; white-space: pre-wrap;\">print the sum of two integer.</span>',0,'A+B','2014-01-29 14:29:05','<span style=\"color: rgb(19, 17, 11); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 15px; white-space: pre-wrap;\">two integer a and b.</span>',0,65535,'ACMeOJ',0,'<span style=\"color: rgb(19, 17, 11); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 15px; white-space: pre-wrap;\">the sum of a and b.</span>',0,'<pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 15px; color: rgb(19, 17, 11);\">1 2</pre>','3',4,'','0',1,52,4,NULL,1000,'Problem:A+B',0),(5,0,NULL,NULL,'asasasa',0,'asasas','2014-02-04 19:15:39','asasassa',0,0,'ACMeOJ',0,'sasasasas',0,'asasasas','',0,'assasas','0',1,0,0,NULL,123,'Problem:A+B',2),(6,0,NULL,NULL,'asasasa',0,'assasas','2014-03-03 15:18:11','sasasas',0,0,'ACMeOJ',0,'asasas',0,'ssasas','sssas',0,'sasasa','1',1,0,0,NULL,234,'assas',1);

/*Table structure for table `solution` */

DROP TABLE IF EXISTS `solution`;

CREATE TABLE `solution` (
  `solution_id` int(11) NOT NULL auto_increment,
  `code_length` int(11) default NULL,
  `contest_id` int(11) default NULL,
  `language` int(11) default NULL,
  `memory` int(11) default NULL,
  `problem_id` int(11) default NULL,
  `submit_date` datetime default NULL,
  `testcase` int(11) default NULL,
  `time` int(11) default NULL,
  `username` varchar(255) collate utf8_bin default NULL,
  `verdict` int(11) default NULL,
  PRIMARY KEY  (`solution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `solution` */

insert  into `solution`(`solution_id`,`code_length`,`contest_id`,`language`,`memory`,`problem_id`,`submit_date`,`testcase`,`time`,`username`,`verdict`) values (6,262,0,5,0,1,'2014-02-10 15:00:56',0,0,'Software_King',5),(7,262,0,5,0,1,'2014-02-10 15:03:23',0,0,'Software_King',5),(9,261,0,5,0,1,'2014-02-18 21:05:31',0,0,'sa',3),(19,261,1,5,0,1,'2014-02-18 22:03:30',0,0,'Software_King',5),(20,261,1,5,0,1,'2014-02-18 22:03:57',0,0,'Software_King',5),(22,261,0,5,0,1,'2014-02-18 22:04:58',0,0,'Software_King',5),(23,261,1,1,0,1,'2014-02-18 22:05:30',0,0,'Software_King',3),(24,130,0,4,0,1,'2014-02-19 15:30:59',0,0,'sa',5),(25,125,0,3,0,1,'2014-02-19 15:42:14',0,0,'sa',5),(26,130,1,4,0,1,'2014-02-21 13:41:03',0,0,'Software_King',5),(27,125,1,3,0,1,'2014-02-21 13:42:13',0,0,'Software_King',5),(29,125,1,3,0,1,'2014-02-21 14:26:03',0,0,'Software_King',5),(30,261,1,5,0,1,'2014-02-21 14:29:26',0,0,'sa',3),(31,262,1,5,0,1,'2014-02-21 14:31:43',0,0,'sa',5),(32,262,0,5,0,1,'2014-03-03 19:35:19',0,0,'Software_King',5),(33,261,0,1,0,1,'2014-03-03 19:36:44',0,0,'Software_King',3),(34,261,0,5,0,1,'2014-03-03 19:37:06',0,0,'Software_King',3),(35,125,0,3,0,1,'2014-03-03 19:38:39',0,0,'Software_King',3),(36,125,0,1,0,1,'2014-03-03 20:10:31',0,0,'Software_King',3),(37,125,0,3,0,1,'2014-03-03 20:11:51',0,0,'Software_King',3),(38,125,0,3,0,1,'2014-03-03 20:16:38',0,0,'Software_King',3),(39,125,0,3,0,1,'2014-03-03 20:19:29',0,0,'Software_King',5),(52,262,1,1,0,1,'2014-03-21 22:01:44',0,0,'Software_King',3),(53,262,1,5,0,1,'2014-03-21 22:02:38',0,0,'Software_King',5),(54,262,1,5,0,1,'2014-03-21 22:05:26',0,0,'Software_King',5),(56,262,1,1,0,1,'2014-03-21 23:39:18',0,0,'Software_King',3),(57,262,1,5,0,1,'2014-03-21 23:40:15',0,0,'Software_King',5),(58,262,1,1,0,1,'2014-03-22 18:23:14',0,0,'Software_King',3),(59,262,1,1,0,1,'2014-03-22 19:25:39',0,0,'Software_King',3),(62,262,0,5,0,1,'2014-03-22 23:01:49',0,0,'lxb',5),(63,262,0,1,0,1,'2014-03-22 23:06:28',0,0,'lxb',3),(64,262,0,5,0,1,'2014-03-22 23:07:35',0,0,'lxb',5),(65,262,0,5,0,1,'2014-03-22 23:09:56',0,0,'lxb',5),(68,262,0,1,0,1,'2014-03-22 23:17:24',0,0,'lxb',3),(69,262,0,2,0,1,'2014-03-22 23:21:04',0,0,'lxb',3),(70,130,0,4,0,1,'2014-03-22 23:36:54',0,0,'lxb',5),(71,262,1,1,0,1,'2014-03-23 10:11:52',0,0,'lxb',3),(72,262,1,5,0,1,'2014-03-23 10:12:25',0,0,'lxb',5),(73,262,1,5,0,1,'2014-03-23 10:13:39',0,0,'lxb',5),(74,261,0,5,0,1,'2014-03-30 17:29:34',0,0,'Software_King',3),(75,262,0,5,12956,1,'2014-03-30 17:31:54',1,1590,'Software_King',6),(80,262,0,5,13964,1,'2014-04-07 13:36:02',5,120,'Software_King',5),(81,262,0,5,13876,1,'2014-04-10 09:07:07',5,300,'Software_King',5),(82,262,0,5,12824,1,'2014-04-10 09:07:07',1,2000,'Software_King',8),(84,262,0,5,13900,1,'2014-04-10 12:45:42',5,190,'Software_King',5),(85,262,0,5,13936,1,'2014-04-10 12:47:07',5,170,'Software_King',5),(86,261,0,5,0,1,'2014-04-10 12:47:33',0,0,'Software_King',3),(87,262,1,5,12868,1,'2014-04-10 13:32:00',1,2000,'Software_King',8),(88,262,1,5,13916,1,'2014-04-10 13:34:28',5,130,'Software_King',5),(91,262,0,5,13940,1,'2014-04-10 18:53:11',5,110,'zjf',5),(98,262,0,5,0,1,'2014-04-13 08:54:44',0,0,'Software_King',5),(99,125,0,3,0,1,'2014-04-13 08:56:22',0,0,'Software_King',5);

/*Table structure for table `solution_source` */

DROP TABLE IF EXISTS `solution_source`;

CREATE TABLE `solution_source` (
  `solution_id` int(11) NOT NULL,
  `source` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`solution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `solution_source` */

insert  into `solution_source`(`solution_id`,`source`) values (6,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(19,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(20,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(22,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(23,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(24,'#include <stdio.h>\r\nint main(void)\r\n{  \r\n	int a,b;  \r\n        while(scanf(\"%d%d\",&a,&b)!=EOF)\r\n	printf(\"%d\\n\",a+b);\r\n	return 0;\r\n}'),(25,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(26,'#include <stdio.h>\r\nint main(void)\r\n{  \r\n	int a,b;  \r\n        while(scanf(\"%d%d\",&a,&b)!=EOF)\r\n	printf(\"%d\\n\",a+b);\r\n	return 0;\r\n}'),(27,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(29,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(30,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(31,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(32,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(33,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n'),(34,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n'),(35,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(36,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(37,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(38,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(39,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}'),(52,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(53,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(54,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(56,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(57,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(58,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(59,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(62,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(63,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(64,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(65,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(68,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(69,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(70,'#include <stdio.h>\r\nint main(void)\r\n{  \r\n	int a,b;  \r\n        while(scanf(\"%d%d\",&a,&b)!=EOF)\r\n	printf(\"%d\\n\",a+b);\r\n	return 0;\r\n}'),(71,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(72,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(73,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(74,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a*b)\r\n		}\r\n	}\r\n}'),(75,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a*b);\r\n		}\r\n	}\r\n}'),(76,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		\r\n			\r\n			System.out.println(\"3\");\r\n		\r\n	}\r\n}'),(78,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(80,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(81,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(82,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(84,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(85,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(86,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b)\r\n		}\r\n	}\r\n}'),(87,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(88,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(90,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(91,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(94,'#include <stdio.h>\r\nint main(void)\r\n{  \r\n	int a,b;  \r\n        while(scanf(\"%d%d\",&a,&b)!=EOF)\r\n	printf(\"%d\\n\",a+b);\r\n	return 0;\r\n}'),(95,'#include <stdio.h>\r\nint main(void)\r\n{  \r\n	int a,b;  \r\n        while(scanf(\"%d%d\",&a,&b)!=EOF)\r\n	printf(\"%d\\n\",a+b);\r\n	return 0;\r\n}'),(96,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}\r\n'),(97,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(98,'import java.util.Scanner;\r\n\r\npublic class Main \r\n{\r\n	public static void main(String[] args) \r\n	{\r\n		Scanner scan=new Scanner(System.in);\r\n		while(scan.hasNextInt())\r\n		{\r\n			int a=scan.nextInt();\r\n			int b=scan.nextInt();\r\n			System.out.println(a+b);\r\n		}\r\n	}\r\n}'),(99,'#include<iostream>\r\nusing namespace std; \r\nint main()\r\n{ \r\n  int a,b;\r\n  while(cin>>a>>b) \r\n  { \r\n   cout<<a+b<<endl;\r\n  }\r\n}');

/*Table structure for table `t_attachment` */

DROP TABLE IF EXISTS `t_attachment`;

CREATE TABLE `t_attachment` (
  `id` int(11) NOT NULL auto_increment,
  `is_attach` int(11) default NULL,
  `is_img` int(11) default NULL,
  `is_index_pic` int(11) default NULL,
  `new_name` varchar(255) collate utf8_bin default NULL,
  `old_name` varchar(255) collate utf8_bin default NULL,
  `size` bigint(20) NOT NULL,
  `suffix` varchar(255) collate utf8_bin default NULL,
  `type` varchar(255) collate utf8_bin default NULL,
  `tid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK48549DCE390823CF` (`tid`),
  CONSTRAINT `FK48549DCE390823CF` FOREIGN KEY (`tid`) REFERENCES `t_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_attachment` */

insert  into `t_attachment`(`id`,`is_attach`,`is_img`,`is_index_pic`,`new_name`,`old_name`,`size`,`suffix`,`type`,`tid`) values (1,1,0,0,'1395414081500.txt','jkcms使用的技术--更新',788,'txt','application/octet-stream',4),(12,0,1,0,'1396704592959.jpg','1',51869,'jpg','application/octet-stream',NULL),(13,0,1,0,'1396704594605.jpg','2',54271,'jpg','application/octet-stream',NULL),(14,0,1,0,'1396704595049.jpg','3',60639,'jpg','application/octet-stream',NULL),(15,0,1,0,'1396704595357.jpg','4',102262,'jpg','application/octet-stream',NULL),(16,0,1,0,'1396704595759.jpg','5',169713,'jpg','application/octet-stream',NULL),(17,0,1,0,'1396704596487.jpg','6',54673,'jpg','application/octet-stream',NULL),(18,0,1,0,'1396704596772.jpg','9',104906,'jpg','application/octet-stream',NULL),(19,0,1,0,'1396704894215.jpg','1',51869,'jpg','application/octet-stream',9),(20,0,1,0,'1396704894748.jpg','2',54271,'jpg','application/octet-stream',9),(21,0,1,0,'1396704895070.jpg','3',60639,'jpg','application/octet-stream',9),(22,0,1,0,'1396704895314.jpg','4',102262,'jpg','application/octet-stream',9),(23,0,1,0,'1396704895604.jpg','5',169713,'jpg','application/octet-stream',9),(24,0,1,0,'1396704896146.jpg','6',54673,'jpg','application/octet-stream',9),(25,0,1,0,'1396704896607.jpg','7',47522,'jpg','application/octet-stream',9),(26,0,1,0,'1396704897025.jpg','8',61379,'jpg','application/octet-stream',9),(27,0,1,0,'1396704897451.jpg','9',104906,'jpg','application/octet-stream',9),(28,0,1,0,'1396704897883.jpg','10',188653,'jpg','application/octet-stream',9);

/*Table structure for table `t_channel` */

DROP TABLE IF EXISTS `t_channel`;

CREATE TABLE `t_channel` (
  `id` int(11) NOT NULL auto_increment,
  `custom_link` int(11) default NULL,
  `custom_link_url` varchar(255) collate utf8_bin default NULL,
  `is_index` int(11) default NULL,
  `is_top_nav` int(11) default NULL,
  `name` varchar(255) collate utf8_bin NOT NULL,
  `nav_order` int(11) default NULL,
  `orders` int(11) NOT NULL,
  `recommend` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE79D703880EF845F` (`pid`),
  CONSTRAINT `FKE79D703880EF845F` FOREIGN KEY (`pid`) REFERENCES `t_channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_channel` */

insert  into `t_channel`(`id`,`custom_link`,`custom_link_url`,`is_index`,`is_top_nav`,`name`,`nav_order`,`orders`,`recommend`,`status`,`type`,`pid`) values (1,1,'<%=request.getContextPath() %>/',1,1,'Home',0,1,0,0,0,NULL),(2,1,'<%=request.getContextPath() %>/problems',1,1,'Online Exercise',10,2,0,0,0,NULL),(3,1,'<%=request.getContextPath() %>/allstatus',1,1,'Judge Status',20,3,0,0,0,NULL),(4,1,'<%=request.getContextPath() %>/contests',1,1,'Online Contests',30,4,0,0,0,NULL),(5,1,'<%=request.getContextPath() %>/Teaching',0,0,'Online Teaching',40,5,1,1,0,NULL),(6,1,'<%=request.getContextPath() %>/contactUs',1,1,'Contact Us',50,6,0,0,2,NULL),(7,0,'',1,0,'ACMeOJ新闻',60,7,0,0,1,NULL),(8,1,'<%=request.getContextPath() %>/faq',1,1,'FAQ',70,8,0,0,2,NULL);

/*Table structure for table `t_cms_link` */

DROP TABLE IF EXISTS `t_cms_link`;

CREATE TABLE `t_cms_link` (
  `id` int(11) NOT NULL auto_increment,
  `new_win` int(11) default NULL,
  `pos` int(11) NOT NULL,
  `title` varchar(255) collate utf8_bin NOT NULL,
  `type` varchar(255) collate utf8_bin default NULL,
  `url` varchar(255) collate utf8_bin default NULL,
  `url_class` varchar(255) collate utf8_bin default NULL,
  `url_id` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_cms_link` */

insert  into `t_cms_link`(`id`,`new_win`,`pos`,`title`,`type`,`url`,`url_class`,`url_id`) values (1,1,2,'齐齐哈尔大学','校内链接','http://www.qqhru.edu.cn/','',''),(2,1,1,'齐齐哈尔大学校内网','校内链接','http://xiaonei.qqhru.edu.cn/','',''),(3,1,3,'齐齐哈尔大学ACMePoj','校内链接','http://www.acmepoj.com','','');

/*Table structure for table `t_group` */

DROP TABLE IF EXISTS `t_group`;

CREATE TABLE `t_group` (
  `id` int(11) NOT NULL auto_increment,
  `descr` varchar(255) collate utf8_bin default NULL,
  `name` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_group` */

insert  into `t_group`(`id`,`descr`,`name`) values (1,'管理员负责管理整个ACMeOJ系统的运行和维护，以及系统管理，文章发布、题目的发布，系统管理。用户权限管理等。','管理员组'),(2,'负责文章的发布','文章发布人员'),(3,'负责审核文章的合法性','文章审核人员'),(4,'一般用户具有看题，做题，提交评测，看首页新闻。','一般用户'),(5,'教师可以在在线教育中，发布作业，发布题目，只有增加题目的权利。','教师组');

/*Table structure for table `t_group_channel` */

DROP TABLE IF EXISTS `t_group_channel`;

CREATE TABLE `t_group_channel` (
  `id` int(11) NOT NULL auto_increment,
  `c_id` int(11) default NULL,
  `g_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKB7D322B8811C454B` (`c_id`),
  KEY `FKB7D322B83880D083` (`g_id`),
  CONSTRAINT `FKB7D322B83880D083` FOREIGN KEY (`g_id`) REFERENCES `t_group` (`id`),
  CONSTRAINT `FKB7D322B8811C454B` FOREIGN KEY (`c_id`) REFERENCES `t_channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_group_channel` */

/*Table structure for table `t_index_pic` */

DROP TABLE IF EXISTS `t_index_pic`;

CREATE TABLE `t_index_pic` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `link_type` int(11) default NULL,
  `link_url` varchar(255) collate utf8_bin default NULL,
  `new_name` varchar(255) collate utf8_bin default NULL,
  `old_name` varchar(255) collate utf8_bin default NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sub_title` varchar(255) collate utf8_bin default NULL,
  `title` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_index_pic` */

insert  into `t_index_pic`(`id`,`create_date`,`link_type`,`link_url`,`new_name`,`old_name`,`pos`,`status`,`sub_title`,`title`) values (10,'2014-01-15 17:12:06',0,'','1393234139616.jpg',NULL,6,1,'齐齐哈尔大学东区','齐齐哈尔大学东区'),(12,'2014-01-15 21:58:49',0,'','1397350943106.JPG',NULL,5,1,'齐齐哈尔大学平面俯视','齐齐哈尔大学平面俯视'),(13,'2014-02-24 17:39:01',0,'','1397350905785.JPG',NULL,4,1,'sasas','asasas'),(14,'2014-02-24 17:40:51',0,'','1397350874350.JPG',NULL,3,1,'asas','assasa1'),(15,'2014-02-24 17:41:07',0,'<%=request.getContextPath()%>/','1397350840875.JPG',NULL,2,1,'assa','123s'),(16,'2014-04-13 09:00:10',0,'','1397350779741.JPG',NULL,1,1,'凯捷','凯捷');

/*Table structure for table `t_keyword` */

DROP TABLE IF EXISTS `t_keyword`;

CREATE TABLE `t_keyword` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_bin default NULL,
  `name_full_py` varchar(255) collate utf8_bin default NULL,
  `name_short_py` varchar(255) collate utf8_bin default NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_keyword` */

insert  into `t_keyword`(`id`,`name`,`name_full_py`,`name_short_py`,`times`) values (1,'测试文章','ceshiwenzhang','cswz',4),(2,'测试','ceshi','cs',8),(3,'测试2','ceshi','cs',3),(4,'嘻嘻','xixi','xx',3),(5,'asasa','asasa','',3),(6,'asas','asas','',2),(7,'所说','suoshuo','ss',5),(8,'迭代学习','diedaixuexi','ddxx',5),(9,'sdsdsd','sdsdsd','',2),(10,'sddsd','sddsd','',2),(11,'d','d','',2),(12,'sss','sss','',3),(13,'sssd','sssd','',2),(14,'sasasa','sasasa','',1),(15,'assas','assas','',2),(16,'ss','ss','',6),(17,'迭代','diedai','dd',1),(18,'dd','dd','',1),(19,'dddd','dddd','',2),(20,'ssssssss','ssssssss','',3),(21,'dsddddd','dsddddd','',1),(22,'新网站','xinwangzhan','xwz',1),(23,'建设','jianshe','js',1),(24,'洒洒洒','sasasa','sss',9),(25,'asasass','asasass','',1),(26,'顶顶顶顶','dingdingdingding','dddd',1),(27,'山东省大多数','shandongshengdaduoshu','sdsdds',1),(28,'xccxcc','xccxcc','',1),(29,'saasass','saasass','',1),(30,'assasa','assasa','',4),(31,'对对对对对对对','duiduiduiduiduiduidui','ddddddd',4),(32,'asasas','asasas','',6),(33,'sasas','sasas','',6),(34,'啊飒飒飒飒','asasasasa','assss',5),(35,'学工动态1','xuegongdongtai','xgdt',3),(36,'学工2','xuegong','xg',1),(37,'ds','ds','',1),(38,'hg','hg','',2),(39,'是','shi','s',15),(40,'FAQ','FAQ','',14),(41,'ACMeOJ','ACMeOJ','',1),(42,'axzx','axzx','',1),(43,'sasa','sasa','',1);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_bin default NULL,
  `role_type` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`,`role_type`) values (1,'管理员','ROLE_ADMIN'),(2,'文章发布人员','ROLE_PUBLISH'),(3,'文章审核人员','ROLE_AUDIT'),(4,'普通用户','Role_User');

/*Table structure for table `t_topic` */

DROP TABLE IF EXISTS `t_topic`;

CREATE TABLE `t_topic` (
  `id` int(11) NOT NULL auto_increment,
  `author` varchar(255) collate utf8_bin default NULL,
  `channel_pic_id` int(11) default NULL,
  `cname` varchar(255) collate utf8_bin default NULL,
  `content` text collate utf8_bin,
  `create_date` datetime default NULL,
  `keyword` varchar(255) collate utf8_bin default NULL,
  `publish_date` datetime default NULL,
  `recommend` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` text collate utf8_bin,
  `title` varchar(255) collate utf8_bin default NULL,
  `cid` int(11) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKA10609A480EF5392` (`cid`),
  KEY `FKA10609A4336593EA` (`uid`),
  CONSTRAINT `FKA10609A4336593EA` FOREIGN KEY (`uid`) REFERENCES `users` (`id`),
  CONSTRAINT `FKA10609A480EF5392` FOREIGN KEY (`cid`) REFERENCES `t_channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_topic` */

insert  into `t_topic`(`id`,`author`,`channel_pic_id`,`cname`,`content`,`create_date`,`keyword`,`publish_date`,`recommend`,`status`,`summary`,`title`,`cid`,`uid`) values (1,'Software_King',0,'ACMeOJ新闻','','2014-03-03 23:29:35','ds|','2014-03-03 23:29:34',0,0,'','dsdfdsf',7,1),(4,'Software_King',0,'ACMeOJ新闻','<p></p><div style=\"text-align: left;\"><p><span style=\"font-size:16px;\">&nbsp;</span></p><pre>1.Maven分模块管理---项目管理Maven\r\n2.系统使用的架构Spring+Hibernate+SpringMVC\r\n3.页面采用Freemarker--首页静态化\r\n4.JS使用Jquery\r\n5.树Ztree----Ztree的使用----http://www.ztree.me/v3/main.php#_zTreeInfo\r\n6.上传文件，uplodify------http://www.uploadify.com/\r\n7.Ajax,DWR\r\n8.在线编辑器:xhEditor开源HTML编辑器-----http://xheditor.com/\r\n9.首先宣传图片开发---使用cycle2----http://jquery.malsup.com/cycle2/\r\n10.Java缩略图的使用---解决发布内容不需要寻找图片\r\n11.首页宣传图片管理之---http://deepliquid.com/content/Jcrop.html的使用\r\n \r\n整个项目的优点：\r\n  ①首页实现静态化，访问首页不加载数据\r\n  ②首先所显示的栏目随意定制\r\n  ③首先显示的文章条数，和标题显示几个字随意定制\r\n  ④系统垃圾处理\r\n  ⑤导航根据UI随意定制\r\n  ⑥栏目分为文章列表栏目，文章内容栏目，图片栏目\r\n  等等。。。。。。。。。。。。。\r\n\r\n</pre><p></p></div><p></p>','2014-03-10 11:00:39','是|','2014-03-10 23:01:26',0,1,'','ACMeOJ所使用的技术',7,1),(5,'Software_King',0,'ACMeOJ新闻','圣达菲符合规范和感觉很高effrffr','2014-03-10 12:11:21','','2014-03-10 20:23:38',0,0,'','送达方式的范德萨发撒旦法山东省的非官方的规范化更符合规范和法规和规范化',7,1),(6,'刘小兵',0,'ACMeOJ新闻','圣达菲东三省大丰收的的撒发生地方送达方式的','2014-03-10 19:32:05','','2014-03-10 21:20:20',0,1,'','东风股份的广泛的的所发生的发生大幅的萨菲的撒d ',7,4),(8,'Software_King',0,'Contact Us','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 许进：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class： 软件101，</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone：15162689554</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email：Software_King@qq.com</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QQ：<br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 刘小兵：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class： 软件111，</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone：18345286630</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email：944100441@qq.com<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; QQ：944100441<br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 罗杰：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class： 软件112，</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone：18246689568</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email：luojiejx@163.com &nbsp;&nbsp;&nbsp;&nbsp; <br /><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QQ：758809777<br /></p><p><br /></p>','2014-03-19 00:12:34','','2014-03-19 09:37:11',0,1,'','Development Team',6,1),(9,'Software_King',0,'FAQ','<p><span style=\"color:#FF00FF;\">Q</span>: Where are the input and the output?</p><p><span style=\"color:#339900;\">A</span>: Your program shall always read input from stdin (Standard Input) and write output to stdout (Standard Output). For example, you can use ´scanf´ in C or ´cin´ in C++ to read from stdin, and use ´printf´ in C or ´cout´ in C++ to write to stdout.</p><p>User programs are not allowed to open and read from/write to files. You will get a ´Runtime Error´ or a ´Wrong Answer´ if you try to do so. <br /></p><p>Here is a sample solution for problem 0001 using C++/G++:</p><p><img src=\"/JKoj04/resources/upload/1396704894215.jpg\" id=\"attach_19\" alt=\"\" /><br /></p>It´s important that the return type of main() must be int when you use G++/GCC,or you may get compile error.<p>Here is a sample solution for problem 0001 using C/GCC:</p><img src=\"/JKoj04/resources/upload/1396704894748.jpg\" id=\"attach_20\" alt=\"\" /><br /><p>Here is a sample solution for problem 0001 using PASCAL:</p><p><img src=\"/JKoj04/resources/upload/1396704895070.jpg\" id=\"attach_21\" alt=\"\" /><br /></p><p></p><p>Here is a sample solution for problem 0001 using JAVA:</p><p>Now java compiler is jdk 1.5, next is program for 1000</p><p><img src=\"/JKoj04/resources/upload/1396704895314.jpg\" id=\"attach_22\" alt=\"\" /><br /></p><p>Old program for jdk 1.4</p><p><img src=\"/JKoj04/resources/upload/1396704895604.jpg\" id=\"attach_23\" alt=\"\" /><br /></p><p></p><p><span style=\"color:#FF00FF;\">Q</span>: How to submit java program?</p><p><span style=\"color:#339900;\">A</span>: The Java programs submitted must be in a single source code (not .class) file. They must read and write the standard input/output, as the other languages. All programs must begin in a static main method in a Main class. However, you can add and instance as many classes as needed. </p><p><span style=\"color:#FF00FF;\">Q</span>: Can I use shortcut key when submitting?</p><p><span style=\"color:#339900;\">A</span>: Here are shortcut keys defined in the submit page</p><p>ALT+s : Submit button</p><p>ALT+u : User id field , if you haven´t login.</p><p>ALT+l : Language Option</p><p>ALT+p : Problem Id filed</p><p><span style=\"color:#FF00FF;\">Q</span>:Why did I get a Compile Error? It\'s well done!</p><p><span style=\"color:#339900;\">A</span>:There are some differences between GNU and MS-VC++, such as:</p><p><span style=\"color:#0000FF;\">main</span> must be declared as <span style=\"color:#0000FF;\">int, void main</span> will end up with a Compile Error.</p><p><span style=\"color:#339900;\">i</span> is out of definition after block &quot;<span style=\"color:#339900;\">for</span>(<span style=\"color:#339900;\">int</span> <span style=\"color:#339900;\">i</span>=0...){...}&quot;</p><p><span style=\"color:#339900;\">itoa</span> is not an ANSI function.</p><p><span style=\"color:#339900;\">__int64</span> of VC is not ANSI, but you can use <span style=\"color:#339900;\">long long</span> for 64-bit integer.</p><p><span style=\"color:#FF00FF;\">Q</span>: What is the meaning of the judge´s replies?</p><p><span style=\"color:#339900;\">A</span>: Here is a list of the judge´s replies and their meaning:</p><p>Waiting: The judge is so busy that it can´t judge your submit at the moment, usually you just need to wait a minute and your submit will be judged.</p><p><span style=\"color:#0000FF;\">Accepted(Ac):</span> OK! Your program is correct!</p><p><span style=\"color:#FF0000;\">Presentation Error(PE):</span> Your output format is not exactly the same as the judge´s output, although your answer to the problem is correct. Check your output for spaces, blank lines, etc against the problem output specification.</p><p><span style=\"color:#FF0000;\">Wrong Answer(WA):</span> Correct solution not reached for the inputs. The inputs and outputs that we use to test the programs are not public (it is recommendable to get accustomed to a true contest dynamic ;-).</p><p>Runtime Error: Your program failed during the execution (illegal file access, stack overflow, pointer reference out of range, floating point exception, divided by zero...).</p><p><span style=\"color:#339900;\">Time Limit Exceeded(TLE):</span> Your program tried to run during too much time.</p><p>Now each problem have two time limit--TOTAL TIME LIMIT and CASE TIME LIMIT. When JudgeOnline run your program ,it redirect your program´s standard input to input file, then you can just read from standard input. And one problem may have several input files, when your program finished one input file and produce the correct output, JudgeOnline then restart your program to deal with next input file. Each input file´s format is exactly as the problem´s input specification. Case time limit is the maximum time your program is allowed to use for each input file, and TOTAL TIME LIMIT is the maximum time for you to pass all input file. If your program exceed any one of this two time limit, you will receive time limit exceed.</p><p>As most problems only have one or two input file (of course, also one or two output file), then the CASE TIME LIMIT is trivial then it will be set equal to TOTAL TIME LIMIT and the problem description will not display CASE TIME LIMIT.</p><p>So when you got time limit exceed, but you find the time your program used is much less than TOTAL TIME LIMIT----your program must exceed CASE TIME LIMIT.</p><p><span style=\"color:#339900;\">Memory Limit Exceeded(MLE):</span> Your program tried to use more memory than the judge default settings. </p><p><span style=\"color:#FF0000;\">Output Limit Exceeded(OLE):</span> The solution has produced excessive output.</p><p><span style=\"color:#FF0000;\">Compile Error(CE):</span> The compiler could not compile your program. Of course, warning messages are not error messages. Click the link at the judge reply to see the actual error message.</p><p><span style=\"color:#FF0000;\">System Error(SE):</span> The judge system has failed to run the solution.</p><p><span style=\"color:#FF0000;\">No such problem:</span> Either you have submitted a wrong problem id or the problem is unavailable.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p><span style=\"color:#FF00FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</span>: Where are the input and the output?</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF00FF;\">Q</span>, <p><span style=\"color:#339900;\">A</span>: Your program shall always read input from stdin (Standard Input) and write output to stdout (Standard Output). For example, you can use ´scanf´ in C or ´cin´ in C++ to read from stdin, and use ´printf´ in C or ´cout´ in C++ to write to stdout.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">A</span>, <p>User programs are not allowed to open and read from/write to files. You will get a ´Runtime Error´ or a ´Wrong Answer´ if you try to do so. <br /></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; , <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is a sample solution for problem 0001 using C++/G++:</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ,</p><p><img src=\"/JKoj04/resources/upload/1396704896146.jpg\" id=\"attach_24\" alt=\"\" /><br /></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; , <p>It´s important that the return type of main() must be int when you use G++/GCC,or you may get compile error.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is a sample solution for problem 0001 using C/GCC:</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ,<br /></p><p><img src=\"/JKoj04/resources/upload/1396704896607.jpg\" id=\"attach_25\" alt=\"\" /><br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; , </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is a sample solution for problem 0001 using PASCAL:</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ,<p><img src=\"/JKoj04/resources/upload/1396704897025.jpg\" id=\"attach_26\" alt=\"\" /><br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; , </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here is a sample solution for problem 0001 using JAVA:</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Now java compiler is jdk 1.5, next is program for 1000</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ,<p><img src=\"/JKoj04/resources/upload/1396704897451.jpg\" id=\"attach_27\" alt=\"\" /><br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Old program for jdk 1.4<br /></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; , <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ,<p><img src=\"/JKoj04/resources/upload/1396704897883.jpg\" id=\"attach_28\" alt=\"\" /><br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , </p><p><span style=\"color:#FF00FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</span>: How to submit java program?</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF00FF;\">Q</span>, <p><span style=\"color:#339900;\">A</span>: The Java programs submitted must be in a single source code (not .class) file. They must read and write the standard input/output, as the other languages. All programs must begin in a static main method in a Main class. However, you can add and instance as many classes as needed. </p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">A</span>, <p><span style=\"color:#FF00FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</span>: Can I use shortcut key when submitting?</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF00FF;\">Q</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A</span>: Here are shortcut keys defined in the submit page</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">A</span>, <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALT+s : Submit button</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALT+u : User id field , if you haven´t login.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; ALT+l : Language Option</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALT+p : Problem Id filed</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p><span style=\"color:#FF00FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</span>:Why did I get a Compile Error? It\'s well done!</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF00FF;\">Q</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A</span>:There are some differences between GNU and MS-VC++, such as:</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">A</span>, <p><span style=\"color:#0000FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; main</span> must be declared as <span style=\"color:#0000FF;\">int, void main</span> will end up with a Compile Error.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#0000FF;\">main</span>, <span style=\"color:#0000FF;\">int, void main</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i</span> is out of definition after block &quot;<span style=\"color:#339900;\">for</span>(<span style=\"color:#339900;\">int</span> <span style=\"color:#339900;\">i</span>=0...){...}&quot;</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">i</span>, <span style=\"color:#339900;\">for</span>, <span style=\"color:#339900;\">int</span>, <span style=\"color:#339900;\">i</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; itoa</span> is not an ANSI function.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">itoa</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __int64</span> of VC is not ANSI, but you can use <span style=\"color:#339900;\">long long</span> for 64-bit integer.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">__int64</span>, <span style=\"color:#339900;\">long long</span>, <p><span style=\"color:#FF00FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</span>: What is the meaning of the judge´s replies?</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF00FF;\">Q</span>, <p><span style=\"color:#339900;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A</span>: Here is a list of the judge´s replies and their meaning:</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">A</span>, <p>Waiting: The judge is so busy that it can´t judge your submit at the moment, usually you just need to wait a minute and your submit will be judged.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p><span style=\"color:#0000FF;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Accepted(Ac):</span> OK! Your program is correct!</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#0000FF;\">Accepted(Ac):</span>, <p><span style=\"color:#FF0000;\">Presentation Error(PE):</span> Your output format is not exactly the same as the judge´s output, although your answer to the problem is correct. Check your output for spaces, blank lines, etc against the problem output specification.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">Presentation Error(PE):</span>, <p><span style=\"color:#FF0000;\">Wrong Answer(WA):</span> Correct solution not reached for the inputs. The inputs and outputs that we use to test the programs are not public (it is recommendable to get accustomed to a true contest dynamic ;-).</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">Wrong Answer(WA):</span>, <p>Runtime Error: Your program failed during the execution (illegal file access, stack overflow, pointer reference out of range, floating point exception, divided by zero...).</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p><span style=\"color:#339900;\">Time Limit Exceeded(TLE):</span> Your program tried to run during too much time.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">Time Limit Exceeded(TLE):</span>, <p>Now each problem have two time limit--TOTAL TIME LIMIT and CASE TIME LIMIT. When JudgeOnline run your program ,it redirect your program´s standard input to input file, then you can just read from standard input. And one problem may have several input files, when your program finished one input file and produce the correct output, JudgeOnline then restart your program to deal with next input file. Each input file´s format is exactly as the problem´s input specification. Case time limit is the maximum time your program is allowed to use for each input file, and TOTAL TIME LIMIT is the maximum time for you to pass all input file. If your program exceed any one of this two time limit, you will receive time limit exceed.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>As most problems only have one or two input file (of course, also one or two output file), then the CASE TIME LIMIT is trivial then it will be set equal to TOTAL TIME LIMIT and the problem description will not display CASE TIME LIMIT.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p>So when you got time limit exceed, but you find the time your program used is much less than TOTAL TIME LIMIT----your program must exceed CASE TIME LIMIT.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <p><span style=\"color:#339900;\">Memory Limit Exceeded(MLE):</span> Your program tried to use more memory than the judge default settings. </p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#339900;\">Memory Limit Exceeded(MLE):</span>, <p><span style=\"color:#FF0000;\">Output Limit Exceeded(OLE):</span> The solution has produced excessive output.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">Output Limit Exceeded(OLE):</span>, <p><span style=\"color:#FF0000;\">Compile Error(CE):</span> The compiler could not compile your program. Of course, warning messages are not error messages. Click the link at the judge reply to see the actual error message.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">Compile Error(CE):</span>, <p><span style=\"color:#FF0000;\">System Error(SE):</span> The judge system has failed to run the solution.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">System Error(SE):</span>, <p><span style=\"color:#FF0000;\">No such problem:</span> Either you have submitted a wrong problem id or the problem is unavailable.</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , <span style=\"color:#FF0000;\">No such problem:</span><br />','2014-04-03 23:50:02','FAQ|','2014-04-03 21:45:05',0,1,'','Faq',8,1),(10,'Software_King',0,'ACMeOJ新闻','zZZZz','2014-04-12 16:04:17','axzx|','2014-04-12 16:04:17',0,1,'ZZ','zzZ',7,1);

/*Table structure for table `t_user_group` */

DROP TABLE IF EXISTS `t_user_group`;

CREATE TABLE `t_user_group` (
  `id` int(11) NOT NULL auto_increment,
  `g_id` int(11) default NULL,
  `u_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK300645B632890E7F` (`g_id`),
  KEY `FK300645B6E0D48343` (`u_id`),
  CONSTRAINT `FK300645B632890E7F` FOREIGN KEY (`g_id`) REFERENCES `t_group` (`id`),
  CONSTRAINT `FK300645B6E0D48343` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_user_group` */

insert  into `t_user_group`(`id`,`g_id`,`u_id`) values (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,1,4),(11,1,9),(12,4,10),(13,4,11),(14,4,12),(15,4,13),(16,4,14),(17,4,15),(18,4,16),(19,4,17),(20,4,18),(21,4,19),(22,4,20),(23,4,21),(24,4,22),(25,4,23),(26,4,24),(27,4,25),(28,4,26),(29,4,27),(30,4,28),(31,4,29),(32,4,30),(33,4,31),(34,4,32),(35,4,33),(36,4,4),(37,4,34),(38,4,35),(39,4,36),(40,4,37),(41,4,38);

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL auto_increment,
  `r_id` int(11) default NULL,
  `u_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK331DEE5FE0D1BAD1` (`r_id`),
  KEY `FK331DEE5FE0D48343` (`u_id`),
  CONSTRAINT `FK331DEE5FE0D1BAD1` FOREIGN KEY (`r_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK331DEE5FE0D48343` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`r_id`,`u_id`) values (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,1,4),(11,1,9),(12,4,10),(13,4,11),(14,4,12),(15,4,13),(16,4,14),(17,4,15),(18,4,16),(19,4,17),(20,4,18),(21,4,19),(22,4,20),(23,4,21),(24,4,22),(25,4,23),(26,4,24),(27,4,25),(28,4,26),(29,4,27),(30,4,28),(31,4,29),(32,4,30),(33,4,31),(34,4,32),(35,4,33),(36,4,4),(37,4,34),(38,4,35),(39,4,36),(40,4,37),(41,4,38);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `email` varchar(255) collate utf8_bin default NULL,
  `nickname` varchar(255) collate utf8_bin default NULL,
  `password` varchar(255) collate utf8_bin NOT NULL,
  `phone` varchar(255) collate utf8_bin default NULL,
  `status` int(11) NOT NULL,
  `username` varchar(255) collate utf8_bin NOT NULL,
  `school` varchar(100) collate utf8_bin default '',
  `solved` int(11) default NULL,
  `submit` int(11) default NULL,
  `rating` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users` */

insert  into `users`(`id`,`create_date`,`email`,`nickname`,`password`,`phone`,`status`,`username`,`school`,`solved`,`submit`,`rating`) values (1,'2014-01-07 10:36:00','Software_King@qq.com','Software_King','b46053fe3869e3930a644570e922139d','15146691486',1,'Software_King','黑龙江大学',1,36,0),(2,'2014-01-24 20:00:14','ss@qq.com','ss','baf0f0afd319bf489c5fe7d5a44b7a52',NULL,1,'ss',NULL,NULL,NULL,0),(3,'2014-02-18 21:02:49','123@qq.com','sa','58d65bdd8944dc8375c30b2ba10ae699',NULL,1,'sa',NULL,1,5,0),(4,'2014-03-10 19:14:58','lxb@qq.com','刘小兵','558204992556c9837412d48b5a0912e2','183245286630',1,'lxb','齐齐哈尔大学',1,14,0),(9,'2014-03-12 16:35:12','','sd','cc2bd8f09bb88b5dd20f9b432631b8ca','',1,'sd',NULL,0,0,0),(10,'2014-03-12 16:39:33','','fg','2af5c662cab479e5471ca76326a57563','fg',1,'fg',NULL,0,0,0),(11,'2014-03-12 16:58:57','','q','99b3b060154898840f0ebdfb46ec78f','',1,'q',NULL,0,0,0),(12,'2014-03-12 17:06:26','','w','ad57484016654da87125db86f4227ea3','',1,'w',NULL,0,0,0),(13,'2014-03-12 17:09:59','','e','8a4415e9d594ff960030b921d42b91e','',1,'e',NULL,0,0,0),(14,'2014-03-12 17:14:49','','t','accc9105df5383111407fd5b41255e23','',1,'t',NULL,0,0,0),(15,'2014-03-12 17:16:03','','f','633de4b0c14ca52ea2432a3c8a5c4c31','',1,'f',NULL,0,0,0),(16,'2014-03-12 17:16:14','','g','73c18c59a39b18382081ec00bb456d43','',1,'g',NULL,0,0,0),(17,'2014-03-12 17:16:26','','h','5e36941b3d856737e81516acd45edc50','',1,'h',NULL,0,0,0),(18,'2014-03-12 17:16:36','','j','bf2bc2545a4a5f5683d9ef3ed0d977e0','',1,'j',NULL,0,0,0),(19,'2014-03-12 17:16:47','','k','dc468c70fb574ebd07287b38d0d0676d','',1,'k',NULL,0,0,0),(20,'2014-03-12 17:16:56','','l','5b54c0a045f179bcbbbc9abcb8b5cd4c','',1,'l',NULL,0,0,0),(21,'2014-03-12 17:17:34','','u','6277e2a7446059985dc9bcf0a4ac1a8f','',1,'u',NULL,0,0,0),(22,'2014-03-12 17:17:55','','c','e0323a9039add2978bf5b49550572c7c','',1,'c',NULL,0,0,0),(23,'2014-03-12 17:37:26','','v','c4055e3a20b6b3af3d10590ea446ef6c','',1,'v',NULL,0,0,0),(24,'2014-03-12 17:42:21','','x','9336ebf25087d91c818ee6e9ec29f8c1','',1,'x',NULL,0,0,0),(25,'2014-03-12 18:05:47','','z','25ed1bcb423b0b7200f485fc5ff71c8e','',1,'z',NULL,0,0,0),(26,'2014-03-12 18:15:28','','jk','51aca628cbc7bb656eebc7aace9d98a1','',1,'jk',NULL,0,0,0),(27,'2014-03-12 21:10:34','','zz','2c425157ecd32f259548b33402ff6d3','z',1,'zz',NULL,0,0,0),(28,'2014-03-12 21:11:02','','cc','41fcba09f2bdcdf315ba4119dc7978dd','',1,'cc',NULL,0,0,0),(29,'2014-03-13 09:47:20','','gg','c1ebb4933e06ce5617483f665e26627c','',1,'gg',NULL,0,0,0),(30,'2014-03-13 11:25:21','','kk','fa7f08233358e9b466effa1328168527','',1,'kk',NULL,0,0,0),(31,'2014-03-13 11:32:43','rr@qq.com','rr','eb9279982226a42afdf2860dbdc29b45',NULL,1,'rr',NULL,0,0,0),(32,'2014-03-13 11:39:01','rf@qq.com','rf','b0fe0238abf60a9eba1ae48e9ed1b60f',NULL,1,'rf',NULL,0,0,0),(33,'2014-03-13 14:05:03','dd@qq.com','dd','11ddbaf3386aea1f2974eee984542152',NULL,1,'dd',NULL,0,0,0),(34,'2014-03-13 15:46:58','zc@qq.com','张策','a746185fa565267d1fa9d95d0cb9aa4f','18246693542',1,'zhangce','齐齐哈尔大学',0,0,0),(35,'2014-03-22 23:46:46','nbx@qq.com','nbx','5d50b03d9e70ea73ca7ef3abe59b5d50','12345678910',1,'nbx','齐齐哈尔大学',0,0,0),(36,'2014-03-22 23:48:55','sc@qq.com','sc','b46053fe3869e3930a644570e922139d','78945612301',1,'sc',NULL,0,0,0),(37,'2014-03-22 23:54:00','df@sd.com','dfd','d5bda26a637c30e2682ce7676ea16621','123456789',1,'dfd','黑龙江大学',0,0,0),(38,'2014-04-10 18:47:31','jian@1674_dfs.com','zjf','81d860c9dd96a6a842fb12c740663d95','',1,'zjf','',1,3,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
