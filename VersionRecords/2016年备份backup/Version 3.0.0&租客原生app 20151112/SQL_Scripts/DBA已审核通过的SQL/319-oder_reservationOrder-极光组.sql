/* Database name `mogoroomdb` ��ԤԼ��������ֶ� */
use mogoroomdb;

ALTER TABLE `oder_reservationOrder`   
ADD COLUMN `hasVisited` INT(2) DEFAULT 0 NOT NULL  COMMENT '����Ƿ��ѿ��� 0:�� 1:��',
ADD COLUMN `landlordRemark` varchar(128) NULL  COMMENT '������ע����',
ADD COLUMN `hasAgreed` INT(2) DEFAULT 0 NOT NULL COMMENT '�����Ƿ�ͬ��Ԥ�� 0:�� 1:��';
