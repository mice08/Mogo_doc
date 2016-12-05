/* Database name 'mogoroomdb',��Ϣģ������ݣ�*/
use mogoroomdb;

-- no 1  ԤԼ��������  sms_landlord_guanWangYuyueSuccessNotify
update 	mesg_subtemplet
set 		templetContent = '���ã�${roomInfo}����ԤԼ������ʱ��${lookTime}����ͣ�${renterName}������${renterPhoneNum}�����뾡����ϵ��' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1; 

-- no 2  ԤԼ��������  sms_landlord_guanWangYuyueSuccessNotify_push
update 	mesg_subtemplet
set 		templetContent = '���ã�${roomInfo}����ԤԼ������ʱ��${lookTime}����ͣ�${renterName}������${renterPhoneNum}�����뾡����ϵ��' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify_push' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 3  ǩԼȷ��֪ͨ sms_signing_wait_confirm_new_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}���ã�����${landlordName}�������͵���Լ��ͬ��Ҫ��ȷ�ϣ��밲װĢ���ⷿAPP��¼���˺�Ϊǩ��ͬ�����ֻ��ţ�${cellPhone}����ʱ���룺${password}���˶���Լ�����ǩԼ�����ص�ַ��http://www.mogoroom.com/pages/activity/AppDown.jsp ����¼���뼰ʱ�޸��˺����룬�����������뷿����ϵ��' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_signing_wait_confirm_new_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 4  ��¼��Լ����1�����˺ţ�&��¼��Լ����2�������˺ţ� &��¼��Լ����3  sms_additional_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼����⣬���ķ���${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ��������ʹ����ǩ��ͬ�����ֻ���${cellPhone}��¼Ģ���ⷿAPP�ɡ������������뷿����ϵ��' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_additional_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
	
-- 5  ��¼��Լ����4 sms_additional_new_renter
update 	mesg_subtemplet
set 		templetContent = '${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼��ɷѣ����ķ���${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ�������˺�Ϊ��ǩ��ͬ�����ֻ���${cellPhone}����ʱ����${password}��APP���ص�ַ��www.mogoroom.com/pages/activity/AppDown.jsp ����¼���뼰ʱ�޸��˺����룬�����������뷿����ϵ��' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_additional_new_renter' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
	
-- 6 �����˵��ѱ�֧��  sms_additional_new_renter
update 	mesg_subtemplet
set 		status = 0 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_landlordinfo_afterpaid_withdefinedbill' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1
	and 	templetType = 1;