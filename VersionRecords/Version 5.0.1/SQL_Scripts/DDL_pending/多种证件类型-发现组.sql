use mogoroomdb;
/*�޸Ĺ��ұ� �������Ҵ����д*/

ALTER TABLE `city_country`
ADD COLUMN `code`  varchar(50) NULL COMMENT '���Ҵ���' AFTER `icon`;


/*�޸ķ����� ����֤������ ����*/
ALTER TABLE `user_landlord`
ADD COLUMN `card_type`  varchar(20) NULL   COMMENT '֤������' AFTER `sex`,
ADD COLUMN `nationality`  int(11) NULL  COMMENT '����' AFTER `card_type`;



/*�޸ķ�����ʷ�� ����֤������ ����*/
ALTER TABLE `user_landlord_his`
ADD COLUMN `card_type`  varchar(20) NULL  COMMENT '֤������' AFTER `sex`,
ADD COLUMN `nationality`  int(11) NULL  COMMENT '����' AFTER `card_type`;