use mogoroomdb;
CREATE TABLE `comm_busitype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `busiType` INT(11) NOT NULL COMMENT '业务代码',
  `busiName` VARCHAR(64) NOT NULL COMMENT '业务名称',
  `status` TINYINT(4) NOT NULL COMMENT '状态，0无效，1有效',
  `sort` INT(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COMMENT='业务类型';

INSERT INTO comm_busitype(busiType,busiName,STATUS,sort) SELECT  busiType,busiName,STATUS,sort FROM acct.`acct_busitype`;

DROP TABLE acct.acct_busitype;

CREATE VIEW acct.acct_busitype AS SELECT * FROM comm_busitype;