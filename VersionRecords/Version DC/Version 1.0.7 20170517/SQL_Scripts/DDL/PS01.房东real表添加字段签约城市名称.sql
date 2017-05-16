use dc;

ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD COLUMN `applyCityName` VARCHAR(25) NULL  COMMENT '房东申请城市' AFTER `applyCityId`;
