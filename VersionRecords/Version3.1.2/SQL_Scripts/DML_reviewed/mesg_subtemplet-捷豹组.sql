/* Database name 'mogoroomdb',短信消息模板表（内容）*/
/* 修改模板（租金帐单逾期提醒-生产环境对应templetId为73）去除 ‘逾期未支付将会产生滞纳金，’*/

use mogoroomdb;

update 	mesg_subtemplet
set 		templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单将在今日24:00逾期，请立即登录蘑菇租房APP完成支付。蘑菇租房400-800-4949' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
