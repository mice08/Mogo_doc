/* Database name `mogoroomdb` , 新增搜索引擎失败告警类型*/
use mogoroomdb;
INSERT INTO `opex_warntype` (`type`, `name`, `description`, `createBy`, `createTime`, `remark`) VALUES ('T006', '找房搜索引擎告警类型', '找房搜索引擎调动失败', '82', NOW(), '找房搜索引擎告警类型');