/*  Database name `mogoroomdb` ���û�APP�汾����������ֶ�*/
use mogoroomdb;

ALTER TABLE `comm_app_version` ADD COLUMN terminal_os varchar(20) not null comment '�ն˲���ϵͳ��iOS��Android' after channel,
ADD COLUMN updatetitle varchar(20) not null comment '�����汾�ı���' after forceUpdate,
ADD COLUMN createBy int(11) not null comment '������' after url,
ADD COLUMN createByType int(2) not null comment '���������ͣ��ο��ֵ��groupName=userType��' after createTime,
ADD COLUMN updateBy int(11) comment '�޸���' after createByType,
ADD COLUMN updateByType int(2) comment '�޸������ͣ��ο��ֵ��groupName=userType��' after updateTime,
ADD COLUMN status tinyint(1) not null comment 'ɾ����־��0ɾ����1δɾ��';
