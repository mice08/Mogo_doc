/*  Database name `bizd`  BIZD 题目表数据初始化 */
use bizd;
BEGIN;

insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('1','房东系统使用情况','managementTool','管理工具','label','1','一级管理工具','1',NULL,'100001',NULL,'-1','-1','2017-02-08 14:25:32','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('2','房东系统使用情况','manuscripts','手抄本','checkbox','1','二级手抄本','2',NULL,'10000101','1','-1','-1','2017-02-08 14:31:25','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('3','房东系统使用情况','excel','Excel','checkbox','2','二级excel','2',NULL,'10000102','1','-1','-1','2017-02-09 11:42:19','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('4','房东系统使用情况','hotelManagementSys','酒店管理系统','checkbox','3','二级酒店管理系统','2',NULL,'10000103','1','-1','-1','2017-02-09 11:42:19','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('5','房东系统使用情况','apartmentManagementSys','公寓管理系统','checkbox','4','二级公寓管理系统','2',NULL,'10000104','1','-1','-1','2017-02-09 11:42:19','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('6','房东系统使用情况','managementElse','其他','checkbox','5','二级公寓管理系统','2',NULL,'10000104','1','-1','-1','2017-02-09 11:42:19','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('7','房东系统使用情况','managementElseInput','','input','6','二级其他输入','2',NULL,'10000104','1','-1','-1','2017-02-09 11:48:11','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('8','房东系统使用情况','cooperationObject','现合作对象','label','2','一级现合作对象','1',NULL,'100002',NULL,'-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('9','房东系统使用情况','cooperationObjectNone','无','checkbox','1','二级无合作对象','2',NULL,'10000201','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('10','房东系统使用情况','baletu','巴乐兔','checkbox','2','二级巴乐兔','2',NULL,'10000202','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('11','房东系统使用情况','shuidiguanjia','水滴管家','checkbox','3','二级水滴管家','2',NULL,'10000203','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('12','房东系统使用情况','huifenqi','会分期','checkbox','4','二级水滴管家','2',NULL,'10000204','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('13','房东系统使用情况','cooperationObjectElse','其他','checkbox','5','二级合作对象其他','2',NULL,'10000205','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('14','房东系统使用情况','cooperationObjectElseInput','','input','6','二级合作对象其他输入','2',NULL,'10000206','8','-1','-1','2017-02-09 14:05:55','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('15','房东系统使用情况','flowPlatform','合作平台','label','3','一级合作平台','1',NULL,'100003',NULL,'-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('16','房东系统使用情况','flowPlatformNone','无','checkbox','1','二级无合作平台','2',NULL,'10000301','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('17','房东系统使用情况','58tongcheng','58同城','checkbox','2','二级58同城','2',NULL,'10000302','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('18','房东系统使用情况','baixingwang','百姓网','checkbox','3','二级百姓网','2',NULL,'10000303','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('19','房东系统使用情况','anjuke','安居客','checkbox','4','二级安居客','2',NULL,'10000304','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('20','房东系统使用情况','soufangwang','搜房网','checkbox','5','二级搜房网','2',NULL,'10000305','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('21','房东系统使用情况','flowPlatformElse','其他','checkbox','6','二级流量平台其他','2',NULL,'10000306','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('22','房东系统使用情况','flowPlatformElseInput','','input','7','二级流量平台其他输入','2',NULL,'10000307','15','-1','-1','2017-02-09 14:19:47','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('23','房东系统使用情况','financialProducts','金融产品','label','4','一级金融产品','1',NULL,'100004',NULL,'-1','-1','2017-02-09 14:31:41','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('24','房东系统使用情况','financialProductsNone','无','checkbox','1','二级无金融产品','2',NULL,'10000401','23','-1','-1','2017-02-09 14:31:41','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('25','房东系统使用情况','yingjia','盈家','checkbox','2','二级盈家','2',NULL,'10000402','23','-1','-1','2017-02-09 14:31:41','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('26','房东系统使用情况','baletu','巴乐兔','checkbox','3','二级巴乐兔','2',NULL,'10000403','23','-1','-1','2017-02-09 14:31:41','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('27','房东系统使用情况','pinganhaofang','平安好房','checkbox','4','二级平安好房','2',NULL,'10000404','23','-1','-1','2017-02-09 14:31:41','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('28','房东系统使用情况','fangsiling','房司令','checkbox','5','二级房司令','2',NULL,'10000405','23','-1','-1','2017-02-09 14:31:42','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('29','房东系统使用情况','financialProductsElse','其他','checkbox','6','二级其他','2',NULL,'10000406','23','-1','-1','2017-02-09 14:31:42','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('30','房东系统使用情况','financialProductsElseInput','','input','7','二级其他输入','2',NULL,'10000407','23','-1','-1','2017-02-09 14:31:42','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('37','房东系统使用情况','cooperationDemand','合作需求','label','6','一级合作需求','1',NULL,'100006',NULL,'-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('38','房东系统使用情况','system','系统','checkbox','1','二级系统合作需求','2',NULL,'10000601','37','-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('39','房东系统使用情况','flow','流量','checkbox','2','二级流量合作需求','2',NULL,'10000602','37','-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('40','房东系统使用情况','finance','金融','checkbox','3','二级金融合作需求','2',NULL,'10000603','37','-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('41','房东系统使用情况','cooperationDemandElse','其他','checkbox','4','二级其他合作需求','2',NULL,'10000604','37','-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('42','房东系统使用情况','cooperationDemandElseInput','','input','5','二级其他合作需求输入','2',NULL,'10000605','37','-1','-1','2017-02-09 15:09:15','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('43','房东系统使用情况','remark','备注','label','7','一级备注','1',NULL,'100007',NULL,'-1','-1','2017-02-09 15:11:54','-1','-1',NULL,'1');
insert into `bizd_question` (`id`, `paperChannel`, `field`, `fieldName`, `fieldType`, `sort`, `description`, `level`, `qtype`, `qcode`, `parentId`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`, `valid`) values('44','房东系统使用情况','remarkInput','','input','1','一级备注','2',NULL,'10000701','43','-1','-1','2017-02-09 15:11:54','-1','-1',NULL,'1');

COMMIT;
