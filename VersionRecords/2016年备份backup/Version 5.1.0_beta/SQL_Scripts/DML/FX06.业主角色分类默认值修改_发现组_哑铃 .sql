/*角色分类数据初始化*/
use mogoroomdb;

ALTER TABLE perm_role ALTER COLUMN roleGroup
SET DEFAULT '默认';