use mogoroomdb;

/*1.��Ϣ���ѣ����ݱ���� MSG_RENTER_BILL_1004_BEFORE3  �˵����� -->���_����˵�_3��   1)�رն���ͨ�� 2)����push 3)����΢�� */
select @templet_before3_id:= (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_before3' and status =1 and valid = 1)
	����,@templet_before3_msg:='���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵�����3�պ����ڣ�����${dueDate}��24��ǰ���֧����Ģ���ⷿ400-800-4949';
update 	mesg_subtemplet set templetContent = @templet_before3_msg,status = 0 where 	templetId  =  @templet_before3_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_before3_id, '3', '����˵����������', @templet_before3_msg,'1', '1');

/*2.��Ϣ���ѣ����ݱ���� MSG_RENTER_BILL_1004_PAYDAY �˵����� -->���_����˵�_���� 1)�޸Ķ���ͨ�� 2)����push 3)����΢�� */
select @templet_payday_id:= (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday' and status =1 and valid = 1)
	����,@templet_payday_msg:='���ã�����ס��${roomInfo}��${startDate}-${endDate}����˵����ڽ���24�����ڣ��뾡�����֧����Ģ���ⷿ400-800-4949';
update 	mesg_subtemplet set templetContent = @templet_payday_msg where 	templetId  =  @templet_payday_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_payday_id, '3', '����˵�����δ��', @templet_payday_msg,'1', '1');

/*3.��Ϣ���ѣ�add�� MSG_RENTER_BILL_1004_OVERDUE �˵����� -->���_����˵�_����(1�졢3�졢7��)*/
select @templet_overdue_code:= 'bill_renter_1004_overdue'
	����,@templet_overdue_msg:='${renterName}���ã�${roomInfo}��${startDate}-${endDate}����˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_overdue_code, '����˵�����', '����˵�����1��3��7��', '1', '2', now(), '4', '1', '5');
SELECT @templet_overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_overdue_id, '3', '����˵�����', @templet_overdue_msg,'1', '1');
 
/*4.��Ϣ���ѣ�add�� MSG_LANDLORD_BILL_1004_PAYDAY �˵����� -->����_����˵�_����*/
select @templet_landlordpaydate_code:= 'bill_landlord_1004_payday'
	����,@templet_landlordpaydate_msg:='${landlordName}���ã�������${roomInfo} ��${startDate}-${endDate}����˵�����֧���գ����${renterName}�����룺${renterPhone}�����뼰ʱ���⡣';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_landlordpaydate_code, '����˵���������', '����˵���������', '1', '2', now(), '4', '1', '5');
SELECT @templet_landlordpaydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_landlordpaydate_id, '3', '����˵���������', @templet_landlordpaydate_msg,'1', '1');

/*5.��Ϣ���ѣ�add�� MSG_RENTER_BILL_20001_PAYDAY �˵����� -->���_�Զ����˵�_����*/
select @templet_20001paydate_code:= 'bill_renter_20001_payday'
	����,@templet_20001paydate_msg:='���ã�����ס��${roomInfo}��#${billName}#�˵����ڽ���24�����ڣ��뾡�����֧����Ģ���ⷿ400-800-4949';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001paydate_code, '�Զ����˵���������', '�Զ����˵���������', '1', '2', now(), '4', '1', '5');
SELECT @templet_20001paydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001paydate_id, '1', '�Զ����˵���������', @templet_20001paydate_msg,'1', '1');
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001paydate_id, '3', '�Զ����˵���������', @templet_20001paydate_msg,'1', '1');


/*6.��Ϣ���ѣ�add�� MSG_RENTER_BILL_20001_OVERDUE �˵����� -->���_�Զ����˵�_����(1��)*/
select @templet_20001overdue_code:= 'bill_renter_20001_overdue'
	����,@templet_20001overdue_msg:='${renterName}���ã�${roomInfo}��#${billName}#�˵��Ѿ����ڣ��뾡��֧��������${landlordName}���������ʿ����乵ͨ��';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001overdue_code, '�Զ����˵���������', '�Զ����˵���������', '1', '2', now(), '4', '1', '5');
SELECT @templet_20001overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001overdue_id, '3', '�Զ����˵���������', @templet_20001overdue_msg,'1', '1');



