/*  Database name `mogoroomdb` ����ӷ����˵���ϸ���͹�����*/
use mogoroomdb;

DROP TABLE IF EXISTS `user_landlord_billdtltype` ;

CREATE TABLE IF NOT EXISTS `user_landlord_billdtltype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `landlordId` INT(11) NOT NULL COMMENT '����Id',
  `billDtlType` INT(11) NOT NULL COMMENT '�˵���ϸ����',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����˵���ϸ���͹�����';
