/*添加TP月付字段*/
use mogoroomdb;

ALTER TABLE find_room_attachment ADD tpMonthlyPay TINYINT(1) NOT NULL DEFAULT '0' COMMENT 'TP月付标记(0:非月付  1:月付),TP只需付一，官网月付包含付一及金融月付';