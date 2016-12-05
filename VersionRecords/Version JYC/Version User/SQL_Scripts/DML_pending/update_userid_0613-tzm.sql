/*更新房东默认押金类型的数据*/
use mogoroomdb;

/*更新后来添加的字段数据*/

UPDATE user_landlord_billdtltype  SET landlordId=0 WHERE landlordId = 3000000 ;