/* === ������Ϣ�޸����£�===  */

/*��Ϣ sms_renter_update_customBill  ���� �����޸��˵� */
update mesg_templet set templetName='���_�����˵�_�޸�',templetDesc='���_�����˵�_�޸�' 
 where templetCode='sms_renter_update_customBill';
update mesg_subtemplet set templetTitle='���_�����˵�_�޸�',templetContent='${renterName}���ã��������޸���${roomInfo}��#${billName}#�˵������ɴ��˵��鿴���鲢����֧���������������뷿����ϵ��'
 where templetId=(select id from mesg_templet where templetCode='sms_renter_update_customBill');
 
/*��Ϣ sms_renter_revoke_customBill  ���� ���������˵� */
update mesg_templet set templetName='���_�˵�_����',templetDesc='���_�˵�_����' 
 where templetCode='sms_renter_revoke_customBill';
update mesg_subtemplet set templetTitle='���_�˵�_����',templetContent='${renterName}���ã������ѽ���${roomInfo}��#${billName}#���˵����ϣ����ɴ��˵��鿴���顣'
 where templetId=(select id from mesg_templet where templetCode='sms_renter_revoke_customBill');

/*��Ϣ sms_refund_approval_wait  ���� �����˿����� */
update mesg_templet set templetName='����_�˿�����',templetDesc='����_�˿�����' 
 where templetCode='sms_refund_approval_wait';
update mesg_subtemplet set templetTitle='����_�˿�����',templetContent='����һ��${userInfoName}������˿�${money}Ԫ����ˣ������˿����ҳ����в�����'
 where templetId=(select id from mesg_templet where templetCode='sms_refund_approval_wait');


 /*��Ϣ sms_outhome_renter  ���_�˷����뷴�� */
select @templet_outhome_id:= (select id from mesg_templet where templetCode='sms_outhome_renter' and status =1 and valid = 1)
	����,@templet_outhome_msg:='һ��ʼ�Һ��ѽ��ܣ�������������ĸ��ã�������֪ͨ���������˷������뱣���ֻ���ͨ�����ĵȴ���Ģ���ⷿ���ڴ����ٴλ���~';
update mesg_templet set templetName='���_�˷����뷴��',templetDesc='���_�˷����뷴��'  where id = @templet_outhome_id;
update 	mesg_subtemplet set templetContent = @templet_outhome_msg,templetTitle ='���_�˷����뷴��'  where 	templetId  =  @templet_outhome_id  and 	valid = 1  and 	status = 1;

 /*��Ϣ sms_outhome_landlord  ����_����˷����� */
select @templet_outhomelandlord_id:= (select id from mesg_templet where templetCode='sms_outhome_landlord' and status =1 and valid = 1)
	����,@templet_outhomelandlord_msg:='${landlordName}���ã�${roomInfo}�����˷�����ͣ�${renterName}�����룺${renterPhone}�����뼰ʱ����';
update mesg_templet set templetName='����_����˷�����',templetDesc='����_����˷�����'  where id = @templet_outhomelandlord_id;
update 	mesg_subtemplet set templetContent = @templet_outhomelandlord_msg,templetTitle ='����_����˷�����'   where 	templetId  =  @templet_outhomelandlord_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_outhomelandlord_id, '1', '����_����˷�����', @templet_outhomelandlord_msg,'1', '1');

 /*��Ϣ sms_CreateCustomBillByBill  ���_�����˵�_���� */
SELECT @custombill_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_CreateCustomBillByBill' AND t.`status`=1 AND t.`valid`=1),@custombill_desc:='���_�����˵�_����',
	@custombill_msg_templet:='${renterName}���ã�����Ϊ��${roomInfo}��������#${billName}#��${billNum}��${billTimes}��${amount}Ԫ������${dueDate}��24��ǰ���֧�����ɵ�¼Ģ���ⷿAPP�鿴��֧���������������뷿����ϵ��';
UPDATE `mesg_templet` t SET t.`templetName`=@custombill_desc, t.`templetDesc`=@custombill_desc WHERE t.id=@custombill_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@custombill_desc, t.`templetContent`=@custombill_msg_templet WHERE t.`templetId`=@custombill_templet_id AND t.`status`=1 AND t.`valid`=1;
