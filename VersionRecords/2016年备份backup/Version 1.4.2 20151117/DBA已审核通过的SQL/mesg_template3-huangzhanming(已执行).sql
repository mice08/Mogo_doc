use mogoroomdb;
UPDATE mesg_template 
    SET content = '${1}您好，您租住的${2}${3}号的房东已为您录入了线上租约，请使用蘑菇租房APP登录您的相关账号（账号：${4}，密码：${5}）确认租约，确认无误后，您可以直接通过蘑菇租房APP支付剩余租金账单。蘑菇租房APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改和完善账号信息，若有疑问请及时与房东联系。'
WHERE TYPE='sms_additional_renter_focus';

UPDATE mesg_template 
    SET content = '${1}您好，您租住的${2}小区${3}栋${4}号Room${5}的房东已为您录入了线上租约，请使用蘑菇租房APP登录您的相关账号（账号：${6}，密码：${7}）确认租约，确认无误后，您可以直接通过蘑菇租房APP支付剩余租金账单。蘑菇租房APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改和完善账号信息，若有疑问请及时与房东联系。'
WHERE TYPE='sms_additional_renter';