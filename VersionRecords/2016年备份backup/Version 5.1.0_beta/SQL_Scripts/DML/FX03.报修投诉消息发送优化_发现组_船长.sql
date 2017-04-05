/*报修投诉消息发送部分改成合并发送*/
use mogoroomdb;
begin;
/*投诉申请已解决*/
update  mesg_subtemplet ms left join mesg_templet mt on mt.id = ms.templetId 
set ms.templetTitle ='您有${total}条投诉申请已解决',ms.templetContent = '您有${total}条投诉申请已解决：${roomInfo}请登录蘑菇伙伴查看详情。'
where mt.templetCode ='sms_complainSolve_landlord' and ms.templetType = 3;
/*投诉申请已撤销*/
update  mesg_subtemplet ms left join mesg_templet mt on mt.id = ms.templetId 
set ms.templetTitle ='您有${total}条投诉申请已撤销' , ms.templetContent = '您有${total}条投诉申请已撤销：${roomInfo}请登录蘑菇伙伴查看详情。'
where mt.templetCode ='sms_complainUndo_landlord' and ms.templetType = 3;
/*报修申请已解决*/
update  mesg_subtemplet ms left join mesg_templet mt on mt.id = ms.templetId 
set ms.templetTitle ='您有${total}条报修申请已解决' , ms.templetContent = '您有${total}条报修申请已解决：${roomInfo}点击查看'
where mt.templetCode ='sms_repairsSolve_landlord' and ms.templetType = 3;
/*报修申请已撤销*/
update  mesg_subtemplet ms left join mesg_templet mt on mt.id = ms.templetId 
set ms.templetTitle ='您有${total}条报修申请已撤销' , ms.templetContent = '您有${total}条报修申请已撤销：${roomInfo}点击查看'
where mt.templetCode ='sms_repairsUndo_landlord' and ms.templetType = 3;
commit;