CREATE TABLE room_price_his (
	id  int(11) NOT NULL AUTO_INCREMENT COMMENT '房间价格历史表id' ,
	roomId  int(11) NOT NULL COMMENT '房间id' ,
	priceType int(1) NOT NULL COMMENT '价格类型(参考字典表groupName=priceType)',
	salePrice decimal  NOT NULL COMMENT '销售价格',
	roomPrice decimal  NOT NULL COMMENT '房间价格',
	according  INT(1) NOT NULL COMMENT '调整依据，0按比例，1按金额',
	adjustRange decimal NOT NULL COMMENT '调整幅度' ,
	beginTime datetime COMMENT '价格改动开始时间',
	endTime datetime COMMENT '价格改动终止时间',
	createTime  datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
	createBy INT(11)  NOT NULL COMMENT '价格改动人ID，员工则为员工ID，房东则为房东ID',
	createByType int(1) NOT NULL COMMENT '价格改动来源，0：房东，1：员工 等',
	remark	varchar(200) COMMENT '价格修改备注',
	PRIMARY KEY (id)
);



INSERT INTO room_price_his (roomId,priceType,salePrice,roomPrice,according,adjustRange,beginTime,endTime,createTime,createBy,createByType,remark) 
SELECT fr.id,1,IFNULL(fr.salePrice,0),IFNULL(fr.roomPrice,0),1,0,fr.updateTime,NULL,NOW(),0,0,'数据初始化' 
	FROM flat_room fr WHERE fr.`status` = 1;

INSERT INTO room_price_his (roomId,priceType,salePrice,roomPrice,according,adjustRange,beginTime,endTime,createTime,createBy,createByType,remark) 
SELECT fr.id,2,IFNULL(fr.salePrice2,0),IFNULL(fr.roomPrice2,0),1,0,fr.updateTime,NULL,NOW(),0,0,'数据初始化'
	FROM flat_room fr WHERE fr.`status` = 1;