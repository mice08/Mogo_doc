/* ���ݿ�mogoroomdb�������ֻ������ؿ�� */
use mogoroomdb;

--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_renter`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '��������(�����ֵ��comm_dictionaryֵgroupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2'  COMMENT '������ϸ(�����ֵ��comm_dictionaryֵgroupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر��� ������city.id ����Ҫ�ֻ�ǰ7λ������� ��֤Ψһ' AFTER `regChannelDtl`;

--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_info`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '��������(�����ֵ��comm_dictionaryֵgroupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT '������ϸ(�����ֵ��comm_dictionaryֵgroupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر��� ������city.id ����Ҫ�ֻ�ǰ7λ������� ��֤Ψһ' AFTER `regChannelDtl`;


--����ֻ����������߿��
CREATE TABLE `comm_mobile_city` (
	`id` INT(11) NOT NULL COMMENT '����ID',
	`mobileNumber` VARCHAR(20) NULL DEFAULT NULL COMMENT '�ֻ���',
	`mobileArea` VARCHAR(50) NULL DEFAULT NULL COMMENT '������',
	`mobileType` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ֻ�����',
	`areaCode` VARCHAR(10) NULL DEFAULT NULL COMMENT '������',
	`postCode` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ʱ�',
	PRIMARY KEY (`ID`)
<<<<<<< HEAD:VersionRecords/Version3.1.2/SQL_Scripts/DDL_pending/user_regist_report-架构组.sql
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�⻧�ֻ������ر�';

--���б���ӳ��б���
ALTER TABLE `city` ADD column `areaCode` VARCHAR(10) COMMENT '���б���(��Ӧcomm_mobile_city��areaCode�ֶ�)';
=======
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�ֻ������ر�';
>>>>>>> bbe9bbdef4d81536204d3ed3e348cca1ba11c0b2:VersionRecords/Version3.1.2/SQL_Scripts/DDL_reviewed/user_regist_report-架构组.sql
