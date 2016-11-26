/* Database name `mogoroomdb`, 房源积分明细表+房源附属表增加roomId字段的唯一索引 */
USE mogoroomdb;
CREATE UNIQUE INDEX un_code ON find_roomscore_detail(roomId);
CREATE UNIQUE INDEX un_code ON find_room_attachment(roomId);