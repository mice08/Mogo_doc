use mogoroomdb;

set autocommit = 0;
/**获取开始时间**/
select @begindate:=NOW();

/* 更新模版 */
update mesg_templet set templetName='租客_退房完成',templetDesc='租客_退房完成',status=1,valid=1,updateTime=now() where templetCode = 'renter_checkout_dealwith_success';
/* 插入模版 'renter_checkout_dealwith_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'renter_checkout_dealwith_success','租客_退房完成','租客_退房完成',1,0,now(),0,0,now(),0,1,7
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='renter_checkout_dealwith_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您租住的${roomInfo}退房已完成，若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您租住的${roomInfo}退房已完成，若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退房完成提醒',templetContent='您租住的${roomInfo}退房已完成，若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退房完成提醒','您租住的${roomInfo}退房已完成，若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客退房完成提醒',templetDesc='租客_退房结束',status=1,valid=1,updateTime=now() where templetCode = 'msg_to_renter_room_checkout_finish';
/* 插入模版 'msg_to_renter_room_checkout_finish' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_to_renter_room_checkout_finish','租客退房完成提醒','租客_退房结束',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_to_renter_room_checkout_finish';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东${landlordName}已完成您租住的${roomInfo}的退房，如有疑问请与房东联系。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东${landlordName}已完成您租住的${roomInfo}的退房，如有疑问请与房东联系。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退房完成提醒',templetContent='${renterName}您好，房东${landlordName}已完成您租住的${roomInfo}的退房，如有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退房完成提醒','${renterName}您好，房东${landlordName}已完成您租住的${roomInfo}的退房，如有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客补录租约确认提醒（无账号）',templetDesc='租客补录租约确认提醒（无账号）',status=1,valid=1,updateTime=now() where templetCode = 'sms_additional_new_renter';
/* 插入模版 'sms_additional_new_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_additional_new_renter','租客补录租约确认提醒（无账号）','租客补录租约确认提醒（无账号）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_additional_new_renter';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴费，房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码${password}）确认租约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，为提升服务品质，方便您在线报修及缴费，房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码${password}）确认租约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约确认提醒',templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴费，房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码${password}）确认租约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'补录租约确认提醒','${renterName}您好，为提升服务品质，方便您在线报修及缴费，房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码${password}）确认租约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客线上签约确认提醒（无账号）',templetDesc='租客线上签约确认提醒（无账号）',status=1,valid=1,updateTime=now() where templetCode = 'sms_signing_wait_confirm_new_renter';
/* 插入模版 'sms_signing_wait_confirm_new_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_confirm_new_renter','租客线上签约确认提醒（无账号）','租客线上签约确认提醒（无账号）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_confirm_new_renter';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东${landlordName}向您发送租约需您确认，请蘑菇租房APP（账号为手机：${cellPhone}，临时密码：${password}）核对并完成签约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东${landlordName}向您发送租约需您确认，请蘑菇租房APP（账号为手机：${cellPhone}，临时密码：${password}）核对并完成签约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='线上签约确认提醒',templetContent='${renterName}您好，房东${landlordName}向您发送租约需您确认，请蘑菇租房APP（账号为手机：${cellPhone}，临时密码：${password}）核对并完成签约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'线上签约确认提醒','${renterName}您好，房东${landlordName}向您发送租约需您确认，请蘑菇租房APP（账号为手机：${cellPhone}，临时密码：${password}）核对并完成签约，APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客补录租约确认提醒（有账号）',templetDesc='租客补录租约确认提醒（有账号）',status=1,valid=1,updateTime=now() where templetCode = 'sms_additional_renter';
/* 插入模版 'sms_additional_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_additional_renter','租客补录租约确认提醒（有账号）','租客补录租约确认提醒（有账号）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_additional_renter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_additional_renter';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP使用您的手机号${cellPhone}确认租约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP使用您的手机号${cellPhone}确认租约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约确认提醒',templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP使用您的手机号${cellPhone}确认租约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'补录租约确认提醒','${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请登录蘑菇租房APP使用您的手机号${cellPhone}确认租约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客线上签约确认提醒（有账号）',templetDesc='租客线上签约确认提醒（有账号）',status=1,valid=1,updateTime=now() where templetCode = 'sms_signing_wait_confirm';
/* 插入模版 'sms_signing_wait_confirm' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_confirm','租客线上签约确认提醒（有账号）','租客线上签约确认提醒（有账号）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_confirm';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东${landlordName}向您发送了一份${roominfo}的租约，请登录蘑菇租房APP使用您的手机号${cellPhone}完成签约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东${landlordName}向您发送了一份${roominfo}的租约，请登录蘑菇租房APP使用您的手机号${cellPhone}完成签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='线上签约确认提醒',templetContent='${renterName}您好，房东${landlordName}向您发送了一份${roominfo}的租约，请登录蘑菇租房APP使用您的手机号${cellPhone}完成签约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'线上签约确认提醒','${renterName}您好，房东${landlordName}向您发送了一份${roominfo}的租约，请登录蘑菇租房APP使用您的手机号${cellPhone}完成签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东_退款审批_拒绝',templetDesc='房东_退款审批_拒绝',status=1,valid=1,updateTime=now() where templetCode = 'sms_refund_approval_inform';
/* 插入模版 'sms_refund_approval_inform' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_refund_approval_inform','房东_退款审批_拒绝','房东_退款审批_拒绝',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_refund_approval_inform';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退款审核失败提醒',templetContent='您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退款审核失败提醒','您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东_退款审批',templetDesc='房东_退款审批',status=1,valid=1,updateTime=now() where templetCode = 'sms_refund_approval_wait';
/* 插入模版 'sms_refund_approval_wait' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_refund_approval_wait','房东_退款审批','房东_退款审批',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_refund_approval_wait';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退款审核提醒',templetContent='您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退款审核提醒','您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客_新增账单_提醒',templetDesc='租客_新增账单_提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateCustomBillByBill';
/* 插入模版 'sms_CreateCustomBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateCustomBillByBill','租客_新增账单_提醒','租客_新增账单_提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateCustomBillByBill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新增账单提醒',templetContent='${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新增账单提醒','${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客_账单_作废',templetDesc='租客_账单_作废',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_revoke_customBill';
/* 插入模版 'sms_renter_revoke_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_revoke_customBill','租客_账单_作废','租客_账单_作废',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_revoke_customBill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单作废提醒',templetContent='${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单作废提醒','${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客_推送账单_修改',templetDesc='租客_推送账单_修改',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_update_customBill';
/* 插入模版 'sms_renter_update_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_update_customBill','租客_推送账单_修改','租客_推送账单_修改',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_update_customBill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单修改提醒',templetContent='${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单修改提醒','${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客_退房申请反馈',templetDesc='租客_退房申请反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_outhome_renter';
/* 插入模版 'sms_outhome_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_outhome_renter','租客_退房申请反馈','租客_退房申请反馈',1,0,now(),0,0,now(),0,1,7
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_outhome_renter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_outhome_renter';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退房申请反馈',templetContent='一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退房申请反馈','一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_renter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东_租客退房申请',templetDesc='房东_租客退房申请',status=1,valid=1,updateTime=now() where templetCode = 'sms_outhome_landlord';
/* 插入模版 'sms_outhome_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_outhome_landlord','房东_租客退房申请','房东_租客退房申请',1,0,now(),0,0,now(),0,1,7
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_outhome_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='需处理退房提醒',templetContent='${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'需处理退房提醒','${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东转客成功反馈',templetDesc='房东转客成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_success';
/* 插入模版 'sms_renter_saleContractConvert_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_success','房东转客成功反馈','房东转客成功反馈',1,0,now(),0,0,now(),0,1,9
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${landlordname}您好，租客${renterName}同意了您${roominfo}的转客租约。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${landlordname}您好，租客${renterName}同意了您${roominfo}的转客租约。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='转客成功反馈',templetContent='${landlordname}您好，租客${renterName}同意了您${roominfo}的转客租约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'转客成功反馈','${landlordname}您好，租客${renterName}同意了您${roominfo}的转客租约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客租金账单已付反馈',templetDesc='租客租金账单已付反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renterinfo_afterpaid_withroutinebill';
/* 插入模版 'sms_renterinfo_afterpaid_withroutinebill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renterinfo_afterpaid_withroutinebill','租客租金账单已付反馈','租客租金账单已付反馈',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renterinfo_afterpaid_withroutinebill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单已付反馈',templetContent='${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单已付反馈','${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东签约成功反馈',templetDesc='房东签约成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'msg_success_signed_remind_landlord';
/* 插入模版 'msg_success_signed_remind_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_success_signed_remind_landlord','房东签约成功反馈','房东签约成功反馈',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_success_signed_remind_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${landlordName}您好，租客${renterName}已与您成功签约房源${roomInfo}，请提醒租客尽快支付首期费用。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${landlordName}您好，租客${renterName}已与您成功签约房源${roomInfo}，请提醒租客尽快支付首期费用。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约成功反馈',templetContent='${landlordName}您好，租客${renterName}已与您成功签约房源${roomInfo}，请提醒租客尽快支付首期费用。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约成功反馈','${landlordName}您好，租客${renterName}已与您成功签约房源${roomInfo}，请提醒租客尽快支付首期费用。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='依米测试一',templetDesc='just do I.T！！！！',status=1,valid=1,updateTime=now() where templetCode = 'yimiceshiyimSIt';
/* 插入模版 'yimiceshiyimSIt' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'yimiceshiyimSIt','依米测试一','just do I.T！！！！',0,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'yimiceshiyimSIt');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='yimiceshiyimSIt';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='山外青山楼外楼，西湖歌舞几时休。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','山外青山楼外楼，西湖歌舞几时休。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'yimiceshiyimSIt')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'yimiceshiyimSIt')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='明月松间照',templetContent='清泉石上流',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'明月松间照','清泉石上流',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'yimiceshiyimSIt')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回',templetDesc='租金宝买回',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback_init';
/* 插入模版 'sms_partner_loan_payback_init' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_init','租金宝买回','租金宝买回',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_init');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_init';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_init')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_init')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_init')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回',templetDesc='租金宝买回',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback_waitingpay';
/* 插入模版 'sms_partner_loan_payback_waitingpay' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_waitingpay','租金宝买回','租金宝买回',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_waitingpay');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_waitingpay';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_waitingpay')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_waitingpay')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回',templetContent='[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回','[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_waitingpay')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回',templetDesc='租金宝买回',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback_finished';
/* 插入模版 'sms_partner_loan_payback_finished' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_finished','租金宝买回','租金宝买回',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_finished');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_finished';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_finished')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_finished')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回',templetContent='[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回','[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_finished')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='聚有财常规账单支付完成',templetDesc='聚有财常规账单支付完成',status=1,valid=1,updateTime=now() where templetCode = 'sms_jyc_bill_payover_toLandLord';
/* 插入模版 'sms_jyc_bill_payover_toLandLord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_jyc_bill_payover_toLandLord','聚有财常规账单支付完成','聚有财常规账单支付完成',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payover_toLandLord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_jyc_bill_payover_toLandLord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客还款成功';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payover_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payover_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='聚有财常规账单支付完成',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'聚有财常规账单支付完成','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payover_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='逾期提醒',templetDesc='逾期提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_pay_loan_landlord_overDue7';
/* 插入模版 'sms_pay_loan_landlord_overDue7' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_pay_loan_landlord_overDue7','逾期提醒','逾期提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue7');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue7';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='逾期提醒',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'逾期提醒','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='逾期提醒',templetDesc='逾期提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_pay_loan_landlord_overDue';
/* 插入模版 'sms_pay_loan_landlord_overDue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_pay_loan_landlord_overDue','逾期提醒','逾期提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='逾期提醒',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'逾期提醒','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_pay_loan_landlord_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='聚有财常规账单逾期提醒',templetDesc='聚有财常规账单逾期提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_jyc_bill_dueDate_toLandLord';
/* 插入模版 'sms_jyc_bill_dueDate_toLandLord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_jyc_bill_dueDate_toLandLord','聚有财常规账单逾期提醒','聚有财常规账单逾期提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_dueDate_toLandLord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_jyc_bill_dueDate_toLandLord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客还款提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_dueDate_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_dueDate_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='聚有财常规账单逾期提醒',templetContent='[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'聚有财常规账单逾期提醒','[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_dueDate_toLandLord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝资料有误',templetDesc='蘑菇宝资料有误',status=1,valid=1,updateTime=now() where templetCode = 'sms_mogoverify_validfail_topartner';
/* 插入模版 'sms_mogoverify_validfail_topartner' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_mogoverify_validfail_topartner','蘑菇宝资料有误','蘑菇宝资料有误',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_topartner');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_mogoverify_validfail_topartner';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝资料有误',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝资料有误','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇终审拒绝租客',templetDesc='蘑菇终审拒绝租客',status=1,valid=1,updateTime=now() where templetCode = 'sms_mogoverify_fail_topartner';
/* 插入模版 'sms_mogoverify_fail_topartner' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_mogoverify_fail_topartner','蘑菇终审拒绝租客','蘑菇终审拒绝租客',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_topartner');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_mogoverify_fail_topartner';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇终审拒绝租客',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇终审拒绝租客','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_topartner')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='终审拒绝房东租金宝资质申请',templetDesc='终审拒绝房东租金宝资质申请',status=1,valid=1,updateTime=now() where templetCode = 'sms_rentverify_fail';
/* 插入模版 'sms_rentverify_fail' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_rentverify_fail','终审拒绝房东租金宝资质申请','终审拒绝房东租金宝资质申请',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_rentverify_fail');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_rentverify_fail';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝申请';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_fail')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_fail')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='终审拒绝房东租金宝资质申请',templetContent='[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'终审拒绝房东租金宝资质申请','[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_fail')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='终审通过房东租金宝资质申请',templetDesc='终审通过房东租金宝资质申请',status=1,valid=1,updateTime=now() where templetCode = 'sms_rentverify_success';
/* 插入模版 'sms_rentverify_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_rentverify_success','终审通过房东租金宝资质申请','终审通过房东租金宝资质申请',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_rentverify_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_rentverify_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝申请';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='终审通过房东租金宝资质申请',templetContent='[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'终审通过房东租金宝资质申请','[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rentverify_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回成功',templetDesc='租金宝买回成功',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback_success';
/* 插入模版 'sms_partner_loan_payback_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_success','租金宝买回成功','租金宝买回成功',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回成功',templetContent='尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回成功','尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回',templetDesc='租金宝买回',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback';
/* 插入模版 'sms_partner_loan_payback' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback','租金宝买回','租金宝买回',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回',templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回','[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝买回失败',templetDesc='租金宝买回失败',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_payback_failure';
/* 插入模版 'sms_partner_loan_payback_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_failure','租金宝买回失败','租金宝买回失败',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_failure';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝买回失败，租客逾期5天',templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝买回失败，租客逾期5天','[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客逾期5天以上包含5天',templetDesc='租客逾期5天以上包含5天',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_duedate5';
/* 插入模版 'sms_partner_loan_duedate5' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate5','租客逾期5天以上包含5天','租客逾期5天以上包含5天',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate5';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期强清';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）蘑菇宝逾期未支付租金，已经被强制退房，请及时处理。对应的租金宝已经中止，请确保个人帐户余额留有足够金额${countAmount}元，买回租金宝并支付相应手续费和滞纳金。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）蘑菇宝逾期未支付租金，已经被强制退房，请及时处理。对应的租金宝已经中止，请确保个人帐户余额留有足够金额${countAmount}元，买回租金宝并支付相应手续费和滞纳金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝已终止，租客逾期',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）蘑菇宝逾期未支付租金，已经被强制退房，请及时处理。对应的租金宝已经中止，请确保个人帐户余额留有足够金额${countAmount}元，买回租金宝并支付相应手续费和滞纳金。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝已终止，租客逾期','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）蘑菇宝逾期未支付租金，已经被强制退房，请及时处理。对应的租金宝已经中止，请确保个人帐户余额留有足够金额${countAmount}元，买回租金宝并支付相应手续费和滞纳金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客逾期等于4天',templetDesc='租客逾期等于4天',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_duedate4';
/* 插入模版 'sms_partner_loan_duedate4' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate4','租客逾期等于4天','租客逾期等于4天',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate4';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则明天您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则明天您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝逾期，租客逾期',templetContent='[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则明天您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝逾期，租客逾期','[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则明天您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客逾期小于4天',templetDesc='租客逾期小于4天',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_duedate';
/* 插入模版 'sms_partner_loan_duedate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate','租客逾期小于4天','租客逾期小于4天',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝逾期，租客逾期',templetContent='[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝逾期，租客逾期','[租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝逾期，租客逾期',templetDesc='租金宝逾期，租客逾期',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_overDue7';
/* 插入模版 'sms_partner_loan_overDue7' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_overDue7','租金宝逾期，租客逾期','租金宝逾期，租客逾期',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_overDue7';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝逾期，租客逾期',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝逾期，租客逾期','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝逾期，租客逾期',templetDesc='租金宝逾期，租客逾期',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_overDue';
/* 插入模版 'sms_partner_loan_overDue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_overDue','租金宝逾期，租客逾期','租金宝逾期，租客逾期',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_overDue';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝逾期，租客逾期',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝逾期，租客逾期','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客成功支付',templetDesc='租客成功支付',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_repayPlan';
/* 插入模版 'sms_landlord_repayPlan' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_repayPlan','租客成功支付','租客成功支付',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_repayPlan';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租客还款成功';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已成功支付下月租金。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已成功支付下月租金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东_租金已付',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已成功支付下月租金。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东_租金已付','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已成功支付下月租金。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝放款',templetDesc='租金宝放款',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_affirm_loan_amount';
/* 插入模版 'sms_partner_affirm_loan_amount' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_affirm_loan_amount','租金宝放款','租金宝放款',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_affirm_loan_amount');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_affirm_loan_amount';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝放款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_affirm_loan_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_affirm_loan_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝放款',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝放款','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_affirm_loan_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝放款',templetDesc='租金宝放款',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_put_amount';
/* 插入模版 'sms_partner_loan_put_amount' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_put_amount','租金宝放款','租金宝放款',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_put_amount';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝放款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝放款',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝放款','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝已通过',templetDesc='蘑菇宝已通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_mogobao_lakala_success';
/* 插入模版 'sms_landlord_mogobao_lakala_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_success','蘑菇宝已通过','蘑菇宝已通过',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝申请已通过审批，等待放款中，请知悉。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝申请已通过审批，等待放款中，请知悉。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝已通过',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝申请已通过审批，等待放款中，请知悉。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝已通过','[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝申请已通过审批，等待放款中，请知悉。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝终审通过',templetDesc='蘑菇宝终审通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_mogobao_finalapprove_success';
/* 插入模版 'sms_landlord_mogobao_finalapprove_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_finalapprove_success','蘑菇宝终审通过','蘑菇宝终审通过',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_finalapprove_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝终审通过',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝终审通过','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝终审不通过',templetDesc='蘑菇宝终审不通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_mogobao_end_failure';
/* 插入模版 'sms_landlord_mogobao_end_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_end_failure','蘑菇宝终审不通过','蘑菇宝终审不通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_end_failure';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝终审不通过',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝终审不通过','[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝审批不通过',templetDesc='蘑菇宝审批不通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_mogobao_lakala_two_failure';
/* 插入模版 'sms_landlord_mogobao_lakala_two_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_two_failure','蘑菇宝审批不通过','蘑菇宝审批不通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_two_failure';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客{renterName}（{roomInfo}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客{renterName}（{roomInfo}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝审批不通过',templetContent='[蘑菇宝]尊敬的房东，您的租客{renterName}（{roomInfo}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝审批不通过','[蘑菇宝]尊敬的房东，您的租客{renterName}（{roomInfo}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝首次申请不通过',templetDesc='蘑菇宝首次申请不通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_mogobao_lakala_one_failure';
/* 插入模版 'sms_landlord_mogobao_lakala_one_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_one_failure','蘑菇宝首次申请不通过','蘑菇宝首次申请不通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_one_failure';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝首次申请审批失败，请协助通知租客及时提交修改资料。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝首次申请审批失败，请协助通知租客及时提交修改资料。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝首次申请不通过',templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝首次申请审批失败，请协助通知租客及时提交修改资料。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝首次申请不通过','[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝首次申请审批失败，请协助通知租客及时提交修改资料。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝审核通过',templetDesc='租金宝审核通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_loan_validated';
/* 插入模版 'sms_partner_loan_validated' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_validated','租金宝审核通过','租金宝审核通过',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_validated';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝申请';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[租金宝]您的租金宝申请已审核通过，可办理后续业务。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[租金宝]您的租金宝申请已审核通过，可办理后续业务。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝审核通过',templetContent='[租金宝]您的租金宝申请已审核通过，可办理后续业务。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝审核通过','[租金宝]您的租金宝申请已审核通过，可办理后续业务。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金宝申请已提交',templetDesc='租金宝申请已提交',status=1,valid=1,updateTime=now() where templetCode = 'sms_rental_applyfor_submit';
/* 插入模版 'sms_rental_applyfor_submit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_rental_applyfor_submit','租金宝申请已提交','租金宝申请已提交',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_rental_applyfor_submit';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='租金宝申请';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金宝申请已提交',templetContent='[租金宝]您的租金宝申请已提交，请尽快向蘑菇租房提交相关资料进行审核。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金宝申请已提交','[租金宝]您的租金宝申请已提交，请尽快向蘑菇租房提交相关资料进行审核。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房源审核未通过',templetDesc='房源审核未通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_flats_unVerify_landlord';
/* 插入模版 'sms_flats_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_unVerify_landlord','房源审核未通过','房源审核未通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_unVerify_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您好，您提交的房源${roomInfo}审核未通过，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您好，您提交的房源${roomInfo}审核未通过，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房源审核未通过',templetContent='您好，您提交的房源${roomInfo}审核未通过，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房源审核未通过','您好，您提交的房源${roomInfo}审核未通过，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='角色变动提醒',templetDesc='角色新增提示',status=1,valid=1,updateTime=now() where templetCode = 'push_roleAdd_notice';
/* 插入模版 'push_roleAdd_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_roleAdd_notice','角色变动提醒','角色新增提示',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_roleAdd_notice';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='提示，您已拥有新的角色',templetContent='您好，您已被赋予新的角色，可在重新登录后开始使用。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'提示，您已拥有新的角色','您好，您已被赋予新的角色，可在重新登录后开始使用。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='报修通知',templetDesc='报修通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_repairAdd_landlord';
/* 插入模版 'sms_repairAdd_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairAdd_landlord','报修通知','报修通知',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairAdd_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${roomInfo}有一条报修信息，请登录蘑菇伙伴及时查看处理。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${roomInfo}有一条报修信息，请登录蘑菇伙伴及时查看处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}有一条报修',templetContent='${roomInfo}有一条报修信息，请及时查看处理。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}有一条报修','${roomInfo}有一条报修信息，请及时查看处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='投诉房东',templetDesc='投诉房东',status=1,valid=1,updateTime=now() where templetCode = 'sms_complainAdd_landlord';
/* 插入模版 'sms_complainAdd_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainAdd_landlord','投诉房东','投诉房东',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainAdd_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${roomInfo}有一条投诉信息，请登录蘑菇伙伴及时查看处理。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${roomInfo}有一条投诉信息，请登录蘑菇伙伴及时查看处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}有一条投诉',templetContent='${roomInfo}有一条投诉信息，请及时查看处理。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}有一条投诉','${roomInfo}有一条投诉信息，请及时查看处理。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='告警邮件通知',templetDesc='告警邮件通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_warn_notice_email';
/* 插入模版 'sms_warn_notice_email' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_warn_notice_email','告警邮件通知','告警邮件通知',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_warn_notice_email';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='警告类消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='告警通知',templetContent='${warnNoticeInfo}',status=1 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'告警通知','${warnNoticeInfo}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='后台BS登陆密码重置',templetDesc='后台BS登陆密码重置',status=1,valid=1,updateTime=now() where templetCode = 'email_employee_restPassword';
/* 插入模版 'email_employee_restPassword' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'email_employee_restPassword','后台BS登陆密码重置','后台BS登陆密码重置',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'email_employee_restPassword');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='email_employee_restPassword';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_employee_restPassword')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='登陆密码重置成功',templetContent='您的后台BS登录密码已被重置为“123456”，请尽快登录后台修改密码。',status=1 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'登陆密码重置成功','您的后台BS登录密码已被重置为“123456”，请尽快登录后台修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_employee_restPassword')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_employee_restPassword')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='更改密码消息推送',templetDesc='更改密码消息推送',status=1,valid=1,updateTime=now() where templetCode = 'push_partner_pwd_update';
/* 插入模版 'push_partner_pwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_partner_pwd_update','更改密码消息推送','更改密码消息推送',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_partner_pwd_update';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='密码消息推送',templetContent='您的账户在网页端修改了密码，请使用新密码重新登录。若非本人操作，请联系蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'密码消息推送','您的账户在网页端修改了密码，请使用新密码重新登录。若非本人操作，请联系蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='组织变动提醒',templetDesc='新增组织提醒消息',status=1,valid=1,updateTime=now() where templetCode = 'push_orgAdd_notice';
/* 插入模版 'push_orgAdd_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_orgAdd_notice','组织变动提醒','新增组织提醒消息',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_orgAdd_notice';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='注意，您已拥有新的组织',templetContent='您好，您已被赋予新的组织权限，可在重新登录后开始使用。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'注意，您已拥有新的组织','您好，您已被赋予新的组织权限，可在重新登录后开始使用。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='组织变动提醒',templetDesc='组织减少时提醒消息',status=1,valid=1,updateTime=now() where templetCode = 'push_orgDel_notice';
/* 插入模版 'push_orgDel_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_orgDel_notice','组织变动提醒','组织减少时提醒消息',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_orgDel_notice');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_orgDel_notice';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='注意，您的组织已发生变更',templetContent='您好，您的所属组织已被更改，请重新登录后进行查看及切换。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'注意，您的组织已发生变更','您好，您的所属组织已被更改，请重新登录后进行查看及切换。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='角色变动提醒',templetDesc='角色减少提示',status=1,valid=1,updateTime=now() where templetCode = 'push_roleDel_notice';
/* 插入模版 'push_roleDel_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_roleDel_notice','角色变动提醒','角色减少提示',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_roleDel_notice');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_roleDel_notice';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='注意，您的角色已发生变更',templetContent='您好，您在本组织内的角色权限已发生变更，请重新登录后进行查看及使用。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'注意，您的角色已发生变更','您好，您在本组织内的角色权限已发生变更，请重新登录后进行查看及使用。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleDel_notice')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东密码修改',templetDesc='房东密码修改',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_pwd_update';
/* 插入模版 'sms_partner_pwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_pwd_update','房东密码修改','房东密码修改',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_pwd_update';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您的登录密码重置成功！若非本人操作，请联系蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您的登录密码重置成功！若非本人操作，请联系蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东联系电话修改',templetDesc='房东联系电话修改',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_phone_update';
/* 插入模版 'sms_partner_phone_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_phone_update','房东联系电话修改','房东联系电话修改',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_phone_update';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您的联系方式已被修改为${phone}。若非本人操作，请联系蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您的联系方式已被修改为${phone}。若非本人操作，请联系蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东联系电话修改',templetDesc='房东联系电话修改',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_phone_update_verify';
/* 插入模版 'sms_partner_phone_update_verify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_phone_update_verify','房东联系电话修改','房东联系电话修改',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_phone_update_verify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='验证码：${VCode}，您正使用该手机号修改账号联系电话，请勿向他人泄露。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','验证码：${VCode}，您正使用该手机号修改账号联系电话，请勿向他人泄露。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东修改子重置密码',templetDesc='房东修改子重置密码',status=1,valid=1,updateTime=now() where templetCode = 'sms_subAccount_resetPassWord';
/* 插入模版 'sms_subAccount_resetPassWord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_resetPassWord','房东修改子重置密码','房东修改子重置密码',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_resetPassWord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${subName}您好，您的密码重置成功，具体咨询房东。请使用本手机号重新登录“蘑菇伙伴App”并修改密码。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${subName}您好，您的密码重置成功，具体咨询房东。请使用本手机号重新登录“蘑菇伙伴App”并修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东修改子账号电话',templetDesc='子账号手机号（旧）',status=1,valid=1,updateTime=now() where templetCode = 'sms_subAccount_modifyPhoneO';
/* 插入模版 'sms_subAccount_modifyPhoneO' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_modifyPhoneO','房东修改子账号电话','子账号手机号（旧）',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_modifyPhoneO';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${subName}您好，本号码已和您的账号解绑，请使用新手机号进行登录。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${subName}您好，本号码已和您的账号解绑，请使用新手机号进行登录。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='新手机号绑定成功',templetDesc='新手机号绑定成功通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_updateCellphone';
/* 插入模版 'sms_renter_updateCellphone' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateCellphone','新手机号绑定成功','新手机号绑定成功通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateCellphone';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新手机号绑定成功',templetContent='新手机号绑定成功，这是你新绑定蘑菇租房App的手机号：${cellphone}，请牢记，若非本人更改，请及时联系蘑菇租房。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新手机号绑定成功','新手机号绑定成功，这是你新绑定蘑菇租房App的手机号：${cellphone}，请牢记，若非本人更改，请及时联系蘑菇租房。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东绑定银行卡',templetDesc='房东绑定银行卡',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_bankcard_bind';
/* 插入模版 'sms_partner_bankcard_bind' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_bankcard_bind','房东绑定银行卡','房东绑定银行卡',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_bankcard_bind';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您尾号为${cardNumber}的银行卡已成功绑定蘑菇伙伴账号。若非本人操作，请联系蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您尾号为${cardNumber}的银行卡已成功绑定蘑菇伙伴账号。若非本人操作，请联系蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='告警短信通知',templetDesc='告警短信通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_warn_notice_sms';
/* 插入模版 'sms_warn_notice_sms' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_warn_notice_sms','告警短信通知','告警短信通知',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_warn_notice_sms';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='警告类消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${warnNoticeInfo}',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${warnNoticeInfo}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='发送校验码',templetDesc='发送校验码',status=1,valid=1,updateTime=now() where templetCode = 'sms_vrfCode_register';
/* 插入模版 'sms_vrfCode_register' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_vrfCode_register','发送校验码','发送校验码',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_vrfCode_register';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='验证码：${VCode}，请勿向他人泄露。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','验证码：${VCode}，请勿向他人泄露。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='首次设置支付密码通知',templetDesc='首次设置支付密码通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_renterAddPayPwd';
/* 插入模版 'sms_renter_renterAddPayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_renterAddPayPwd','首次设置支付密码通知','首次设置支付密码通知',1,0,now(),0,0,now(),0,1,11
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_renterAddPayPwd';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='房东支付密码';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='设置支付密码成功',templetContent='[设置支付密码成功]恭喜！您已成功设置蘑菇租房支付密码，支付密码是您使用蘑菇租房账户余额支付、提现等资金变动时的凭证，请妥善保管。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'设置支付密码成功','[设置支付密码成功]恭喜！您已成功设置蘑菇租房支付密码，支付密码是您使用蘑菇租房账户余额支付、提现等资金变动时的凭证，请妥善保管。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='伙伴微信绑定',templetDesc='伙伴微信绑定验证码',status=1,valid=1,updateTime=now() where templetCode = 'push_weixin_huoban_bind';
/* 插入模版 'push_weixin_huoban_bind' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_weixin_huoban_bind','伙伴微信绑定','伙伴微信绑定验证码',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_weixin_huoban_bind';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='[蘑菇伙伴] ${VCode}（“蘑菇伙伴”手机动态码，请完成验证），如非本人操作，请忽略本短信。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','[蘑菇伙伴] ${VCode}（“蘑菇伙伴”手机动态码，请完成验证），如非本人操作，请忽略本短信。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='短信预警通知',templetDesc='短信预警通知',status=1,valid=1,updateTime=now() where templetCode = 'message_attack_warning';
/* 插入模版 'message_attack_warning' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'message_attack_warning','短信预警通知','短信预警通知',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'message_attack_warning');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='message_attack_warning';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='警告类消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='短信攻击预警：${content}',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','短信攻击预警：${content}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'message_attack_warning')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'message_attack_warning')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'message_attack_warning')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='修改支付密码通知',templetDesc='修改支付密码通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_renterUpdatePayPwd';
/* 插入模版 'sms_renter_renterUpdatePayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_renterUpdatePayPwd','修改支付密码通知','修改支付密码通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_renterUpdatePayPwd';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='房东支付密码';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='支付密码已修改',templetContent='支付密码已修改，你的蘑菇租房账户支付密码已修改成功，请妥善保管，切勿泄露！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'支付密码已修改','支付密码已修改，你的蘑菇租房账户支付密码已修改成功，请妥善保管，切勿泄露！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东初始化密码',templetDesc='房东初始化帐密短信',status=1,valid=1,updateTime=now() where templetCode = 'sms_alert_landlordInitPwd';
/* 插入模版 'sms_alert_landlordInitPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_alert_landlordInitPwd','房东初始化密码','房东初始化帐密短信',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_alert_landlordInitPwd';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='您好，您的蘑菇伙伴账号已创建，初始密码为${password}。为了账户安全，请您用本手机号登陆修改密码，点击下载http://mogo.help/dl',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','您好，您的蘑菇伙伴账号已创建，初始密码为${password}。为了账户安全，请您用本手机号登陆修改密码，点击下载http://mogo.help/dl',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='子账号手机号',templetDesc='子账号手机号',status=1,valid=1,updateTime=now() where templetCode = 'sms_subAccount_addPhone';
/* 插入模版 'sms_subAccount_addPhone' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_addPhone','子账号手机号','子账号手机号',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_addPhone';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${subName}您好，您的账号已创建成功，请使用本手机号登录蘑菇伙伴App，初始密码请咨询房东。为了账号安全，请在初次登录时修改密码。点击下载http://mogo.help/dl',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${subName}您好，您的账号已创建成功，请使用本手机号登录蘑菇伙伴App，初始密码请咨询房东。为了账号安全，请在初次登录时修改密码。点击下载http://mogo.help/dl',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='新建子账号',templetDesc='新建子账号',status=1,valid=1,updateTime=now() where templetCode = 'push_subAccount_add';
/* 插入模版 'push_subAccount_add' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_subAccount_add','新建子账号','新建子账号',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_subAccount_add');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_subAccount_add';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_add')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_add')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新建子账号',templetContent='您好，${landlordName}新增了${num}个子账号，具体信息如下：${contents}。请将密码告知相应员工，并妥善保管。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新建子账号','您好，${landlordName}新增了${num}个子账号，具体信息如下：${contents}。请将密码告知相应员工，并妥善保管。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_add')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='修改子账号',templetDesc='修改子账号',status=1,valid=1,updateTime=now() where templetCode = 'push_subAccount_modify';
/* 插入模版 'push_subAccount_modify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_subAccount_modify','修改子账号','修改子账号',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_subAccount_modify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_subAccount_modify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_modify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_modify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='修改子账号',templetContent='您好，${landlordName}修改了子账号：${name}，新的账密如下：${contents}。请将密码告知相应员工，并妥善保管。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'修改子账号','您好，${landlordName}修改了子账号：${name}，新的账密如下：${contents}。请将密码告知相应员工，并妥善保管。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_modify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东修改子账号电话',templetDesc='子账号手机号（新）',status=1,valid=1,updateTime=now() where templetCode = 'sms_subAccount_modifyPhoneN';
/* 插入模版 'sms_subAccount_modifyPhoneN' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_modifyPhoneN','房东修改子账号电话','子账号手机号（新）',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_modifyPhoneN';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='${subName}您好，您的账号电话已更改，并已重置密码（咨询上级领导）。请使用本手机号重新登录蘑菇伙伴并修改密码。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','${subName}您好，您的账号电话已更改，并已重置密码（咨询上级领导）。请使用本手机号重新登录蘑菇伙伴并修改密码。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='修改登陆密码',templetDesc='修改登陆密码',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_retrievePwd';
/* 插入模版 'sms_landlord_retrievePwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_retrievePwd','修改登陆密码','修改登陆密码',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_retrievePwd';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='验证码：${VCode}，您正在修改“蘑菇伙伴”登录密码，请勿向他人泄露。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'','验证码：${VCode}，您正在修改“蘑菇伙伴”登录密码，请勿向他人泄露。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='',templetContent='',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'','',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房源审核通知',templetDesc='房源审核通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_flats_verifyHint_landlord';
/* 插入模版 'sms_flats_verifyHint_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_verifyHint_landlord','房源审核通知','房源审核通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_verifyHint_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房源审核通知',templetContent='您的房源已经发布成功！蘑菇租房会对您所提交的房源信息进行审核，若您所提交的房源信息不真实、不准确，蘑菇租房核实后会下线该房源并一律按“假房源”进行处罚！',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房源审核通知','您的房源已经发布成功！蘑菇租房会对您所提交的房源信息进行审核，若您所提交的房源信息不真实、不准确，蘑菇租房核实后会下线该房源并一律按“假房源”进行处罚！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房源审核通知',templetContent='您的房源已经发布成功！蘑菇租房会对您所提交的房源信息进行审核，若您所提交的房源信息不真实、不准确，蘑菇租房核实后会下线该房源并一律按“假房源”进行处罚！',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房源审核通知','您的房源已经发布成功！蘑菇租房会对您所提交的房源信息进行审核，若您所提交的房源信息不真实、不准确，蘑菇租房核实后会下线该房源并一律按“假房源”进行处罚！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房型审核结果通知',templetDesc='房型审核结果通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_flatsType_verify_landlord';
/* 插入模版 'sms_flatsType_verify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flatsType_verify_landlord','房型审核结果通知','房型审核结果通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flatsType_verify_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您提交的房型${roomType}下属房间共${roomNum}，审核已通过并上线，若有租客请求，请及时处理。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您提交的房型${roomType}下属房间共${roomNum}，审核已通过并上线，若有租客请求，请及时处理。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房型审核结果通知',templetContent='您好，您提交的房型${roomType}下属房间共${roomNum}，审核已通过并上线，若有租客请求，请及时处理。',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房型审核结果通知','您好，您提交的房型${roomType}下属房间共${roomNum}，审核已通过并上线，若有租客请求，请及时处理。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房间下架',templetDesc='BS强制下架时发送该消息。',status=1,valid=1,updateTime=now() where templetCode = 'fangjianxiajiadSII';
/* 插入模版 'fangjianxiajiadSII' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'fangjianxiajiadSII','房间下架','BS强制下架时发送该消息。',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'fangjianxiajiadSII');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='fangjianxiajiadSII';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房间下架',templetContent='${landlordName}您好，您的房源${roomInfo}，经审核不适合对外展示，已被平台调整隐藏，理由：${verifyIdea}。如有疑问，请联系蘑菇客服400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房间下架','${landlordName}您好，您的房源${roomInfo}，经审核不适合对外展示，已被平台调整隐藏，理由：${verifyIdea}。如有疑问，请联系蘑菇客服400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'fangjianxiajiadSII')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='照片审核未通过',templetDesc='照片审核未通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_picture_unVerify_landlord';
/* 插入模版 'sms_picture_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_picture_unVerify_landlord','照片审核未通过','照片审核未通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_picture_unVerify_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您房源${roomInfo}的照片审核未通过& #40;原因：${verifyIdea}& #41;，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您房源${roomInfo}的照片审核未通过& #40;原因：${verifyIdea}& #41;，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='图片审核未通过',templetContent='您好，您房源${roomInfo}的照片审核未通过& #40;原因：${verifyIdea}& #41;，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'图片审核未通过','您好，您房源${roomInfo}的照片审核未通过& #40;原因：${verifyIdea}& #41;，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房型审核结果通知',templetDesc='房型审核结果通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_flatsType_unVerify_landlord';
/* 插入模版 'sms_flatsType_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flatsType_unVerify_landlord','房型审核结果通知','房型审核结果通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flatsType_unVerify_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您提交的${mansionName}房型${roomType}下属房间共${roomNum}，审核未通过，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您提交的${mansionName}房型${roomType}下属房间共${roomNum}，审核未通过，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房型审核结果通知',templetContent='您好，您提交的${mansionName}房型${roomType}下属房间共${roomNum}，审核未通过，请及时修正重新提交审核。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房型审核结果通知','您好，您提交的${mansionName}房型${roomType}下属房间共${roomNum}，审核未通过，请及时修正重新提交审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房源审核通过',templetDesc='房源审核通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_flats_verify_landlord';
/* 插入模版 'sms_flats_verify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_verify_landlord','房源审核通过','房源审核通过',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_verify_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_verify_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房源审核通过',templetContent='您好，您提交的房源${roomInfo}审核已通过并上线，若有租客请求，请及时处理。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房源审核通过','您好，您提交的房源${roomInfo}审核已通过并上线，若有租客请求，请及时处理。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verify_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='普通租金账单生成日通知',templetDesc='普通租金账单生成日通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateSaleBillByBill';
/* 插入模版 'sms_CreateSaleBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill','普通租金账单生成日通知','普通租金账单生成日通知',0,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='普通租金账单生成日通知',templetContent='您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单已生成，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP完成付款。蘑菇租房400-800-4949',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'普通租金账单生成日通知','您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单已生成，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP完成付款。蘑菇租房400-800-4949',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='租客非租金账单催缴提醒',templetDesc='租客非租金账单催缴提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_20001_overdue';
/* 插入模版 'bill_renter_20001_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_overdue','租客非租金账单催缴提醒','租客非租金账单催缴提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_overdue';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客非租金账单催缴提醒',templetContent='${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客非租金账单催缴提醒','${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='非租金账单催缴提醒',templetContent='${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'非租金账单催缴提醒','${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客非租金账单逾期当日提醒',templetDesc='租客非租金账单逾期当日提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_20001_payday';
/* 插入模版 'bill_renter_20001_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_payday','租客非租金账单逾期当日提醒','租客非租金账单逾期当日提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_payday';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='非租金账单逾期当日提醒',templetContent='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'非租金账单逾期当日提醒','您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客账单拆分提醒',templetDesc='租客账单拆分提醒',status=1,valid=1,updateTime=now() where templetCode = 'runter_bill_split';
/* 插入模版 'runter_bill_split' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'runter_bill_split','租客账单拆分提醒','租客账单拆分提醒',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'runter_bill_split');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='runter_bill_split';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客账单拆分提醒',templetContent='${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}的24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客账单拆分提醒','${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}的24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_split')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单拆分提醒',templetContent='${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}的24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单拆分提醒','${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}的24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_split')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客账单优惠提醒',templetDesc='租客账单优惠提醒',status=1,valid=1,updateTime=now() where templetCode = 'runter_bill_favorable';
/* 插入模版 'runter_bill_favorable' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'runter_bill_favorable','租客账单优惠提醒','租客账单优惠提醒',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'runter_bill_favorable');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='runter_bill_favorable';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客账单优惠提醒',templetContent='${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客账单优惠提醒','${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_favorable')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单优惠提醒',templetContent='${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单优惠提醒','${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_favorable')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东租金账单当日提醒',templetDesc='房东租金账单当日提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_landlord_1004_payday';
/* 插入模版 'bill_landlord_1004_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_landlord_1004_payday','房东租金账单当日提醒','房东租金账单当日提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_landlord_1004_payday';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东租金账单当日提醒',templetContent='${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房东租金账单当日提醒','${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单当日提醒',templetContent='${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单当日提醒','${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客租金账单催缴提醒',templetDesc='租客租金账单催缴提醒，租金账单逾期1、3、7天',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_1004_overdue';
/* 插入模版 'bill_renter_1004_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_1004_overdue','租客租金账单催缴提醒','租客租金账单催缴提醒，租金账单逾期1、3、7天',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_1004_overdue';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客租金账单催缴提醒',templetContent='${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客租金账单催缴提醒','${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单催缴提醒',templetContent='${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单催缴提醒','${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客新增账单已付反馈',templetDesc='租客新增账单已付反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill';
/* 插入模版 'sms_renterinfo_afterpaid_withdefinedbill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renterinfo_afterpaid_withdefinedbill','租客新增账单已付反馈','租客新增账单已付反馈',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renterinfo_afterpaid_withdefinedbill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${renterName}您好，感谢您支付${roomInfo}的#${billName}#账单。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${renterName}您好，感谢您支付${roomInfo}的#${billName}#账单。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新增账单已付反馈',templetContent='${renterName}您好，感谢您支付${roomInfo}的#${billName}#账单。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新增账单已付反馈','${renterName}您好，感谢您支付${roomInfo}的#${billName}#账单。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客账单逾期提醒（当日）',templetDesc='租客账单逾期提醒（当日）',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateSaleBillByBill_payday';
/* 插入模版 'sms_CreateSaleBillByBill_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill_payday','租客账单逾期提醒（当日）','租客账单逾期提醒（当日）',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单逾期提醒',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单逾期提醒','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单到期未付',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单到期未付','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客账单逾期提醒（3天前）',templetDesc='租客账单逾期提醒（3天前）',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateSaleBillByBill_before3';
/* 插入模版 'sms_CreateSaleBillByBill_before3' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill_before3','租客账单逾期提醒（3天前）','租客账单逾期提醒（3天前）',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill_before3';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单逾期提醒',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单逾期提醒','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单三天后逾期',templetContent='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单三天后逾期','您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东常规账单已付提醒',templetDesc='房东常规账单已付提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill';
/* 插入模版 'sms_landlordinfo_afterpaid_withdefinedbill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlordinfo_afterpaid_withdefinedbill','房东常规账单已付提醒','房东常规账单已付提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlordinfo_afterpaid_withdefinedbill';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='常规账单已付提醒',templetContent='租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'常规账单已付提醒','租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客充值反馈',templetDesc='租客充值反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_rechargeSuccess';
/* 插入模版 'sms_renter_rechargeSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_rechargeSuccess','租客充值反馈','租客充值反馈',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_rechargeSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='充值反馈',templetContent='你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'充值反馈','你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='子账号退款审核成功提醒',templetDesc='子账号退款审核成功提醒',status=1,valid=1,updateTime=now() where templetCode = 'landlord_checkout_audit_agree';
/* 插入模版 'landlord_checkout_audit_agree' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'landlord_checkout_audit_agree','子账号退款审核成功提醒','子账号退款审核成功提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='landlord_checkout_audit_agree';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='子账号退款审核成功提醒',templetContent='${userInfoName}您好，您的${roomInfo}退款申请已通过审核。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'子账号退款审核成功提醒','${userInfoName}您好，您的${roomInfo}退款申请已通过审核。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='退款审核成功提醒',templetContent='${userInfoName}您好，您的${roomInfo}退款申请已通过审核。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'退款审核成功提醒','${userInfoName}您好，您的${roomInfo}退款申请已通过审核。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东支付密码重置成功',templetDesc='房东支付密码重置成功',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_paypwd_update';
/* 插入模版 'sms_partner_paypwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_paypwd_update','房东支付密码重置成功','房东支付密码重置成功',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_paypwd_update';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您的蘑菇伙伴支付密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您的蘑菇伙伴支付密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东支付密码重置成功',templetContent='您的蘑菇伙伴支付密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东支付密码重置成功','您的蘑菇伙伴支付密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客提现失败提醒',templetDesc='租客提现失败提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_withdrawal_fail';
/* 插入模版 'sms_withdrawal_fail' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_withdrawal_fail','租客提现失败提醒','租客提现失败提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_withdrawal_fail';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[提现通知]您好，您在${datetime}发起的提现申请处理失败${remark}请登录蘑菇租房核对卡号、姓名等相关信息是否准确。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[提现通知]您好，您在${datetime}发起的提现申请处理失败${remark}请登录蘑菇租房核对卡号、姓名等相关信息是否准确。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='提现失败提醒',templetContent='[提现通知]您好，您在${datetime}发起的提现申请处理失败${remark}请登录蘑菇租房核对卡号、姓名等相关信息是否准确。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'提现失败提醒','[提现通知]您好，您在${datetime}发起的提现申请处理失败${remark}请登录蘑菇租房核对卡号、姓名等相关信息是否准确。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客提现到帐提醒',templetDesc='租客提现到帐提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_withdrawal_success';
/* 插入模版 'sms_withdrawal_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_withdrawal_success','租客提现到帐提醒','租客提现到帐提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_withdrawal_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[提现通知]您好，您在${datetime}发起的提现交易已到账，请注意查收，可立即登录蘑菇租房APP查看详情。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[提现通知]您好，您在${datetime}发起的提现交易已到账，请注意查收，可立即登录蘑菇租房APP查看详情。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客提现到帐提醒',templetContent='[提现通知]您好，您在${datetime}发起的提现交易已到账，请注意查收，可立即登录蘑菇租房APP查看详情。【蘑菇租房-让我们住得更好】',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租客提现到帐提醒','[提现通知]您好，您在${datetime}发起的提现交易已到账，请注意查收，可立即登录蘑菇租房APP查看详情。【蘑菇租房-让我们住得更好】',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客提现提醒',templetDesc='租客提现提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_withdrawalSuccess';
/* 插入模版 'sms_renter_withdrawalSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_withdrawalSuccess','租客提现提醒','租客提现提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_withdrawalSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[提现通知]您好，您在${applyTime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计1-3个工作日内到账，请耐心等待。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[提现通知]您好，您在${applyTime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计1-3个工作日内到账，请耐心等待。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客提现提醒',templetContent='[提现通知]您好，您在${applyTime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计1-3个工作日内到账，请耐心等待。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租客提现提醒','[提现通知]您好，您在${applyTime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计1-3个工作日内到账，请耐心等待。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东修改支付密码提醒',templetDesc='房东修改支付密码提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_changePayPwd';
/* 插入模版 'sms_landlord_changePayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_changePayPwd','房东修改支付密码提醒','房东修改支付密码提醒',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_changePayPwd';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[修改支付密码]你正在使用该手机号修改“蘑菇伙伴”账户支付密码，手机校验码：${VCode}。若非本人操作，请及时联系蘑菇租房400-800-4949。。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[修改支付密码]你正在使用该手机号修改“蘑菇伙伴”账户支付密码，手机校验码：${VCode}。若非本人操作，请及时联系蘑菇租房400-800-4949。。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东修改支付密码提醒',templetContent='[修改支付密码]你正在使用该手机号修改“蘑菇伙伴”账户支付密码，手机校验码：${VCode}。若非本人操作，请及时联系蘑菇租房400-800-4949。',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东修改支付密码提醒','[修改支付密码]你正在使用该手机号修改“蘑菇伙伴”账户支付密码，手机校验码：${VCode}。若非本人操作，请及时联系蘑菇租房400-800-4949。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东提现提醒',templetDesc='房东提现提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_withdrawal_success';
/* 插入模版 'sms_landlord_withdrawal_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_withdrawal_success','房东提现提醒','房东提现提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_withdrawal_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='你在“蘑菇伙伴”账户提现了${money}元,账户余额:${balance}元.若非本人操作或有疑问，请及时联系蘑菇租房！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','你在“蘑菇伙伴”账户提现了${money}元,账户余额:${balance}元.若非本人操作或有疑问，请及时联系蘑菇租房！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东提现提醒',templetContent='你在“蘑菇伙伴”账户提现了${money}元,账户余额:${balance}元.若非本人操作或有疑问，请及时联系蘑菇租房！',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东提现提醒','你在“蘑菇伙伴”账户提现了${money}元,账户余额:${balance}元.若非本人操作或有疑问，请及时联系蘑菇租房！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客签约确认提醒',templetDesc='租客签约确认提醒',status=1,valid=1,updateTime=now() where templetCode = 'msg_confirm_signed_renter_approval';
/* 插入模版 'msg_confirm_signed_renter_approval' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_confirm_signed_renter_approval','租客签约确认提醒','租客签约确认提醒',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_confirm_signed_renter_approval';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='恭喜您${renterName}，离住进${communityName}只差一步了，房东已同意签约，请登录蘑菇租房APP进入订单确认并完成签约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','恭喜您${renterName}，离住进${communityName}只差一步了，房东已同意签约，请登录蘑菇租房APP进入订单确认并完成签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约确认提醒',templetContent='恭喜您${renterName}，离住进${communityName}只差一步了，房东已同意签约，请登录蘑菇租房APP进入订单确认并完成签约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约确认提醒','恭喜您${renterName}，离住进${communityName}只差一步了，房东已同意签约，请登录蘑菇租房APP进入订单确认并完成签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客发送合同反馈',templetDesc='租客发送合同反馈',status=1,valid=1,updateTime=now() where templetCode = 'sendRenterContractFile';
/* 插入模版 'sendRenterContractFile' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sendRenterContractFile','租客发送合同反馈','租客发送合同反馈',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sendRenterContractFile');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sendRenterContractFile';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客发送合同反馈',templetContent='您已在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子租赁合同，请注意查收。蘑菇租房，让我们住的更好！',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客发送合同反馈','您已在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子租赁合同，请注意查收。蘑菇租房，让我们住的更好！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='发送合同反馈',templetContent='您已在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子租赁合同，请注意查收。蘑菇租房，让我们住的更好！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'发送合同反馈','您已在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子租赁合同，请注意查收。蘑菇租房，让我们住的更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇租房租赁合同',templetContent='& lt;!DOCTYPE html& gt;& lt;html lang="en"& gt;& lt;head& gt;& lt;meta charset="UTF-8"& gt;& lt;title& gt;mail model& lt;/title& gt;& lt;style& gt;*{margin:0;padding:0;font-size:14px;font-family:Tahoma,Arial,Roboto,"Microsoft Yahei","Droid Sans","Helvetica Neue","Droid Sans Fallback","Heiti SC","Hiragino Sans GB",Simsun,sans-self;color:#282828;}.container{width:640px;margin:0 auto;margin-top:30px;margin-bottom:30px;background:#fff;border:1px solid #dcdcdc;box-shadow:0 0 5px #dcdcdc;}.block{padding:0 40px;line-height:25px;}.block .blockinner{padding:70px 0;}.block .blockinner p{line-height:25px;}.block .blockinner.blockinner1{border-bottom:1px solid #dcdcdc;}.link{color:#f65000;text-decoration:none;}.link:hover{text-decoration:underline;}.blockdown{position:relative;padding:35px 40px;line-height:25px;background:#d3d7dc;}.codebox{position:absolute;top:28px;right:28px;width:125px;text-align:center;}& lt;/style& gt;& lt;/head& gt;& lt;body& gt;& lt;div class="container"& gt;& lt;div class="block-top"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-title.jpg" alt="logo"& gt;& lt;/div& gt;& lt;div class="block"& gt;& lt;div class="blockinner blockinner1"& gt;& lt;p& gt;亲爱的& lt;strong& gt;${renterName}& lt;/strong& gt; 您好：& lt;/p& gt;& lt;p style="text-indent:2em"& gt;附件是您的电子合同文档，请注意查收，并妥善保管。& lt;/p& gt;& lt;/div& gt;& lt;div class="blockinner"& gt;& lt;p& gt;有任何问题？& lt;/p& gt;& lt;p& gt;如果对合同内容有疑问，或需要其他帮助，请查看我们的& lt;a class="link" href="http://www.mogoroom.com/help" target="_blank"& gt;帮助中心& lt;/a& gt;。& lt;/p& gt;& lt;/div& gt;& lt;/div& gt;& lt;div class="blockdown"& gt;& lt;p& gt;此邮件为系统邮件，请勿直接回复。& lt;/p& gt;& lt;p& gt; & lt;/p& gt;& lt;p& gt;客服邮箱：mogoservice@mogoroom.com& lt;/p& gt;& lt;p& gt;客服热线：400-800-4949（周一至周日 9:00-21:00）& lt;/p& gt;& lt;div class="codebox"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-code.jpg" alt="二维码"& gt;& lt;div class="codeboxtxt"& gt;蘑菇租房官方微信& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/body& gt;& lt;/html& gt;',status=1 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'蘑菇租房租赁合同','& lt;!DOCTYPE html& gt;& lt;html lang="en"& gt;& lt;head& gt;& lt;meta charset="UTF-8"& gt;& lt;title& gt;mail model& lt;/title& gt;& lt;style& gt;*{margin:0;padding:0;font-size:14px;font-family:Tahoma,Arial,Roboto,"Microsoft Yahei","Droid Sans","Helvetica Neue","Droid Sans Fallback","Heiti SC","Hiragino Sans GB",Simsun,sans-self;color:#282828;}.container{width:640px;margin:0 auto;margin-top:30px;margin-bottom:30px;background:#fff;border:1px solid #dcdcdc;box-shadow:0 0 5px #dcdcdc;}.block{padding:0 40px;line-height:25px;}.block .blockinner{padding:70px 0;}.block .blockinner p{line-height:25px;}.block .blockinner.blockinner1{border-bottom:1px solid #dcdcdc;}.link{color:#f65000;text-decoration:none;}.link:hover{text-decoration:underline;}.blockdown{position:relative;padding:35px 40px;line-height:25px;background:#d3d7dc;}.codebox{position:absolute;top:28px;right:28px;width:125px;text-align:center;}& lt;/style& gt;& lt;/head& gt;& lt;body& gt;& lt;div class="container"& gt;& lt;div class="block-top"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-title.jpg" alt="logo"& gt;& lt;/div& gt;& lt;div class="block"& gt;& lt;div class="blockinner blockinner1"& gt;& lt;p& gt;亲爱的& lt;strong& gt;${renterName}& lt;/strong& gt; 您好：& lt;/p& gt;& lt;p style="text-indent:2em"& gt;附件是您的电子合同文档，请注意查收，并妥善保管。& lt;/p& gt;& lt;/div& gt;& lt;div class="blockinner"& gt;& lt;p& gt;有任何问题？& lt;/p& gt;& lt;p& gt;如果对合同内容有疑问，或需要其他帮助，请查看我们的& lt;a class="link" href="http://www.mogoroom.com/help" target="_blank"& gt;帮助中心& lt;/a& gt;。& lt;/p& gt;& lt;/div& gt;& lt;/div& gt;& lt;div class="blockdown"& gt;& lt;p& gt;此邮件为系统邮件，请勿直接回复。& lt;/p& gt;& lt;p& gt; & lt;/p& gt;& lt;p& gt;客服邮箱：mogoservice@mogoroom.com& lt;/p& gt;& lt;p& gt;客服热线：400-800-4949（周一至周日 9:00-21:00）& lt;/p& gt;& lt;div class="codebox"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-code.jpg" alt="二维码"& gt;& lt;div class="codeboxtxt"& gt;蘑菇租房官方微信& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/body& gt;& lt;/html& gt;',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新模版 */
update mesg_templet set templetName='租客签约被撤销提醒',templetDesc='租客签约被撤销提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_saleContract_cancel';
/* 插入模版 'sms_saleContract_cancel' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_saleContract_cancel','租客签约被撤销提醒','租客签约被撤销提醒',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_saleContract_cancel';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客签约被撤销提醒',templetContent='${renterName}您好，房东${landlordName}已撤销${roomInfo}的签约（退款${refund}元），若有疑问请与房东联系。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客签约被撤销提醒','${renterName}您好，房东${landlordName}已撤销${roomInfo}的签约（退款${refund}元），若有疑问请与房东联系。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约被撤销提醒',templetContent='${renterName}您好，房东${landlordName}已撤销${roomInfo}的签约（退款${refund}元），若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约被撤销提醒','${renterName}您好，房东${landlordName}已撤销${roomInfo}的签约（退款${refund}元），若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客签约资料有误提醒',templetDesc='租客签约资料有误提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_signUnsuccess_errorInfo';
/* 插入模版 'sms_renter_signUnsuccess_errorInfo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signUnsuccess_errorInfo','租客签约资料有误提醒','租客签约资料有误提醒',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signUnsuccess_errorInfo';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您提交的签约单资料有误，已被退回（${remark}），请登录蘑菇租房APP修改资料并重新提交。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您提交的签约单资料有误，已被退回（${remark}），请登录蘑菇租房APP修改资料并重新提交。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约资料有误提醒',templetContent='您提交的签约单资料有误，已被退回（${remark}），请登录蘑菇租房APP修改资料并重新提交。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约资料有误提醒','您提交的签约单资料有误，已被退回（${remark}），请登录蘑菇租房APP修改资料并重新提交。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客线上签约成功反馈',templetDesc='租客线上签约成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_sendPayFirstPhaseMessage';
/* 插入模版 'sms_sendPayFirstPhaseMessage' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_sendPayFirstPhaseMessage','租客线上签约成功反馈','租客线上签约成功反馈',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_sendPayFirstPhaseMessage';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客线上签约成功反馈',templetContent='恭喜！您已成功签约${roomInfo}，请最迟于${dueDate}支付您的第一期款项（${totalMoney}元）。愿您租住安心，生活愉快。关注蘑菇租房“mogoroom”开启快乐生活~',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客线上签约成功反馈','恭喜！您已成功签约${roomInfo}，请最迟于${dueDate}支付您的第一期款项（${totalMoney}元）。愿您租住安心，生活愉快。关注蘑菇租房“mogoroom”开启快乐生活~',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='线上签约成功反馈',templetContent='恭喜！您已成功签约${roomInfo}，请最迟于${dueDate}支付您的第一期款项（${totalMoney}元）。愿您租住安心，生活愉快。关注蘑菇租房“mogoroom”开启快乐生活~',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'线上签约成功反馈','恭喜！您已成功签约${roomInfo}，请最迟于${dueDate}支付您的第一期款项（${totalMoney}元）。愿您租住安心，生活愉快。关注蘑菇租房“mogoroom”开启快乐生活~',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客签约审核失败反馈',templetDesc='租客签约审核失败反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_signUnsuccess_refundAll';
/* 插入模版 'sms_renter_signUnsuccess_refundAll' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signUnsuccess_refundAll','租客签约审核失败反馈','租客签约审核失败反馈',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signUnsuccess_refundAll';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您好，${roomInfo}签约未通过审核，退还定金${returnMoney}元，若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您好，${roomInfo}签约未通过审核，退还定金${returnMoney}元，若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约审核失败反馈',templetContent='您好，${roomInfo}签约未通过审核，退还定金${returnMoney}元，若有疑问请与房东联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约审核失败反馈','您好，${roomInfo}签约未通过审核，退还定金${returnMoney}元，若有疑问请与房东联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东签约审核提醒',templetDesc='房东签约审核提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_signing_wait_audit';
/* 插入模版 'sms_signing_wait_audit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_audit','房东签约审核提醒','房东签约审核提醒',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_audit';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东签约审核提醒',templetContent='${landlordName}您好，${roomInfo}有一笔签约单，请及时审核，租客：${renterName}（号码：${renterPhoneNum}）。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房东签约审核提醒','${landlordName}您好，${roomInfo}有一笔签约单，请及时审核，租客：${renterName}（号码：${renterPhoneNum}）。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='签约审核提醒',templetContent='${landlordName}您好，${roomInfo}有一笔签约单，请及时审核，租客：${renterName}（号码：${renterPhoneNum}）。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'签约审核提醒','${landlordName}您好，${roomInfo}有一笔签约单，请及时审核，租客：${renterName}（号码：${renterPhoneNum}）。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定超时反馈',templetDesc='租客预定超时反馈，签约失效定时器通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_signInvalid_timing';
/* 插入模版 'sms_renter_signInvalid_timing' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signInvalid_timing','租客预定超时反馈','租客预定超时反馈，签约失效定时器通知',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signInvalid_timing';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='【蘑菇租房】您好，由于您未在签约时限内完成签约，您的订单已失效，定金已转入房东账户。若有疑问，请与房东联系了解详情。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','【蘑菇租房】您好，由于您未在签约时限内完成签约，您的订单已失效，定金已转入房东账户。若有疑问，请与房东联系了解详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定超时反馈',templetContent='【蘑菇租房】您好，由于您未在签约时限内完成签约，您的订单已失效，定金已转入房东账户。若有疑问，请与房东联系了解详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定超时反馈','【蘑菇租房】您好，由于您未在签约时限内完成签约，您的订单已失效，定金已转入房东账户。若有疑问，请与房东联系了解详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定成功反馈B',templetDesc='房东修改定金后租客成功支付定金',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_updateprice_bookOrderSuccess';
/* 插入模版 'sms_renter_updateprice_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateprice_bookOrderSuccess','租客预定成功反馈B','房东修改定金后租客成功支付定金',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateprice_bookOrderSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndDay}日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndDay}日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定成功反馈',templetContent='恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndDay}日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定成功反馈','恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndDay}日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定成功反馈A',templetDesc='房东修改定金后，租客完成定金支付',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_bookOrderSuccess_not_review';
/* 插入模版 'sms_renter_bookOrderSuccess_not_review' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_bookOrderSuccess_not_review','租客预定成功反馈A','房东修改定金后，租客完成定金支付',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_bookOrderSuccess_not_review';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='【蘑菇租房】恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。畅快沟通，从此住的更好！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','【蘑菇租房】恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。畅快沟通，从此住的更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定成功反馈',templetContent='【蘑菇租房】恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。畅快沟通，从此住的更好！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定成功反馈','【蘑菇租房】恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。畅快沟通，从此住的更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定失效反馈',templetDesc='签约失效通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_signInvalid';
/* 插入模版 'sms_renter_signInvalid' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signInvalid','租客预定失效反馈','签约失效通知',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signInvalid';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='由于你未在预定3天内完成签约,你的预定单已失效且系统将会扣除定金并转入房东账户。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','由于你未在预定3天内完成签约,你的预定单已失效且系统将会扣除定金并转入房东账户。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定失效反馈',templetContent='由于你未在预定3天内完成签约,你的预定单已失效且系统将会扣除定金并转入房东账户。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定失效反馈','由于你未在预定3天内完成签约,你的预定单已失效且系统将会扣除定金并转入房东账户。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定成功提醒',templetDesc='预定成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_bookOrderSuccess';
/* 插入模版 'sms_renter_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_bookOrderSuccess','租客预定成功提醒','预定成功反馈',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_bookOrderSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='恭喜你预定成功，请在3天内完成签约！',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','恭喜你预定成功，请在3天内完成签约！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定成功提醒',templetContent='恭喜你预定成功，请在3天内完成签约！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定成功提醒','恭喜你预定成功，请在3天内完成签约！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定超时提醒',templetDesc='租客预定超时提醒，预定将过期',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_reserveWillOverdue_bookorder';
/* 插入模版 'sms_renter_reserveWillOverdue_bookorder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_reserveWillOverdue_bookorder','租客预定超时提醒','租客预定超时提醒，预定将过期',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_reserveWillOverdue_bookorder';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[预定将过期]您好，您${communityName}小区房源的订单签约时限将在12个小时后过期，为避免影响您顺利入住，请立即完成签约。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[预定将过期]您好，您${communityName}小区房源的订单签约时限将在12个小时后过期，为避免影响您顺利入住，请立即完成签约。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定超时提醒',templetContent='[预定将过期]您好，您${communityName}小区房源的订单签约时限将在12个小时后过期，为避免影响您顺利入住，请立即完成签约。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定超时提醒','[预定将过期]您好，您${communityName}小区房源的订单签约时限将在12个小时后过期，为避免影响您顺利入住，请立即完成签约。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定被撤销提醒',templetDesc='租客预定被撤销提醒，房东撤销预订单',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_refuse_bookorder';
/* 插入模版 'sms_renter_refuse_bookorder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_refuse_bookorder','租客预定被撤销提醒','租客预定被撤销提醒，房东撤销预订单',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_refuse_bookorder';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[预定被撤销]房东已撤销${communityName}小区房源的预定单，定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[预定被撤销]房东已撤销${communityName}小区房源的预定单，定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定被撤销提醒',templetContent='[预定被撤销]房东已撤销${communityName}小区房源的预定单，定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定被撤销提醒','[预定被撤销]房东已撤销${communityName}小区房源的预定单，定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客定金变更反馈',templetDesc='租客定金变更反馈，定金更新提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_bookOrder_price_update';
/* 插入模版 'sms_bookOrder_price_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_bookOrder_price_update','租客定金变更反馈','租客定金变更反馈，定金更新提醒',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_bookOrder_price_update';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客定金变更反馈',templetContent='[定金已更新]房东为您更新了订单的定金等信息，请在60分钟内完成支付，超时未支付订单将失效【蘑菇租房-让我们住得更好】',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客定金变更反馈','[定金已更新]房东为您更新了订单的定金等信息，请在60分钟内完成支付，超时未支付订单将失效【蘑菇租房-让我们住得更好】',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='定金变更反馈',templetContent='[定金已更新]房东为您更新了订单的定金等信息，请在60分钟内完成支付，超时未支付订单将失效【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'定金变更反馈','[定金已更新]房东为您更新了订单的定金等信息，请在60分钟内完成支付，超时未支付订单将失效【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约取消提醒',templetDesc='租客预约取消提醒，未看房，房源被他人预定/签约',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_notShowingsCode';
/* 插入模版 'sms_renter_notShowingsCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_notShowingsCode','租客预约取消提醒','租客预约取消提醒，未看房，房源被他人预定/签约',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_notShowingsCode';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客预约取消提醒',templetContent='很抱歉地通知您，${communityName}小区房源已被他人抢先预定，重新调整下您的看房计划吧。若有疑问，请与房东联系了解详情。',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客预约取消提醒','很抱歉地通知您，${communityName}小区房源已被他人抢先预定，重新调整下您的看房计划吧。若有疑问，请与房东联系了解详情。',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约取消提醒',templetContent='很抱歉地通知您，${communityName}小区房源已被他人抢先预定，重新调整下您的看房计划吧。若有疑问，请与房东联系了解详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约取消提醒','很抱歉地通知您，${communityName}小区房源已被他人抢先预定，重新调整下您的看房计划吧。若有疑问，请与房东联系了解详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预定审核失败反馈',templetDesc='预定审核失败反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_refuseBookOrder';
/* 插入模版 'sms_renter_refuseBookOrder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_refuseBookOrder','租客预定审核失败反馈','预定审核失败反馈',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_refuseBookOrder';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客预定审核失败反馈',templetContent='很遗憾，你有一笔预定单未通过房东审核，定金将退回。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客预定审核失败反馈','很遗憾，你有一笔预定单未通过房东审核，定金将退回。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预定审核失败反馈',templetContent='很遗憾，你有一笔预定单未通过房东审核，定金将退回。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预定审核失败反馈','很遗憾，你有一笔预定单未通过房东审核，定金将退回。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约成功反馈B',templetDesc='租客预约成功反馈，官网预约发送通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_guanWangYuyueSuccessNotify';
/* 插入模版 'sms_renter_guanWangYuyueSuccessNotify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_guanWangYuyueSuccessNotify','租客预约成功反馈B','租客预约成功反馈，官网预约发送通知',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_guanWangYuyueSuccessNotify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${yuyueInfo}及相关密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${yuyueInfo}及相关密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约成功反馈',templetContent='${yuyueInfo}及相关密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约成功反馈','${yuyueInfo}及相关密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东新预约带看提醒',templetDesc='房东新预约带看提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push';
/* 插入模版 'sms_landlord_guanWangYuyueSuccessNotify_push' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_guanWangYuyueSuccessNotify_push','房东新预约带看提醒','房东新预约带看提醒',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify_push';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约带看申请',templetContent='${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约带看申请','${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约房源已售提醒C',templetDesc='预约房源已售提醒，房源已售消息通知（预约来源APP）',status=1,valid=1,updateTime=now() where templetCode = 'sms_roomRented_3_notify';
/* 插入模版 'sms_roomRented_3_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_3_notify','租客预约房源已售提醒C','预约房源已售提醒，房源已售消息通知（预约来源APP）',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_3_notify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约房源已售提醒',templetContent='亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约房源已售提醒','亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约房源已售提醒B',templetDesc='预约房源已售提醒，房源已售消息通知（看房在当前之后）',status=1,valid=1,updateTime=now() where templetCode = 'sms_roomRented_2_notify';
/* 插入模版 'sms_roomRented_2_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_2_notify','租客预约房源已售提醒B','预约房源已售提醒，房源已售消息通知（看房在当前之后）',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_2_notify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约房源已售提醒',templetContent='亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约房源已售提醒','亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约房源已售提醒A',templetDesc='房源已售消息通知（预约来源官网）',status=1,valid=1,updateTime=now() where templetCode = 'sms_roomRented_1_notify';
/* 插入模版 'sms_roomRented_1_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_1_notify','租客预约房源已售提醒A','房源已售消息通知（预约来源官网）',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_1_notify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约房源已售提醒',templetContent='亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约房源已售提醒','亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客带看后已租反馈',templetDesc='带看后已租反馈，看房后48小时内，房源被他人预定/签约',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_alreadyShowingsCode';
/* 插入模版 'sms_renter_alreadyShowingsCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_alreadyShowingsCode','租客带看后已租反馈','带看后已租反馈，看房后48小时内，房源被他人预定/签约',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_alreadyShowingsCode';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客带看后已租反馈',templetContent='[房源已出租]犹豫是把杀猪刀，刚转身您看过的${communityName}小区房源已被出租。没关系，更多好房又上线了，找一个更好的吧！【蘑菇租房-让我们住得更好】',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客带看后已租反馈','[房源已出租]犹豫是把杀猪刀，刚转身您看过的${communityName}小区房源已被出租。没关系，更多好房又上线了，找一个更好的吧！【蘑菇租房-让我们住得更好】',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='带看后已租反馈',templetContent='[房源已出租]犹豫是把杀猪刀，刚转身您看过的${communityName}小区房源已被出租。没关系，更多好房又上线了，找一个更好的吧！【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'带看后已租反馈','[房源已出租]犹豫是把杀猪刀，刚转身您看过的${communityName}小区房源已被出租。没关系，更多好房又上线了，找一个更好的吧！【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约成功反馈',templetDesc='租客预约成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_appointment_return_success';
/* 插入模版 'sms_appointment_return_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_appointment_return_success','租客预约成功反馈','租客预约成功反馈',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_appointment_return_success';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客预约成功反馈',templetContent='[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】',status=0 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'租客预约成功反馈','[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约成功反馈',templetContent='[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约成功反馈','[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客预约成功反馈A',templetDesc='预约成功反馈',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_guanWangYuyueSuccess';
/* 插入模版 'sms_renter_guanWangYuyueSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_guanWangYuyueSuccess','租客预约成功反馈A','预约成功反馈',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_guanWangYuyueSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${yuyueInfo}您可以使用该账号密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${yuyueInfo}您可以使用该账号密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='租客预约成功反馈A',templetContent='${yuyueInfo}您可以使用该账号密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租客预约成功反馈A','${yuyueInfo}您可以使用该账号密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东新预约带看提醒',templetDesc='新预约带看提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify';
/* 插入模版 'sms_landlord_guanWangYuyueSuccessNotify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_guanWangYuyueSuccessNotify','房东新预约带看提醒','新预约带看提醒',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新预约带看提醒',templetContent='${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新预约带看提醒','${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东新预定单提醒',templetDesc='新预定单提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_bookOrderSuccess';
/* 插入模版 'sms_landlord_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_bookOrderSuccess','房东新预定单提醒','新预定单提醒',1,0,now(),0,0,now(),0,1,2
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_bookOrderSuccess';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${name}你好，${roomInfo}房源有一笔预定单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${name}你好，${roomInfo}房源有一笔预定单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='新预定单提醒',templetContent='${name}你好，${roomInfo}房源有一笔预定单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'新预定单提醒','${name}你好，${roomInfo}房源有一笔预定单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金过期通知',templetDesc='业主租金过期通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_hostacct_duedate';
/* 插入模版 'sms_partner_hostacct_duedate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_hostacct_duedate','租金过期通知','业主租金过期通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_hostacct_duedate';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='${flatCommunity}的业主租金已过期，请及时补交，若已支付请登录系统确认。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','${flatCommunity}的业主租金已过期，请及时补交，若已支付请登录系统确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='业主租金账单已过期',templetContent='${flatCommunity}的业主租金已过期，请及时补交，若已支付请登录系统确认。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'业主租金账单已过期','${flatCommunity}的业主租金已过期，请及时补交，若已支付请登录系统确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='支付租金通知',templetDesc='业主账单前7天发送',status=1,valid=1,updateTime=now() where templetCode = 'sms_partner_comming_hostacct';
/* 插入模版 'sms_partner_comming_hostacct' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_comming_hostacct','支付租金通知','业主账单前7天发送',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_comming_hostacct';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您需要在7日内向${flatCommunity}的业主支付租金，支付完成后请登录蘑菇伙伴确认付款。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您需要在7日内向${flatCommunity}的业主支付租金，支付完成后请登录蘑菇伙伴确认付款。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='业主租金支付通知',templetContent='您需要在7日内向${flatCommunity}的业主支付租金，支付完成后请登录蘑菇伙伴确认付款。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'业主租金支付通知','您需要在7日内向${flatCommunity}的业主支付租金，支付完成后请登录蘑菇伙伴确认付款。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝资料有误',templetDesc='蘑菇宝资料有误',status=1,valid=1,updateTime=now() where templetCode = 'sms_mogoverify_validfail_torenter';
/* 插入模版 'sms_mogoverify_validfail_torenter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_mogoverify_validfail_torenter','蘑菇宝资料有误','蘑菇宝资料有误',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_torenter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_mogoverify_validfail_torenter';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您${dateTime}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您${dateTime}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_torenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝资料有误',templetContent='您${dateTime}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝资料有误','您${dateTime}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_validfail_torenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝终审通过',templetDesc='蘑菇宝终审通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_finalapprove_success';
/* 插入模版 'sms_renter_mogobao_finalapprove_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_finalapprove_success','蘑菇宝终审通过','蘑菇宝终审通过',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_finalapprove_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_finalapprove_success';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝终审通过',templetContent='尊敬的${renterName}，恭喜您，您申请的${roomInfo}蘑菇宝业务已审核通过。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝终审通过','尊敬的${renterName}，恭喜您，您申请的${roomInfo}蘑菇宝业务已审核通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_finalapprove_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝终审不通过',templetDesc='蘑菇宝终审不通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_end_failure';
/* 插入模版 'sms_renter_mogobao_end_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_end_failure','蘑菇宝终审不通过','蘑菇宝终审不通过',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_end_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_end_failure';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝终审不通过',templetContent='尊敬的${renterName}，非常遗憾，您申请的${roomInfo}蘑菇宝业务审核未通过。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝终审不通过','尊敬的${renterName}，非常遗憾，您申请的${roomInfo}蘑菇宝业务审核未通过。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_end_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝审核通过',templetDesc='蘑菇宝审核通过',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_approved_success';
/* 插入模版 'sms_renter_mogobao_approved_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_approved_success','蘑菇宝审核通过','蘑菇宝审核通过',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_approved_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_approved_success';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。如后期需要退房，请登录蘑菇租房APP进行操作。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。如后期需要退房，请登录蘑菇租房APP进行操作。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_approved_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝审核通过',templetContent='您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。如后期需要退房，请登录蘑菇租房APP进行操作。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝审核通过','您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。如后期需要退房，请登录蘑菇租房APP进行操作。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_approved_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝审核不通',templetDesc='蘑菇宝审核不通',status=1,valid=1,updateTime=now() where templetCode = 'sms_mogoverify_fail_torenter';
/* 插入模版 'sms_mogoverify_fail_torenter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_mogoverify_fail_torenter','蘑菇宝审核不通','蘑菇宝审核不通',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_torenter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_mogoverify_fail_torenter';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_torenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝审核不通',templetContent='您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝审核不通','您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_mogoverify_fail_torenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='聚有财常规账单支付完成',templetDesc='聚有财常规账单支付完成',status=1,valid=1,updateTime=now() where templetCode = 'sms_jyc_bill_payoverall_toRenter';
/* 插入模版 'sms_jyc_bill_payoverall_toRenter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_jyc_bill_payoverall_toRenter','聚有财常规账单支付完成','聚有财常规账单支付完成',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payoverall_toRenter');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_jyc_bill_payoverall_toRenter';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payoverall_toRenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='聚有财常规账单支付完成',templetContent='您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'聚有财常规账单支付完成','您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_jyc_bill_payoverall_toRenter')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='下次VC',templetDesc='徐晓晨',status=1,valid=1,updateTime=now() where templetCode = 'xiaciVCik4v';
/* 插入模版 'xiaciVCik4v' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'xiaciVCik4v','下次VC','徐晓晨',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'xiaciVCik4v');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='xiaciVCik4v';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='短信',templetContent='[蘑菇宝]尊敬的房东，您的租客{租客名称}（{房源}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${放款金额}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'短信','[蘑菇宝]尊敬的房东，您的租客{租客名称}（{房源}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${放款金额}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'xiaciVCik4v')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='是谁',templetContent='[蘑菇宝]尊敬的房东，您的租客{租客名称}（{房源}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${放款金额}元，请注意查收。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'是谁','[蘑菇宝]尊敬的房东，您的租客{租客名称}（{房源}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${放款金额}元，请注意查收。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'xiaciVCik4v')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='报修已撤销',templetDesc='报修已撤销',status=1,valid=1,updateTime=now() where templetCode = 'sms_repairsUndo_landlord';
/* 插入模版 'sms_repairsUndo_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairsUndo_landlord','报修已撤销','报修已撤销',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairsUndo_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairsUndo_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}的报修已撤销',templetContent='${roomInfo}的报修已撤销，点击查看',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}的报修已撤销','${roomInfo}的报修已撤销，点击查看',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairsUndo_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='报修已解决',templetDesc='报修已解决',status=1,valid=1,updateTime=now() where templetCode = 'sms_repairsSolve_landlord';
/* 插入模版 'sms_repairsSolve_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairsSolve_landlord','报修已解决','报修已解决',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairsSolve_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairsSolve_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}的报修已解决',templetContent='${roomInfo}的报修已解决，点击查看',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}的报修已解决','${roomInfo}的报修已解决，点击查看',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairsSolve_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='投诉已撤销',templetDesc='投诉已撤销',status=1,valid=1,updateTime=now() where templetCode = 'sms_complainUndo_landlord';
/* 插入模版 'sms_complainUndo_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainUndo_landlord','投诉已撤销','投诉已撤销',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainUndo_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainUndo_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}投诉已撤销',templetContent='${roomInfo}的投诉申请已撤销，请登录蘑菇伙伴查看详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}投诉已撤销','${roomInfo}的投诉申请已撤销，请登录蘑菇伙伴查看详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainUndo_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='投诉已解决',templetDesc='投诉已解决',status=1,valid=1,updateTime=now() where templetCode = 'sms_complainSolve_landlord';
/* 插入模版 'sms_complainSolve_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainSolve_landlord','投诉已解决','投诉已解决',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainSolve_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainSolve_landlord';
/* 查询分类id */
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入模版和类型关系*/
INSERT INTO `mesg_category_templet` (`categoryId`, `templetId`, `status`, `createBy`, `createTime`, `createByType`)
VALUES (@categoryId, @mesgTempletId, 1, 0, now(), 5);
/* 更新子模版 */
update mesg_subtemplet set templetTitle='${roomInfo}投诉已解决',templetContent='${roomInfo}的投诉申请已解决，请登录蘑菇伙伴查看详情。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}投诉已解决','${roomInfo}的投诉申请已解决，请登录蘑菇伙伴查看详情。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainSolve_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='补录租约（集中式）',templetDesc='补录租约（集中式）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_foucs_success';
/* 插入模版 'sms_renter_saleContractConvert_foucs_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_foucs_success','补录租约（集中式）','补录租约（集中式）',1,0,now(),0,0,now(),0,1,9
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_foucs_success';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约确认',templetContent='租客${realName},同意了您${communityName}${flatRoomNum}号的补录租约。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'补录租约确认','租客${realName},同意了您${communityName}${flatRoomNum}号的补录租约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约确认',templetContent='租客${realName},同意了您${communityName}${flatRoomNum}号的补录租约。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'补录租约确认','租客${realName},同意了您${communityName}${flatRoomNum}号的补录租约。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='补录租约提醒',templetDesc='补录租约提醒',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_update';
/* 插入模版 'sms_renter_saleContractConvert_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_update','补录租约提醒','补录租约提醒',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_update');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_update';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约提醒',templetContent='${renterName}您好，您租住的${flatInfo}的房东已为您修改了租约，请退出账号并重新登录蘑菇租房APP确认租约，并及时修改密码和完善个人资料，若有疑问及时与房东沟通。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'补录租约提醒','${renterName}您好，您租住的${flatInfo}的房东已为您修改了租约，请退出账号并重新登录蘑菇租房APP确认租约，并及时修改密码和完善个人资料，若有疑问及时与房东沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_update')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='第三方蘑菇宝租金账单应付款3天前通知',templetDesc='第三方蘑菇宝租金账单应付款3天前通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateMogobaoLklBillByBill_before3';
/* 插入模版 'sms_CreateMogobaoLklBillByBill_before3' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill_before3','第三方蘑菇宝租金账单应付款3天前通知','第三方蘑菇宝租金账单应付款3天前通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill_before3';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝还款提醒',templetContent='您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝还款提醒','您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客投诉撤销通知',templetDesc='租客投诉撤销通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_complainUndo';
/* 插入模版 'sms_renter_complainUndo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainUndo','租客投诉撤销通知','租客投诉撤销通知',1,0,now(),0,0,now(),0,1,12
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainUndo');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainUndo';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='投诉已撤销',templetContent='[投诉已撤销]您的投诉服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'投诉已撤销','[投诉已撤销]您的投诉服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainUndo')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='帐号登录通知',templetDesc='您的帐号已在其他设备登录',status=1,valid=1,updateTime=now() where templetCode = 'push_renter_noticeLogoff';
/* 插入模版 'push_renter_noticeLogoff' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_renter_noticeLogoff','帐号登录通知','您的帐号已在其他设备登录',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_renter_noticeLogoff');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_renter_noticeLogoff';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='帐号登录通知',templetContent='您的帐号已在其他设备登录，如有疑问请联系客服。蘑菇租房-让我们住得更好！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'帐号登录通知','您的帐号已在其他设备登录，如有疑问请联系客服。蘑菇租房-让我们住得更好！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_renter_noticeLogoff')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='自定义账单当天提醒',templetDesc='自定义账单当天提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_20001_overdue';
/* 插入模版 'bill_renter_20001_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_overdue','自定义账单当天提醒','自定义账单当天提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_overdue';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='自定义账单逾期提醒',templetContent='${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'自定义账单逾期提醒','${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='补录租约（集中式）',templetDesc='补录租约（集中式）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_failure';
/* 插入模版 'sms_renter_saleContractConvert_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_failure','补录租约（集中式）','补录租约（集中式）',1,0,now(),0,0,now(),0,1,8
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_failure';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约意见',templetContent='租客${realName},不同意您${communityName}小区${building}栋${flatRoomNum}号Room${roomName}的补录租约，请及时联系与其沟通。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'补录租约意见','租客${realName},不同意您${communityName}小区${building}栋${flatRoomNum}号Room${roomName}的补录租约，请及时联系与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约意见',templetContent='租客${realName},不同意您${communityName}小区${building}栋${flatRoomNum}号Room${roomName}的补录租约，请及时联系与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'补录租约意见','租客${realName},不同意您${communityName}小区${building}栋${flatRoomNum}号Room${roomName}的补录租约，请及时联系与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东补录租约通知',templetDesc='房东补录租约通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_notify';
/* 插入模版 'sms_renter_saleContractConvert_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_notify','房东补录租约通知','房东补录租约通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_notify');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_notify';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约',templetContent='${renter}您好，您租住的${roomInfo}房源的房东已为您补录了租约，请登录蘑菇租房APP确认租约，若有疑问请及时与房东进行沟通。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'补录租约','${renter}您好，您租住的${roomInfo}房源的房东已为您补录了租约，请登录蘑菇租房APP确认租约，若有疑问请及时与房东进行沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_notify')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='第三方蘑菇宝租金账单应付款当天通知',templetDesc='第三方蘑菇宝租金账单应付款当天通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateMogobaoLklBillByBill_payday';
/* 插入模版 'sms_CreateMogobaoLklBillByBill_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill_payday','第三方蘑菇宝租金账单应付款当天通知','第三方蘑菇宝租金账单应付款当天通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill_payday';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝还款提醒',templetContent='您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝还款提醒','您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客提交报修通知',templetDesc='租客提交报修通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_repairAdd';
/* 插入模版 'sms_renter_repairAdd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairAdd','租客提交报修通知','租客提交报修通知',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairAdd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairAdd';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='报修成功',templetContent='[报修成功]很高兴能为您服务，我们正通知房东您的报修请求，请保持手机畅通，耐心等待，超过一小时未收到响应，请直接与房东联系【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'报修成功','[报修成功]很高兴能为您服务，我们正通知房东您的报修请求，请保持手机畅通，耐心等待，超过一小时未收到响应，请直接与房东联系【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairAdd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='账单通知',templetDesc='账单通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_FirstDayArrears';
/* 插入模版 'sms_FirstDayArrears' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_FirstDayArrears','账单通知','账单通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_FirstDayArrears';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单通知',templetContent='账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账单通知','账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账单通知',templetContent='账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'账单通知','账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='房间上下架',templetDesc='房间上下架',status=1,valid=1,updateTime=now() where templetCode = 'sms_room_onlineStatus_landlord';
/* 插入模版 'sms_room_onlineStatus_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_room_onlineStatus_landlord','房间上下架','房间上下架',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_room_onlineStatus_landlord');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_room_onlineStatus_landlord';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房间上下架',templetContent='${landlordName}您好，您的房源${communityName}小区${roomNum}，经审核不适合对外展示，已被平台调整隐藏，理由：${remard}',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房间上下架','${landlordName}您好，您的房源${communityName}小区${roomNum}，经审核不适合对外展示，已被平台调整隐藏，理由：${remard}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_room_onlineStatus_landlord')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝申请成功（借记卡）',templetDesc='蘑菇宝申请成功（借记卡）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_lakala_success';
/* 插入模版 'sms_renter_mogobao_lakala_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_lakala_success','蘑菇宝申请成功（借记卡）','蘑菇宝申请成功（借记卡）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_lakala_success';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝和租金借款',templetContent='恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时在尾号为${cardTail}的借记卡中存够租金哦。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'蘑菇宝和租金借款','恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时在尾号为${cardTail}的借记卡中存够租金哦。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='补录租约（集中式）',templetDesc='补录租约（集中式）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_saleContractConvert_foucs_failure';
/* 插入模版 'sms_renter_saleContractConvert_foucs_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_foucs_failure','补录租约（集中式）','补录租约（集中式）',1,0,now(),0,0,now(),0,1,8
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_foucs_failure';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约意见',templetContent='租客${realName},不同意您${communityName}${flatRoomNum}号的补录租约，请及时联系与其沟通。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'补录租约意见','租客${realName},不同意您${communityName}${flatRoomNum}号的补录租约，请及时联系与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='补录租约意见',templetContent='租客${realName},不同意您${communityName}${flatRoomNum}号的补录租约，请及时联系与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'补录租约意见','租客${realName},不同意您${communityName}${flatRoomNum}号的补录租约，请及时联系与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='批量修改租客密码推送消息',templetDesc='批量修改租客密码推送消息',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_initPW';
/* 插入模版 'sms_renter_initPW' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_initPW','批量修改租客密码推送消息','批量修改租客密码推送消息',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_initPW');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_initPW';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='修改密码',templetContent='蘑菇租房APP来了,亲爱的${realName}您好，很荣幸的通知您，蘑菇租房APP上线了，即日起您可下载蘑菇租房APP使用找房、报修等功能，后续我们还会逐步完善更多功能。为省去您的麻烦，我们已为您定制了一个账号（您的登录账号：${account}，登录密码：${password}，请登录后尽快修改密码信息）,现在赶快访问蘑菇官方网站下载使用吧。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'修改密码','蘑菇租房APP来了,亲爱的${realName}您好，很荣幸的通知您，蘑菇租房APP上线了，即日起您可下载蘑菇租房APP使用找房、报修等功能，后续我们还会逐步完善更多功能。为省去您的麻烦，我们已为您定制了一个账号（您的登录账号：${account}，登录密码：${password}，请登录后尽快修改密码信息）,现在赶快访问蘑菇官方网站下载使用吧。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_initPW')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='租客报修完成通知',templetDesc='租客报修完成通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_repairSolve';
/* 插入模版 'sms_renter_repairSolve' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairSolve','租客报修完成通知','租客报修完成通知',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairSolve');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairSolve';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='报修已解决',templetContent='[报修已解决]您的报修服务已得到解决，期待您能住的愉快和开心，若有需要，记得找我噢【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'报修已解决','[报修已解决]您的报修服务已得到解决，期待您能住的愉快和开心，若有需要，记得找我噢【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairSolve')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东账户充值',templetDesc='房东账户充值',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlord_payDeposit';
/* 插入模版 'sms_landlord_payDeposit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_payDeposit','房东账户充值','房东账户充值',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_payDeposit';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='账户充值',templetContent='[账户充值]您在“蘑菇伙伴”账户充值了${money}元。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'账户充值','[账户充值]您在“蘑菇伙伴”账户充值了${money}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='账户充值',templetContent='[账户充值]您在“蘑菇伙伴”账户充值了${money}元。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'账户充值','[账户充值]您在“蘑菇伙伴”账户充值了${money}元。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东退款通知',templetDesc='房东退款通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_landlordRefund_affirm';
/* 插入模版 'sms_landlordRefund_affirm' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlordRefund_affirm','房东退款通知','房东退款通知',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlordRefund_affirm';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东退款',templetContent='[合约解除，房东退款]${roomInfo}的房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房东退款','[合约解除，房东退款]${roomInfo}的房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东退款',templetContent='[合约解除，房东退款]${roomInfo}的房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东退款','[合约解除，房东退款]${roomInfo}的房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金账单逾期',templetDesc='租金账单逾期1、3、7天',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_1004_overdue';
/* 插入模版 'bill_renter_1004_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_1004_overdue','租金账单逾期','租金账单逾期1、3、7天',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_1004_overdue';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单逾期',templetContent='${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单逾期','${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝申请成功（APP）',templetDesc='蘑菇宝申请成功（APP）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_mogo_success';
/* 插入模版 'sms_renter_mogobao_mogo_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_mogo_success','蘑菇宝申请成功（APP）','蘑菇宝申请成功（APP）',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_mogo_success');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_mogo_success';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝和租金借款',templetContent='恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时登录蘑菇租房APP支付房租哦。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'蘑菇宝和租金借款','恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时登录蘑菇租房APP支付房租哦。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_mogo_success')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='租客注册通知',templetDesc='租客注册通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_register';
/* 插入模版 'sms_renter_register' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_register','租客注册通知','租客注册通知',1,0,now(),0,0,now(),0,1,11
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_register');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_register';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='帐号注册成功',templetContent='[欢迎加入]欢迎您加入蘑菇租房，关注蘑菇租房微信号“mogoroom”，优惠打折天天送，精彩活动周周有。【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'帐号注册成功','[欢迎加入]欢迎您加入蘑菇租房，关注蘑菇租房微信号“mogoroom”，优惠打折天天送，精彩活动周周有。【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_register')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客App服务验证码',templetDesc='租客App服务验证码',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_verificationCode';
/* 插入模版 'sms_renter_verificationCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_verificationCode','租客App服务验证码','租客App服务验证码',1,0,now(),0,0,now(),0,1,11
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_verificationCode');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_verificationCode';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='服务验证码',templetContent='${code}（手机验证码，十分钟内有效）畅快沟通，让我们住得更好。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'服务验证码','${code}（手机验证码，十分钟内有效）畅快沟通，让我们住得更好。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_verificationCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新模版 */
update mesg_templet set templetName='租客撤销报修通知',templetDesc='租客撤销报修通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_repairUndo';
/* 插入模版 'sms_renter_repairUndo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairUndo','租客撤销报修通知','租客撤销报修通知',1,0,now(),0,0,now(),0,1,4
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairUndo');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairUndo';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='报修已撤销',templetContent='[报修已撤销]您的报修服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'报修已撤销','[报修已撤销]您的报修服务已被撤销，立即登录蘑菇租房查看详情，若有疑问，请直接与房东联系【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairUndo')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝资料有误通知',templetDesc='蘑菇宝和租金借款通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_mogobao_lakala_failure';
/* 插入模版 'sms_renter_mogobao_lakala_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_lakala_failure','蘑菇宝资料有误通知','蘑菇宝和租金借款通知',1,0,now(),0,0,now(),0,1,3
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_lakala_failure';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝资料有误',templetContent='很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请立即登录蘑菇租房APP并在今日24点前完成资料修改和提交。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝资料有误','很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请立即登录蘑菇租房APP并在今日24点前完成资料修改和提交。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客支付账单通知（分散式）',templetDesc='租客支付账单通知（分散式）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_exept';
/* 插入模版 'sms_renter_exept' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_exept','租客支付账单通知（分散式）','租客支付账单通知（分散式）',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_exept');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_exept';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='豁免操作',templetContent='${communityName}小区${building}栋${flatRoomNum}号Room${roomName}租客${realName}通过转账或现金支付了账单，请及时确认。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'豁免操作','${communityName}小区${building}栋${flatRoomNum}号Room${roomName}租客${realName}通过转账或现金支付了账单，请及时确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='豁免操作',templetContent='${communityName}小区${building}栋${flatRoomNum}号Room${roomName}租客${realName}通过转账或现金支付了账单，请及时确认。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'豁免操作','${communityName}小区${building}栋${flatRoomNum}号Room${roomName}租客${realName}通过转账或现金支付了账单，请及时确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客投诉',templetDesc='租客投诉',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_complainAdd';
/* 插入模版 'sms_renter_complainAdd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainAdd','租客投诉','租客投诉',1,0,now(),0,0,now(),0,1,12
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainAdd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainAdd';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='投诉成功',templetContent='[投诉成功]很遗憾给您带来不愉快的体验，我们正在受理您的诉求和意见，请保持手机畅通，耐心等待我们的联系与处理【蘑菇租房-我们会努力更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'投诉成功','[投诉成功]很遗憾给您带来不愉快的体验，我们正在受理您的诉求和意见，请保持手机畅通，耐心等待我们的联系与处理【蘑菇租房-我们会努力更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainAdd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租金账单当天提醒',templetDesc='租金账单当天提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_landlord_1004_payday';
/* 插入模版 'bill_landlord_1004_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_landlord_1004_payday','租金账单当天提醒','租金账单当天提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_landlord_1004_payday';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='租金账单当天提醒',templetContent='${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'租金账单当天提醒','${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='蘑菇宝账单已支付通知',templetDesc='蘑菇宝账单已支付通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_repayPlan';
/* 插入模版 'sms_renter_repayPlan' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repayPlan','蘑菇宝账单已支付通知','蘑菇宝账单已支付通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repayPlan');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repayPlan';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝账单已付通知',templetContent='尊敬的${renterName}您好，您已成功支付下月租金：${amount}元，谢谢！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝账单已付通知','尊敬的${renterName}您好，您已成功支付下月租金：${amount}元，谢谢！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repayPlan')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客修改登录密码',templetDesc='租客修改登录密码通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_updateLoginPwd';
/* 插入模版 'sms_renter_updateLoginPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateLoginPwd','租客修改登录密码','租客修改登录密码通知',1,0,now(),0,0,now(),0,1,6
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateLoginPwd';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='登录密码已修改',templetContent='登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'登录密码已修改','登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='登录密码已修改',templetContent='登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'登录密码已修改','登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客App服务验证码',templetDesc='租客App服务验证码',status=1,valid=1,updateTime=now() where templetCode = 'email_renter_verificationCode';
/* 插入模版 'email_renter_verificationCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'email_renter_verificationCode','租客App服务验证码','租客App服务验证码',1,0,now(),0,0,now(),0,1,11
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'email_renter_verificationCode');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='email_renter_verificationCode';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='服务验证码',templetContent='【蘑菇租房】${code} （邮件验证码，30分钟内有效）畅快沟通，让我们住得更好。',status=1 where templetId=@mesgTempletId and templetType=2;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'服务验证码','【蘑菇租房】${code} （邮件验证码，30分钟内有效）畅快沟通，让我们住得更好。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_renter_verificationCode')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=2);

/* 更新模版 */
update mesg_templet set templetName='租客支付账单通知（集中式）',templetDesc='租客支付账单通知（集中式）',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_exept_foucs';
/* 插入模版 'sms_renter_exept_foucs' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_exept_foucs','租客支付账单通知（集中式）','租客支付账单通知（集中式）',1,0,now(),0,0,now(),0,1,10
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_exept_foucs';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='豁免操作',templetContent='${communityName}${flatRoomNum}号租客${realName}通过转账或现金支付了账单，请及时确认。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'豁免操作','${communityName}${flatRoomNum}号租客${realName}通过转账或现金支付了账单，请及时确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='豁免操作',templetContent='${communityName}${flatRoomNum}号租客${realName}通过转账或现金支付了账单，请及时确认。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'豁免操作','${communityName}${flatRoomNum}号租客${realName}通过转账或现金支付了账单，请及时确认。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='房东推送自定义账单',templetDesc='房东推送自定义账单',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_push_customBill';
/* 插入模版 'sms_renter_push_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_push_customBill','房东推送自定义账单','房东推送自定义账单',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_push_customBill';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东推送自定义账单',templetContent='您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'房东推送自定义账单','您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='房东推送自定义账单',templetContent='您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'房东推送自定义账单','您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='第三方蘑菇宝租金账单生成日通知',templetDesc='第三方蘑菇宝租金账单生成日通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_CreateMogobaoLklBillByBill';
/* 插入模版 'sms_CreateMogobaoLklBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill','第三方蘑菇宝租金账单生成日通知','第三方蘑菇宝租金账单生成日通知',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='蘑菇宝还款提醒',templetContent='您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'蘑菇宝还款提醒','您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='租客投诉解决通知',templetDesc='租客投诉解决通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_complainSolve';
/* 插入模版 'sms_renter_complainSolve' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainSolve','租客投诉解决通知','租客投诉解决通知',1,0,now(),0,0,now(),0,1,12
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainSolve');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainSolve';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='投诉已解决',templetContent='[投诉已解决]您的投诉服务已得到解决，谢谢您的信任与支持，让我们不断改善和提升服务品质，为您带来更好的租房体验【蘑菇租房-我们会努力更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'投诉已解决','[投诉已解决]您的投诉服务已得到解决，谢谢您的信任与支持，让我们不断改善和提升服务品质，为您带来更好的租房体验【蘑菇租房-我们会努力更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainSolve')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='自定义账单当天提醒',templetDesc='自定义账单当天提醒',status=1,valid=1,updateTime=now() where templetCode = 'bill_renter_20001_payday';
/* 插入模版 'bill_renter_20001_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_payday','自定义账单当天提醒','自定义账单当天提醒',1,0,now(),0,0,now(),0,1,5
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_payday';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='自定义账单当天提醒',templetContent='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',status=1 where templetId=@mesgTempletId and templetType=1;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'自定义账单当天提醒','您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=1);

/* 更新子模版 */
update mesg_subtemplet set templetTitle='自定义账单当天提醒',templetContent='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'自定义账单当天提醒','您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='预约单通知',templetDesc='可快速签约的预约单通知',status=1,valid=1,updateTime=now() where templetCode = 'sms_renter_order_quickSign';
/* 插入模版 'sms_renter_order_quickSign' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_order_quickSign','预约单通知','可快速签约的预约单通知',1,0,now(),0,0,now(),0,1,1
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_order_quickSign');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_order_quickSign';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='预约单通知',templetContent='你有一个预约单可快速签约！请在6小时内完成快速签约，过期将失效！',status=0 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'预约单通知','你有一个预约单可快速签约！请在6小时内完成快速签约，过期将失效！',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_order_quickSign')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);

/* 更新模版 */
update mesg_templet set templetName='新室友入住',templetDesc='新室友入住',status=1,valid=1,updateTime=now() where templetCode = 'sms_sendWelcomeNewRoommate';
/* 插入模版 'sms_sendWelcomeNewRoommate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_sendWelcomeNewRoommate','新室友入住','新室友入住',1,0,now(),0,0,now(),0,1,14
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_sendWelcomeNewRoommate');

/* 查询模版id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_sendWelcomeNewRoommate';
/* 更新子模版 */
update mesg_subtemplet set templetTitle='欢迎新室友',templetContent='[欢迎新室友]${realName}您好，很高兴第一时间通知您，我们迎来了一位新室友，Ta是@${renterName}，会在${checkInDate}日入住咱们的小家庭，让我们一起欢迎Ta吧，颜值、姓名什么的到时候就知道啦【蘑菇租房-让我们住得更好】',status=1 where templetId=@mesgTempletId and templetType=3;
/* 插入子模版 */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'欢迎新室友','[欢迎新室友]${realName}您好，很高兴第一时间通知您，我们迎来了一位新室友，Ta是@${renterName}，会在${checkInDate}日入住咱们的小家庭，让我们一起欢迎Ta吧，颜值、姓名什么的到时候就知道啦【蘑菇租房-让我们住得更好】',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendWelcomeNewRoommate')
and not exists (select id from mesg_subtemplet where templetId=@mesgTempletId and templetType=3);


commit;