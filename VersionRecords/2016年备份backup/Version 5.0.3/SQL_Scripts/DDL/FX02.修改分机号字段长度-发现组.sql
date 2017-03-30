
/*修改分机号字段长度*/
use mogoroomdb;


ALTER TABLE `user_landlord`
MODIFY COLUMN `phoneNum`  varchar(18)  COMMENT '分机号码' AFTER `regId`,
MODIFY COLUMN `phoneExt`  varchar(18) COMMENT '分机号' AFTER `latestLoginTime`;



ALTER TABLE `user_landlord_his`
MODIFY COLUMN `phoneNum`  varchar(18) COMMENT '分机号码' AFTER `regId`,
MODIFY COLUMN `phoneExt`  varchar(18) COMMENT '分机号' AFTER `latestLoginTime`;



ALTER TABLE `user_info`
MODIFY COLUMN `phoneExt`  varchar(18) COMMENT '分机号' AFTER `acc_id`;



ALTER TABLE `user_info_his`
MODIFY COLUMN `phoneExt`  varchar(18) COMMENT '分机号' AFTER `acc_id`;

