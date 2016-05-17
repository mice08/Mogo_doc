use mogoroomdb;

ALTER TABLE `flat_room`
ADD COLUMN `mogoOnlineStatus`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '蘑菇上架下架状态。参考字典表的RoomMogoOnlineStatus groupName。' AFTER `onlineStatus`,
ADD COLUMN `mogoOfflineEndTime`  datetime NULL COMMENT '蘑菇下架状态的有效截止时间(超过之后下架状态无效)' AFTER `mogoOnlineStatus`,
ADD COLUMN `mogoOfflineMemo`  varchar(256) NULL COMMENT '蘑菇侧置房源为下架状态的备注' AFTER `mogoOfflineEndTime`;

ALTER TABLE `flat_roomstatetrans`
MODIFY COLUMN `statusType`  tinyint(4) NOT NULL COMMENT '房态类型（即维度)。1: 房东上下架状态类型、2:审核状态类型、3:占用状态类型、4: 蘑菇上下架状态类型' AFTER `id`;

ALTER TABLE `flat_roomstatetranshis`
ADD COLUMN `mogoOnlineStatus`  tinyint(4) NOT NULL COMMENT '迁移前的蘑菇上架下架状态。参考flat_room表的mogoOnlineStatus字段。' AFTER `onlineStatus`,
ADD COLUMN `mogoOfflineEndTime`  datetime NULL COMMENT '房态转移前的蘑菇下架状态有效截止时间' AFTER `mogoOnlineStatus`,
ADD COLUMN `toMogoOnlineStatus`   NULL COMMENT '迁移后的蘑菇上架下架状态。参考flat_room表的mogoOnlineStatus字段。' AFTER `toOnlineStatus`;
ADD COLUMN `toMogoOfflineEndTime`  datetime NULL COMMENT '房态转移后的蘑菇下架状态有效截止时间' AFTER `toMogoOnlineStatus`,




