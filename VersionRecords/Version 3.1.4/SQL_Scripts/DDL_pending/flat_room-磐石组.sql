/* Database name `mogoroomdb`， flat_room_picture修改imageType字段的长度 */

alter table flat_room add column priceChangeTimes int(4) not null default 0 comment '价格变更次数';

alter table flat_room_his add column priceChangeTimes int(4) not null default 0 comment '价格变更次数';


