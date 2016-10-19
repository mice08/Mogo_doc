/* Database name `mogoroomdb` , 修改字典表区域排序*/
USE mogoroomdb;

#删除北京旧数据
DELETE from comm_dictionary where groupName = 'SEARCH_ORDER_BJ';



#重新初始化北京数据
 INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('chaoyang','SEARCH_ORDER_BJ',1,'朝阳','20',1,NULL,NULL),
 ('haiding','SEARCH_ORDER_BJ',2,'海淀','21',1,NULL,NULL),
 ('changping','SEARCH_ORDER_BJ',3,'昌平','30',1,NULL,NULL),
 ('fengtai','SEARCH_ORDER_BJ',4,'丰台','26',1,NULL,NULL),
 ('yanjiao','SEARCH_ORDER_BJ',5,'燕郊','17',1,NULL,NULL),
 ('dongcheng','SEARCH_ORDER_BJ',6,'东城','22',1,NULL,NULL),
 ('xicheng','SEARCH_ORDER_BJ',7,'西城','23',1,NULL,NULL),
 ('tongzhou','SEARCH_ORDER_BJ',8,'通州','27',1,NULL,NULL),
 ('shijingshan','SEARCH_ORDER_BJ',9,'石景山','28',1,NULL,NULL),
 ('daxing','SEARCH_ORDER_BJ',10,'大兴','31',1,NULL,NULL),
 ('bejinzhoubia','SEARCH_ORDER_BJ',11,'北京周边','82',1,NULL,NULL),
 ('congwen','SEARCH_ORDER_BJ',12,'崇文','24',1,NULL,NULL),
 ('xuanwu','SEARCH_ORDER_BJ',13,'宣武','25',1,NULL,NULL),
 ('fangshan','SEARCH_ORDER_BJ',14,'房山','29',1,NULL,NULL),
 ('shunyi','SEARCH_ORDER_BJ',15,'顺义','32',1,NULL,NULL),
 ('miyun','SEARCH_ORDER_BJ',16,'密云','33',1,NULL,NULL),
 ('huairou','SEARCH_ORDER_BJ',17,'怀柔','34',1,NULL,NULL),
 ('yanqing','SEARCH_ORDER_BJ',18,'延庆','35',1,NULL,NULL),
 ('pinggu','SEARCH_ORDER_BJ',19,'平谷','36',1,NULL,NULL),
 ('mentougou','SEARCH_ORDER_BJ',20,'门头沟','37',1,NULL,NULL);


