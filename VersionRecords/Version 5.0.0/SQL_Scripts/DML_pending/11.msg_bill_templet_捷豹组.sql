USE mogoroomdb;

/*1.��Ϣ���ѣ����ݱ���� MSG_RENTER_BILL_1004_BEFORE3  �˵����� -->���_����˵�_3��   1)�رն���ͨ�� 2)����push 3)����΢�� */
SELECT @templet_before3_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_CreateSaleBillByBill_before3' AND STATUS =1 AND valid = 1)
	����,@templet_before3_msg:='���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵�����3�պ����ڣ�����${dueDate}��24��ǰ���֧����Ģ���ⷿ400-800-4949';
UPDATE 	mesg_subtemplet SET templetContent = @templet_before3_msg,STATUS = 0 WHERE 	templetId  =  @templet_before3_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_before3_id, '3', '����˵����������', @templet_before3_msg,'1', '1');

/*2.��Ϣ���ѣ����ݱ���� MSG_RENTER_BILL_1004_PAYDAY �˵����� -->���_����˵�_���� 1)�޸Ķ���ͨ�� 2)����push 3)����΢�� */
SELECT @templet_payday_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_CreateSaleBillByBill_payday' AND STATUS =1 AND valid = 1)
	����,@templet_payday_msg:='���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵����ڽ���24�����ڣ��뾡�����֧����Ģ���ⷿ400-800-4949';
UPDATE 	mesg_subtemplet SET templetContent = @templet_payday_msg WHERE 	templetId  =  @templet_payday_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_payday_id, '3', '����˵�����δ��', @templet_payday_msg,'1', '1');

/*3.��Ϣ���ѣ�add�� MSG_RENTER_BILL_1004_OVERDUE �˵����� -->���_����˵�_����(1�졢3�졢7��)*/
SELECT @templet_overdue_code:= 'bill_renter_1004_overdue'
	����,@templet_overdue_msg:='${renterName}���ã�${roomInfo}��${startDate}-${endDate}����˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_overdue_code, '����˵�����', '����˵�����1��3��7��', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_overdue_id, '3', '����˵�����', @templet_overdue_msg,'1', '1');
 
/*4.��Ϣ���ѣ�add�� MSG_LANDLORD_BILL_1004_PAYDAY �˵����� -->����_����˵�_����*/
SELECT @templet_landlordpaydate_code:= 'bill_landlord_1004_payday'
	����,@templet_landlordpaydate_msg:='${landlordName}���ã�������${roomInfo} ��${startDate}-${endDate}����˵�����֧���գ����${renterName}�����룺${renterPhone}�����뼰ʱ���⡣';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_landlordpaydate_code, '����˵���������', '����˵���������', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_landlordpaydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_landlordpaydate_id, '3', '����˵���������', @templet_landlordpaydate_msg,'1', '1');

/*5.��Ϣ���ѣ�add�� MSG_RENTER_BILL_20001_PAYDAY �˵����� -->���_�Զ����˵�_����*/
SELECT @templet_20001paydate_code:= 'bill_renter_20001_payday'
	����,@templet_20001paydate_msg:='���ã�����ס��${roomInfo}��#${billName}#��${billNum}���˵����ڽ���24�����ڣ��뾡�����֧����';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001paydate_code, '�Զ����˵���������', '�Զ����˵���������', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_20001paydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001paydate_id, '1', '�Զ����˵���������', @templet_20001paydate_msg,'1', '1');
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001paydate_id, '3', '�Զ����˵���������', @templet_20001paydate_msg,'1', '1');


/*6.��Ϣ���ѣ�add�� MSG_RENTER_BILL_20001_OVERDUE �˵����� -->���_�Զ����˵�_����(1��)*/
SELECT @templet_20001overdue_code:= 'bill_renter_20001_overdue'
	����,@templet_20001overdue_msg:='${renterName}���ã�${roomInfo}��#${billName}#�˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001overdue_code, '�Զ����˵���������', '�Զ����˵���������', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_20001overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001overdue_id, '3', '�Զ����˵���������', @templet_20001overdue_msg,'1', '1');



/* === ������Ϣ�޸����£�===  */

