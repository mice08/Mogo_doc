/*删除无用菜单*/

USE mogoroomdb;

UPDATE 
  perm_functioninfo 
SET
  STATUS = 0 
WHERE fname = '预约单微信信息统计' ;