/* ���ݿ�mogoroomdb�������ֻ������ؿ�� */
use mogoroomdb;

--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_renter`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '��������,�����ֵ��comm_dictionaryֵgroupName=channel' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2'  COMMENT '������ϸ,�����ֵ��comm_dictionaryֵgroupName=regChannelDtl' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر���' AFTER `regChannelDtl`;

--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_info`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '��������,�����ֵ��comm_dictionaryֵgroupName=channel' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT '������ϸ,�����ֵ��comm_dictionaryֵgroupName=regChannelDtl' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر��� ������comm_mobile_city.areaCode ����Ҫ�ֻ�ǰ7λ������� ��֤Ψһ' AFTER `regChannelDtl`;


--����ֻ����������߿��
CREATE TABLE `comm_mobile_city` (
	`id` INT(11) NOT NULL COMMENT '����ID',
	`mobileNumber` VARCHAR(20) NULL DEFAULT NULL COMMENT '�ֻ���',
	`mobileArea` VARCHAR(50) NULL DEFAULT NULL COMMENT '������',
	`mobileType` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ֻ�����',
	`areaCode` VARCHAR(10) NULL DEFAULT NULL COMMENT '������',
	`postCode` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ʱ�',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�⻧�ֻ������ر�';
