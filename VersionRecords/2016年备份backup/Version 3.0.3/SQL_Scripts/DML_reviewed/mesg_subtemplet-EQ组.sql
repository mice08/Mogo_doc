/* Database name `mogoroomdb` , 3.0.3版本提现申请、成功、失败给租客发送推送消息*/
use mogoroomdb;

 #更新消息推送子模板(提现申请成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[提现通知]您好，您在${applyTime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计1-3个工作日内到账，请耐心等待。【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '提现通知'
WHERE mt.templetCode = 'sms_renter_withdrawalSuccess'
  AND ms.`templetType` = 3;
  
  #删除短信推送子模板(提现申请成功)
  DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_withdrawalSuccess' 
  AND ms.`templetType` = 1 ;
  
  
   #更新消息推送子模板(提现处理成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[提现通知]您好，您在${datetime}发起的提现交易已到账，请注意查收，可立即登录蘑菇租房APP查看详情。【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '提现通知'
WHERE mt.templetCode = 'sms_withdrawal_success'
  AND ms.`templetType` = 3;
  
    #删除短信推送子模板(提现处理成功)
  DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_withdrawal_success' 
  AND ms.`templetType` = 1 ;
  
  
     #更新消息推送子模板(提现处理失败)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[提现通知]您好，您在${datetime}发起的提现申请处理失败${remark}请登录蘑菇租房核对卡号、姓名等相关信息是否准确。【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '提现通知'
WHERE mt.templetCode = 'sms_withdrawal_fail'
  AND ms.`templetType` = 3;
  
    #删除短信推送子模板(提现处理失败)
  DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_withdrawal_fail' 
  AND ms.`templetType` = 1 ;




  

  


  
    

  

      
    

  天琪福苑
  名嘉家园

      

  
  

  
  















  
  
  


  
  
  
  
  
  
  
  
  
  
  