/*��Ϣ sms_renter_update_customBill  ���� �����޸��˵� */
UPDATE mesg_templet SET templetName='���_�����˵�_�޸�',templetDesc='���_�����˵�_�޸�' 
 WHERE templetCode='sms_renter_update_customBill';
UPDATE mesg_subtemplet SET templetTitle='���_�����˵�_�޸�',templetContent='${renterName}���ã��������޸���${roomInfo}��#${billName}#�˵������ɴ��˵��鿴���鲢����֧���������������뷿����ϵ��'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_renter_update_customBill');
 
/*��Ϣ sms_renter_revoke_customBill  ���� ���������˵� */
UPDATE mesg_templet SET templetName='���_�˵�_����',templetDesc='���_�˵�_����' 
 WHERE templetCode='sms_renter_revoke_customBill';
UPDATE mesg_subtemplet SET templetTitle='���_�˵�_����',templetContent='${renterName}���ã������ѽ���${roomInfo}��#${billName}#���˵����ϣ����ɴ��˵��鿴���顣'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_renter_revoke_customBill');

/*��Ϣ sms_refund_approval_wait  ���� �����˿����� */
UPDATE mesg_templet SET templetName='����_�˿�����',templetDesc='����_�˿�����' 
 WHERE templetCode='sms_refund_approval_wait';
UPDATE mesg_subtemplet SET templetTitle='����_�˿�����',templetContent='����һ��${userInfoName}������˿�${money}Ԫ����ˣ������˿����ҳ����в�����'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_refund_approval_wait');


 /*��Ϣ sms_outhome_renter  ���_�˷����뷴�� */
SELECT @templet_outhome_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_outhome_renter' AND STATUS =1 AND valid = 1)
	����,@templet_outhome_msg:='һ��ʼ�Һ��ѽ��ܣ�������������ĸ��ã�������֪ͨ���������˷������뱣���ֻ���ͨ�����ĵȴ���Ģ���ⷿ���ڴ����ٴλ���~';
UPDATE mesg_templet SET templetName='���_�˷����뷴��',templetDesc='���_�˷����뷴��'  WHERE id = @templet_outhome_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_outhome_msg,templetTitle ='���_�˷����뷴��'  WHERE 	templetId  =  @templet_outhome_id  AND 	valid = 1  AND 	STATUS = 1;

 /*��Ϣ sms_outhome_landlord  ����_����˷����� */
SELECT @templet_outhomelandlord_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_outhome_landlord' AND STATUS =1 AND valid = 1)
	����,@templet_outhomelandlord_msg:='${landlordName}���ã�${roomInfo}�����˷�����ͣ�${renterName}�����룺${renterPhone}�����뼰ʱ����';
UPDATE mesg_templet SET templetName='����_����˷�����',templetDesc='����_����˷�����'  WHERE id = @templet_outhomelandlord_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_outhomelandlord_msg,templetTitle ='����_����˷�����'   WHERE 	templetId  =  @templet_outhomelandlord_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_outhomelandlord_id, '1', '����_����˷�����', @templet_outhomelandlord_msg,'1', '1');

 /*��Ϣ sms_CreateCustomBillByBill  ���_�����˵�_���� */
SELECT @custombill_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_CreateCustomBillByBill' AND t.`status`=1 AND t.`valid`=1),@custombill_desc:='���_�����˵�_����',
	@custombill_msg_templet:='${renterName}���ã�����Ϊ��${roomInfo}��������#${billName}#��${billNum}��${billTimes}��${amount}Ԫ������${dueDate}��24��ǰ���֧�����ɵ�¼Ģ���ⷿAPP�鿴��֧���������������뷿����ϵ��';
UPDATE `mesg_templet` t SET t.`templetName`=@custombill_desc, t.`templetDesc`=@custombill_desc WHERE t.id=@custombill_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@custombill_desc, t.`templetContent`=@custombill_msg_templet WHERE t.`templetId`=@custombill_templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@custombill_templet_id, 3, @custombill_desc, @custombill_msg_templet, 1, 1);

 /*��Ϣ renter_checkout_dealwith_success  ���_�˷���� */
