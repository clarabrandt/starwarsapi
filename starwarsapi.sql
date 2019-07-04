/*
 Navicat MySQL Data Transfer

 Source Server         : starwarsapi
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost
 Source Database       : starwarsapi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : utf-8

 Date: 07/04/2019 12:00:16 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `films`
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `title` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `films`
-- ----------------------------
BEGIN;
INSERT INTO `films` VALUES ('The Phantom Menace', '1', '1'), ('Attack of the Clones', '2', '2'), ('Revenge of the Sith', '3', '3'), ('A New Hope', '4', '4'), ('The Empire Strikes Back', '5', '5'), ('Return of the Jedi', '6', '6'), ('The Force Awakens', '7', '7');
COMMIT;

-- ----------------------------
--  Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `people`
-- ----------------------------
BEGIN;
INSERT INTO `people` VALUES ('C-3PO', '1', '167'), ('Luke Skywalker', '2', '172'), ('R2-D2', '3', '96'), ('Darth Vader', '4', '202'), ('Leia Organa', '5', '150'), ('Greedo', '6', '173'), ('Lando Calrissian', '7', '177'), ('Tartfful', '8', '234'), ('R4-P17', '9', '96'), ('Ben Quadinaros', '10', '163'), ('Owen Lars', '11', '165'), ('Beru Whitesun Lars', '12', '165'), ('R5-D4', '13', '97'), ('Biggs Darklightr', '14', '183'), ('Obi-Wan Kenobi', '15', '182'), ('Jabba Desilijic Tiure', '16', '175'), ('Wilhuff Tarkin', '17', '180'), ('Anakin Skywalker', '18', '188'), ('Chewbacca', '19', '288'), ('Han Solo', '20', '180'), ('Wedge Antilles', '21', '170'), ('Jek Tono Parkins', '22', '180'), ('Yoda', '23', '66'), ('Palpatine', '24', '170'), ('Boba Fett', '25', '183'), ('IG-88', '26', '200'), ('Bossk', '27', '190'), ('Lando Calrissian', '28', '177'), ('Lobot', '29', '175');
COMMIT;

-- ----------------------------
--  Table structure for `people_in_film`
-- ----------------------------
DROP TABLE IF EXISTS `people_in_film`;
CREATE TABLE `people_in_film` (
  `film` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  KEY `people_film` (`film`),
  CONSTRAINT `film` FOREIGN KEY (`film`) REFERENCES `films` (`id`),
  CONSTRAINT `people` FOREIGN KEY (`film`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `people_in_film`
-- ----------------------------
BEGIN;
INSERT INTO `people_in_film` VALUES ('1', '1'), ('1', '3'), ('1', '2'), ('1', '4'), ('1', '5'), ('1', '6'), ('2', '1'), ('2', '2'), ('2', '3'), ('2', '4'), ('2', '5'), ('2', '7'), ('3', '1'), ('3', '2'), ('3', '3'), ('3', '4'), ('3', '5'), ('3', '7'), ('4', '1'), ('4', '3'), ('4', '10'), ('5', '1'), ('5', '3'), ('6', '1'), ('6', '2'), ('6', '3'), ('6', '4'), ('6', '5'), ('6', '8'), ('6', '9'), ('7', '2'), ('7', '3'), ('7', '5'), ('1', '22'), ('2', '26'), ('2', '27'), ('1', '13'), ('1', '14'), ('1', '11'), ('5', '11'), ('6', '11'), ('1', '12'), ('5', '12'), ('6', '12'), ('1', '17'), ('6', '17'), ('2', '28'), ('3', '28'), ('2', '25'), ('3', '25'), ('5', '25'), ('1', '21'), ('2', '21'), ('3', '21'), ('5', '18'), ('6', '18'), ('4', '18'), ('1', '16'), ('3', '16'), ('4', '16'), ('1', '15'), ('2', '15'), ('3', '15'), ('4', '15'), ('5', '15'), ('6', '15'), ('2', '19'), ('7', '19'), ('1', '19'), ('3', '19'), ('6', '19'), ('1', '20'), ('2', '20'), ('3', '20'), ('7', '20'), ('2', '23'), ('3', '23'), ('4', '23'), ('5', '23'), ('6', '23'), ('2', '24'), ('3', '24'), ('4', '24'), ('5', '24'), ('6', '24'), ('2', '29'), ('3', '30'), ('7', '30');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
