/* Database name `mogoroomdb` , 修改字典表区域排序*/
USE mogoroomdb;

#删除北京旧数据
DELETE from comm_dictionary where groupName = 'SEARCH_ORDER_BJ';



#重新初始化北京数据
 INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('chaoyang','SEARCH_ORDER_BJ',1,'朝阳','20',1,NULL,'chaoyang'),
 ('haiding','SEARCH_ORDER_BJ',2,'海淀','21',1,NULL,'haiding'),
 ('changping','SEARCH_ORDER_BJ',3,'昌平','30',1,NULL,'changping'),
 ('fengtai','SEARCH_ORDER_BJ',4,'丰台','26',1,NULL,'fengtai'),
 ('yanjiao','SEARCH_ORDER_BJ',5,'燕郊','38',1,NULL,'yanjiao'),
 ('dongcheng','SEARCH_ORDER_BJ',6,'东城','22',1,NULL,'dongcheng'),
 ('xicheng','SEARCH_ORDER_BJ',7,'西城','23',1,NULL,'xicheng'),
 ('tongzhou','SEARCH_ORDER_BJ',8,'通州','27',1,NULL,'tongzhou'),
 ('shijingshan','SEARCH_ORDER_BJ',9,'石景山','28',1,NULL,'shijingshan'),
 ('daxing','SEARCH_ORDER_BJ',10,'大兴','31',1,NULL,'daxing'),
 ('bejinzhoubia','SEARCH_ORDER_BJ',11,'北京周边','82',1,NULL,'bejinzhoubia'),
 ('congwen','SEARCH_ORDER_BJ',12,'崇文','24',1,NULL,'congwen'),
 ('xuanwu','SEARCH_ORDER_BJ',13,'宣武','25',1,NULL,'xuanwu'),
 ('fangshan','SEARCH_ORDER_BJ',14,'房山','29',1,NULL,'fangshan'),
 ('shunyi','SEARCH_ORDER_BJ',15,'顺义','32',1,NULL,'shunyi'),
 ('miyun','SEARCH_ORDER_BJ',16,'密云','33',1,NULL,'miyun'),
 ('huairou','SEARCH_ORDER_BJ',17,'怀柔','34',1,NULL,'huairou'),
 ('yanqing','SEARCH_ORDER_BJ',18,'延庆','35',1,NULL,'yanqing'),
 ('pinggu','SEARCH_ORDER_BJ',19,'平谷','36',1,NULL,'pinggu'),
 ('mentougou','SEARCH_ORDER_BJ',20,'门头沟','37',1,NULL,'mentougou');


