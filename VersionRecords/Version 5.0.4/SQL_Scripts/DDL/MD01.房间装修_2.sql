use mogoroomdb;

/*房间标签表增加开始时间字段*/
ALTER TABLE flat_room_tag ADD COLUMN beginTime datetime NOT NULL COMMENT '开始时间' AFTER tagId;
