use mogoroomdb;

/* 添加商圈半径字段 */
ALTER TABLE city_business_area ADD COLUMN radius DOUBLE NOT NULL DEFAULT 5 COMMENT '商圈半径(单位:千米)';