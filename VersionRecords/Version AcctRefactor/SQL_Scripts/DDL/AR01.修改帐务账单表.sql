/*添加帐务账单表状态字段*/
USE mogoroomdb;

ALTER TABLE acct.`acct_bill` 
ADD COLUMN payoffStatus TINYINT(4) DEFAULT NULL COMMENT '支付状态状态(0:未支付完成 1:支付完成 2:定金转收款)', 
ADD COLUMN valid TINYINT(4) DEFAULT NULL COMMENT '是否有效(0:无效账单 1:有效账单)',
ADD COLUMN visible TINYINT(4) DEFAULT NULL COMMENT '是否可见(0:对用户隐藏 1:对用户显示)',
ADD COLUMN onlinePaid DECIMAL(10,2) DEFAULT NULL COMMENT '线上支付金额',
ADD COLUMN offlinePaid DECIMAL(10,2) DEFAULT NULL COMMENT '线下支付金额',
ADD COLUMN couponPaid DECIMAL(10,2) DEFAULT NULL COMMENT '抵用券支付金额',
ADD COLUMN topSubsId INT(11) DEFAULT NULL COMMENT '与签约单对应的订购id',
ADD COLUMN version INT(11) DEFAULT NULL COMMENT '数据版本号';

ALTER TABLE acct.`acct_busibilldtl` ADD COLUMN createTime DATETIME DEFAULT NULL  COMMENT '创建时间';
ALTER TABLE acct.`acct_busifeedtl` ADD COLUMN createTime DATETIME DEFAULT NULL COMMENT '创建时间';
ALTER TABLE acct.`acct_busifunddtl` ADD COLUMN createTime DATETIME DEFAULT NULL COMMENT '创建时间';


ALTER TABLE acct.`acct_busirec` 
ADD COLUMN updateTime DATETIME DEFAULT NULL COMMENT '更新时间',
ADD COLUMN updateBy INT(11) DEFAULT NULL COMMENT '更新人员',
ADD COLUMN updateByType TINYINT(4) DEFAULT NULL COMMENT '更新人类型';


UPDATE acct.`acct_busirec` SET updateTime = createTime WHERE updateTime IS NULL;

ALTER TABLE acct.`acct_fund`
ADD COLUMN updateTime DATETIME DEFAULT NULL COMMENT '更新时间',
ADD COLUMN version INT(11) DEFAULT NULL COMMENT '数据版本号';
