use mogoroomdb;

/**��ȡ��ʼʱ��**/
select @begindate:=NOW();

/* ����ģ�� 'sms_alert_landlordInitPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_alert_landlordInitPwd','������ʼ������','������ʼ������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_alert_landlordInitPwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ʼ������','���ã�����Ģ������˺��Ѵ�������ʼ����Ϊ${password}��Ϊ���˻���ȫ�������ñ��ֻ��ŵ�½�޸����룬�������http://mogo.help/dl',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_alert_landlordInitPwd' and createTime>=@begindate);

/* ����ģ�� 'sms_flats_verify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_verify_landlord','��Դ���ͨ��','��Դ���ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_verify_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_verify_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��Դ���ͨ��','���ã����ύ�ķ�Դ${roomInfo}�����ͨ�������ߣ�������������뼰ʱ����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verify_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_flats_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_unVerify_landlord','��Դ���δͨ��','��Դ���δͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_unVerify_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã����ύ�ķ�Դ${roomInfo}���δͨ�����뼰ʱ���������ύ��ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_unVerify_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_flatsType_verify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flatsType_verify_landlord','������˽��֪ͨ','������˽��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flatsType_verify_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã����ύ�ķ���${roomType}�������乲${roomNum}�������ͨ�������ߣ�������������뼰ʱ����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������˽��֪ͨ','���ã����ύ�ķ���${roomType}�������乲${roomNum}�������ͨ�������ߣ�������������뼰ʱ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_verify_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_flatsType_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flatsType_unVerify_landlord','������˽��֪ͨ','������˽��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flatsType_unVerify_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã����ύ��${mansionName}����${roomType}�������乲${roomNum}�����δͨ�����뼰ʱ���������ύ��ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������˽��֪ͨ','���ã����ύ��${mansionName}����${roomType}�������乲${roomNum}�����δͨ�����뼰ʱ���������ύ��ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flatsType_unVerify_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_flats_verifyHint_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_flats_verifyHint_landlord','��Դ���֪ͨ','��Դ���֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_flats_verifyHint_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��Դ���֪ͨ','���ķ�Դ�Ѿ������ɹ���Ģ���ⷿ��������ύ�ķ�Դ��Ϣ������ˣ��������ύ�ķ�Դ��Ϣ����ʵ����׼ȷ��Ģ���ⷿ��ʵ������߸÷�Դ��һ�ɰ����ٷ�Դ�����д�����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��Դ���֪ͨ','���ķ�Դ�Ѿ������ɹ���Ģ���ⷿ��������ύ�ķ�Դ��Ϣ������ˣ��������ύ�ķ�Դ��Ϣ����ʵ����׼ȷ��Ģ���ⷿ��ʵ������߸÷�Դ��һ�ɰ����ٷ�Դ�����д�����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_flats_verifyHint_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_picture_unVerify_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_picture_unVerify_landlord','��Ƭ���δͨ��','��Ƭ���δͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_picture_unVerify_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã�����Դ${roomInfo}����Ƭ���δͨ��& #40;ԭ��${verifyIdea}& #41;���뼰ʱ���������ύ��ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ͼƬ���δͨ��','���ã�����Դ${roomInfo}����Ƭ���δͨ��& #40;ԭ��${verifyIdea}& #41;���뼰ʱ���������ύ��ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_picture_unVerify_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_repairAdd_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairAdd_landlord','����֪ͨ','����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairAdd_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${roomInfo}��һ��������Ϣ�����¼Ģ����鼰ʱ�鿴����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}��һ������','${roomInfo}��һ��������Ϣ�����¼Ģ����鼰ʱ�鿴����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairAdd_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_comming_hostacct' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_comming_hostacct','֧�����֪ͨ','ҵ���˵�ǰ7�췢��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_comming_hostacct';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','����Ҫ��7������${flatCommunity}��ҵ��֧�����֧����ɺ����¼Ģ�����ȷ�ϸ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ҵ�����֧��֪ͨ','����Ҫ��7������${flatCommunity}��ҵ��֧�����֧����ɺ����¼Ģ�����ȷ�ϸ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_comming_hostacct' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_hostacct_duedate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_hostacct_duedate','������֪ͨ','ҵ��������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_hostacct_duedate';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${flatCommunity}��ҵ������ѹ��ڣ��뼰ʱ����������֧�����¼ϵͳȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ҵ������˵��ѹ���','${flatCommunity}��ҵ������ѹ��ڣ��뼰ʱ����������֧�����¼ϵͳȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_hostacct_duedate' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_bookOrderSuccess','������Ԥ��������','��Ԥ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_bookOrderSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${name}��ã�${roomInfo}��Դ��һ��Ԥ�������뼰ʱ������ˣ����������${renterName}���ֻ����룺${renterPhoneNum}�����������뾡���������ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��Ԥ��������','${name}��ã�${roomInfo}��Դ��һ��Ԥ�������뼰ʱ������ˣ����������${renterName}���ֻ����룺${renterPhoneNum}�����������뾡���������ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_bookOrderSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_complainAdd_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainAdd_landlord','Ͷ�߷���','Ͷ�߷���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainAdd_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${roomInfo}��һ��Ͷ����Ϣ�����¼Ģ����鼰ʱ�鿴����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}��һ��Ͷ��','${roomInfo}��һ��Ͷ����Ϣ�����¼Ģ����鼰ʱ�鿴����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainAdd_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_payback_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_failure','������ʧ��','������ʧ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ʧ�ܣ��������5��','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ�������ʣ����${countMoney}Ԫ�����У�����ܶ�${totalAmount}Ԫ���ѿ���ؽ��${repayedTotal}Ԫ���������ɽ�${totalPenalty}Ԫ����������������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ʧ�ܣ��������5��','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ�������ʣ����${countMoney}Ԫ�����У�����ܶ�${totalAmount}Ԫ���ѿ���ؽ��${repayedTotal}Ԫ���������ɽ�${totalPenalty}Ԫ����������������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_put_amount' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_put_amount','��𱦷ſ�','��𱦷ſ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_put_amount';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��𱦷ſ�','�𾴵�${landlordName}���ã�����1���ܽ��Ϊ${actualAmount}Ԫ���տ�������${renterName}��${roomInfo}�������${period}����Ģ�������ѿ۳�������${feeAmount}Ԫ����֤��${depositAmount}Ԫ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��𱦷ſ�','�𾴵�${landlordName}���ã�����1���ܽ��Ϊ${actualAmount}Ԫ���տ�������${renterName}��${roomInfo}�������${period}����Ģ�������ѿ۳�������${feeAmount}Ԫ����֤��${depositAmount}Ԫ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_put_amount' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_validated' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_validated','������ͨ��','������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_validated';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ͨ��','[���]����������������ͨ�����ɰ������ҵ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ͨ��','[���]����������������ͨ�����ɰ������ҵ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_validated' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_guanWangYuyueSuccessNotify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_guanWangYuyueSuccessNotify','������ԤԼ��������','��ԤԼ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��ԤԼ��������','${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_payDeposit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_payDeposit','�����˻���ֵ','�����˻���ֵ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_payDeposit';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�˻���ֵ','[�˻���ֵ]���ڡ�Ģ����顱�˻���ֵ��${money}Ԫ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˻���ֵ','[�˻���ֵ]���ڡ�Ģ����顱�˻���ֵ��${money}Ԫ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_payDeposit' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_exept' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_exept','���֧���˵�֪ͨ����ɢʽ��','���֧���˵�֪ͨ����ɢʽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_exept');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_exept';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�������','${communityName}С��${building}��${flatRoomNum}��Room${roomName}���${realName}ͨ��ת�˻��ֽ�֧�����˵����뼰ʱȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�������','${communityName}С��${building}��${flatRoomNum}��Room${roomName}���${realName}ͨ��ת�˻��ֽ�֧�����˵����뼰ʱȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_exept_foucs' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_exept_foucs','���֧���˵�֪ͨ������ʽ��','���֧���˵�֪ͨ������ʽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_exept_foucs';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�������','${communityName}${flatRoomNum}�����${realName}ͨ��ת�˻��ֽ�֧�����˵����뼰ʱȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�������','${communityName}${flatRoomNum}�����${realName}ͨ��ת�˻��ֽ�֧�����˵����뼰ʱȷ�ϡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_exept_foucs' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_mogobao_lakala_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_success','Ģ������ͨ��','Ģ������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ������ͨ��','[Ģ������ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ����������ͨ���������ȴ��ſ��У���֪Ϥ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ������ͨ��','[Ģ������ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ����������ͨ���������ȴ��ſ��У���֪Ϥ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_success','����ת�ͳɹ�����','����ת�ͳɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����ת�ͳɹ�����','${landlordname}���ã����${renterName}ͬ������${roominfo}��ת����Լ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ת�ͳɹ�����','${landlordname}���ã����${renterName}ͬ������${roominfo}��ת����Լ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_success' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_foucs_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_foucs_success','��¼��Լ������ʽ��','��¼��Լ������ʽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_foucs_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼��Լȷ��','���${realName},ͬ������${communityName}${flatRoomNum}�ŵĲ�¼��Լ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼��Լȷ��','���${realName},ͬ������${communityName}${flatRoomNum}�ŵĲ�¼��Լ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_success' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_failure','��¼��Լ������ʽ��','��¼��Լ������ʽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼��Լ���','���${realName},��ͬ����${communityName}С��${building}��${flatRoomNum}��Room${roomName}�Ĳ�¼��Լ���뼰ʱ��ϵ���乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼��Լ���','���${realName},��ͬ����${communityName}С��${building}��${flatRoomNum}��Room${roomName}�Ĳ�¼��Լ���뼰ʱ��ϵ���乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_foucs_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_foucs_failure','��¼��Լ������ʽ��','��¼��Լ������ʽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_foucs_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼��Լ���','���${realName},��ͬ����${communityName}${flatRoomNum}�ŵĲ�¼��Լ���뼰ʱ��ϵ���乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼��Լ���','���${realName},��ͬ����${communityName}${flatRoomNum}�ŵĲ�¼��Լ���뼰ʱ��ϵ���乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_foucs_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_duedate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate','�������С��4��','�������С��4��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ڣ��������','[�������]��������Ѿ�����${overDue}�죬��֪ͨ���${renterName}��${roomInfo}����ʱ֧�����·��⣬����������Ҫ�����𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ڣ��������','[�������]��������Ѿ�����${overDue}�죬��֪ͨ���${renterName}��${roomInfo}����ʱ֧�����·��⣬����������Ҫ�����𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_duedate4' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate4','������ڵ���4��','������ڵ���4��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate4';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ڣ��������','[�������]��������Ѿ�����${overDue}�죬��֪ͨ���${renterName}��${roomInfo}����ʱ֧�����·��⣬��������������Ҫ�����𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ڣ��������','[�������]��������Ѿ�����${overDue}�죬��֪ͨ���${renterName}��${roomInfo}����ʱ֧�����·��⣬��������������Ҫ�����𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate4' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_duedate5' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_duedate5','�������5�����ϰ���5��','�������5�����ϰ���5��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_duedate5';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�������ֹ���������','[�������ֹ]���${renterName}��${roomInfo}��Ģ��������δ֧������Ѿ���ǿ���˷����뼰ʱ������Ӧ������Ѿ���ֹ����ȷ�������ʻ���������㹻���${countAmount}Ԫ�������𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�������ֹ���������','[�������ֹ]���${renterName}��${roomInfo}��Ģ��������δ֧������Ѿ���ǿ���˷����뼰ʱ������Ӧ������Ѿ���ֹ����ȷ�������ʻ���������㹻���${countAmount}Ԫ�������𱦲�֧����Ӧ�����Ѻ����ɽ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_duedate5' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_mogobao_end_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_end_failure','Ģ��������ͨ��','Ģ��������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_end_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ��������ͨ��','�𾴵�${landlordName}���ã����${renterName}��${roomInfo}�������Ģ����ҵ�����δͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ��������ͨ��','�𾴵�${landlordName}���ã����${renterName}��${roomInfo}�������Ģ����ҵ�����δͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_end_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_mogobao_end_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_end_failure','Ģ��������ͨ��','Ģ��������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_end_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_end_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ��������ͨ��','�𾴵�${renterName}���ǳ��ź����������${roomInfo}Ģ����ҵ�����δͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_end_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ��������ͨ��','�𾴵�${renterName}���ǳ��ź����������${roomInfo}Ģ����ҵ�����δͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_end_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_mogobao_lakala_one_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_one_failure','Ģ�����״����벻ͨ��','Ģ�����״����벻ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_one_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ�����״����벻ͨ��','[Ģ�����״����벻ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ�����״���������ʧ�ܣ���Э��֪ͨ��ͼ�ʱ�ύ�޸����ϡ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ�����״����벻ͨ��','[Ģ�����״����벻ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ�����״���������ʧ�ܣ���Э��֪ͨ��ͼ�ʱ�ύ�޸����ϡ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_mogobao_lakala_two_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_lakala_two_failure','Ģ����������ͨ��','Ģ����������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_lakala_two_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ����������ͨ��','[Ģ����������ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ��������ʧ�ܣ��˵��������ṩ��𱦣����������Э�̱�����ʽ����ǩԼ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ����������ͨ��','[Ģ����������ͨ��]�������${renterName}����Ӧ��Դ${roomInfo}��Ģ��������ʧ�ܣ��˵��������ṩ��𱦣����������Э�̱�����ʽ����ǩԼ��Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_repayPlan' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_repayPlan','��������Ѹ�����','��������Ѹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_repayPlan';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${landlordName}���ã����${renterName}��${roomInfo}����ͨ��Ģ���ɹ�֧��${startDate}-${endDate}���',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����Ѹ�����','${landlordName}���ã����${renterName}��${roomInfo}����ͨ��Ģ���ɹ�֧��${startDate}-${endDate}���',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_payback_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback_success','�����سɹ�','�����سɹ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����سɹ�','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}��Ģ��������سɹ�������ܽ��${countMoney}Ԫ����л������ϣ�лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�����سɹ�','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}��Ģ��������سɹ�������ܽ��${countMoney}Ԫ����л������ϣ�лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback_success' and createTime>=@begindate);

/* ����ģ�� 'sms_complainSolve_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainSolve_landlord','Ͷ���ѽ��','Ͷ���ѽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainSolve_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainSolve_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}Ͷ���ѽ��','${roomInfo}��Ͷ�������ѽ�������¼Ģ�����鿴���顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainSolve_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_complainUndo_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_complainUndo_landlord','Ͷ���ѳ���','Ͷ���ѳ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_complainUndo_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_complainUndo_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}Ͷ���ѳ���','${roomInfo}��Ͷ�������ѳ��������¼Ģ�����鿴���顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_complainUndo_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_outhome_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_outhome_landlord','�����账���˷�����','�����账���˷�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_outhome_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${landlordName}���ã�${roomInfo}�����˷�����ͣ�${renterName}�����룺${renterPhone}�����뼰ʱ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�账���˷�����','${landlordName}���ã�${roomInfo}�����˷�����ͣ�${renterName}�����룺${renterPhone}�����뼰ʱ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_rental_applyfor_submit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_rental_applyfor_submit','����������ύ','����������ύ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_rental_applyfor_submit';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����������ύ','[���]��������������ύ���뾡����Ģ���ⷿ�ύ������Ͻ�����ˡ�Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_rental_applyfor_submit' and createTime>=@begindate);

/* ����ģ�� 'sms_repairsSolve_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairsSolve_landlord','�����ѽ��','�����ѽ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairsSolve_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairsSolve_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}�ı����ѽ��','${roomInfo}�ı����ѽ��������鿴',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairsSolve_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_repairsUndo_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_repairsUndo_landlord','�����ѳ���','�����ѳ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_repairsUndo_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_repairsUndo_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'${roomInfo}�ı����ѳ���','${roomInfo}�ı����ѳ���������鿴',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_repairsUndo_landlord' and createTime>=@begindate);

/* ����ģ�� 'sms_signing_wait_audit' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_audit','����ǩԼ�������','����ǩԼ�������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_audit';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����ǩԼ�������','${landlordName}���ã�${roomInfo}��һ��ǩԼ�����뼰ʱ��ˣ���ͣ�${renterName}�����룺${renterPhoneNum}����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼ�������','${landlordName}���ã�${roomInfo}��һ��ǩԼ�����뼰ʱ��ˣ���ͣ�${renterName}�����룺${renterPhoneNum}����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_audit' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_withdrawal_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_withdrawal_success','������������','������������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_withdrawal_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ڡ�Ģ����顱�˻�������${money}Ԫ,�˻����:${balance}Ԫ.���Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������������','���ڡ�Ģ����顱�˻�������${money}Ԫ,�˻����:${balance}Ԫ.���Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_withdrawal_success' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_payback' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_payback','������','������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_payback';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ��������ܽ��${countAmount}Ԫ�����У�ʣ��������${buyBackAmount}Ԫ����ط����${lateFee}Ԫ��������ɽ�${penalty}Ԫ��������ɽ�${renterPenalty}Ԫ������������${backFee}Ԫ���ֿ۱�֤��${returnDeposit}Ԫ�����ڽ��ս�Ģ������أ�����������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ��������ܽ��${countAmount}Ԫ�����У�ʣ��������${buyBackAmount}Ԫ����ط����${lateFee}Ԫ��������ɽ�${penalty}Ԫ��������ɽ�${renterPenalty}Ԫ������������${backFee}Ԫ���ֿ۱�֤��${returnDeposit}Ԫ�����ڽ��ս�Ģ������أ�����������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ��������ܽ��${countAmount}Ԫ�����У�ʣ��������${buyBackAmount}Ԫ����ط����${lateFee}Ԫ��������ɽ�${penalty}Ԫ��������ɽ�${renterPenalty}Ԫ������������${backFee}Ԫ���ֿ۱�֤��${returnDeposit}Ԫ�����ڽ��ս�Ģ������أ�����������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������','�𾴵�${landlordName}���ã�����֧�������${renterName}��${roomInfo}��Ģ��������ܽ��${countAmount}Ԫ�����У�ʣ��������${buyBackAmount}Ԫ����ط����${lateFee}Ԫ��������ɽ�${penalty}Ԫ��������ɽ�${renterPenalty}Ԫ������������${backFee}Ԫ���ֿ۱�֤��${returnDeposit}Ԫ�����ڽ��ս�Ģ������أ�����������ɽ�лл���������ʣ�����ѯ�ͷ��绰4008004949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_payback' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_retrievePwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_retrievePwd','�޸ĵ�½����','�޸ĵ�½����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_retrievePwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��֤�룺${VCode}���������޸ġ�Ģ����顱��¼���룬����������й¶��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_retrievePwd' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_changePayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_changePayPwd','�����޸�֧����������','�����޸�֧����������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_changePayPwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[�޸�֧������]������ʹ�ø��ֻ����޸ġ�Ģ����顱�˻�֧�����룬�ֻ�У���룺${VCode}�����Ǳ��˲������뼰ʱ��ϵĢ���ⷿ400-800-4949����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����޸�֧����������','[�޸�֧������]������ʹ�ø��ֻ����޸ġ�Ģ����顱�˻�֧�����룬�ֻ�У���룺${VCode}�����Ǳ��˲������뼰ʱ��ϵĢ���ⷿ400-800-4949��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_changePayPwd' and createTime>=@begindate);

/* ����ģ�� 'sms_vrfCode_register' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_vrfCode_register','����У����','����У����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_vrfCode_register';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ���ⷿ����У����','��֤�룺${VCode}������������й¶��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_vrfCode_register' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_register' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_register','���ע��֪ͨ','���ע��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_register');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_register';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�ʺ�ע��ɹ�','[��ӭ����]��ӭ������Ģ���ⷿ����עĢ���ⷿ΢�źš�mogoroom�����Żݴ��������ͣ����ʻ�����С���Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_register' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_renterUpdatePayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_renterUpdatePayPwd','�޸�֧������֪ͨ','�޸�֧������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_renterUpdatePayPwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'֧���������޸�','֧���������޸ģ����Ģ���ⷿ�˻�֧���������޸ĳɹ��������Ʊ��ܣ�����й¶��',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterUpdatePayPwd' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_updateLoginPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateLoginPwd','����޸ĵ�¼����','����޸ĵ�¼����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateLoginPwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼�������޸�','��¼�������޸ģ����Ģ���ⷿ��¼�����Ѿ��޸ĳɹ��������Ʊ��ܣ�����й¶��',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼�������޸�','��¼�������޸ģ����Ģ���ⷿ��¼�����Ѿ��޸ĳɹ��������Ʊ��ܣ�����й¶��',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateLoginPwd' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_updateCellphone' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateCellphone','���ֻ��Ű󶨳ɹ�','���ֻ��Ű󶨳ɹ�֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateCellphone';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���ֻ��Ű󶨳ɹ�','���ֻ��Ű󶨳ɹ����������°�Ģ���ⷿApp���ֻ��ţ�${cellphone}�����μǣ����Ǳ��˸��ģ��뼰ʱ��ϵĢ���ⷿ��',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateCellphone' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_order_quickSign' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_order_quickSign','ԤԼ��֪ͨ','�ɿ���ǩԼ��ԤԼ��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_order_quickSign');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_order_quickSign';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ��֪ͨ','����һ��ԤԼ���ɿ���ǩԼ������6Сʱ����ɿ���ǩԼ�����ڽ�ʧЧ��',0,1,null,'MODULE_OrderList'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_order_quickSign' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_bookOrderSuccess','���Ԥ���ɹ�����','Ԥ���ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_bookOrderSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��ϲ��Ԥ���ɹ�������3�������ǩԼ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ���ɹ�����','��ϲ��Ԥ���ɹ�������3�������ǩԼ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_refuseBookOrder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_refuseBookOrder','���Ԥ�����ʧ�ܷ���','Ԥ�����ʧ�ܷ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_refuseBookOrder';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���Ԥ�����ʧ�ܷ���','���ź�������һ��Ԥ����δͨ��������ˣ������˻ء�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ�����ʧ�ܷ���','���ź�������һ��Ԥ����δͨ��������ˣ������˻ء�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuseBookOrder' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_signUnsuccess_errorInfo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signUnsuccess_errorInfo','���ǩԼ������������','���ǩԼ������������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signUnsuccess_errorInfo';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ύ��ǩԼ�����������ѱ��˻أ�${remark}�������¼Ģ���ⷿAPP�޸����ϲ������ύ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼ������������','���ύ��ǩԼ�����������ѱ��˻أ�${remark}�������¼Ģ���ⷿAPP�޸����ϲ������ύ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_errorInfo' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_signUnsuccess_refundAll' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signUnsuccess_refundAll','���ǩԼ���ʧ�ܷ���','���ǩԼ���ʧ�ܷ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signUnsuccess_refundAll';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã�${roomInfo}ǩԼδͨ����ˣ��˻�����${returnMoney}Ԫ�������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼ���ʧ�ܷ���','���ã�${roomInfo}ǩԼδͨ����ˣ��˻�����${returnMoney}Ԫ�������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signUnsuccess_refundAll' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_signInvalid' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signInvalid','���Ԥ��ʧЧ����','ǩԼʧЧ֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signInvalid';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','������δ��Ԥ��3�������ǩԼ,���Ԥ������ʧЧ��ϵͳ����۳�����ת�뷿���˻���',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ��ʧЧ����','������δ��Ԥ��3�������ǩԼ,���Ԥ������ʧЧ��ϵͳ����۳�����ת�뷿���˻���',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_signInvalid_timing' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_signInvalid_timing','���Ԥ����ʱ����','���Ԥ����ʱ������ǩԼʧЧ��ʱ��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_signInvalid_timing';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��Ģ���ⷿ�����ã�������δ��ǩԼʱ�������ǩԼ�����Ķ�����ʧЧ��������ת�뷿���˻����������ʣ����뷿����ϵ�˽����顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ����ʱ����','��Ģ���ⷿ�����ã�������δ��ǩԼʱ�������ǩԼ�����Ķ�����ʧЧ��������ת�뷿���˻����������ʣ����뷿����ϵ�˽����顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_signInvalid_timing' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateSaleBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill','��ͨ����˵�������֪ͨ','��ͨ����˵�������֪ͨ',0,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��ͨ����˵�������֪ͨ','���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}������˵������ɣ�����֧����Ϊ${dueDate}24:00����������¼Ģ���ⷿAPP��ɸ��Ģ���ⷿ400-800-4949',0,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateSaleBillByBill_before3' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill_before3','����˵��������ѣ�3��ǰ��','����˵��������ѣ�3��ǰ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill_before3';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵�����3�պ����ڣ�����${dueDate}��24��ǰ���֧����Ģ���ⷿ400-800-4949',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵���������','���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵�����3�պ����ڣ�����${dueDate}��24��ǰ���֧����Ģ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_before3' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateSaleBillByBill_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateSaleBillByBill_payday','����˵��������ѣ����գ�','����˵��������ѣ����գ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵����ڽ���24�����ڣ��뾡�����֧����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵���������','���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵����ڽ���24�����ڣ��뾡�����֧����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateSaleBillByBill_payday' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateMogobaoLklBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill','������Ģ��������˵�������֪ͨ','������Ģ��������˵�������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���˵�','���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateMogobaoLklBillByBill_before3' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill_before3','������Ģ��������˵�Ӧ����3��ǰ֪ͨ','������Ģ��������˵�Ӧ����3��ǰ֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill_before3';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵��������������','���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateMogobaoLklBillByBill_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateMogobaoLklBillByBill_payday','������Ģ��������˵�Ӧ�����֪ͨ','������Ģ��������˵�Ӧ�����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateMogobaoLklBillByBill_payday';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵���������','���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ�����ս���β��Ϊ${cardTail}�Ľ�ǿ��Զ��۳�����ȷ������ȫ����𣬷��򽫱��˷���Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday' and createTime>=@begindate);

/* ����ģ�� 'sms_CreateCustomBillByBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_CreateCustomBillByBill','��������˵�����','��������˵�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_CreateCustomBillByBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã�����Ϊ��${roomInfo}��������#${billName}#��${billNum}��${billTimes}��${amount}Ԫ������${dueDate}��24��ǰ���֧�����ɵ�¼Ģ���ⷿAPP�鿴��֧���������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����˵�����','${renterName}���ã�����Ϊ��${roomInfo}��������#${billName}#��${billNum}��${billTimes}��${amount}Ԫ������${dueDate}��24��ǰ���֧�����ɵ�¼Ģ���ⷿAPP�鿴��֧���������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_CreateCustomBillByBill' and createTime>=@begindate);

/* ����ģ�� 'sms_FirstDayArrears' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_FirstDayArrears','�˵�֪ͨ','�˵�֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_FirstDayArrears';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵�֪ͨ','�˵�֪ͨ,��${beginAndEnd}�µ�����˵�������, ����${date}֮ǰ���֧����',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�˵�֪ͨ','�˵�֪ͨ,��${beginAndEnd}�µ�����˵�������, ����${date}֮ǰ���֧����',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_FirstDayArrears' and createTime>=@begindate);

/* ����ģ�� 'sms_landlordRefund_affirm' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlordRefund_affirm','�����˿�֪ͨ','�����˿�֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlordRefund_affirm';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�����˿�','[��Լ����������˿�]${roomInfo}�ķ����������˻�${amount}Ԫ����ɲ������ͺ�ͬ��������κ����ʿ���ϵ��������Ģ���ⷿͶ�ߡ�',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����˿�','[��Լ����������˿�]${roomInfo}�ķ����������˻�${amount}Ԫ����ɲ������ͺ�ͬ��������κ����ʿ���ϵ��������Ģ���ⷿͶ�ߡ�',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordRefund_affirm' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_complainAdd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainAdd','���Ͷ��','���Ͷ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainAdd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainAdd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ͷ�߳ɹ�','[Ͷ�߳ɹ�]���ź������������������飬���������������������������뱣���ֻ���ͨ�����ĵȴ����ǵ���ϵ�봦��Ģ���ⷿ-���ǻ�Ŭ�����á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainAdd' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_complainSolve' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainSolve','���Ͷ�߽��֪ͨ','���Ͷ�߽��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainSolve');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainSolve';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ͷ���ѽ��','[Ͷ���ѽ��]����Ͷ�߷����ѵõ������лл����������֧�֣������ǲ��ϸ��ƺ���������Ʒ�ʣ�Ϊ���������õ��ⷿ���顾Ģ���ⷿ-���ǻ�Ŭ�����á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainSolve' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_complainUndo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_complainUndo','���Ͷ�߳���֪ͨ','���Ͷ�߳���֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_complainUndo');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_complainUndo';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ͷ���ѳ���','[Ͷ���ѳ���]����Ͷ�߷����ѱ�������������¼Ģ���ⷿ�鿴���飬�������ʣ���ֱ���뷿����ϵ��Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_complainUndo' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_withdrawalSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_withdrawalSuccess','�����������','�����������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_withdrawalSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[����֪ͨ]���ã�����${applyTime}ͨ��Ģ���ⷿ�˻��������֣�${amount}Ԫ���������ڴ���Ԥ��1-3���������ڵ��ˣ������ĵȴ�����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����������','[����֪ͨ]���ã�����${applyTime}ͨ��Ģ���ⷿ�˻��������֣�${amount}Ԫ���������ڴ���Ԥ��1-3���������ڵ��ˣ������ĵȴ�����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_withdrawalSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_rechargeSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_rechargeSuccess','��ͳ�ֵ����','��ͳ�ֵ����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_rechargeSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','����Ģ���ⷿ�˻���ֵ��${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��ֵ����','����Ģ���ⷿ�˻���ֵ��${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_rechargeSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_repairAdd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairAdd','����ύ����֪ͨ','����ύ����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairAdd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairAdd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���޳ɹ�','[���޳ɹ�]�ܸ�����Ϊ������������֪ͨ�������ı��������뱣���ֻ���ͨ�����ĵȴ�������һСʱδ�յ���Ӧ����ֱ���뷿����ϵ��Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairAdd' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_repairSolve' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairSolve','��ͱ������֪ͨ','��ͱ������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairSolve');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairSolve';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����ѽ��','[�����ѽ��]���ı��޷����ѵõ�������ڴ�����ס�����Ϳ��ģ�������Ҫ���ǵ������ޡ�Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairSolve' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_repairUndo' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repairUndo','��ͳ�������֪ͨ','��ͳ�������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repairUndo');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repairUndo';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����ѳ���','[�����ѳ���]���ı��޷����ѱ�������������¼Ģ���ⷿ�鿴���飬�������ʣ���ֱ���뷿����ϵ��Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_AfterMarket'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repairUndo' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_mogobao_lakala_failure' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_lakala_failure','Ģ������������֪ͨ','Ģ�����������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_lakala_failure';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ�����������','���ź������ύ��Ģ����ǩԼ���ѱ��˻أ���ע��${remark}������������¼Ģ���ⷿAPP���ڽ���24��ǰ��������޸ĺ��ύ��Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_mogobao_lakala_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_lakala_success','Ģ��������ɹ�����ǿ���','Ģ��������ɹ�����ǿ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_lakala_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ�����������','��ϲ�����ύ��Ģ����ǩԼ����ͨ��������̣������������Ҹ����ˣ���1����������ӽ��쿪��������Ҫ����ÿ�°�ʱ��β��Ϊ${cardTail}�Ľ�ǿ��д湻���Ŷ��Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_success' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_mogobao_mogo_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_mogo_success','Ģ��������ɹ���APP��','Ģ��������ɹ���APP��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_mogo_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_mogo_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ�����������','��ϲ�����ύ��Ģ����ǩԼ����ͨ��������̣������������Ҹ����ˣ���1����������ӽ��쿪��������Ҫ����ÿ�°�ʱ��¼Ģ���ⷿAPP֧������Ŷ��Ģ���ⷿ400-800-4949',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_mogo_success' and createTime>=@begindate);

/* ����ģ�� 'sms_roomRented_1_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_1_notify','���ԤԼ��Դ��������A','��Դ������Ϣ֪ͨ��ԤԼ��Դ������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_1_notify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ��Դ��������','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_1_notify' and createTime>=@begindate);

/* ����ģ�� 'sms_roomRented_2_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_2_notify','���ԤԼ��Դ��������B','ԤԼ��Դ�������ѣ���Դ������Ϣ֪ͨ�������ڵ�ǰ֮��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_2_notify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�������ǰֱ��Ԥ��/ǩԼ���ܱ�Ǹ����δ��Ϊ������סTa���������������Ҫ�ߵ��չ�����ס����������ǿ������¼Ģ�������и��õķ�Դ�ڵ�����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ��Դ��������','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�������ǰֱ��Ԥ��/ǩԼ���ܱ�Ǹ����δ��Ϊ������סTa���������������Ҫ�ߵ��չ�����ס����������ǿ������¼Ģ�������и��õķ�Դ�ڵ�����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_2_notify' and createTime>=@begindate);

/* ����ģ�� 'sms_roomRented_3_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_roomRented_3_notify','���ԤԼ��Դ��������C','ԤԼ��Դ�������ѣ���Դ������Ϣ֪ͨ��ԤԼ��ԴAPP��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_roomRented_3_notify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ��Դ��������','�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_roomRented_3_notify' and createTime>=@begindate);

/* ����ģ�� 'sendRenterContractFile' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sendRenterContractFile','��ͷ��ͺ�ͬ����','��ͷ��ͺ�ͬ����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sendRenterContractFile');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sendRenterContractFile';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��ͷ��ͺ�ͬ����','������${sendTime}ͨ��Ģ���ⷿAPP������${email}������һ�ݵ������޺�ͬ����ע����ա�Ģ���ⷿ��������ס�ĸ��ã�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���ͺ�ͬ����','������${sendTime}ͨ��Ģ���ⷿAPP������${email}������һ�ݵ������޺�ͬ����ע����ա�Ģ���ⷿ��������ס�ĸ��ã�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'Ģ���ⷿ���޺�ͬ','& lt;!DOCTYPE html& gt;& lt;html lang="en"& gt;& lt;head& gt;& lt;meta charset="UTF-8"& gt;& lt;title& gt;mail model& lt;/title& gt;& lt;style& gt;*{margin:0;padding:0;font-size:14px;font-family:Tahoma,Arial,Roboto,"Microsoft Yahei","Droid Sans","Helvetica Neue","Droid Sans Fallback","Heiti SC","Hiragino Sans GB",Simsun,sans-self;color:#282828;}.container{width:640px;margin:0 auto;margin-top:30px;margin-bottom:30px;background:#fff;border:1px solid #dcdcdc;box-shadow:0 0 5px #dcdcdc;}.block{padding:0 40px;line-height:25px;}.block .blockinner{padding:70px 0;}.block .blockinner p{line-height:25px;}.block .blockinner.blockinner1{border-bottom:1px solid #dcdcdc;}.link{color:#f65000;text-decoration:none;}.link:hover{text-decoration:underline;}.blockdown{position:relative;padding:35px 40px;line-height:25px;background:#d3d7dc;}.codebox{position:absolute;top:28px;right:28px;width:125px;text-align:center;}& lt;/style& gt;& lt;/head& gt;& lt;body& gt;& lt;div class="container"& gt;& lt;div class="block-top"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-title.jpg" alt="logo"& gt;& lt;/div& gt;& lt;div class="block"& gt;& lt;div class="blockinner blockinner1"& gt;& lt;p& gt;�װ���& lt;strong& gt;${renterName}& lt;/strong& gt; ���ã�& lt;/p& gt;& lt;p style="text-indent:2em"& gt;���������ĵ��Ӻ�ͬ�ĵ�����ע����գ������Ʊ��ܡ�& lt;/p& gt;& lt;/div& gt;& lt;div class="blockinner"& gt;& lt;p& gt;���κ����⣿& lt;/p& gt;& lt;p& gt;����Ժ�ͬ���������ʣ�����Ҫ������������鿴���ǵ�& lt;a class="link" href="http://www.mogoroom.com/help" target="_blank"& gt;��������& lt;/a& gt;��& lt;/p& gt;& lt;/div& gt;& lt;/div& gt;& lt;div class="blockdown"& gt;& lt;p& gt;���ʼ�Ϊϵͳ�ʼ�������ֱ�ӻظ���& lt;/p& gt;& lt;p& gt; & lt;/p& gt;& lt;p& gt;�ͷ����䣺mogoservice@mogoroom.com& lt;/p& gt;& lt;p& gt;�ͷ����ߣ�400-800-4949����һ������ 9:00-21:00��& lt;/p& gt;& lt;div class="codebox"& gt;& lt;img src="http://image.mogoroom.com/mogoroom/renterpc/img-code.jpg" alt="��ά��"& gt;& lt;div class="codeboxtxt"& gt;Ģ���ⷿ�ٷ�΢��& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/div& gt;& lt;/body& gt;& lt;/html& gt;',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sendRenterContractFile' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_push_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_push_customBill','���������Զ����˵�','���������Զ����˵�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_push_customBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���������Զ����˵�','���ķ�����Ϊ��${roomInfo}�����˵������¼Ģ���ⷿAPP�鿴�˵�����ʱ֧����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���������Զ����˵�','���ķ�����Ϊ��${roomInfo}�����˵������¼Ģ���ⷿAPP�鿴�˵�����ʱ֧����',1,1,null,'MODULE_MyBill'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_push_customBill' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_revoke_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_revoke_customBill','����˵���������','����˵���������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_revoke_customBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵���������','${renterName}���ã������ѽ���${roomInfo}��#${billName}#�˵����ϣ����ɴ��˵��鿴���顣',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵���������','${renterName}���ã������ѽ���${roomInfo}��#${billName}#�˵����ϣ����ɴ��˵��鿴���顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_revoke_customBill' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_update_customBill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_update_customBill','����˵��޸�����','����˵��޸�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_update_customBill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵��޸�����','${renterName}���ã��������޸���${roomInfo}��#${billName}#�˵������ɴ��˵��鿴���鲢����֧���������������뷿����ϵ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵��޸�����','${renterName}���ã��������޸���${roomInfo}��#${billName}#�˵������ɴ��˵��鿴���鲢����֧���������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_update_customBill' and createTime>=@begindate);

/* ����ģ�� 'sms_landlordinfo_afterpaid_withdefinedbill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlordinfo_afterpaid_withdefinedbill','���������˵��Ѹ�����','���������˵��Ѹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlordinfo_afterpaid_withdefinedbill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���${renterName}�ѳɹ�֧��${roomInfo}��#${billName}#�˵����ɴ��˵��տ�鿴��ϸ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����˵��Ѹ�����','���${renterName}�ѳɹ�֧��${roomInfo}��#${billName}#�˵����ɴ��˵��տ�鿴��ϸ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill' and createTime>=@begindate);

/* ����ģ�� 'sms_bookOrder_price_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_bookOrder_price_update','��Ͷ���������','��Ͷ����������������������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_bookOrder_price_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��Ͷ���������','[�����Ѹ���]����Ϊ�������˶����Ķ������Ϣ������60���������֧������ʱδ֧��������ʧЧ��Ģ���ⷿ-������ס�ø��á�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����������','[�����Ѹ���]����Ϊ�������˶����Ķ������Ϣ������60���������֧������ʱδ֧��������ʧЧ��Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_bookOrder_price_update' and createTime>=@begindate);

/* ����ģ�� 'sms_signing_wait_confirm' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_confirm','�������ǩԼȷ�����ѣ����˺ţ�','�������ǩԼȷ�����ѣ����˺ţ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_confirm';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã�����${landlordName}����������һ��${roominfo}����Լ�����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}���ǩԼ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����ǩԼȷ������','${renterName}���ã�����${landlordName}����������һ��${roominfo}����Լ�����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}���ǩԼ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm' and createTime>=@begindate);

/* ����ģ�� 'message_attack_warning' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'message_attack_warning','����Ԥ��֪ͨ','����Ԥ��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'message_attack_warning');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='message_attack_warning';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���Ź���Ԥ��','���Ź���Ԥ����${content}',1,1,null,'maw'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'message_attack_warning' and createTime>=@begindate);

/* ����ģ�� 'sms_additional_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_additional_renter','��Ͳ�¼��Լȷ�����ѣ����˺ţ�','��Ͳ�¼��Լȷ�����ѣ����˺ţ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_additional_renter');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_additional_renter';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼����⣬���ķ���${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}ȷ����Լ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_renter' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼��Լȷ������','${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼����⣬���ķ���${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}ȷ����Լ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_renter' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_update','��¼��Լ����','��¼��Լ����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼��Լ����','${renterName}���ã�����ס��${flatInfo}�ķ�����Ϊ���޸�����Լ�����˳��˺Ų����µ�¼Ģ���ⷿAPPȷ����Լ������ʱ�޸���������Ƹ������ϣ��������ʼ�ʱ�뷿����ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_update' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_guanWangYuyueSuccessNotify_push' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_guanWangYuyueSuccessNotify_push','������ԤԼ��������','������ԤԼ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_guanWangYuyueSuccessNotify_push';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ��������','${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push' and createTime>=@begindate);

/* ����ģ�� 'sms_withdrawal_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_withdrawal_success','������ֵ�������','������ֵ�������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_withdrawal_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[����֪ͨ]���ã�����${datetime}��������ֽ����ѵ��ˣ���ע����գ���������¼Ģ���ⷿAPP�鿴���顣��Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ֵ�������','[����֪ͨ]���ã�����${datetime}��������ֽ����ѵ��ˣ���ע����գ���������¼Ģ���ⷿAPP�鿴���顣��Ģ���ⷿ-������ס�ø��á�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_success' and createTime>=@begindate);

/* ����ģ�� 'sms_withdrawal_fail' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_withdrawal_fail','�������ʧ������','�������ʧ������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_withdrawal_fail';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[����֪ͨ]���ã�����${datetime}������������봦��ʧ��${remark}���¼Ģ���ⷿ�˶Կ��š������������Ϣ�Ƿ�׼ȷ����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����ʧ������','[����֪ͨ]���ã�����${datetime}������������봦��ʧ��${remark}���¼Ģ���ⷿ�˶Կ��š������������Ϣ�Ƿ�׼ȷ����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_withdrawal_fail' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_saleContractConvert_notify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_saleContractConvert_notify','������¼��Լ֪ͨ','������¼��Լ֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_notify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_saleContractConvert_notify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��¼��Լ','${renter}���ã�����ס��${roomInfo}��Դ�ķ�����Ϊ����¼����Լ�����¼Ģ���ⷿAPPȷ����Լ�����������뼰ʱ�뷿�����й�ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_saleContractConvert_notify' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_initPW' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_initPW','�����޸��������������Ϣ','�����޸��������������Ϣ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_initPW');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_initPW';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�޸�����','Ģ���ⷿAPP����,�װ���${realName}���ã������ҵ�֪ͨ����Ģ���ⷿAPP�����ˣ���������������Ģ���ⷿAPPʹ���ҷ������޵ȹ��ܣ��������ǻ��������Ƹ��๦�ܡ�Ϊʡȥ�����鷳��������Ϊ��������һ���˺ţ����ĵ�¼�˺ţ�${account}����¼���룺${password}�����¼�󾡿��޸�������Ϣ��,���ڸϿ����Ģ���ٷ���վ����ʹ�ðɡ�',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_initPW' and createTime>=@begindate);

/* ����ģ�� 'sms_sendPayFirstPhaseMessage' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_sendPayFirstPhaseMessage','�������ǩԼ�ɹ�����','�������ǩԼ�ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_sendPayFirstPhaseMessage';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�������ǩԼ�ɹ�����','��ϲ�����ѳɹ�ǩԼ${roomInfo}���������${dueDate}֧�����ĵ�һ�ڿ��${totalMoney}Ԫ����Ը����ס���ģ�������졣��עĢ���ⷿ��mogoroom��������������~',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����ǩԼ�ɹ�����','��ϲ�����ѳɹ�ǩԼ${roomInfo}���������${dueDate}֧�����ĵ�һ�ڿ��${totalMoney}Ԫ����Ը����ס���ģ�������졣��עĢ���ⷿ��mogoroom��������������~',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendPayFirstPhaseMessage' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_guanWangYuyueSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_guanWangYuyueSuccess','���ԤԼ�ɹ�����A','ԤԼ�ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_guanWangYuyueSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${yuyueInfo}������ʹ�ø��˺������¼Ģ���ⷿAPP�鿴ԤԼ���ȼ���ɺ���ǩԼ��ס����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���ԤԼ�ɹ�����A','${yuyueInfo}������ʹ�ø��˺������¼Ģ���ⷿAPP�鿴ԤԼ���ȼ���ɺ���ǩԼ��ס����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_guanWangYuyueSuccessNotify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_guanWangYuyueSuccessNotify','���ԤԼ�ɹ�����B','���ԤԼ�ɹ�����������ԤԼ����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_guanWangYuyueSuccessNotify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${yuyueInfo}����������¼Ģ���ⷿAPP�鿴ԤԼ���ȼ���ɺ���ǩԼ��ס����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ�ɹ�����','${yuyueInfo}����������¼Ģ���ⷿAPP�鿴ԤԼ���ȼ���ɺ���ǩԼ��ס����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_guanWangYuyueSuccessNotify' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_verificationCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_verificationCode','���App������֤��','���App������֤��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_verificationCode');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_verificationCode';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������֤��','${code}���ֻ���֤�룬ʮ��������Ч�����칵ͨ��������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_verificationCode' and createTime>=@begindate);

/* ����ģ�� 'email_renter_verificationCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'email_renter_verificationCode','���App������֤��','���App������֤��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'email_renter_verificationCode');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='email_renter_verificationCode';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'������֤��','��Ģ���ⷿ��${code} ���ʼ���֤�룬30��������Ч�����칵ͨ��������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_renter_verificationCode' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_renterAddPayPwd' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_renterAddPayPwd','�״�����֧������֪ͨ','�״�����֧������֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_renterAddPayPwd';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����֧������ɹ�','[����֧������ɹ�]��ϲ�����ѳɹ�����Ģ���֧ⷿ�����룬֧����������ʹ��Ģ���ⷿ�˻����֧�������ֵ��ʽ�䶯ʱ��ƾ֤�������Ʊ��ܡ���Ģ���ⷿ-������ס�ø��á�',1,1,null,'MODULE_MsgDetail'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_renterAddPayPwd' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_pwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_pwd_update','���������޸�','���������޸�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_pwd_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���������޸�','���ĵ�¼�������óɹ������Ǳ��˲���������ϵĢ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_pwd_update' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_paypwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_paypwd_update','����֧���������óɹ�','����֧���������óɹ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_paypwd_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','����Ģ�����֧���������óɹ������Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ400-800-4949��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����֧���������óɹ�','����Ģ�����֧���������óɹ������Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ400-800-4949��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_paypwd_update' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_phone_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_phone_update','������ϵ�绰�޸�','������ϵ�绰�޸�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_phone_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ϵ�绰�޸�','������ϵ��ʽ�ѱ��޸�Ϊ${phone}�����Ǳ��˲���������ϵĢ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_phone_update_verify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_phone_update_verify','������ϵ�绰�޸�','������ϵ�绰�޸�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_phone_update_verify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ϵ�绰�޸�','��֤�룺${VCode}������ʹ�ø��ֻ����޸��˺���ϵ�绰������������й¶��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_phone_update_verify' and createTime>=@begindate);

/* ����ģ�� 'sms_refund_approval_wait' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_refund_approval_wait','�����˿��������','�����˿��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_refund_approval_wait';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�����˿��������','����һ��${userInfoName}������˿�${money}Ԫ����ˣ������˿����ҳ����в�����',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˿��������','����һ��${userInfoName}������˿�${money}Ԫ����ˣ������˿����ҳ����в�����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_wait' and createTime>=@begindate);

/* ����ģ�� 'sms_refund_approval_inform' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_refund_approval_inform','���˺��˿����ʧ������','���˺��˿����ʧ������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_refund_approval_inform';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','����${roomInfo}�˿���˱�${landlordName}�ܾ���ԭ��Ϊ${approvalReason}��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˿����ʧ������','����${roomInfo}�˿���˱�${landlordName}�ܾ���ԭ��Ϊ${approvalReason}��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_refund_approval_inform' and createTime>=@begindate);

/* ����ģ�� 'sms_additional_new_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_additional_new_renter','��Ͳ�¼��Լȷ�����ѣ����˺ţ�','��Ͳ�¼��Լȷ�����ѣ����˺ţ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_additional_new_renter';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼��ɷѣ�����${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ����${password}��ȷ����Լ����¼���뼰ʱ�޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��¼��Լȷ������','${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼��ɷѣ�����${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ����${password}��ȷ����Լ����¼���뼰ʱ�޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_additional_new_renter' and createTime>=@begindate);

/* ����ģ�� 'sms_renterinfo_afterpaid_withdefinedbill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renterinfo_afterpaid_withdefinedbill','��������˵��Ѹ�����','��������˵��Ѹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renterinfo_afterpaid_withdefinedbill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã���л��֧��${roomInfo}��#${billName}#�˵���',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����˵��Ѹ�����','${renterName}���ã���л��֧��${roomInfo}��#${billName}#�˵���',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withdefinedbill' and createTime>=@begindate);

/* ����ģ�� 'sms_renterinfo_afterpaid_withroutinebill' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renterinfo_afterpaid_withroutinebill','�������˵��Ѹ�����','�������˵��Ѹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renterinfo_afterpaid_withroutinebill';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}�����ѳɹ�֧��${roomInfo} ��${startDate}-${endDate}����˵����ɽ����˵��鿴���顣',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����˵��Ѹ�����','${renterName}�����ѳɹ�֧��${roomInfo} ��${startDate}-${endDate}����˵����ɽ����˵��鿴���顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renterinfo_afterpaid_withroutinebill' and createTime>=@begindate);

/* ����ģ�� 'sms_outhome_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_outhome_renter','����˷����뷴��','����˷����뷴��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_outhome_renter');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_outhome_renter';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˷����뷴��','һ��ʼ�Һ��ѽ��ܣ�������������ĸ��ã�������֪ͨ���������˷������뱣���ֻ���ͨ�����ĵȴ���Ģ���ⷿ���ڴ����ٴλ���~',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_renter' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����˷����뷴��','һ��ʼ�Һ��ѽ��ܣ�������������ĸ��ã�������֪ͨ���������˷������뱣���ֻ���ͨ�����ĵȴ���Ģ���ⷿ���ڴ����ٴλ���~',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_outhome_renter' and createTime>=@begindate);

/* ����ģ�� 'renter_checkout_dealwith_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'renter_checkout_dealwith_success','����˷��������','����˷��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='renter_checkout_dealwith_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','����ס��${roomInfo}�˷�����ɣ��������˿�${amount}Ԫ���������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˷��������','����ס��${roomInfo}�˷�����ɣ��������˿�${amount}Ԫ���������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'renter_checkout_dealwith_success' and createTime>=@begindate);

/* ����ģ�� 'sms_sendWelcomeNewRoommate' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_sendWelcomeNewRoommate','��������ס','��������ס',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_sendWelcomeNewRoommate');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_sendWelcomeNewRoommate';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��ӭ������','[��ӭ������]${realName}���ã��ܸ��˵�һʱ��֪ͨ��������ӭ����һλ�����ѣ�Ta��@${renterName}������${checkInDate}����ס���ǵ�С��ͥ��������һ��ӭTa�ɣ���ֵ������ʲô�ĵ�ʱ���֪������Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_sendWelcomeNewRoommate' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_repayPlan' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_repayPlan','Ģ�����˵���֧��֪ͨ','Ģ�����˵���֧��֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_repayPlan');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_repayPlan';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ�����˵��Ѹ�֪ͨ','�𾴵�${renterName}���ã����ѳɹ�֧���������${amount}Ԫ��лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repayPlan' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ�����˵��Ѹ�֪ͨ','�𾴵�${renterName}���ã����ѳɹ�֧���������${amount}Ԫ��лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_repayPlan' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_refuse_bookorder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_refuse_bookorder','���Ԥ������������','���Ԥ�����������ѣ���������Ԥ����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_refuse_bookorder';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[Ԥ��������]�����ѳ���${communityName}С����Դ��Ԥ�����������˻�����֧���˻�����ע����ա��������ʣ����뷿����ϵ�˽����顣��Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ������������','[Ԥ��������]�����ѳ���${communityName}С����Դ��Ԥ�����������˻�����֧���˻�����ע����ա��������ʣ����뷿����ϵ�˽����顣��Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_refuse_bookorder' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_updateprice_bookOrderSuccess' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_updateprice_bookOrderSuccess','���Ԥ���ɹ�����B','�����޸Ķ������ͳɹ�֧������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_updateprice_bookOrderSuccess';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndDay}���ڣ�${signedEndTime}֮ǰ�����ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ���ɹ�����','��ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndDay}���ڣ�${signedEndTime}֮ǰ�����ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_updateprice_bookOrderSuccess' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_notShowingsCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_notShowingsCode','���ԤԼȡ������','���ԤԼȡ�����ѣ�δ��������Դ������Ԥ��/ǩԼ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_notShowingsCode';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���ԤԼȡ������','�ܱ�Ǹ��֪ͨ����${communityName}С����Դ�ѱ���������Ԥ�������µ��������Ŀ����ƻ��ɡ��������ʣ����뷿����ϵ�˽����顣',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼȡ������','�ܱ�Ǹ��֪ͨ����${communityName}С����Դ�ѱ���������Ԥ�������µ��������Ŀ����ƻ��ɡ��������ʣ����뷿����ϵ�˽����顣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_notShowingsCode' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_alreadyShowingsCode' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_alreadyShowingsCode','��ʹ��������ⷴ��','���������ⷴ����������48Сʱ�ڣ���Դ������Ԥ��/ǩԼ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_alreadyShowingsCode';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��ʹ��������ⷴ��','[��Դ�ѳ���]��ԥ�ǰ�ɱ������ת����������${communityName}С����Դ�ѱ����⡣û��ϵ������÷��������ˣ���һ�����õİɣ���Ģ���ⷿ-������ס�ø��á�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'���������ⷴ��','[��Դ�ѳ���]��ԥ�ǰ�ɱ������ת����������${communityName}С����Դ�ѱ����⡣û��ϵ������÷��������ˣ���һ�����õİɣ���Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_alreadyShowingsCode' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_reserveWillOverdue_bookorder' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_reserveWillOverdue_bookorder','���Ԥ����ʱ����','���Ԥ����ʱ���ѣ�Ԥ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_reserveWillOverdue_bookorder';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','[Ԥ��������]���ã���${communityName}С����Դ�Ķ���ǩԼʱ�޽���12��Сʱ����ڣ�Ϊ����Ӱ����˳����ס�����������ǩԼ����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ����ʱ����','[Ԥ��������]���ã���${communityName}С����Դ�Ķ���ǩԼʱ�޽���12��Сʱ����ڣ�Ϊ����Ӱ����˳����ס�����������ǩԼ����Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_reserveWillOverdue_bookorder' and createTime>=@begindate);

/* ����ģ�� 'sms_signing_wait_confirm_new_renter' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_signing_wait_confirm_new_renter','�������ǩԼȷ�����ѣ����˺ţ�','�������ǩԼȷ�����ѣ����˺ţ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_signing_wait_confirm_new_renter';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${renterName}���ã�����${landlordName}����������Լ����ȷ�ϣ����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ���룺${password}���˶Բ����ǩԼ����¼���뼰ʱ�޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����ǩԼȷ������','${renterName}���ã�����${landlordName}����������Լ����ȷ�ϣ����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ���룺${password}���˶Բ����ǩԼ����¼���뼰ʱ�޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm_new_renter' and createTime>=@begindate);

/* ����ģ�� 'sms_appointment_return_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_appointment_return_success','���ԤԼ�ɹ�����','���ԤԼ�ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_appointment_return_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���ԤԼ�ɹ�����','[ԤԼ�ɹ�]������֪ͨ�������Ŀ���������Ϣ���뱣���ֻ���ͨ�����ĵȴ�������鿴��Ģ���ⷿ-������ס�ø��á�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ԤԼ�ɹ�����','[ԤԼ�ɹ�]������֪ͨ�������Ŀ���������Ϣ���뱣���ֻ���ͨ�����ĵȴ�������鿴��Ģ���ⷿ-������ס�ø��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_appointment_return_success' and createTime>=@begindate);

/* ����ģ�� 'sms_warn_notice_email' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_warn_notice_email','�澯�ʼ�֪ͨ','�澯�ʼ�֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_warn_notice_email';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'�澯֪ͨ','${warnNoticeInfo}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_email' and createTime>=@begindate);

/* ����ģ�� 'sms_warn_notice_sms' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_warn_notice_sms','�澯����֪ͨ','�澯����֪ͨ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_warn_notice_sms';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�澯֪ͨ','${warnNoticeInfo}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_warn_notice_sms' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_bookOrderSuccess_not_review' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_bookOrderSuccess_not_review','���Ԥ���ɹ�����A','�����޸Ķ���������ɶ���֧��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_bookOrderSuccess_not_review';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��Ģ���ⷿ����ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndTime}֮ǰ���ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ԥ���ɹ�����','��Ģ���ⷿ����ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndTime}֮ǰ���ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_bookOrderSuccess_not_review' and createTime>=@begindate);

/* ����ģ�� 'sms_saleContract_cancel' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_saleContract_cancel','���ǩԼ����������','���ǩԼ����������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_saleContract_cancel';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���ǩԼ����������','${renterName}���ã�����${landlordName}�ѳ���${roomInfo}��ǩԼ���˿�${refund}Ԫ���������������뷿����ϵ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼ����������','${renterName}���ã�����${landlordName}�ѳ���${roomInfo}��ǩԼ���˿�${refund}Ԫ���������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_saleContract_cancel' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_bankcard_bind' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_bankcard_bind','���������п�','���������п�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_bankcard_bind';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���������п�','��β��Ϊ${cardNumber}�����п��ѳɹ���Ģ������˺š����Ǳ��˲���������ϵĢ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_bankcard_bind' and createTime>=@begindate);

/* ����ģ�� 'sms_landlord_mogobao_finalapprove_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_landlord_mogobao_finalapprove_success','Ģ��������ͨ��','Ģ��������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_landlord_mogobao_finalapprove_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ��������ͨ��','�𾴵�${landlordName}���ã����${renterName}��${roomInfo}�������Ģ����ҵ�������ͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ��������ͨ��','�𾴵�${landlordName}���ã����${renterName}��${roomInfo}�������Ģ����ҵ�������ͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_finalapprove_success' and createTime>=@begindate);

/* ����ģ�� 'sms_renter_mogobao_finalapprove_success' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_renter_mogobao_finalapprove_success','Ģ��������ͨ��','Ģ��������ͨ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_finalapprove_success');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_renter_mogobao_finalapprove_success';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'Ģ��������ͨ��','�𾴵�${renterName}����ϲ�����������${roomInfo}Ģ����ҵ�������ͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_finalapprove_success' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'Ģ��������ͨ��','�𾴵�${renterName}����ϲ�����������${roomInfo}Ģ����ҵ�������ͨ����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_renter_mogobao_finalapprove_success' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_overDue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_overDue','������ڣ��������','������ڣ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_overDue';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ڣ��������','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}����֧���������${amount}Ԫ��������${overDue}�죬���������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ�лл��',1,0,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ڣ��������','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}����֧���������${amount}Ԫ��������${overDue}�죬���������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ�лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue' and createTime>=@begindate);

/* ����ģ�� 'sms_partner_loan_overDue7' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_partner_loan_overDue7','������ڣ��������','������ڣ��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_partner_loan_overDue7';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'������ڣ��������','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}����֧���������${amount}Ԫ��������${overDue}�죬�뽫�������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ����ٲ�ȫ����ɣ����ǽ�������ͣ�лл��',1,0,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������ڣ��������','�𾴵�${landlordName}���ã��������${renterName}��${roomInfo}����֧���������${amount}Ԫ��������${overDue}�죬�뽫�������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ����ٲ�ȫ����ɣ����ǽ�������ͣ�лл��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_partner_loan_overDue7' and createTime>=@begindate);

/* ����ģ�� 'email_employee_restPassword' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'email_employee_restPassword','��̨BS��½��������','��̨BS��½��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'email_employee_restPassword');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='email_employee_restPassword';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,2,'��½�������óɹ�','���ĺ�̨BS��¼�����ѱ�����Ϊ��123456�����뾡���¼��̨�޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'email_employee_restPassword' and createTime>=@begindate);

/* ����ģ�� 'push_partner_pwd_update' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_partner_pwd_update','����������Ϣ����','����������Ϣ����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_partner_pwd_update';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������Ϣ����','�����˻�����ҳ���޸������룬��ʹ�����������µ�¼�����Ǳ��˲���������ϵĢ���ⷿ400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_partner_pwd_update' and createTime>=@begindate);

/* ����ģ�� 'push_renter_noticeLogoff' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_renter_noticeLogoff','�ʺŵ�¼֪ͨ','�����ʺ����������豸��¼',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_renter_noticeLogoff');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_renter_noticeLogoff';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�ʺŵ�¼֪ͨ','�����ʺ����������豸��¼��������������ϵ�ͷ���Ģ���ⷿ-������ס�ø��ã�',1,1,null,'MODULE_Login'
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_renter_noticeLogoff' and createTime>=@begindate);

/* ����ģ�� 'sms_room_onlineStatus_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_room_onlineStatus_landlord','�������¼�','�������¼�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_room_onlineStatus_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_room_onlineStatus_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�������¼�','${landlordName}���ã����ķ�Դ${communityName}С��${roomNum}������˲��ʺ϶���չʾ���ѱ�ƽ̨�������أ����ɣ�${remard}',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_room_onlineStatus_landlord' and createTime>=@begindate);

/* ����ģ�� 'push_weixin_huoban_bind' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_weixin_huoban_bind','���΢�Ű�','���΢�Ű���֤��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_weixin_huoban_bind';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���΢����֤','[Ģ�����] ${VCode}����Ģ����顱�ֻ���̬�룬�������֤������Ǳ��˲���������Ա����š�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_weixin_huoban_bind' and createTime>=@begindate);

/* ����ģ�� 'push_subAccount_add' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_subAccount_add','�½����˺�','�½����˺�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_subAccount_add');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_subAccount_add';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�½����˺�','${landlordName}���ã���������${num}�����˺ţ�������Ϣ���£�${contents}���뽫�����֪��ӦԱ���������Ʊ��ܡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_add' and createTime>=@begindate);

/* ����ģ�� 'push_subAccount_modify' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_subAccount_modify','�޸����˺�','�޸����˺�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_subAccount_modify');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_subAccount_modify';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�޸����˺�','${landlordName}���ã����޸������˺ţ�${name}���µ��������£�${contents}���뽫�����֪��ӦԱ���������Ʊ��ܡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_subAccount_modify' and createTime>=@begindate);

/* ����ģ�� 'sms_subAccount_addPhone' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_addPhone','���˺��ֻ���','���˺��ֻ���',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_addPhone';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${subName}���ã������˺��Ѵ����ɹ�����ʹ�ñ��ֻ��ŵ�¼Ģ�����App����ʼ��������ѯ������Ϊ���˺Ű�ȫ�����ڳ��ε�¼ʱ�޸����롣�������http://mogo.help/dl',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_addPhone' and createTime>=@begindate);

/* ����ģ�� 'sms_subAccount_modifyPhoneN' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_modifyPhoneN','�����޸����˺ŵ绰','���˺��ֻ��ţ��£�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_modifyPhoneN';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','${subName}���ã������˺ŵ绰�Ѹ��ģ������������루��ѯ����������ʹ�ñ��ֻ������µ�¼Ģ�����App���޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneN' and createTime>=@begindate);

/* ����ģ�� 'sms_subAccount_modifyPhoneO' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_modifyPhoneO','�����޸����˺ŵ绰','���˺��ֻ��ţ��ɣ�',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_modifyPhoneO';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�����޸����˺ŵ绰','${subName}���ã��������Ѻ������˺Ž����ʹ�����ֻ��Ž��е�¼��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_modifyPhoneO' and createTime>=@begindate);

/* ����ģ�� 'sms_subAccount_resetPassWord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'sms_subAccount_resetPassWord','�����޸�����������','�����޸�����������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='sms_subAccount_resetPassWord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�����޸�����������','${subName}���ã������������óɹ���������ѯ��������ʹ�ñ��ֻ������µ�¼��Ģ�����App�����޸����롣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'sms_subAccount_resetPassWord' and createTime>=@begindate);

/* ����ģ�� 'push_orgDel_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_orgDel_notice','��֯�䶯����','��֯����ʱ������Ϣ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_orgDel_notice');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_orgDel_notice';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ע�⣬������֯�ѷ������','���ã�����������֯�ѱ����ģ������µ�¼����в鿴���л���',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgDel_notice' and createTime>=@begindate);

/* ����ģ�� 'push_orgAdd_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_orgAdd_notice','��֯�䶯����','������֯������Ϣ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_orgAdd_notice';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ע�⣬����ӵ���µ���֯','���ã����ѱ������µ���֯Ȩ�ޣ��������µ�¼��ʼʹ�á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_orgAdd_notice' and createTime>=@begindate);

/* ����ģ�� 'push_roleAdd_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_roleAdd_notice','��ɫ�䶯����','��ɫ������ʾ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_roleAdd_notice';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'��ʾ������ӵ���µĽ�ɫ','���ã����ѱ������µĽ�ɫ���������µ�¼��ʼʹ�á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleAdd_notice' and createTime>=@begindate);

/* ����ģ�� 'push_roleDel_notice' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'push_roleDel_notice','��ɫ�䶯����','��ɫ������ʾ',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'push_roleDel_notice');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='push_roleDel_notice';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ע�⣬���Ľ�ɫ�ѷ������','���ã����ڱ���֯�ڵĽ�ɫȨ���ѷ�������������µ�¼����в鿴��ʹ�á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'push_roleDel_notice' and createTime>=@begindate);

/* ����ģ�� 'bill_renter_1004_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_1004_overdue','�������˵��߽�����','�������˵��߽����ѣ�����˵�����1��3��7��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_1004_overdue';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'�������˵��߽�����','${renterName}���ã�${roomInfo}��${startDate}-${endDate}����˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����˵��߽�����','${renterName}���ã�${roomInfo}��${startDate}-${endDate}����˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_1004_overdue' and createTime>=@begindate);

/* ����ģ�� 'bill_landlord_1004_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_landlord_1004_payday','��������˵���������','��������˵���������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_landlord_1004_payday';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��������˵���������','${landlordName}���ã�������${roomInfo} ��${startDate}-${endDate}����˵�����֧���գ����${renterName}�����룺${renterPhone}�����뼰ʱ���⡣',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'����˵���������','${landlordName}���ã�������${roomInfo} ��${startDate}-${endDate}����˵�����֧���գ����${renterName}�����룺${renterPhone}�����뼰ʱ���⡣',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_landlord_1004_payday' and createTime>=@begindate);

/* ����ģ�� 'bill_renter_20001_payday' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_payday','��ͷ�����˵����ڵ�������','��ͷ�����˵����ڵ�������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_payday';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','���ã�����ס��${roomInfo}��#${billName}#��${billNum}���˵����ڽ���24�����ڣ��뾡�����֧����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������˵����ڵ�������','���ã�����ס��${roomInfo}��#${billName}#��${billNum}���˵����ڽ���24�����ڣ��뾡�����֧����',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_payday' and createTime>=@begindate);

/* ����ģ�� 'bill_renter_20001_overdue' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'bill_renter_20001_overdue','��ͷ�����˵��߽�����','��ͷ�����˵��߽�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='bill_renter_20001_overdue';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'��ͷ�����˵��߽�����','${renterName}���ã�${roomInfo}��#${billName}#�˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'������˵��߽�����','${renterName}���ã�${roomInfo}��#${billName}#�˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'bill_renter_20001_overdue' and createTime>=@begindate);

/* ����ģ�� 'landlord_checkout_audit_agree' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'landlord_checkout_audit_agree','���˺��˿���˳ɹ�����','���˺��˿���˳ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='landlord_checkout_audit_agree';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'���˺��˿���˳ɹ�����','${userInfoName}���ã�����${roomInfo}�˿�������ͨ����ˡ�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˿���˳ɹ�����','${userInfoName}���ã�����${roomInfo}�˿�������ͨ����ˡ�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'landlord_checkout_audit_agree' and createTime>=@begindate);

/* ����ģ�� 'runter_bill_favorable' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'runter_bill_favorable','����˵��Ż�����','����˵��Ż�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'runter_bill_favorable');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='runter_bill_favorable';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵��Ż�����','${renterName}���ã�����${landlordName}��Ϊ��${roomInfo} ��${billName}�˵��Ż�${reduceMoney}Ԫ��������鿴�˵��������������뷿����ϵ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_favorable' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵��Ż�����','${renterName}���ã�����${landlordName}��Ϊ��${roomInfo} ��${billName}�˵��Ż�${reduceMoney}Ԫ��������鿴�˵��������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_favorable' and createTime>=@begindate);

/* ����ģ�� 'runter_bill_split' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'runter_bill_split','����˵��������','����˵��������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'runter_bill_split');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='runter_bill_split';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˵��������','${renterName}���ã�����${landlordName}�ѽ���${roomInfo} ��${billName}�˵����в�֣����֧�����${leastMoney}Ԫ������֧����Ϊ${dueDate}��24�㣬�뾡��֧����������鿴�˵��������������뷿����ϵ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_split' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˵��������','${renterName}���ã�����${landlordName}�ѽ���${roomInfo} ��${billName}�˵����в�֣����֧�����${leastMoney}Ԫ������֧����Ϊ${dueDate}��24�㣬�뾡��֧����������鿴�˵��������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'runter_bill_split' and createTime>=@begindate);

/* ����ģ�� 'msg_confirm_signed_renter_approval' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_confirm_signed_renter_approval','���ǩԼȷ������','���ǩԼȷ������',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_confirm_signed_renter_approval';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','��ϲ��${renterName}����ס��${communityName}ֻ��һ���ˣ�������ͬ��ǩԼ�����¼Ģ���ⷿAPP���붩��ȷ�ϲ����ǩԼ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼȷ������','��ϲ��${renterName}����ס��${communityName}ֻ��һ���ˣ�������ͬ��ǩԼ�����¼Ģ���ⷿAPP���붩��ȷ�ϲ����ǩԼ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_confirm_signed_renter_approval' and createTime>=@begindate);

/* ����ģ�� 'msg_success_signed_remind_landlord' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_success_signed_remind_landlord','����ǩԼ�ɹ�����','����ǩԼ�ɹ�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_success_signed_remind_landlord';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����ǩԼ�ɹ�����','${landlordname}���ã����${renterName}�������ɹ�ǩԼ��Դ${roominfo}����������;���֧�����ڷ��á�',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'ǩԼ�ɹ�����','${landlordname}���ã����${renterName}�������ɹ�ǩԼ��Դ${roominfo}����������;���֧�����ڷ��á�',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_success_signed_remind_landlord' and createTime>=@begindate);

/* ����ģ�� 'msg_to_renter_room_checkout_finish' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'msg_to_renter_room_checkout_finish','����˷��������','���_�˷�����',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='msg_to_renter_room_checkout_finish';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����˷��������','${renterName}���ã�����${landlordName}���������ס��${roomInfo}���˷����˿�${amount}Ԫ����������鿴��Լ�������������뷿����ϵ��',0,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish' and createTime>=@begindate);

/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�˷��������','${renterName}���ã�����${landlordName}���������ס��${roomInfo}���˷����˿�${amount}Ԫ����������鿴��Լ�������������뷿����ϵ��',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'msg_to_renter_room_checkout_finish' and createTime>=@begindate);

/* ����ģ�� '2222ZM0c' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT '2222ZM0c','2222','222',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = '2222ZM0c');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='2222ZM0c';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,1,'����','22',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = '2222ZM0c' and createTime>=@begindate);

/* ����ģ�� 'fangjianxiajiadSII' */
INSERT INTO `mesg_templet`
( `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
SELECT 'fangjianxiajiadSII','�����¼�','BSǿ���¼�ʱ���͸���Ϣ��',1,0,now(),0,0,now(),0,1,null
FROM dual WHERE not exists (select id from mesg_templet where templetCode = 'fangjianxiajiadSII');

/* ��ѯģ��id */
select @mesgTempletId:=id from mesg_templet where templetCode='fangjianxiajiadSII';
/* ������ģ�� */
INSERT INTO `mesg_subtemplet`
( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
SELECT @mesgTempletId,3,'�����¼�','${landlordName}���ã����ķ�Դ${roomInfo}������˲��ʺ϶���չʾ���ѱ�ƽ̨�������أ����ɣ�${verifyIdea}���������ʣ�����ϵĢ���ͷ�400-800-4949',1,1,null,''
FROM dual WHERE exists (select id from mesg_templet where templetCode = 'fangjianxiajiadSII' and createTime>=@begindate);


commit;