/* Database name `mogoroomdb` 品牌房源推荐增加标签*/
use mogoroomdb;

/** 1.回滚标签与menu的关系4条数据 **/
delete from coms_hottab_menu_rel where hottabId in (select id from coms_hottab where cityId in(75,132) and name in('PC品牌主页推荐房源标签','APP品牌主页推荐房源标签'));
/** 2.回滚APP、PC在杭州、南京的标签**/
delete from coms_hottab where cityId in(75,132) and name in('PC品牌主页推荐房源标签','APP品牌主页推荐房源标签');
