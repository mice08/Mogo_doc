/**�����������ͷ�������**/
use mogoroomdb;
ALTER TABLE `mesg_push_record` ADD COLUMN msgId      BIGINT     DEFAULT NULL COMMENT '���������ڲ���ϢID';
ALTER TABLE `mesg_push_record` ADD COLUMN sendNo     INT        DEFAULT NULL COMMENT '������Ϣ�������κ�';
ALTER TABLE `mesg_push_record` ADD COLUMN recvStatus tinyint    DEFAULT NULL COMMENT '����״̬(0:δ���� 1:����)';
