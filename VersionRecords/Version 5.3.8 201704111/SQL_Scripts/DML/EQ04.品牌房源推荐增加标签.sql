/* Database name `mogoroomdb` 品牌主页推荐房源增加标签*/
use mogoroomdb;
/** 1.添加coms_hottab初始数据4条，分别是APP、PC在北京、深圳的标签**/
INSERT INTO `coms_hottab` (`id`,`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('460', 'PC品牌主页推荐房源标签', '0', '131', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`, `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('461', 'APP品牌主页推荐房源标签', '0', '131', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`,`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('462', 'PC品牌主页推荐房源标签', '0', '340', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`, `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('463', 'APP品牌主页推荐房源标签', '0', '340', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');

/** 2.添加标签与menu的关系4条数据 **/
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('460', '212004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('461', '312004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('462', '212004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('463', '312004', '0', '1');