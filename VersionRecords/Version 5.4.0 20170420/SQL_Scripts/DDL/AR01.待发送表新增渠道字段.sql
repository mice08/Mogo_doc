
/** mesgpush�����ͱ���������������������ʾ����push ���������͵��Ǹ��ն������ **/
use mogoroomdb;

ALTER TABLE `mesg_push_tosend` ADD COLUMN `sendChannel` INT(11) NULL COMMENT '��Ϣ��������(�ο��ֵ��ChannelEnumö��)';