/* Database name `mogoroomdb` , �������޸���Ϣģ��*/

USE mogoroomdb;


update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ������������${renterName}����Ӧ��Դ${roomInfo}��Ģ�����״���������ʧ�ܣ���Э��֪ͨ��ͼ�ʱ�ύ�޸����ϡ�' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure');
update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ������������{renterName}��{roomInfo}�������Ģ�������δͨ��������ϵ����˷���������֧����ʽ����ǩԼ��' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure');
update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ������������${renterName}����Ӧ��Դ${roomInfo}��Ģ����������ͨ���������ȴ��ſ��У���֪Ϥ��' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success');
update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ������������${renterName}��${roomInfo}���ѳɹ�֧���������' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan');

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_renter_mogobao_lakala_failure'), 3, 'Ģ������������', '���ź������ύ��Ģ����ǩԼ���ѱ��˻أ���ע��${remark}������������¼Ģ���ⷿAPP���ڽ���24��ǰ��������޸ĺ��ύ��Ģ���ⷿ400-800-4949', 1, 1, '', 'MODULE_MsgDetail');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill'), 3, 'Ģ������������', '���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill_before3'), 3, 'Ģ������������', '���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill_payday'), 3, 'Ģ������������', '���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ�����ս���β��Ϊ${cardTail}�Ľ�ǿ��Զ��۳�����ȷ������ȫ����𣬷��򽫱��˷���Ģ���ⷿ400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday') and templetType=1;

update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_renter_repayPlan') and templetType=1;

INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_mogoverify_validfail_topartner', 'Ģ������������', 'Ģ������������', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_topartner'), 1, 'Ģ������������', '[Ģ����]�𾴵ķ������������${renterName}��{${roomAddr}}�������Ģ�����������������˻ء���Э��֪ͨ��ͼ�ʱ�ύ�޸����ϡ�', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_topartner'), 3, 'Ģ������������', '[Ģ����]�𾴵ķ������������${renterName}��{${roomAddr}}�������Ģ�����������������˻ء���Э��֪ͨ��ͼ�ʱ�ύ�޸����ϡ�', 1, 1, '', NULL);
