/*�޸�Ĭ��ֵ��Ĭ��Ϊ0��������ʾ��*/
ALTER TABLE `oder_businessOrder`   
  CHANGE `payTotalAccount` `payTotalAccount` DOUBLE DEFAULT 0   COMMENT '��Ǯ�ܶ�',
  CHANGE `balanceAccount` `balanceAccount` DOUBLE DEFAULT 0   COMMENT '�����';

/*��ʼ������*/
UPDATE oder_businessOrder SET payTotalAccount= 0 WHERE payTotalAccount IS NULL;
UPDATE oder_businessOrder SET balanceAccount= 0 WHERE balanceAccount IS NULL;