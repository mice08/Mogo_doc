/* Database name `mogoroomdb` , 消息脚本少了个$符号*/ 
 #更新发送短信子模板(第三方蘑菇宝租金账单应付款当天)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949'                 
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill_payday'
  AND ms.`templetType` = 1;