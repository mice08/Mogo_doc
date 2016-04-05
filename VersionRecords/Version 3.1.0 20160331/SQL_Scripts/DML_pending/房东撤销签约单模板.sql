/* Database name `mogoroomdb` , 新增房东撤销签约单app消息推送*/ 
#更新推送子模板(房东审核不同意(签约失败))
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[签约失败]很遗憾，您提交的签约单已被退回（备注：${remark}），定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】'
WHERE mt.templetCode = 'sms_renter_signUnsuccess_agreeRefund'
  AND ms.`templetType` = 3;
  

   #更新发送短信子模板(蘑菇宝审核不通过（终审不过/金融部不过）)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请登录蘑菇租房APP查看详情，若有疑问，请与我们联系，蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_end_failure'
  AND ms.`templetType` = 1;
  
  
 #新增短信模板(房东发起签约(针对未注册租客))
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_saleContract_cancel', '签约单撤销', '签约单撤销', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约单撤销', '[签约被撤销]${renterName}您好，房东${landlordName}先生已撤销${community}小区房源的签约单，（备注：退款${refund}元），请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】', 1, 1, NULL, 'MODULE_OrderList');

COMMIT;