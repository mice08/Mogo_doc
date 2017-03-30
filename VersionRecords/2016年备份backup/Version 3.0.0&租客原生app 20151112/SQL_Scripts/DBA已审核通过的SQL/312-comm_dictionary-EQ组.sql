/*  Database name `mogoroomdb` ，`comm_dictionary`数据修改*/
use mogoroomdb;

INSERT INTO `comm_dictionary` VALUES (501,'appDDversion-1','appDDversion',1,'1','1.0',1,NULL,'appDDversion-1');


DELETE FROM comm_dictionary WHERE groupname IN ('payType','pay_ByThird','pay_ByFund');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('payType-1','payType','1','1','选择付款方式','1',NULL,'pay_ByThird');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('payType-2','payType','2','2','可用余额一并支付','1',NULL,'pay_ByFund');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('pay_ByThird-1','pay_ByThird','1','1','支付宝支付','1',NULL,'alipay');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('pay_ByThird-2','pay_ByThird','2','2','微信支付','1',NULL,'wx');
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('pay_ByFund-1','pay_ByFund','1','1','余额支付','0',NULL,'fund');


DELETE FROM comm_dictionary WHERE groupname ='msgico';
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('weixiu.png', 'msgico', '1', '4', '售后维修',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('tuifang.png', 'msgico', '1', '7', '退房',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('qianyuedan.png', 'msgico', '1', '3', '签约单',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('yudingdan.png', 'msgico', '1', '2', '预定单',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('yuyuedan.png', 'msgico', '1', '1', '预约单',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('qiankuan.png', 'msgico', '1', '5', '资金',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('gonggao.png', 'msgico', '1', '6', '公共',''); 



/**删除重复银行**/
DELETE FROM comm_dictionary WHERE groupName = 'bank' AND CODE = 'bank-42';
DELETE FROM comm_dictionary WHERE groupName = 'bank' AND CODE = 'bank-39';
/**更新名字**/
UPDATE comm_dictionary SET VALUE = '广州银行' WHERE groupName = 'bank' AND CODE = 'bank-25' AND VALUE = '广州市商业银行';
UPDATE comm_dictionary SET VALUE = '晋城银行' WHERE groupName = 'bank' AND CODE = 'bank-44' AND VALUE = '晋城市商业银行';
UPDATE comm_dictionary SET VALUE = '浦发银行' WHERE groupName = 'bank' AND CODE = 'bank-43' AND VALUE = '浦东发展银行';
UPDATE comm_dictionary SET VALUE = '广发银行' WHERE groupName = 'bank' AND CODE = 'bank-23' AND VALUE = '广东发展银行';
UPDATE comm_dictionary SET VALUE = '上海农商银行' WHERE groupName = 'bank' AND CODE = 'bank-41' AND VALUE = '上海农村商业银行';
UPDATE comm_dictionary SET VALUE = '温州银行' WHERE groupName = 'bank' AND CODE = 'bank-49' AND VALUE = '温州市商业银行';
UPDATE comm_dictionary SET VALUE = '银联支付' WHERE groupName = 'bank' AND CODE = 'bank-47' AND VALUE = '银联卡';
UPDATE comm_dictionary SET VALUE = '中国工商银行' WHERE groupName = 'bank' AND CODE = 'bank-32' AND VALUE = '工商银行';
UPDATE comm_dictionary SET VALUE = '中国光大银行' WHERE groupName = 'bank' AND CODE = 'bank-10' AND VALUE = '光大银行';
UPDATE comm_dictionary SET VALUE = '中国建设银行' WHERE groupName = 'bank' AND CODE = 'bank-7' AND VALUE = '建设银行';
UPDATE comm_dictionary SET VALUE = '中国民生银行' WHERE groupName = 'bank' AND CODE = 'bank-15' AND VALUE = '民生银行';
UPDATE comm_dictionary SET VALUE = '中国农业银行' WHERE groupName = 'bank' AND CODE = 'bank-1' AND VALUE = '农业银行';
UPDATE comm_dictionary SET VALUE = '中国邮政储蓄银行' WHERE groupName = 'bank' AND CODE = 'bank-35' AND VALUE = '中国邮储银行';
/**插入图标配置（有银行图标的，32个）**/
DELETE FROM comm_picture_group WHERE picGroupName='银行图标URL';
INSERT INTO `comm_picture_group` (`picGroupType`, `picGroupName`, `createTime`, `createByType`, `createBy`, `remark`) VALUES('2','银行图标URL',NOW(),'4','-1',NULL);
DELETE FROM comm_picture WHERE picGroupId=2;
INSERT INTO comm_picture(NAME,url,picgroupid,create_time,create_by_type,create_by,remark)
(
SELECT fcode,CONCAT('http://image.mogoroom.com/common/bankIcon/',fcode,'.png'),2,NOW(),4,-1,CONCAT('http://image.mogoroom.com/common/bankColor/red.png#http://image.mogoroom.com/common/bankBackground/',fcode,'_BacWaterMark.png') FROM comm_dictionary WHERE groupName = 'bank' AND VALUE  IN(
'上海农商银行','上海银行','中信银行','中国光大银行','中国农业银行','中国工商银行','中国建设银行','中国民生银行',
'中国邮政储蓄银行','中国银行','交通银行','兴业银行','北京银行','华夏银行','南京银行','宁波银行',
'平安银行','广发银行','广州银行','徽商银行','招商银行','晋城银行','杭州银行',
'汉口银行','浙商银行','浙江稠州商业银行','浦发银行','渤海银行','温州银行','重庆三峡银行','银联支付',
'长沙银行')
);

/**配置背景色**/
UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/orange.png#http://image.mogoroom.com/common/bankBackground/SZPAB_BacWaterMark.png'
WHERE NAME='SZPAB' AND picgroupid=2;

UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/yellow.png#http://image.mogoroom.com/common/bankBackground/NBCB_BacWaterMark.png'
WHERE NAME='NBCB' AND picgroupid=2;

UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/yellow.png#http://image.mogoroom.com/common/bankBackground/WZCB_BacWaterMark.png'
WHERE NAME='WZCB' AND picgroupid=2;

UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/green.png#http://image.mogoroom.com/common/bankBackground/ABC_BacWaterMark.png'
WHERE NAME='ABC' AND picgroupid=2;

UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/green.png#http://image.mogoroom.com/common/bankBackground/PSBC_BacWaterMark.png'
WHERE NAME='PSBC' AND picgroupid=2;

UPDATE comm_picture 
SET remark=CONCAT('http://image.mogoroom.com/common/bankColor/blue.png#http://image.mogoroom.com/common/bankBackground/',NAME,'_BacWaterMark.png')
WHERE NAME IN ('CBHB','GZCB','HKBCHINA','HCCB','COMM','SPDB','SHRCB','BOS','CIB','CMBC','CCQTGB') AND picgroupid=2;

UPDATE comm_picture 
SET remark='http://image.mogoroom.com/common/bankColor/purple.png#http://image.mogoroom.com/common/bankBackground/CEB_BacWaterMark.png'
WHERE NAME='CEB' AND picgroupid=2;

/***插入图标配置（没有银行图标的，17个，只设置背景色即可）**/
INSERT INTO comm_picture(NAME,url,picgroupid,create_time,create_by_type,create_by,remark)
(
SELECT fcode,'',2,NOW(),4,-1,'http://image.mogoroom.com/common/bankColor/red.png'
FROM comm_dictionary WHERE groupName = 'bank' AND VALUE  NOT IN(
'上海农商银行','上海银行','中信银行','中国光大银行','中国农业银行','中国工商银行','中国建设银行','中国民生银行',
'中国邮政储蓄银行','中国银行','交通银行','兴业银行','北京银行','华夏银行','南京银行','宁波银行',
'平安银行','广发银行','广州银行','徽商银行','招商银行','晋城银行','杭州银行',
'汉口银行','浙商银行','浙江稠州商业银行','浦发银行','渤海银行','温州银行','重庆三峡银行','银联支付',
'长沙银行')
);