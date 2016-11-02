/*小区基准信息表添加字段*/
USE mogoroomdb;


ALTER TABLE risk_communitybase ADD COLUMN landlordNum INT(6) COMMENT  '房东数量',
ADD COLUMN flatShareRoomNum INT(8) COMMENT '分散式合租房间数量',
ADD COLUMN entireRentRoomNum INT(8) COMMENT '分散式整租房间数量',
ADD COLUMN entireRentAvgArea INT(4) COMMENT '分散式整租房间平均面积',
ADD COLUMN entireRentAvgPrice INT(4) COMMENT '分散式整租房间平均租金',
ADD COLUMN entireRentUnitPrice INT(6) COMMENT '分散式整租房间每平米单价';