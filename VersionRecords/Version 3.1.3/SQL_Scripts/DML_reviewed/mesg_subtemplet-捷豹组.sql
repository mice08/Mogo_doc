/* Database name 'mogoroomdb',消息模板表（内容）*/
use mogoroomdb;

-- no 1  预约带看申请  sms_landlord_guanWangYuyueSuccessNotify
update 	mesg_subtemplet
set 		templetContent = '您好，${roomInfo}有新预约，带看时间${lookTime}，租客：${renterName}（号码${renterPhoneNum}），请尽快联系。' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1; 

-- no 2  预约带看申请  sms_landlord_guanWangYuyueSuccessNotify_push
update 	mesg_subtemplet
set 		templetContent = '您好，${roomInfo}有新预约，带看时间${lookTime}，租客：${renterName}（号码${renterPhoneNum}），请尽快联系。' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify_push' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 3  签约确认通知 sms_signing_wait_confirm_new_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}您好，房东${landlordName}向您发送的租约合同需要您确认，请安装蘑菇租房APP登录（账号为签合同所用手机号：${cellPhone}，临时密码：${password}）核对租约并完成签约。下载地址：http://www.mogoroom.com/pages/activity/AppDown.jsp 。登录后请及时修改账号密码，若有疑问请与房东联系。' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_signing_wait_confirm_new_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 4  补录租约提醒1（新账号）&补录租约提醒2（已有账号） &补录租约提醒3  sms_additional_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。快使用您签合同所用手机号${cellPhone}登录蘑菇租房APP吧。若有疑问请与房东联系。' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_additional_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
	
-- 5  补录租约提醒4 sms_additional_new_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}您好，为提升服务品质，方便您在线报修及缴费，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。账号为您签合同所用手机号${cellPhone}，临时密码${password}，APP下载地址：www.mogoroom.com/pages/activity/AppDown.jsp 。登录后请及时修改账号密码，若有疑问请与房东联系。' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_additional_new_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 6 推送账单已被支付  sms_additional_new_renter
update 	mesg_subtemplet
set 		status = 0 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlordinfo_afterpaid_withdefinedbill' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1
	and 	templetType = 1;