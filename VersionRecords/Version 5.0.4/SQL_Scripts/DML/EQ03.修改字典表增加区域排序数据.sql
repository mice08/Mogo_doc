/* Database name `mogoroomdb` , �޸��ֵ����������*/
USE mogoroomdb;

#ɾ������������
DELETE from comm_dictionary where groupName = 'SEARCH_ORDER_BJ';



#���³�ʼ����������
 INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('chaoyang','SEARCH_ORDER_BJ',1,'����','20',1,NULL,NULL),
 ('haiding','SEARCH_ORDER_BJ',2,'����','21',1,NULL,NULL),
 ('changping','SEARCH_ORDER_BJ',3,'��ƽ','30',1,NULL,NULL),
 ('fengtai','SEARCH_ORDER_BJ',4,'��̨','26',1,NULL,NULL),
 ('yanjiao','SEARCH_ORDER_BJ',5,'�ོ','17',1,NULL,NULL),
 ('dongcheng','SEARCH_ORDER_BJ',6,'����','22',1,NULL,NULL),
 ('xicheng','SEARCH_ORDER_BJ',7,'����','23',1,NULL,NULL),
 ('tongzhou','SEARCH_ORDER_BJ',8,'ͨ��','27',1,NULL,NULL),
 ('shijingshan','SEARCH_ORDER_BJ',9,'ʯ��ɽ','28',1,NULL,NULL),
 ('daxing','SEARCH_ORDER_BJ',10,'����','31',1,NULL,NULL),
 ('bejinzhoubia','SEARCH_ORDER_BJ',11,'�����ܱ�','82',1,NULL,NULL),
 ('congwen','SEARCH_ORDER_BJ',12,'����','24',1,NULL,NULL),
 ('xuanwu','SEARCH_ORDER_BJ',13,'����','25',1,NULL,NULL),
 ('fangshan','SEARCH_ORDER_BJ',14,'��ɽ','29',1,NULL,NULL),
 ('shunyi','SEARCH_ORDER_BJ',15,'˳��','32',1,NULL,NULL),
 ('miyun','SEARCH_ORDER_BJ',16,'����','33',1,NULL,NULL),
 ('huairou','SEARCH_ORDER_BJ',17,'����','34',1,NULL,NULL),
 ('yanqing','SEARCH_ORDER_BJ',18,'����','35',1,NULL,NULL),
 ('pinggu','SEARCH_ORDER_BJ',19,'ƽ��','36',1,NULL,NULL),
 ('mentougou','SEARCH_ORDER_BJ',20,'��ͷ��','37',1,NULL,NULL);


