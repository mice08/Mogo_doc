use mogoroomdb;
/*���Ĭ��ֵ������ֶ�*/
ALTER TABLE `repo_logintotal_daily`   
  CHANGE `PCLoginCount` `PCLoginCount` INT(11) DEFAULT 0  NULL  COMMENT 'pcÿ�յ�¼ͳ��',
  CHANGE `APPLoginCount` `APPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT 'appÿ�յ�¼ͳ��',
  ADD COLUMN `newAPPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT '�·���app��¼ͳ��' AFTER `APPLoginCount`,
  ADD COLUMN `oldAPPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT '�ɷ���app��¼ͳ��' AFTER `newAPPLoginCount`;

/*
�½����������� ��͵�¼����
1. Ԥ��ÿ������20000��ÿ��600000
2. ��Ҫ��ѯsql: select count(1),cityId,accessDate,channel from dc_renter_loginlog_daily group by cityId,accessDate,channel
3. ����: accessDate
*/
use dc;
CREATE TABLE `dc`.`dc_renter_loginlog_daily`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cityId` INT(11) COMMENT '����id',
  `uuid` VARCHAR(36) COMMENT '��Ե����û����ɵ�Ψһid(growingio��¼��userid�����磬web��վ����һ����Ч�������cookieֵ��mobile��Ϊ����Ψһ��ʶ��)',
  `channel` INT(11) COMMENT '�ն�����(ö��ChannelEnum)',
  `accessDate` DATE COMMENT '����ʱ��',
  `ip` VARCHAR(15) COMMENT 'ip��ַ',
  `renterId` INT(11) COMMENT '���id',
  PRIMARY KEY (`id`),
  INDEX `accessDate` (`accessDate`)
)
COMMENT='C���û��������飬��¼ÿ��ÿ���ն��û��ķ��ʽ������uuidȥ��';

/*
�½����������� ��͵�¼����
1. Ԥ��ÿ������50��ÿ��1500
2. ��Ҫ��ѯsql: select recordDate,cityId,channel,uv from dc_renter_uv_daily where recordDate = ?
3. ����: recordDate
*/
CREATE TABLE `dc`.`dc_renter_uv_daily`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `recordDate` DATE COMMENT '����ʱ��',
  `cityId` INT(11) COMMENT '����id',
  `channel` INT(11) COMMENT '����(ö��ChannelEnum)',
  `uv` INT(11) COMMENT 'uv����',
  PRIMARY KEY (`id`),
  INDEX `recordDate` (`recordDate`)
)
COMMENT='C���û�uvͳ��';