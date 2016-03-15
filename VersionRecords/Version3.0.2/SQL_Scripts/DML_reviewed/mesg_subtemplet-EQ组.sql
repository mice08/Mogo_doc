/* Database name `mogoroomdb` , 原生app新增投诉、报修模块新增、修改时给租客发送app推送消息*/

#更新发送短信子模板(报修申请成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[报修成功]很高兴能为您服务，我们正通知房东您的报修请求，请保持手机畅通，耐心等待，超过一小时未收到响应，请直接与房东联系【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '报修成功',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_repairAdd'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(报修申请成功)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_repairAdd' 
  AND ms.`templetType` = 1 ; 
 


  #更新发送短信子模板(报修成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[报修已解决]您的报修服务已得到解决，期待您能住的愉快和开心，若有需要，记得找我噢【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '报修已解决',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_repairSolve'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(报修成功)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_repairSolve' 
  AND ms.`templetType` = 1 ; 
  
  
  
  #更新发送短信子模板(报修撤销)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[报修已撤销]您的报修服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '报修已撤销',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_repairUndo'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(报修撤销)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_repairUndo' 
  AND ms.`templetType` = 1 ; 
  

  #更新发送短信子模板(投诉申请成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[投诉成功]很遗憾给您带来不愉快的体验，我们正在受理您的诉求和意见，请保持手机畅通，耐心等待我们的联系与处理【蘑菇租房-我们会努力更好】',
    ms.`templetTitle` = '投诉成功',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_complainAdd'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(投诉申请成功)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_complainAdd' 
  AND ms.`templetType` = 1 ; 


 #更新发送短信子模板(投诉已解决)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[投诉已解决]您的投诉服务已得到解决，谢谢您的信任与支持，让我们不断改善和提升服务品质，为您带来更好的租房体验【蘑菇租房-我们会努力更好】',
    ms.`templetTitle` = '投诉已解决',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_complainSolve'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(投诉已解决)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_complainSolve' 
  AND ms.`templetType` = 1 ; 
  
  
   #更新发送短信子模板(投诉已撤销)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[投诉已撤销]您的投诉服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',
    ms.`templetTitle` = '投诉已撤销',
    ms.`jumpCode` = 'MODULE_AfterMarket'                  
WHERE mt.templetCode = 'sms_renter_complainUndo'
  AND ms.`templetType` = 3;
  
  
  #删除推送消息子模板(投诉已撤销)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_complainUndo' 
  AND ms.`templetType` = 1 ; 
  