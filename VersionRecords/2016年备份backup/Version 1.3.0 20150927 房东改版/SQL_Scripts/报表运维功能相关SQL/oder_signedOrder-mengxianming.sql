ALTER TABLE `oder_signedOrder`
ADD COLUMN `signedManagerId`  int(11) NULL COMMENT '�ܼ�ID' AFTER `deadline`,
ADD COLUMN `signedManagerType`  int(2) NULL COMMENT '�ܼ�����(�ο��ֵ��groupName=userType)' AFTER `signedManagerId`;