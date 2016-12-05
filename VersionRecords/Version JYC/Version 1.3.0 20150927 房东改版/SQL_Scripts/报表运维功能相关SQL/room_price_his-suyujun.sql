CREATE TABLE room_price_his (
	id  int(11) NOT NULL AUTO_INCREMENT COMMENT '����۸���ʷ��id' ,
	roomId  int(11) NOT NULL COMMENT '����id' ,
	priceType int(1) NOT NULL COMMENT '�۸�����(�ο��ֵ��groupName=priceType)',
	salePrice decimal  NOT NULL COMMENT '���ۼ۸�',
	roomPrice decimal  NOT NULL COMMENT '����۸�',
	according  INT(1) NOT NULL COMMENT '�������ݣ�0��������1�����',
	adjustRange decimal NOT NULL COMMENT '��������' ,
	beginTime datetime COMMENT '�۸�Ķ���ʼʱ��',
	endTime datetime COMMENT '�۸�Ķ���ֹʱ��',
	createTime  datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
	createBy INT(11)  NOT NULL COMMENT '�۸�Ķ���ID��Ա����ΪԱ��ID��������Ϊ����ID',
	createByType int(1) NOT NULL COMMENT '�۸�Ķ���Դ��0��������1��Ա�� ��',
	remark	varchar(200) COMMENT '�۸��޸ı�ע',
	PRIMARY KEY (id)
);



INSERT INTO room_price_his (roomId,priceType,salePrice,roomPrice,according,adjustRange,beginTime,endTime,createTime,createBy,createByType,remark) 
SELECT fr.id,1,IFNULL(fr.salePrice,0),IFNULL(fr.roomPrice,0),1,0,fr.updateTime,NULL,NOW(),0,0,'���ݳ�ʼ��' 
	FROM flat_room fr WHERE fr.`status` = 1;

INSERT INTO room_price_his (roomId,priceType,salePrice,roomPrice,according,adjustRange,beginTime,endTime,createTime,createBy,createByType,remark) 
SELECT fr.id,2,IFNULL(fr.salePrice2,0),IFNULL(fr.roomPrice2,0),1,0,fr.updateTime,NULL,NOW(),0,0,'���ݳ�ʼ��'
	FROM flat_room fr WHERE fr.`status` = 1;