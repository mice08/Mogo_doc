/*初始化BS系统报表菜单回滚*/
USE mogoroomdb;
BEGIN;

 SET @exportId = (SELECT id FROM `perm_functioninfo` WHERE fname = '月付漏斗报表导出');
    DELETE FROM `perm_functioninfo` WHERE id = @exportId;
    
    SET @chartId = (SELECT id FROM `perm_functioninfo` WHERE fname = '蘑菇月付转化率图线');
    DELETE FROM `perm_functioninfo` WHERE id = @chartId;
    
    SET @listId = (SELECT id FROM `perm_functioninfo` WHERE fname = '蘑菇月付转化漏斗列表');
    DELETE FROM `perm_functioninfo` WHERE id = @listId;

COMMIT;