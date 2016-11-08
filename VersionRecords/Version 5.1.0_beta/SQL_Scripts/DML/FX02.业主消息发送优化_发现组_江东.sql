/*业主消息发送部分改成合并发送*/
use mogoroomdb;

/*业主支付租金通知*/
select @templetId:=id from mesg_templet where templetCode='sms_partner_comming_hostacct' and valid=1;
/*业主支付租金通知短信模版*/
update mesg_subtemplet set templetContent='[${orgName}]您有${totalNum}笔业主租金需尽快支付，详情可登录蘑菇伙伴系统查询。若已支付，请登录系统确认付款' where templetId=@templetId and templetType=1 and valid=1;
/*业主支付租金通知推送模版*/
update mesg_subtemplet set templetContent='[${orgName}]您有${totalNum}笔业主租金需尽快支付：${hostMoneyList}。若已支付，请至业主账单确认付款' where templetId=@templetId and templetType=3 and valid=1;


/*业主支付逾期租金通知*/
select @templetId:=id from mesg_templet where templetCode='sms_partner_hostacct_duedate' and valid=1;
/*业主支付租金逾期通知短信模版*/
update mesg_subtemplet set templetContent='[${orgName}]您有${totalNum}笔业主租金已逾期，详情可登录蘑菇伙伴系统查询。若已支付，请登录系统确认付款' where templetId=@templetId and templetType=1 and valid=1;
/*业主支付租金逾期通知推送模版*/
update mesg_subtemplet set templetContent='[${orgName}]您有${totalNum}笔业主租金已逾期：${hostMoneyList}。若已支付，请至业主账单确认付款' where templetId=@templetId and templetType=3 and valid=1;