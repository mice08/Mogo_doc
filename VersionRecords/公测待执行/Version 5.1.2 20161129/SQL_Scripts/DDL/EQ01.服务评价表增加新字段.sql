/* Database name `mogoroomdb`， 服务评价表新增看房状态 */

use mogoroomdb;

ALTER TABLE `supp_service_evaluate` ADD look_room_status TINYINT(1) DEFAULT 0 COMMENT '看房状态(0：不看房，1：看房)';