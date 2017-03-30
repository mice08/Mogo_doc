/* Database name `mogoroomdb` , 提交原因：新增了品牌主页推荐房源的单独管理功能-需要配置一些初始化数据*/
use mogoroomdb;

DELETE FROM coms_menu WHERE CODE = 212004 AND NAME='品牌主页房源推荐';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(212004,'品牌主页房源推荐','/cms/recommendQueryForBrandHomepage','3','2','2000082',NOW(),'1','1','3', '2', '1');

DELETE FROM coms_hottab WHERE NAME IN ('PC品牌主页推荐房源标签','APP品牌主页推荐房源标签') AND tabtype=2;
INSERT INTO `coms_hottab` (`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`) 
VALUES('PC品牌主页推荐房源标签','0','289',NOW(),'2000082',NOW(),2,'PC品牌主页推荐房源标签',NULL,'1','1','PC品牌主页推荐房源标签',NULL);
INSERT INTO `coms_hottab` (`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`) 
VALUES('APP品牌主页推荐房源标签','0','289',NOW(),'2000082',NOW(),2,'APP品牌主页推荐房源标签',NULL,'1','1','APP品牌主页推荐房源标签',NULL);

/**此语句必须在上面语句后执行。。。*/
DELETE FROM coms_hottab_menu_rel WHERE menucode IN (212004,312004);
INSERT INTO coms_hottab_menu_rel(hottabId,menucode,pageview,STATUS) 
VALUES
((SELECT t1.id FROM coms_hottab t1 WHERE t1.name='PC品牌主页推荐房源标签' AND tabtype=2),212004,0,1);
INSERT INTO coms_hottab_menu_rel(hottabId,menucode,pageview,STATUS) 
VALUES
((SELECT t1.id FROM coms_hottab t1 WHERE t1.name='APP品牌主页推荐房源标签' AND tabtype=2),312004,0,1);

/**此语句必须在上面语句后执行。。。*/
DELETE FROM `coms_hotbrand` WHERE brandtabid IN (
SELECT t1.id FROM coms_hottab t1 WHERE (t1.name='PC品牌主页推荐房源标签' OR t1.name='APP品牌主页推荐房源标签') AND t1.tabtype=2
);
INSERT INTO coms_hotbrand 
(brandtabid,brandid,STATUS,roomids,createBy,createBytype,createTime,remark,sort)
(
SELECT 
(SELECT t1.id FROM coms_hottab t1 WHERE t1.name='PC品牌主页推荐房源标签' AND t1.tabtype=2),
t3.brandid,t3.status,t3.roomids,'2000082',5,NOW(),"初始化-品牌主页推荐房源",0 FROM 
coms_hottab_menu_rel t1,
coms_hottab t2,coms_hotbrand t3 
WHERE t1.hottabid=t2.id AND t1.menucode=210017  AND t1.status=1 AND t2.status=1 AND t2.valid=1 AND 
t2.id = t3.brandtabid AND t3.status=1
);
INSERT INTO coms_hotbrand 
(brandtabid,brandid,STATUS,roomids,createBy,createBytype,createTime,remark,sort)
(
SELECT 
(SELECT t1.id FROM coms_hottab t1 WHERE t1.name='APP品牌主页推荐房源标签' AND t1.tabtype=2),
t3.brandid,t3.status,t3.roomids,'2000082',5,NOW(),"初始化-品牌主页推荐房源",0 FROM 
coms_hottab_menu_rel t1,
coms_hottab t2,coms_hotbrand t3 
WHERE t1.hottabid=t2.id AND t1.menucode=210017  AND t1.status=1 AND t2.status=1 AND t2.valid=1 AND 
t2.id = t3.brandtabid AND t3.status=1
);