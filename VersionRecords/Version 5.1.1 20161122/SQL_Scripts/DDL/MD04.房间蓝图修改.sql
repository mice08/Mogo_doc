/* Database name `mogoroomdb`房间蓝图修改 */

use mogoroomdb;
/*集中式房间蓝图表结构调整*/
ALTER TABLE flat_mansion_draft ADD COLUMN valid tinyint(1) DEFAULT '1' COMMENT '是否有效(0:否  1:是 )';
ALTER TABLE flat_mansion_draft DROP COLUMN flatsTypeId;
