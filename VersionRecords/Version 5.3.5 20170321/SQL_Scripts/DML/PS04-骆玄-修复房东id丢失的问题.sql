/*BD系统：修复bd房东数据*/
use mogoroomdb;


UPDATE bizd.`bizd_user_landlord`
INNER JOIN user_landlord ON bizd_user_landlord.phone = user_landlord.phone
SET bizd_user_landlord.landlordId = user_landlord.id