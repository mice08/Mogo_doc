DROP TABLE IF EXISTS `user_shareRenter`;

CREATE TABLE `user_shareRenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `idCard` varchar(50) NOT NULL COMMENT '证件号码',
  `phoneNumber` varchar(120) NOT NULL COMMENT '地址',
  `realName` varchar(30) NOT NULL COMMENT '姓名',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createby` int(11) DEFAULT NULL COMMENT '创建人',
  `remark` varchar(120) DEFAULT NULL COMMENT '备注',
  `saleContractId` int(11) DEFAULT NULL COMMENT '合同id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='销售合同合住人表'