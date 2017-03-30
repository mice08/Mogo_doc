alter table room_price_his rename to `flat_price_his`；

ALTER TABLE flat_price_his CHANGE COLUMN `remark` `remark` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL COMMENT '价格修改备注' ;