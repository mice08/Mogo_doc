ALTER TABLE flat_room ADD `payType2` varchar(128) DEFAULT '0' COMMENT '付款方式二。0:默认，不代表任何付款方式付款类型:付一押一(2),付一押一蘑菇宝(9)';

ALTER TABLE flat_room ADD `salePrice2` int(11) COMMENT '付款方式二 销售价格';

ALTER TABLE flat_room ADD `roomPrice2` int(11) DEFAULT NULL COMMENT '付款方式二 房屋价格';

UPDATE flat_room fr set fr.salePrice2 = fr.salePrice,fr.roomPrice2=fr.roomPrice;

ALTER TABLE user_userAccount ADD frozenStatus INT(2) DEFAULT 1 COMMENT '资金冻结状态：只进不出; 0:冻结；1:可用';