ALTER TABLE flat_room ADD `payType2` varchar(128) DEFAULT '0' COMMENT '���ʽ����0:Ĭ�ϣ��������κθ��ʽ��������:��һѺһ(2),��һѺһĢ����(9)';

ALTER TABLE flat_room ADD `salePrice2` int(11) COMMENT '���ʽ�� ���ۼ۸�';

ALTER TABLE flat_room ADD `roomPrice2` int(11) DEFAULT NULL COMMENT '���ʽ�� ���ݼ۸�';

UPDATE flat_room fr set fr.salePrice2 = fr.salePrice,fr.roomPrice2=fr.roomPrice;

ALTER TABLE user_userAccount ADD frozenStatus INT(2) DEFAULT 1 COMMENT '�ʽ𶳽�״̬��ֻ������; 0:���᣻1:����';