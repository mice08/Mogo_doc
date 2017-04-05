/* Database name `mogoroomdb` , 房源属性历史表添加地铁线ID集合字段 */
use modo_da;

alter table flat_attribute_his  ADD COLUMN `subwayIds`  VARCHAR(512)  COMMENT '地铁线ID集合，逗号分隔'  AFTER  `communityId`;