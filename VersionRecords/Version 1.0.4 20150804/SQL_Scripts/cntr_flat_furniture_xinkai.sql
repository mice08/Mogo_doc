CREATE TABLE `flat_furnitureDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `flatId` int(11) NOT NULL COMMENT '公寓ID',
  `furnitureCode` varchar(50) NOT NULL COMMENT '家具编码',
  `furnitureBrand` varchar(100) DEFAULT NULL COMMENT '家具品牌',
  `furnitureNum` int(11) NOT NULL DEFAULT '0' COMMENT '家具数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公共区域家具配置表';
CREATE TABLE `flat_room_furniture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `furnitureCode` varchar(50) NOT NULL COMMENT '家具编码',
  `furnitureName` varchar(100) NOT NULL COMMENT '家具名称',
  `areaType` varchar(20) NOT NULL COMMENT '区域类型',
  `orderSeq` int(11) NOT NULL DEFAULT '0' COMMENT '家具排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='基础家具条目表';
CREATE TABLE `flat_room_furnitureDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `flatId` int(11) NOT NULL COMMENT '公寓ID',
  `furnitureCode` varchar(50) NOT NULL COMMENT '家具编码',
  `furnitureBrand` varchar(100) DEFAULT NULL COMMENT '家具品牌',
  `furnitureNum` int(11) NOT NULL DEFAULT '0' COMMENT '家具数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='房间家具条目表';
CREATE TABLE `cntr_flat_furniture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cntrId` int(11) DEFAULT NULL COMMENT '合同ID',
  `flatId` int(11) DEFAULT NULL COMMENT '公寓ID',
  `furnitureCode` varchar(50) DEFAULT NULL COMMENT '家具编码',
  `furnitureName` varchar(100) DEFAULT NULL COMMENT '家具名称',
  `furnitureBrand` varchar(100) DEFAULT NULL COMMENT '家具品牌',
  `furnitureNum` int(11) DEFAULT '0' COMMENT '家具数量',
  `orderSeq` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 COMMENT='公寓合同家具配置表';
CREATE TABLE `cntr_room_furniture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cntrId` int(11) DEFAULT NULL COMMENT '合同ID',
  `roomId` int(11) DEFAULT NULL COMMENT '房间ID',
  `flatId` int(11) DEFAULT NULL COMMENT '公寓ID',
  `furnitureCode` varchar(50) DEFAULT NULL COMMENT '家具编码',
  `furnitureName` varchar(100) DEFAULT NULL COMMENT '家具名称',
  `furnitureBrand` varchar(100) DEFAULT NULL COMMENT '家具品牌',
  `furnitureNum` int(11) DEFAULT '0' COMMENT '家具数量',
  `orderSeq` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8 COMMENT='房间合同家具配置表';
CREATE TABLE oder_signedOrder_updhistory
(
  id INT(11) AUTO_INCREMENT COMMENT '主键ID',
  signedOrderId INT(11) DEFAULT NULL COMMENT '签约单ID',
  roomSalePrice VARCHAR(250) DEFAULT NULL COMMENT '修改价格',
  paymentType VARCHAR(250) DEFAULT NULL COMMENT '付款方式',
  checkinDate VARCHAR(250) DEFAULT NULL COMMENT '入住时间',
  rentPeriod  VARCHAR(250) DEFAULT NULL COMMENT '租期',
  remark  VARCHAR(500) DEFAULT NULL COMMENT '备注',
  STATUS TINYINT(1) DEFAULT '1' COMMENT '状态(0无效1有效)',
  createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='签约单修改记录';

# 职业房东APP:[首次登录时间]和[最近一次的登录时间]
ALTER TABLE user_landlord ADD firstLoginTime TIMESTAMP NULL COMMENT '首次登录时间';
ALTER TABLE user_landlord ADD latestLoginTime TIMESTAMP NULL COMMENT '最近一次的登录时间';

#flat_room_furniture数据初始化
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('SINGLE_BED', '单人床', 'ROOM', '1');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DOUBLE_BED', '双人床', 'ROOM', '2');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DINING_TABLE', '餐桌', 'FLAT', '4');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('RQZ', '燃气灶', 'FLAT', '2');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('LIGHT', '台灯', 'ROOM', '10');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CHUANGDIAN', '床垫', 'ROOM', '3');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CTG', '床头柜', 'ROOM', '4');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('YG', '衣柜', 'ROOM', '5');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('AG', '矮柜', 'ROOM', '6');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CJ', '茶几', 'ROOM', '7');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('GUI', '柜', 'ROOM', '8');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DC', '吊橱', 'ROOM', '9');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('KONGTIAO', '空调', 'ROOM', '11');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('TV', '彩电', 'ROOM', '12');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('YKQ', '遥控器', 'ROOM', '13');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('SOFA', '沙发', 'ROOM', '14');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DHG', '电视柜', 'ROOM', '15');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('TABLE', '书桌', 'ROOM', '16');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CHAIR', '椅子', 'ROOM', '17');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CURTAIN', '窗帘', 'ROOM', '18');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('LDTD', '落地台灯', 'ROOM', '19');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DD', '吊灯', 'ROOM', '20');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('BD', '壁灯', 'ROOM', '21');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('SFC', '沙发床', 'ROOM', '22');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('HZT', '化妆台', 'ROOM', '23');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('HZY', '化妆椅', 'ROOM', '24');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('CYYJ', '抽油烟机', 'FLAT', '1');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('FRIDGE', '电冰箱', 'FLAT', '3');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('DINING_CHAIR', '餐椅', 'FLAT', '5');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('SOFA', '沙发', 'FLAT', '6');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('WASHING_MACHINE', '洗衣机', 'FLAT', '7');
INSERT INTO `flat_room_furniture` (`furnitureCode`, `furnitureName`, `areaType`, `orderSeq`) VALUES ('BARKING', '烘干机', 'FLAT', '8');

# 修改房间价格和销售价格
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3002204', '修改销售价格', 'room/editSalePrice', '4', '3', '22', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('1002201', '编辑房态', 'room/editRentStatus', '3', '3', '22', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
