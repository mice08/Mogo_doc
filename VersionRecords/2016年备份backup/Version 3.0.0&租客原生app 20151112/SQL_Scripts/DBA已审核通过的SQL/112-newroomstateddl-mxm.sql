use mogoroomdb;

DROP TABLE IF EXISTS `flat_roomStateTrans`;
CREATE TABLE IF NOT EXISTS `flat_roomStateTrans` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `statusType` TINYINT NOT NULL COMMENT '房态类型（即维度)。1: 上下架状态类型、2:审核状态类型、3:占用状态类型',
  `fromStatus` TINYINT NOT NULL COMMENT '迁移前的状态。',
  `busiType` INT NOT NULL COMMENT '状态迁移的触发事件id。参考comm_busitype表的busiType字段。',
  `toStatus` TINYINT NOT NULL COMMENT '迁移后的状态。',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8 COMMENT = '房间状态迁移表';

DROP TABLE IF EXISTS `flat_roomStateTransHis`;
CREATE TABLE IF NOT EXISTS `flat_roomStateTransHis` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `roomId` INT NOT NULL COMMENT '房间id。参考flat_room表id字段。',
  `onlineStatus` TINYINT NOT NULL COMMENT '迁移前的上架下架状态。参考flat_room表的onlineStatus字段。',
  `verifyStatus` TINYINT NOT NULL COMMENT '迁移前的审核状态。参考flat_room表的verifyStatus字段。',
  `availableStatus` TINYINT NOT NULL COMMENT '迁移前的房间占用状态。参考flat_room表的availableStatus字段。',
  `busiType` INT NOT NULL COMMENT '状态迁移的触发事件id。参考comm_busitype表的busiType字段。',
  `toOnlineStatus` TINYINT NOT NULL COMMENT '迁移后的上架下架状态。参考flat_room表的onlineStatus字段。',
  `toVerifyStatus` TINYINT NOT NULL COMMENT '迁移后的审核状态。参考flat_room表的verifyStatus字段。',
  `toAvailableStatus` TINYINT NOT NULL COMMENT '迁移后的房间占用状态。参考flat_room表的availableStatus字段。',
  `soDoneCode` INT NOT NULL COMMENT '业务记录id。参考comm_business_record表的id字段。',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8 COMMENT = '房源状态迁移履历表';

ALTER TABLE `flat_room`
ADD COLUMN `onlineStatus` TINYINT NOT NULL DEFAULT 2 COMMENT '上架下架状态。参考字段表的RoomOnlineStatus groupName。',
ADD COLUMN `verifyStatus` TINYINT NOT NULL DEFAULT 1 COMMENT '审核状态。参考字段表的RoomVerifyStatus groupName。',
ADD COLUMN `availableStatus` TINYINT NOT NULL DEFAULT 1 COMMENT '房间占用状态。参考字段表的RoomAvailableStatus groupName。';

ALTER TABLE `flat_room`
MODIFY COLUMN `onlineStatus`  tinyint(4) NOT NULL DEFAULT 2 COMMENT '上架下架状态。参考字段表的RoomOnlineStatus groupName。',
MODIFY COLUMN `verifyStatus`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '审核状态。参考字段表的RoomVerifyStatus groupName。' ,
MODIFY COLUMN `availableStatus`  tinyint(4) NOT NULL DEFAULT 1 COMMENT '房间占用状态。参考字段表的RoomAvailableStatus groupName。' ;