SELECT @templet_renter_checkout_id:= (SELECT id FROM mesg_templet WHERE templetCode='renter_checkout_dealwith_success' AND STATUS =1 AND valid = 1)
	����,@templet_renter_checkout_msg:='����ס��${roomInfo}�˷�����ɣ��������˿�${amount}Ԫ���������뷿����ϵ��';
UPDATE mesg_templet SET templetName='���_�˷����',templetDesc='���_�˷����'  WHERE id = @templet_renter_checkout_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_renter_checkout_msg,templetTitle ='���_�˷����'   WHERE 	templetId  =  @templet_renter_checkout_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_renter_checkout_id, '1', '���_�˷����', @templet_renter_checkout_msg,'1', '1');


 /*��Ϣ renter_checkout_dealwith_success  ����_�˿�����_�ܾ� */
SELECT @templet_approval_inform_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_refund_approval_inform' AND STATUS =1 AND valid = 1)
	����,@templet_approval_inform_msg:='����${roomInfo}�˿���˱�${landlordName}�ܾ���ԭ��Ϊ${approvalReason}��';
UPDATE mesg_templet SET templetName='����_�˿�����_�ܾ�',templetDesc='����_�˿�����_�ܾ�'  WHERE id = @templet_approval_inform_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_approval_inform_msg,templetTitle ='����_�˿�����_�ܾ�'   WHERE 	templetId  =  @templet_approval_inform_id  AND 	valid = 1  AND 	STATUS = 1;

/*��Ϣ landlord_checkout_audit_agree  ����_�˿�����_ͨ�� */
SELECT @landlord_checkout_audit_agree_code:= 'landlord_checkout_audit_agree'
	����,@landlord_checkout_audit_agree_msg:='${userInfoName}���ã�����${roomInfo}�˿�������ͨ����ˡ�';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@landlord_checkout_audit_agree_code, '���˺�_�˿����_�ܾ�', '���˺�_�˿����_�ܾ�', '1', '2', NOW(), '4', '1', '5');
SELECT @landlord_checkout_audit_agree_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@landlord_checkout_audit_agree_id, '3', '���˺�_�˿����_�ܾ�', @landlord_checkout_audit_agree_msg,'1', '1');

/* ��Ϣ�ű� */

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_favorable', '����˵��Ż�', '����˵��Ż�', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_split', '����˵����', '����˵����', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

# Z5
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='runter_bill_favorable'), 3, '����˵��Ż�', '${renterName}���ã�����${landlordName}��Ϊ��${roomInfo} ��${billName}�˵��Ż�${reduceMoney}Ԫ��������鿴�˵��������������뷿����ϵ��', '1', '1', NULL, NULL);
 
# Z6
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='runter_bill_split'), 3, '����˵����', '${renterName}���ã�����${landlordName}�ѽ���${roomInfo} ��${billName}�˵����в�֣����֧�����${leastMoney}Ԫ������֧����Ϊ${dueDate}24�㣬�뾡��֧����������鿴�˵��������������뷿����ϵ��', '1', '1', NULL, NULL);
 
-- 82 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill');  
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_landlordinfo_afterpaid_withdefinedbill'), 3,'����_�����˵�_�Ѹ�', '���${renterName}�ѳɹ�֧��${roomInfo}��#${billName}#�˵����ɴ��˵��տ�鿴��ϸ��', '1', '1', NULL, NULL);
 
-- 83 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetType = '1' AND t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlord_repayPlan'); 
UPDATE mesg_subtemplet t SET t.templetTitle ='����_����Ѹ�', t.templetContent = '${landlordName}���ã����${renterName}��${roomInfo}����ͨ��Ģ���ɹ�֧��${startMonth}-${endMonth}�����' WHERE t.templetType = '3' AND t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_landlord_repayPlan');
 
-- 88
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withdefinedbill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_renterinfo_afterpaid_withdefinedbill'), 3,'���_�����˵�_�Ѹ�','${renterName}���ã���л��֧��${roomInfo}#${billName}#�˵���', '1', '1', NULL, NULL);
 
