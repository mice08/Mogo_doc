use mogoroomdb;

BEGIN;
UPDATE comm_dictionary SET sort = 1 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '��Ԣ��';
UPDATE comm_dictionary SET sort = 6 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '�Ϲ���';
UPDATE comm_dictionary SET sort = 7 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '����';
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-5','flatType',2,5,'����',1,'flatType-5');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-6','flatType',4,6,'��ʽ��Ū',1,'flatType-6');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-7','flatType',5,7,'�ĺ�Ժ',1,'flatType-7');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-8','flatType',8,8,'����',1,'flatType-8');
COMMIT;