/*С����׼��Ϣ������ֶ�*/
use mogoroomdb;


ALTER TABLE risk_communitybase ADD COLUMN landlordNum INT(6) COMMENT  '��������',
ADD COLUMN flatShareRoomNum INT(8) COMMENT '��ɢʽ���ⷿ������',
ADD COLUMN entireRentRoomNum INT(8) COMMENT '��ɢʽ���ⷿ������',
ADD COLUMN entireRentAvgArea INT(4) COMMENT '��ɢʽ���ⷿ������',
ADD COLUMN entireRentAvgPrice INT(4) COMMENT '��ɢʽ���ⷿ������',
ADD COLUMN entireRentUnitPrice INT(6) COMMENT '��ɢʽ���ⷿ������';