-- 89
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withroutinebill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_renterinfo_afterpaid_withroutinebill'), 3,'���_�����˵�_�Ѹ�','${renterName}�����ѳɹ�֧��${roomInfo} ${startMonth}-${endMonth}������˵����ɽ����˵��鿴���顣', '1', '1', NULL, NULL);

/*��Ϣ�Ż� sms_additional_renter -- ���_��¼��Լ_�����˺�*/
UPDATE mesg_templet SET templetName='���_��¼��Լ_�����˺�',templetDesc='���_��¼��Լ_�����˺�' WHERE templetCode='sms_additional_renter';
UPDATE mesg_subtemplet SET templetContent='${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼����⣬���ķ���${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}ȷ����Լ��' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_additional_renter');

/*��Ϣ�Ż� sms_additional_new_renter -- ���_��¼��Լ_���˺�*/
UPDATE mesg_templet SET templetName='���_��¼��Լ_���˺�',templetDesc='���_��¼��Լ_���˺�' WHERE templetCode='sms_additional_new_renter';
UPDATE mesg_subtemplet SET templetContent='${renterName}���ã�Ϊ��������Ʒ�ʣ����������߱��޼��ɷѣ�����${landlordName}��������ⷿƽ̨��Ģ���ⷿ����չ���������ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ����${PASSWORD}��ȷ����Լ����¼���뼰ʱ�޸����롣' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_additional_new_renter');

/*��Ϣ�Ż� sms_renter_saleContractConvert_success -- ����_���ͬ�ⲹ¼*/
UPDATE mesg_templet SET templetName='����_���ͬ�ⲹ¼',templetDesc='����_���ͬ�ⲹ¼' WHERE templetCode='sms_renter_saleContractConvert_success';
UPDATE mesg_subtemplet SET templetContent='${landlordname}���ã����${renterName}ͬ������${roominfo}��ת����Լ��',templetTitle='��¼��Լȷ��' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_saleContractConvert_success');

/*30 sms_signing_wait_audit push ����_����ǩԼ_���*/
SELECT @signing_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_audit' AND t.`status`=1 AND t.`valid`=1),
	@signing_desc:='����_����ǩԼ_���',
	@signing_msg_templet:='${landlordName}���ã�${roomInfo}��һ��ǩԼ�����뼰ʱ��ˣ���ͣ�${renterName}�����룺${renterPhoneNum}����';
UPDATE `mesg_templet` t SET t.`templetName`=@signing_desc, t.`templetDesc`=@signing_desc WHERE t.id=@signing_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@signing_desc, t.`templetContent`=@signing_msg_templet WHERE t.`templetId`=@signing_templet_id AND t.`status`=1 AND t.`valid`=1;

/*49 sms_renter_signUnsuccess_errorInfo sms/push ���_ǩԼ��������*/
SELECT @sign_unsuccess_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_errorInfo' AND t.`status`=1 AND t.`valid`=1),
	@sign_unsuccess_desc:='���_ǩԼ��������',
	@sign_unsuccess_msg_templet:='���ύ��ǩԼ�����������ѱ��˻أ�${remark}�������¼Ģ���ⷿAPP�޸����ϲ������ύ��';
UPDATE `mesg_templet` t SET t.`templetName`=@sign_unsuccess_desc, t.`templetDesc`=@sign_unsuccess_desc WHERE t.id=@sign_unsuccess_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@sign_unsuccess_desc, t.`templetContent`=@sign_unsuccess_msg_templet WHERE t.`templetId`=@sign_unsuccess_templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@sign_unsuccess_templet_id, 1, @sign_unsuccess_desc, @sign_unsuccess_msg_templet, 1, 1);

/*34 sms_renter_signUnsuccess_disagreeRefund*/
SELECT @disagreeRefund_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_disagreeRefund' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@disagreeRefund_templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@disagreeRefund_templet_id;

/*48 sms_renter_signUnsuccess_agreeRefund*/
SELECT @agreeRefund_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_agreeRefund' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@agreeRefund_templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@agreeRefund_templet_id;

