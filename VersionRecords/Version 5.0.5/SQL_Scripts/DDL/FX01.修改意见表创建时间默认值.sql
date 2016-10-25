/* Database name `mogoroomdb`， 修改意见表创建时间默认值 */

use mogoroomdb;

ALTER TABLE `comm_suggestion` MODIFY COLUMN `createTime`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提出时间' AFTER `proposerPhone`;
