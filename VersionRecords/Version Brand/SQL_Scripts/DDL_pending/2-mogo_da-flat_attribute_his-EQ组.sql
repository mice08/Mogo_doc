/* Database name `mogoroomdb` , ��Դ������ʷ����ӵ�����ID�����ֶ� */
use modo_da;

alter table flat_attribute_his  ADD COLUMN `subwayIds`  VARCHAR(512)  COMMENT '������ID���ϣ����ŷָ�'  AFTER  `communityId`;