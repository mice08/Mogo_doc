use mogoroomdb;
CREATE TABLE `comm_busitype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `busiType` INT(11) NOT NULL COMMENT 'ҵ�����',
  `busiName` VARCHAR(64) NOT NULL COMMENT 'ҵ������',
  `status` TINYINT(4) NOT NULL COMMENT '״̬��0��Ч��1��Ч',
  `sort` INT(11) NOT NULL COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COMMENT='ҵ������';

INSERT INTO comm_busitype(busiType,busiName,STATUS,sort) SELECT  busiType,busiName,STATUS,sort FROM acct.`acct_busitype`;

DROP TABLE acct.acct_busitype;

CREATE VIEW acct.acct_busitype AS SELECT * FROM comm_busitype;