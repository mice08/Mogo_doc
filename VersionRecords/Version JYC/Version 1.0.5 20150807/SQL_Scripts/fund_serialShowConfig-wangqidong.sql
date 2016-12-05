CREATE TABLE `fund_serialShowConfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `showName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '展示名称',
  `showType` int(11) DEFAULT NULL COMMENT '展示类型',
  `businessType` int(11) DEFAULT NULL COMMENT '业务类型',
  `fundType` int(11) DEFAULT NULL COMMENT '资金类型',
  `fundSourceType` int(11) DEFAULT NULL COMMENT '资金来源',
  `plusMinus` int(11) DEFAULT NULL COMMENT '金额正负',
  `ifShow` int(1) DEFAULT NULL COMMENT '是否显示(1：显示 2：不显示)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='交易流水配置表'
