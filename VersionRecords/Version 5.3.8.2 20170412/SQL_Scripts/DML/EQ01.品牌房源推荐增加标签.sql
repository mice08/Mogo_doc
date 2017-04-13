/* Database name `mogoroomdb` 品牌房源推荐增加标签*/
use mogoroomdb;

/** 1.添加coms_hottab初始数据4条，分别是APP、PC在杭州、南京的标签**/
INSERT INTO `coms_hottab` (`id`,`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('464', 'PC品牌主页推荐房源标签', '0', '179', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`, `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('465', 'APP品牌主页推荐房源标签', '0', '179', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`,`name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('466', 'PC品牌主页推荐房源标签', '0', '315', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'PC品牌主页推荐房源标签', NULL, '1', '1', 'PC品牌主页推荐房源标签', NULL, '0', '', '0', '');
INSERT INTO `coms_hottab` (`id`, `name`, `seq`, `cityId`, `onlineTime`, `createBy`, `createTime`, `updateBy`, `updateTime`, `tabType`, `brief`, `description`, `status`, `valid`, `remark`, `picGroupId`, `showNum`, `cssStyle`, `contextId`, `hyperlink`) VALUES ('467', 'APP品牌主页推荐房源标签', '0', '315', NOW(), '2000082', NOW(), NULL, NOW(), '2', 'APP品牌主页推荐房源标签', NULL, '1', '1', 'APP品牌主页推荐房源标签', NULL, '0', '', '0', '');

/** 2.添加标签与menu的关系4条数据 **/
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('464', '212004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('465', '312004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('466', '212004', '0', '1');
INSERT INTO `coms_hottab_menu_rel` ( `hottabId`, `menucode`, `pageview`, `status`) VALUES ('467', '312004', '0', '1');