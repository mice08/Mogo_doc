use mogoroomdb;
/*修改国家表 新增国家代码简写*/

ALTER TABLE `city_country`
ADD COLUMN `code`  varchar(50) NULL COMMENT '国家代码' AFTER `icon`;


/*修改房东表 新增证件类型 国籍*/
ALTER TABLE `user_landlord`
ADD COLUMN `card_type`  varchar(20) NULL   COMMENT '证件类型' AFTER `sex`,
ADD COLUMN `nationality`  int(11) NULL  COMMENT '国籍' AFTER `card_type`;



/*修改房东历史表 新增证件类型 国籍*/
ALTER TABLE `user_landlord_his`
ADD COLUMN `card_type`  varchar(20) NULL  COMMENT '证件类型' AFTER `sex`,
ADD COLUMN `nationality`  int(11) NULL  COMMENT '国籍' AFTER `card_type`;