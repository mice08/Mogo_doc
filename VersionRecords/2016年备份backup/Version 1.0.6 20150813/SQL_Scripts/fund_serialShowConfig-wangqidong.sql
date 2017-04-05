/*1.按照顺序执行，此为第一步*/
DROP TABLE IF EXISTS `fund_serialShowConfig`;

CREATE TABLE `fund_serialShowConfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `showName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '展示名称',
  `showType` int(11) DEFAULT NULL COMMENT '展示类型',
  `businessType` int(11) DEFAULT NULL COMMENT '业务类型',
  `fundType` int(11) DEFAULT NULL COMMENT '资金类型',
  `fundSourceType` int(11) DEFAULT NULL COMMENT '资金来源',
  `plusMinus` int(11) DEFAULT NULL COMMENT '金额正负(0 负 1 正)',
  `ifShow` int(1) DEFAULT '1' COMMENT '是否显示(1：显示 2：不显示)',
  `remark` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `showPlus` int(11) DEFAULT NULL COMMENT '显示金额正负(0 负 1 正)',
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='交易流水配置表'

/*2. insert 为第二步*/
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('3','租客交易记录','1','211002','1001','0','1','1','支付定金 - 网银','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('4','租客交易记录','1','211002','1002','0','0','1','支付定金 - 余额','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('5','租客交易记录','1','216002','1003','1001','0','1','支付首期款 - 网银','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('6','租客交易记录','1','216002','1002','0','0','1','支付首期款 - 余额','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('7','租客交易记录','1','216003','1003','1001','0','1','支付常规款 - 网银','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('8','租客交易记录','1','216003','1002','0','0','1','支付常规款 - 余额','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('9','租客交易记录','1','216004','1003','1001','0','1','支付水电煤 - 网银','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('10','租客交易记录','1','216004','1002','0','0','1','支付水电煤 - 余额','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('11','租客交易记录','1','224001','1002','1001','1','1','租客充值','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('12','租客交易记录','1','215001','1002','0','0','1','租客提现','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('13','租客交易记录','1','3007','1002','0','1','1','职业房东退押金','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('14','租客交易记录','1','3008','1002','0','1','1','职业房东退定金 - 余额','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('15','租客交易记录','1','3009','1002','0','1','1','职业房东退违约金','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('16','租客交易记录','1','3008','1001','0','0','1','职业房东退定金 - 网银','1',NULL);
