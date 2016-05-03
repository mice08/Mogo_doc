/* Êı¾İ¿âmogoroomdb£¬Ôö¼ÓÊÖ»ú¹éÊôµØ¿â±í */
use mogoroomdb;

--Ìí¼ÓĞÂµÄÇşµÀ¡¢ÇşµÀÃ÷Ï¸£¬¹éÊôµØ ×Ö¶Î
ALTER TABLE `user_renter`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT 'ÇşµÀÀàĞÍ(¹ØÁª×Öµä±ícomm_dictionaryÖµgroupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2'  COMMENT 'ÇşµÀÃ÷Ï¸(¹ØÁª×Öµä±ícomm_dictionaryÖµgroupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'ÊÖ»ú¹éÊôµØ±àÂë ¹ØÁª±ícity.id £¬ĞèÒªÊÖ»úÇ°7Î»Óë¹éÊôµØ ±£Ö¤Î¨Ò»' AFTER `regChannelDtl`;

--Ìí¼ÓĞÂµÄÇşµÀ¡¢ÇşµÀÃ÷Ï¸£¬¹éÊôµØ ×Ö¶Î
ALTER TABLE `user_info`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT 'ÇşµÀÀàĞÍ(¹ØÁª×Öµä±ícomm_dictionaryÖµgroupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT 'ÇşµÀÃ÷Ï¸(¹ØÁª×Öµä±ícomm_dictionaryÖµgroupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'ÊÖ»ú¹éÊôµØ±àÂë ¹ØÁª±ícity.id £¬ĞèÒªÊÖ»úÇ°7Î»Óë¹éÊôµØ ±£Ö¤Î¨Ò»' AFTER `regChannelDtl`;


--Ìí¼ÓÊÖ»ú¹éÊôµØÀëÏß¿â±í
CREATE TABLE `comm_mobile_city` (
	`id` INT(11) NOT NULL COMMENT 'Ö÷¼üID',
	`mobileNumber` VARCHAR(20) NULL DEFAULT NULL COMMENT 'ÊÖ»úºÅ',
	`mobileArea` VARCHAR(50) NULL DEFAULT NULL COMMENT '¹éÊôµØ',
	`mobileType` VARCHAR(50) NULL DEFAULT NULL COMMENT 'ÊÖ»úÀàĞÍ',
	`areaCode` VARCHAR(10) NULL DEFAULT NULL COMMENT 'µØÇøÂë',
	`postCode` VARCHAR(50) NULL DEFAULT NULL COMMENT 'ÓÊ±à',
	PRIMARY KEY (`ID`)
<<<<<<< HEAD:VersionRecords/Version3.1.2/SQL_Scripts/DDL_pending/user_regist_report-æ¶æ„ç»„.sql
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='×â»§ÊÖ»ú¹éÊôµØ±í';

--³ÇÊĞ±íÌí¼Ó³ÇÊĞ±àÂë
ALTER TABLE `city` ADD column `areaCode` VARCHAR(10) COMMENT '³ÇÊĞ±àÂë(¶ÔÓ¦comm_mobile_cityµÄareaCode×Ö¶Î)';
=======
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ÊÖ»ú¹éÊôµØ±í';
>>>>>>> bbe9bbdef4d81536204d3ed3e348cca1ba11c0b2:VersionRecords/Version3.1.2/SQL_Scripts/DDL_reviewed/user_regist_report-æ¶æ„ç»„.sql
