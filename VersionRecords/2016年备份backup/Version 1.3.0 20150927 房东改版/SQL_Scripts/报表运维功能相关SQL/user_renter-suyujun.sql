ALTER TABLE `user_renter`
ADD COLUMN `isBlack`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '�Ƿ��������0:��1:��',
ADD COLUMN `blackRemark` varchar(1000) NULL COMMENT '��ʾΪ����������',
ADD COLUMN `remark`  varchar(1000) NULL COMMENT '��ͱ�ע';