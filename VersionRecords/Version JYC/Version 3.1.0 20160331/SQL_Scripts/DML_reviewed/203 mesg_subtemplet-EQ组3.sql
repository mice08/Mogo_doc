/* Database name `mogoroomdb` , 审核资料有误的备注取活的而非写死*/ 
use mogoroomdb;

 #更新发送短信子模板(蘑菇宝审核资料有误)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请立即登录蘑菇租房APP并在今日24点前完成资料修改和提交。蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_lakala_failure'
  AND ms.`templetType` = 1;
  
  
  #更新推送子模板(签约资料有误)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[签约资料有误]很遗憾，您提交的签约单已被退回（备注：${remark}），请立即登录蘑菇租房APP修改资料并重新提交。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',
    ms.templetTitle = '签约资料有误'
WHERE mt.templetCode = 'sms_renter_signUnsuccess_errorInfo'
  AND ms.`templetType` = 3;