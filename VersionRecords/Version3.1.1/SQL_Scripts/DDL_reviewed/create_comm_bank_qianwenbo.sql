use mogoroomdb;
CREATE TABLE IF NOT EXISTS `comm_bank` (
  `id` INT NOT NULL,
  `bankName` VARCHAR(25) NOT NULL COMMENT '银行名称',
  `bankNameEn` VARCHAR(8) NOT NULL COMMENT '银行名称英文缩写',
  `status` BIT(1) NULL DEFAULT '1' COMMENT '是否有效。0代表该数据已废除',
  `valid` BIT(1) NULL DEFAULT '1' COMMENT '是否可用。1代表可用于绑卡',
  `sort` INT NULL COMMENT '排序标识',
  PRIMARY KEY (`id`))
 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='银行卡信息表';
