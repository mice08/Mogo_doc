use mogoroomdb;

CREATE TABLE `cntr_salecontractUserRel`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contractId` INT(11) COMMENT '��ͬid',
  `userId` INT(11) COMMENT '�û�id',
  `userType` TINYINT(4) COMMENT '�û�����(�ο��ֵ������:userType)',
  `userRel` TINYINT(4) COMMENT '��ǩԼ�˹�ϵ(1������ 2��Ա�� 3������ 4������)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8 COMMENT='��ͬ�û���ϵ��';

ALTER TABLE `cntr_salecontractuserrel`
ADD COLUMN `createTime`  DATETIME NULL COMMENT '����ʱ��';

ALTER TABLE `user_info`
ADD COLUMN `hobby`  VARCHAR(64) NULL COMMENT '��Ȥ����' ,
ADD COLUMN `picGroupId`  INT(11) NULL COMMENT 'ͼƬ��id' ;


INSERT  INTO `comm_picture_group`(`picGroupType`,`picGroupName`,`createTime`,`createByType`,`createBy`,`remark`) 
VALUES (3,'�û�ͼƬ','2016-01-15 14:24:49',1,0,NULL);
