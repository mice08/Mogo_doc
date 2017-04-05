
/*删除无效的组织结构 */

use mogoroomdb;

UPDATE 
  orga_org 
SET
  STATUS = 0 
WHERE orgname = '拓展二区（旧）' 