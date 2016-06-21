use mogoroomdb;

BEGIN;
UPDATE comm_dictionary SET sort = 1 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '公寓房';
UPDATE comm_dictionary SET sort = 6 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '老公房';
UPDATE comm_dictionary SET sort = 7 WHERE groupName = 'flatType' AND STATUS =1 AND VALUE = '老洋房';
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-5','flatType',2,5,'别墅',1,'flatType-5');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-6','flatType',4,6,'新式里弄',1,'flatType-6');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-7','flatType',5,7,'四合院',1,'flatType-7');
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('flatType-8','flatType',8,8,'其他',1,'flatType-8');
COMMIT;