/* Database name `mogoroomdb` , 所有bs系统菜单选项的权限排序字段值乘10 */
use mogoroomdb;
UPDATE perm_functioninfo SET seq = seq*10 WHERE functionlevel IN (0,1,2) AND functionType=1;