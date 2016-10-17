/* Database name `mogoroomdb` , 新增字典表区域排序*/
USE mogoroomdb;

#新增字典表区域排序
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('xz69_pudongxinqu','SEARCH_ORDER_SH',1,'浦东新区','13',1,NULL,NULL),
 ('xz52_yangpuqu','SEARCH_ORDER_SH',2,'杨浦区','9',1,NULL,NULL),
 ('xz65_xuhuiqu','SEARCH_ORDER_SH',3,'徐汇区','3',1,NULL,NULL),
 ('xz61_huangpuqu','SEARCH_ORDER_SH',4,'黄浦区','2',1,NULL,NULL),
 ('xz66_changningqu','SEARCH_ORDER_SH',5,'长宁区','4',1,NULL,NULL),
 ('xz68_putuoqu','SEARCH_ORDER_SH',6,'普陀区','6',1,NULL,NULL),
 ('xz55_baoshanqu','SEARCH_ORDER_SH',7,'宝山区','11',1,NULL,NULL),
 ('xz60_zhabeiqu','SEARCH_ORDER_SH',8,'闸北区','7',1,NULL,NULL),
 ('xz67_jinganqu','SEARCH_ORDER_SH',9,'静安区','5',1,NULL,NULL),
 ('xz57_songjiangqu','SEARCH_ORDER_SH',10,'松江区','15',1,NULL,NULL),
 ('xz59_hongkouqu','SEARCH_ORDER_SH',11,'虹口区','8',1,NULL,NULL),
 ('xz54_jiadingqu','SEARCH_ORDER_SH',12,'嘉定区','12',1,NULL,NULL),
 ('xz56_qingpuqu','SEARCH_ORDER_SH',13,'青浦区','16',1,NULL,NULL),
 ('xz58_jinshanqu','SEARCH_ORDER_SH',14,'金山区','14',1,NULL,NULL),
 ('xz53_minhangqu','SEARCH_ORDER_SH',15,'闵行区','10',1,NULL,NULL),
 ('xz63_chongmingxian','SEARCH_ORDER_SH',16,'崇明县','18',1,NULL,NULL),
 ('xz51_fengxianqu','SEARCH_ORDER_SH',17,'奉贤区','17',1,NULL,NULL),
 ('xz64_shanghaizhoubia','SEARCH_ORDER_SH',18,'上海周边','81',1,NULL,NULL);


 INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('chaoyang','SEARCH_ORDER_BJ',1,'朝阳','20',1,NULL,NULL),
 ('haiding','SEARCH_ORDER_BJ',2,'海淀','21',1,NULL,NULL),
 ('changping','SEARCH_ORDER_BJ',11,'昌平','30',1,NULL,NULL),
 ('fengtai','SEARCH_ORDER_BJ',7,'丰台','26',1,NULL,NULL),
 ('yanjiao','SEARCH_ORDER_BJ',19,'燕郊','17',1,NULL,NULL),
 ('dongcheng','SEARCH_ORDER_BJ',3,'东城','22',1,NULL,NULL),
 ('xicheng','SEARCH_ORDER_BJ',4,'西城','23',1,NULL,NULL),
 ('tongzhou','SEARCH_ORDER_BJ',8,'通州','27',1,NULL,NULL),
 ('shijingshan','SEARCH_ORDER_BJ',9,'石景山','28',1,NULL,NULL),
 ('daxing','SEARCH_ORDER_BJ',12,'大兴','31',1,NULL,NULL),
 ('bejinzhoubia','SEARCH_ORDER_BJ',20,'北京周边','82',1,NULL,NULL),
 ('congwen','SEARCH_ORDER_BJ',5,'崇文','24',1,NULL,NULL),
 ('xuanwu','SEARCH_ORDER_BJ',6,'宣武','25',1,NULL,NULL),
 ('fangshan','SEARCH_ORDER_BJ',10,'房山','29',1,NULL,NULL),
 ('shunyi','SEARCH_ORDER_BJ',13,'顺义','32',1,NULL,NULL),
 ('miyun','SEARCH_ORDER_BJ',14,'密云','33',1,NULL,NULL),
 ('huairou','SEARCH_ORDER_BJ',15,'怀柔','34',1,NULL,NULL),
 ('yanqing','SEARCH_ORDER_BJ',16,'延庆','35',1,NULL,NULL),
 ('pinggu','SEARCH_ORDER_BJ',17,'平谷','36',1,NULL,NULL),
 ('mentougou','SEARCH_ORDER_BJ',18,'门头沟','37',1,NULL,NULL);



 INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
 VALUES
 ('xz73_nanshanqu','SEARCH_ORDER_SZ',1,'南山','57',1,NULL,NULL),
 ('xz75_baoanqu','SEARCH_ORDER_SZ',2,'宝安','59',1,NULL,NULL),
 ('xz72_futianqu','SEARCH_ORDER_SZ',3,'福田','56',1,NULL,NULL),
 ('xz74_yantianqu','SEARCH_ORDER_SZ',4,'盐田','58',1,NULL,NULL),
 ('xz79_longhuaxinqu','SEARCH_ORDER_SZ',5,'龙华新区','64',1,NULL,NULL),
 ('xz71_luohuqu','SEARCH_ORDER_SZ',6,'罗湖','55',1,NULL,NULL),
 ('xz76_longgangqu','SEARCH_ORDER_SZ',7,'龙岗','60',1,NULL,NULL),
 ('xz77_bujiqu','SEARCH_ORDER_SZ',8,'布吉','61',1,NULL,NULL),
 ('xz81_pingshanxinqu','SEARCH_ORDER_SZ',9,'坪山新区','62',1,NULL,NULL),
 ('xz78_guangmingxinqu','SEARCH_ORDER_SZ',10,'光明新区','63',1,NULL,NULL),
 ('xz80_dapengxinqu','SEARCH_ORDER_SZ',11,'大鹏新区','65',1,NULL,NULL);