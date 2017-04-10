/* Database name `mogoroomdb` 品牌主页推荐房源增加标签*/
use mogoroomdb;
/** 1.添加coms_hottab初始数据4条，分别是APP、PC在北京、深圳的标签**/
INSERT INTO `coms_hottab` ( `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ( 'PC品牌主页推荐房源标签', '0', '131', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` ( `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ( 'APP品牌主页推荐房源标签', '0', '131', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` ( `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ( 'PC品牌主页推荐房源标签', '0', '340', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` ( `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ( 'APP品牌主页推荐房源标签', '0', '340', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');

/** 2.添加标签与menu的关系4条数据 **/
INSERT INTO `coms_hottab_menu_rel` (`hottabId`, `menucode`, `pageview`, `status`) select id,212004,0,1 from coms_hottab where name in ('PC品牌主页推荐房源标签') and cityid in (131,340);
INSERT INTO `coms_hottab_menu_rel` (`hottabId`, `menucode`, `pageview`, `status`) select id,312004,0,1 from coms_hottab where name in ('APP品牌主页推荐房源标签') and cityid in (131,340);
