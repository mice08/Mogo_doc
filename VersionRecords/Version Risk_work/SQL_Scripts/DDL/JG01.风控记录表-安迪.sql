/*  Database name `mogoroomdb`  ��ؼ�¼�� */
use mogoroomdb;

/*
1��Ԥ��������:С��100����ʱ30�����ң�
2��ÿ�ζ�ȡ��:С��20
3����Ҫ��ѯ
select id,`ruleType`,`ruleKey`,`ruleStatus`  from `risk_rule`

*/

CREATE TABLE `risk_rule`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '��ع���id',
  `ruleType` TINYINT(1) COMMENT '�������ͣ������riskRuleTypemEnum��',
  `ruleKey` VARCHAR(32) COMMENT '����key',
  `ruleStatus` TINYINT(1) DEFAULT 1 COMMENT '��������(1:��ת 2:��ͣ)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='��ع����';


/*
1��Ԥ��������:3�������ܴﵽ1w������
2��ÿ�ζ�ȡ����1000������
3����Ҫ��ѯ
select id,`landlordId`,`riskRuleId`,`riskKeyType`,`createTime`,`verifyStatus`,`verifyTime`,`verifyUserId`,`riskRuleKey`,`riskRuleType`
from `risk_record` where landlordId = 3100406

*/
CREATE TABLE `risk_record`(  
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '��¼id',
  `landlordId` INT(11) COMMENT '����ID',
  `riskRuleId` INT(11) COMMENT '����id',
  `riskKeyId` INT(11) COMMENT '�������ձ������id',
  `riskKeyType` TINYINT(1) COMMENT '���ձ������',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `verifyStatus` TINYINT(1) COMMENT '���״̬',
  `verifyTime` DATETIME COMMENT '���ʱ��',
  `verifyUserId` INT(11) COMMENT '�����id����ӦԱ�����id',
  `riskRuleKey` VARCHAR(32) COMMENT '���չ���key',
  `riskRuleType` TINYINT(1) COMMENT '���չ������ͣ������riskRuleTypemEnum��',
  PRIMARY KEY (`id`),
  INDEX `INDEX_LANDLORDID` (`landlordId`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='��ؼ�¼��';
