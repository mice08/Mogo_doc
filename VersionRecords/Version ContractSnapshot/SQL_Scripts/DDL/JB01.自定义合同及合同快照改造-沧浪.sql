use mogoroomdb;

/*���ճ��� +1024 Ŀǰ33��key,valueԤ����Լ100���� */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(4096) COMMENT 'ǩ����ͬʱ�ĺ�ͬ����json' AFTER `templetId`;

/*��ͬ��-(����)�󶨺�ͬģ�壬templetType·�ɿ���*/
ALTER TABLE `cntr_salecontract` ADD COLUMN `templetCode`  int NULL COMMENT 'ģ��code(��)' AFTER `confirmDate`;

/*ģ�����4���ֶΣ����2���ֶε�����*/
ALTER TABLE `cntr_contract_templet`
MODIFY COLUMN `templetCode`  varchar(20) NOT NULL COMMENT '��ͬģ����루��ţ�' AFTER `templetName`,
MODIFY COLUMN `status`  tinyint(1) NOT NULL COMMENT '״̬,-1ͣ�ã����� 0 ͣ�� 1����' AFTER `templetPath`,
ADD COLUMN `templetType`  tinyint(1) NULL COMMENT '1:ͨ�ã�ϵͳ�� 2:������˽�У�3:��ʷ  4��ֽ�� 5������' AFTER `templetPath`,
ADD COLUMN `templetStatus`  tinyint(1) NULL COMMENT '1:������Ӫ��2:��Ч������ȷ�ϣ�' AFTER `templetType`,
ADD COLUMN `remark`  varchar(128) NULL COMMENT '��ע',
ADD COLUMN `valid`  tinyint(1) NULL COMMENT '0����Ч 1����Ч';