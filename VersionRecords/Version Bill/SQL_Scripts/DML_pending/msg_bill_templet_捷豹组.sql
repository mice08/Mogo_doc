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

 