/*  Database name `mogoroomdb`  �����˼�¼�� */
use mogoroomdb;

/*
1��Ԥ��������:ÿ�¼�ǧ������
2��ÿ�ζ�ȡ��:С��50
3����Ҫ��ѯ
select createTime,verifyUserId,verifyResult,remark,verifyContext,landlordId  from risk_verify_record where landlordId= 3100380

*/

CREATE TABLE `risk_verify_record`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '��˼�¼id',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��',
  `verifyUserId` INT(11) COMMENT '�����',
  `verifyResult` TINYINT(1) COMMENT '��˽��(1:���ƣ�2ͨ��)',
  `remark` VARCHAR(255) COMMENT '��ע',
  `verifyContext` VARCHAR(255) COMMENT '�������',
  `landlordId` INT(11) COMMENT '��˵ķ���id',
  PRIMARY KEY (`id`),
  INDEX `INDEX_LANDLORDID` (`landlordId`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='�����˼�¼��';
