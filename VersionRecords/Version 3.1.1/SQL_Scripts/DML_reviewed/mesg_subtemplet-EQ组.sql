/* Database name `mogoroomdb` , 自定义账单短信推送模板修改*/ 
use mogoroomdb;

UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您有一笔新账单，${community}小区${room}室房源#${title}#账单，金额：${amount}元，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房完成支付。若有疑问，请联系房东。'
WHERE mt.templetCode = 'sms_CreateCustomBillByBill'
  AND ms.`templetType` = 1;