/*36 sms_renter_signUnsuccess_refundAll sms/push ���_ǩԼ���ʧ��*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_refundAll' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_ǩԼ���ʧ��',
	@templet_content:='���ã�${roomInfo}ǩԼδͨ����ˣ��˻�����${returnMoney}Ԫ�������������뷿����ϵ��';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*z11 msg_confirm_signed_renter_approval sms/push ���_��Լȷ��_���*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_confirm_signed_renter_approval', '���_��Լȷ��_���', '���_��Լȷ��_���', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_confirm_signed_renter_approval' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_��Լȷ��_���',
	@templet_content:='��ϲ��${renterName}����ס��${communityName}ֻ��һ���ˣ�������ͬ��ǩԼ�����¼Ģ���ⷿAPP���붩��ȷ�ϲ����ǩԼ��';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);

/*44 sms_sendPayFirstPhaseMessage push ���_ǩԼ�ɹ�*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_sendPayFirstPhaseMessage' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_ǩԼ�ɹ�',
	@templet_content:='��ϲ�����ѳɹ�ǩԼ${roomInfo}���������${dueDate}֧�����ĵ�һ�ڿ��${totalMoney}Ԫ����Ը����ס���ģ�������졣��עĢ���ⷿ��mogoroom��������������~';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetType`=1 AND t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*z12 msg_success_signed_remind_landlord push ����_ǩԼ�ɹ�*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_success_signed_remind_landlord', '����_ǩԼ�ɹ�', '����_ǩԼ�ɹ�', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_success_signed_remind_landlord' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='����_ǩԼ�ɹ�',
	@templet_content:='${landlordName}���ã����${renterName}�������ɹ�ǩԼ��Դ${roomInfo}����������;���֧�����ڷ��á�';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);

/*51 sendRenterContractFile push ���_�Զ����ͺ�ͬ*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sendRenterContractFile' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_�Զ����ͺ�ͬ',
	@templet_content:='������${sendTime}ͨ��Ģ���ⷿAPP������${email}������һ�ݵ������޺�ͬ����ע����ա�Ģ���ⷿ��������ס�ĸ��ã�';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetType`=1 AND t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*31 sms_renter_signSuccess_changed*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signSuccess_changed' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@templet_id;

/*47 sms_renter_signSuccess*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signSuccess' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@templet_id;

/*50 sms_saleContract_cancel push ���_��������ǩԼ*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_saleContract_cancel' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_��������ǩԼ',
	@templet_content:='${renterName}���ã�����${landlordName}�ѳ���${roomInfo}��ǩԼ���˿�${refund}Ԫ���������������뷿����ϵ��';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*42 sms_signing_wait_confirm sms/push ���_ǩԼȷ��_�����˺�*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_confirm' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_ǩԼȷ��_�����˺�',
	@templet_content:='${renterName}���ã�����${landlordName}����������һ��${roominfo}����Լ�����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPPʹ�������ֻ���${cellPhone}���ǩԼ��';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`templetType`=1 AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*45 sms_signing_wait_confirm_new_renter sms/push ���_ǩԼȷ��_���˺�*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_confirm_new_renter' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_ǩԼȷ��_���˺�',
	@templet_content:='${renterName}���ã�����${landlordName}����������Լ����ȷ�ϣ����ע���󶨡�Ģ���ⷿ��֧��������/΢�Ź��ںţ����¼Ģ���ⷿAPP���˺�Ϊ�ֻ���${cellPhone}����ʱ���룺${password}���˶Բ����ǩԼ����¼���뼰ʱ�޸�����';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`templetType`=1 AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*Z1 msg_to_renter_room_checkout_finish  push ���_�˷�����*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_to_renter_room_checkout_finish', '���_�˷�����', '���_�˷�����', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_to_renter_room_checkout_finish' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='���_�˷�����',
	@templet_content:='${renterName}���ã�����${landlordName}���������ס��${roomInfo}���˷����˿�${amount}Ԫ����������鿴��Լ�������������뷿����ϵ��';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);
/*sms_renter_order_quickSignģ����Ϣɾ��*/
SELECT @templet_id :=( SELECT t.id from mesg_templet t WHERE t.templetCode = 'sms_renter_order_quickSign');
UPDATE mesg_templet set valid = 0 , `status` = 0 where id = @templet_id;
UPDATE mesg_subtemplet set valid = 0 , `status` = 0 WHERE templetId = @templet_id;


