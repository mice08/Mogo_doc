/* Database name 'mogoroomdb' 房东申请入驻字段增加*/
use mogoroomdb;

ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `cityId` INT(11) NULL  COMMENT '城市ID';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `provinceId` INT(11) NULL  COMMENT '省份ID';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `bdLandlordId` INT(11) NULL  COMMENT 'bd房东ID';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `createBy` INT(11) NULL  COMMENT '创建人';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `createByType` INT(11) NULL  COMMENT '创建人类型(参考字典表组名:userType)';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `updateBy` INT(6) NULL  COMMENT '修改人';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `updateByType` INT(11) NULL  COMMENT '修改人类型(参考字典表组名:userType)';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `updateByTime` DATETIME NULL  COMMENT '修改时间';
ALTER TABLE `othr_apply_leaguer`  ADD COLUMN `valid` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';
