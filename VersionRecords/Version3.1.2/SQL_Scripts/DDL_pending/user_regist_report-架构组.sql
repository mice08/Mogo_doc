--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_renter`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '1:���APP,2:BS��̨,3:����,4:����APP,5:����PC,6:��ʱ����,7:��̨����,8:��������,9:���WAP' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر���' AFTER `regChannelDtl`;

--����µ�������������ϸ�������� �ֶ�
ALTER TABLE `user_info`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '1:���APP,2:BS��̨,3:����,4:����APP,5:����PC,6:��ʱ����,7:��̨����,8:��������,9:���WAP' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر��� ������reg_mobile_city.areaCode ����Ҫ�ֻ�ǰ7λ������� ��֤Ψһ' AFTER `regChannelDtl`;


--����ֻ����������߿��
CREATE TABLE `user_mobile_city` (
	`id` INT(11) NOT NULL,
	`mobileNumber` VARCHAR(20) NULL DEFAULT NULL COMMENT '�ֻ���',
	`mobileArea` VARCHAR(50) NULL DEFAULT NULL COMMENT '������',
	`mobileType` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ֻ�����',
	`areaCode` VARCHAR(10) NULL DEFAULT NULL COMMENT '������',
	`postCode` VARCHAR(50) NULL DEFAULT NULL COMMENT '�ʱ�',
	PRIMARY KEY (`ID`)
);
ALTER TABLE `user_mobile_city` COMMENT='�⻧�ֻ������ر�';