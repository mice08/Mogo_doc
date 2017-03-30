/* Database name `mogoroomdb`， 新增主要业务快照记录表 */
use mogoroomdb;
DROP TABLE IF EXISTS repo_alldetail;
CREATE TABLE `repo_alldetail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `landlordId` INT(11) DEFAULT NULL COMMENT '房东id',
  `recordDate` DATE DEFAULT NULL COMMENT '快照记录时间',
  `entireRentRoomNum` INT(11) DEFAULT NULL COMMENT '整租房间数',
  `flatShareRoomNum` INT(11) DEFAULT NULL COMMENT '合租房间数',
  `centralizedRoomNum` INT(11) DEFAULT NULL COMMENT '集中式房间数',
  `decentralizedFlatNum` INT(11) DEFAULT NULL COMMENT '分散式公寓数',
  `centralizedFlatNum` INT(11) DEFAULT NULL COMMENT '集中式公寓数',
  `onlineSignNum` INT(11) DEFAULT NULL COMMENT '线上签约单量',
  `offlineSignNum` INT(11) DEFAULT NULL COMMENT '补录签约单量',
  `onlinePayRentNum` INT(11) DEFAULT NULL COMMENT '线上支付租金笔数',
  `onlinePayRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线上支付租金金额',
  `offlinePayRentNum` INT(11) DEFAULT NULL COMMENT '线下支付租金笔数',
  `offlinePayRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线下支付租金金额',
  `onlineCustomRentNum` INT(11) DEFAULT NULL COMMENT '线上自定义租金支付笔数',
  `onlineCustomRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线上自定义租金支付金额',
  `offlineCustomeRentNum` INT(11) DEFAULT NULL COMMENT '线下自定义租金支付笔数',
  `offlineCustomeRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线下自定义租金支付金额',
  `onlineOtherRentPayNum` INT(11) DEFAULT NULL COMMENT '线上其他租金支付笔数',
  `onlineOtherRentPayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线上其他租金支付金额',
  `offlineOtherRentPayNum` INT(11) DEFAULT NULL COMMENT '线下其他租金支付笔数',
  `offlineOtherRentPayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线下其他租金支付金额',
  PRIMARY KEY (`id`),
  KEY(landlordId),
  KEY(recordDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '主要业务快照记录表';