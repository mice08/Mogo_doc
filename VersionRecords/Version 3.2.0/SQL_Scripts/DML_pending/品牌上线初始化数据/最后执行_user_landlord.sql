/* Database name `mogoroomdb` , Ʒ�����ݳ�ʼ�� */
use mogoroomdb

/*�޸ķ�����Ĺ���Ʒ����*/
UPDATE user_landlord SET user_landlord.brandName=( SELECT brand.name FROM brand WHERE user_landlord.id = brand.landlordId )  WHERE user_landlord.id IN ( SELECT DISTINCT landlordId FROM brand )