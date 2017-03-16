/* 调整房源类消息模板业务类型 */
use mogoroomdb;

UPDATE `mesg_templet` SET businessType=11 WHERE templetCode IN ('fangjianxiajiadSII','sms_picture_unVerify_landlord','fangjianmobanzhaopianshenheweitongguoMABp','sms_flatsType_unVerify_landlord','sms_flats_unVerify_landlord');