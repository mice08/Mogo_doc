/*房态信息统计表主表 添加小区审核状态字段*/
use mogoroomdb;

ALTER TABLE rsci_rschartinfo_base ADD communityVerify int(11) NULL COMMENT '小区审核状态(0:待审核 1：审核通过 2：审核未通过)';