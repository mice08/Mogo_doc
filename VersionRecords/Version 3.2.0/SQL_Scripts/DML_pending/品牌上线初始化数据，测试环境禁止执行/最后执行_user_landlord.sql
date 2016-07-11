/* Database name `mogoroomdb` , 品牌数据初始化 */
use mogoroomdb

/*修改房东表的关联品牌名*/
UPDATE user_landlord SET user_landlord.brandName=( SELECT brand.name FROM brand WHERE user_landlord.id = brand.landlordId )  WHERE user_landlord.id IN ( SELECT DISTINCT landlordId FROM brand )