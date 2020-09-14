SET @old_autocommit=@@autocommit;


CREATE DATABASE `test` DEFAULT CHARACTER SET utf8mb4;
USE `test`;


DROP TABLE IF EXISTS `table1`;
CREATE TABLE `table1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key1` char(64) NOT NULL DEFAULT '',
  `key2` char(64) NOT NULL DEFAULT '',
  `val` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

set autocommit=0;
INSERT INTO `table1` VALUES (1,'AAA','AA',100);
INSERT INTO `table1` VALUES (2,'BBB','BB',200);
INSERT INTO `table1` VALUES (3,'CCC','CC',300);
INSERT INTO `table1` VALUES (4,'DDD','DD',400);
INSERT INTO `table1` VALUES (5,'EEE','',500);
commit;


DROP TABLE IF EXISTS `table2`;
CREATE TABLE `table2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key1` char(64) NOT NULL DEFAULT '',
  `key2` char(64) NOT NULL DEFAULT '',
  `val` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

set autocommit=0;
INSERT INTO `table2` VALUES (1,'aaa','aa',10);
INSERT INTO `table2` VALUES (2,'bbb','bb',20);
INSERT INTO `table2` VALUES (3,'ccc','cc',30);
INSERT INTO `table2` VALUES (4,'ddd','dd',40);
INSERT INTO `table2` VALUES (5,'eee','',50);
commit;


SET autocommit=@old_autocommit;
