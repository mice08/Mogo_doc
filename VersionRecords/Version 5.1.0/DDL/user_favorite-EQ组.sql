/* Database name `mogoroomdb` , �û��ղ�(Ʒ��ϲ��)��¼������device_uuid�ֶ� */
USE mogoroomdb;
ALTER TABLE user_favorite ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '�ն��豸Ψһ��ʶ(���app��UUID,pc��wap�������cookie(��������ɵ�uuid))';
ALTER TABLE user_favorite ADD COLUMN channelDtl INT(3) DEFAULT NULL COMMENT '������ϸ(�ο��ֵ������:regChannelDtl)';