/* Database name `mogoroomdb` , 消息脚本少了个$符号*/ 
use mogoroomdb;
 #更新发送短信子模板(第三方蘑菇宝租金账单应付款当天)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949'                 
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill_payday'
  AND ms.`templetType` = 1;
  
  
    #更新发送短信子模板(第三方蘑菇宝租金账单生成日)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949'                  
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill'
  AND ms.`templetType` = 1;
  
  
   #更新发送短信子模板(第三方蘑菇宝租金账单应付款3天前)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949'                 
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill_before3'
  AND ms.`templetType` = 1;
  
  
    #更新发送短信子模板(蘑菇宝审核通过（拉卡拉蘑菇宝）)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时在尾号为${cardTail}的借记卡中存够租金哦。蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_lakala_success'
  AND ms.`templetType` = 1;