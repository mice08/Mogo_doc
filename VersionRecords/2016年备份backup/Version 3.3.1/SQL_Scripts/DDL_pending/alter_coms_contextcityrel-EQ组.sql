/* Database name `mogoroomdb`， 内容和行政区关联 v3.3.1 */

use mogoroomdb;

alter table coms_contextcityrel add column districtId int default null comment '行政区ID' after cityId;