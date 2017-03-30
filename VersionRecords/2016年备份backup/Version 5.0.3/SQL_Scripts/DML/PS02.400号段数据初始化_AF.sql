/*  Database name `mogoroomdb`  400电话分号数据初始化 */
use mogoroomdb;

BEGIN;

UPDATE user_landlord SET phoneExt = CONCAT('4008004949-',phoneExt) WHERE phoneExt IS NOT NULL AND phoneExt != '' ;
UPDATE user_landlord SET phoneNum = CONCAT('4008004949-',phoneNum) WHERE phoneNum IS NOT NULL AND phoneNum != '' ;
UPDATE user_info SET phoneExt = CONCAT('4008004949-',phoneExt) WHERE phoneExt IS NOT NULL AND phoneExt != '' ;

COMMIT;