/* Database name `mogoroomdb`， 房间表及房间历史表添加别名字段 */

use mogoroomdb;

ALTER TABLE `flat_room`  ADD COLUMN `alias`  VARCHAR(16) NULL   COMMENT '房间别名' ;


ALTER TABLE `flat_room_his`  ADD COLUMN `alias`  VARCHAR(16) NULL   COMMENT '房间别名' ;