/* Database name `mogoroomdb` ��������Ϣģ�� */
use mogoroomdb;

/* EQ�� */
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_register', '���ע��֪ͨ', '���ע��֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�ʺ�ע��ɹ�', '��ϲ���ΪĢ���ͣ����ѳɹ�ע��Ģ���ⷿ����������Ʊ�������˺ź����룬����й¶��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_renterUpdatePayPwd', '�޸�֧������֪ͨ', '�޸�֧������֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '֧���������޸�', '֧���������޸ģ����Ģ���ⷿ�˻�֧���������޸ĳɹ��������Ʊ��ܣ�����й¶��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_updateLoginPwd', '����޸ĵ�¼����', '����޸ĵ�¼����֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '��¼�������޸�', '��¼�������޸ģ����Ģ���ⷿ��¼�����Ѿ��޸ĳɹ��������Ʊ��ܣ�����й¶��', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '��¼�������޸�', '��¼�������޸ģ����Ģ���ⷿ��¼�����Ѿ��޸ĳɹ��������Ʊ��ܣ�����й¶��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_updateCellphone', '���ֻ��Ű󶨳ɹ�', '���ֻ��Ű󶨳ɹ�֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���ֻ��Ű󶨳ɹ�', '���ֻ��Ű󶨳ɹ����������°�Ģ���ⷿApp���ֻ��ţ�${cellphone}�����μǣ����Ǳ��˸��ģ��뼰ʱ��ϵĢ���ⷿ��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_order_quickSign', 'ԤԼ��֪ͨ', '�ɿ���ǩԼ��ԤԼ��֪ͨ', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ԤԼ��', '����һ��ԤԼ���ɿ���ǩԼ������6Сʱ����ɿ���ǩԼ�����ڽ�ʧЧ��', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_bookOrderSuccess', 'Ԥ���ɹ�֪ͨ', 'Ԥ���ɹ�֪ͨ', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, 'Ԥ���ɹ�', '��ϲ��Ԥ���ɹ�������3�������ǩԼ��', 1, 1, NULL, 'MODULE_OrderList');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'Ԥ���ɹ�', '��ϲ��Ԥ���ɹ�������3�������ǩԼ��', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_refuseBookOrder', 'Ԥ��ʧ��֪ͨ', 'Ԥ��ʧ��֪ͨ', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, 'Ԥ��ʧ��', '���ź�������һ��Ԥ����δͨ��������ˣ������˻ء�', 1, 1, NULL, 'MODULE_OrderList');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'Ԥ��ʧ��', '���ź�������һ��Ԥ����δͨ��������ˣ������˻ء�', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signSuccess_changed', 'ǩԼͨ�����', '�������¹�ǩԼ����ͨ�����', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼ��ͨ��', 'ǩԼ��ͨ������ϲ�㣬���ǩԼ��ͨ����ˣ������Ѹ���ǩԼ�����ڣ��۸񡢸��ʽ�������գ��������Ϣ�������ǩԼ��ȷ�ϲ�֧�����ڿ', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signSuccess', 'ǩԼͨ�����', '����δ���¹�ǩԼ����ͨ�����', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼ��ͨ��', 'ǩԼ��ͨ������ϲ�㣬���ǩԼ��ͨ����ˡ������ǩԼ��ȷ�ϲ�֧�����ڿ', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_agreeRefund', 'ǩԼδͨ��', 'ǩԼδͨ��������ͬ���˻�����', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼδͨ��', '���ź������ǩԼδͨ����ˣ�����ͬ���˻����������ǩԼ��ȷ����ز�����', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_disagreeRefund', 'ǩԼδͨ��', 'ǩԼδͨ����������ͬ���˻�����', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼδͨ��', '���ź������ǩԼδͨ����ˣ�������ͬ���˻����������ǩԼ��ȷ����ز�����', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_errorInfo', 'ǩԼδͨ��', 'ǩԼδͨ����ǩԼ����������', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼδͨ��', '�������ǩԼ��������д�������޸ĺ������ύ��', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_refundAll', 'ǩԼδͨ��', 'ǩԼδͨ��������ͬ���˻������⸶���ΥԼ��', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼδͨ��', '���ź������ǩԼδͨ����ˣ�����ͬ���˻������⸶���ΥԼ�������ǩԼ��ȷ����ز�����', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signInvalid', 'ǩԼʧЧ֪ͨ', 'ǩԼʧЧ֪ͨ', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼʧЧ', '������δ��Ԥ��3�������ǩԼ,���Ԥ������ʧЧ��ϵͳ����۳�����ת�뷿���˻���', 1, 1, NULL, 'MODULE_OrderList');


SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signInvalid_timing', 'ǩԼʧЧ��ʱ��֪ͨ', 'ǩԼʧЧ��ʱ��֪ͨ', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'ǩԼʧЧ', '������δ��Ԥ��3�������ǩԼ,���Ԥ������ʧЧ��', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill', '��ͨ����˵�������֪ͨ', '��ͨ����˵�������֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵��ѳ�������֧����Ϊ${dueDate}24:00����������¼Ģ���ⷿAPP�˶��˵������Ģ���ⷿ400-800-4949', 1, 1, NULL,'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵��ѳ�������֧����Ϊ${dueDate}24:00����������¼Ģ���ⷿAPP�˶��˵������Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill_before3', '��ͨ����˵�Ӧ����3��ǰ֪ͨ', '��ͨ����˵�Ӧ����3��ǰ֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵�����3�պ����ڣ�����${dueDate}24:00֮ǰ���֧������������¼Ģ���ⷿAPP�˶��˵������Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵�����3�պ����ڣ�����${dueDate}24:00֮ǰ���֧������������¼Ģ���ⷿAPP�˶��˵������Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill_payday', '��ͨ����˵�Ӧ�����֪ͨ', '��ͨ����˵�Ӧ�����֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵����ڽ���24:00���ڣ�����δ֧������������ɽ���������¼Ģ���ⷿAPP���֧����Ģ���ⷿ400-800-4949', 1, 1, NULL,'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}������˵����ڽ���24:00���ڣ�����δ֧������������ɽ���������¼Ģ���ⷿAPP���֧����Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill', '������Ģ��������˵�������֪ͨ', '������Ģ��������˵�������֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ���ۿ�ǰ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ���ۿ�ǰ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill_before3', '������Ģ��������˵�Ӧ����3��ǰ֪ͨ', '������Ģ��������˵�Ӧ����3��ǰ֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ���ۿ�ǰ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ���ۿ�ʱ��Ϊ${dueDate}17:00����ȷ���ۿ�ǰ��β��Ϊ${cardTail}�Ľ�ǿ�����ȫ�����Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill_payday', '������Ģ��������˵�Ӧ�����֪ͨ', '������Ģ��������˵�Ӧ�����֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ�����콫���β��Ϊ${cardTail}�Ľ�ǿ��Զ��۳�����ȷ������ȫ����𣬷��򽫱��˷���Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��${community}С��${room}����Լ${startMonth}-${endMonth}��Ģ��������˵�${amount}Ԫ�����콫���β��Ϊ${cardTail}�Ľ�ǿ��Զ��۳�����ȷ������ȫ����𣬷��򽫱��˷���Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateCustomBillByBill', '�Զ����˵�֪ͨ', '�Զ����˵�֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���˵�', '��������������һ������${community}С��${room}����Լ��${title}�˵�����${amount}Ԫ������֧����Ϊ${dueDate}24:00����������¼Ģ���ⷿAPP�˶��˵�������������ʣ����뷿����ϵ��', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���˵�', '��������������һ������${community}С��${room}����Լ��${title}�˵�����${amount}Ԫ������֧����Ϊ${dueDate}24:00����������¼Ģ���ⷿAPP�˶��˵�������������ʣ����뷿����ϵ��', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_FirstDayArrears', '�˵�֪ͨ', '�˵�֪ͨ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�˵�֪ͨ', '�˵�֪ͨ,��${beginAndEnd}�µ�����˵�������, ����${date}֮ǰ���֧����', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�˵�֪ͨ', '�˵�֪ͨ,��${beginAndEnd}�µ�����˵�������, ����${date}֮ǰ���֧����', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_landlordRefund_affirm', '�����˿�֪ͨ', '�����˿�֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�����˿�', '[��Լ����������˿�]Ģ���ⷿ�����������˻�${amount}Ԫ����ɲ������ͺ�ͬ��������κ����ʿ���ϵ��������Ģ���ⷿͶ�ߡ�', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�����˿�', '[��Լ����������˿�]Ģ���ⷿ�����������˻�${amount}Ԫ����ɲ������ͺ�ͬ��������κ����ʿ���ϵ��������Ģ���ⷿͶ�ߡ�', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainAdd', '���Ͷ��', '���Ͷ��', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���Ͷ��', '����Ͷ���ѱ��������ǽ�������ϵ�����뱣���ֻ���ͨ��', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���Ͷ��', '����Ͷ���ѱ��������ǽ�������ϵ�����뱣���ֻ���ͨ��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainSolve', '���Ͷ�߽��֪ͨ', '���Ͷ�߽��֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���Ͷ���ѽ��', 'Ͷ��${complainId}�ѽ����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���Ͷ���ѽ��', 'Ͷ��${complainId}�ѽ����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainUndo', '���Ͷ�߳���֪ͨ', '���Ͷ�߳���֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���Ͷ���ѳ���', 'Ͷ��${complainId}�ѳ�����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���Ͷ���ѳ���', 'Ͷ��${complainId}�ѳ�����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_withdrawalSuccess', '����˻�����', '����˻�����', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�˻�����', '����Ģ���ⷿ�˻�������${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ', 1, 1, NULL, 'MODULE_Account');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�˻�����', '����Ģ���ⷿ�˻�������${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ', 1, 1, NULL, 'MODULE_Account');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_rechargeSuccess', '����˻���ֵ', '����˻���ֵ', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�˻���ֵ', '����Ģ���ⷿ�˻���ֵ��${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ', 1, 1, NULL, 'MODULE_Account');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�˻���ֵ', '����Ģ���ⷿ�˻���ֵ��${amount}Ԫ�����${balance}Ԫ�����Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ', 1, 1, NULL, 'MODULE_Account');




SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairAdd', '����ύ����֪ͨ', '����ύ����֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�������', '���ı����ѱ�����ά����Ա��������ϵ�����뱣���ֻ���ͨ��', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�������', '���ı����ѱ�����ά����Ա��������ϵ�����뱣���ֻ���ͨ��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairSolve', '��ͱ������֪ͨ', '��ͱ������֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '���������', '���ı���${repairId}����ɣ�������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '���������', '���ı���${repairId}����ɣ�������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairUndo', '��ͳ�������֪ͨ', '��ͳ�������֪ͨ', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '�����ѳ���', '���ı���${repairId}�����ѳ�����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�����ѳ���', '���ı���${repairId}�����ѳ�����������������ϵ�ͷ��绰��400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_lakala_failure', 'Ģ������������֪ͨ', 'Ģ�����������֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, 'Ģ�����������', '����Ģ��������������д��������ϸ�˶Թ�����ǿ������֤��Ƭ����Ϣ���ڵ���22��ǰ����޸��ٴ��ύ��ˡ�Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'Ģ�����������', '����Ģ��������������д��������ϸ�˶Թ�����ǿ������֤��Ƭ����Ϣ���ڵ���22��ǰ����޸��ٴ��ύ��ˡ�Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_lakala_success', 'Ģ��������ɹ�����ǿ���', 'Ģ��������ɹ�����ǿ���', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, 'Ģ�����������', '����Ģ������ͨ����ˣ���ÿ�½�����ǰ��Ģ����������ǿ��д湻��𣬰�ʱ֧�����⡣Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'Ģ�����������', '����Ģ������ͨ����ˣ���ÿ�½�����ǰ��Ģ����������ǿ��д湻��𣬰�ʱ֧�����⡣Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_mogo_success', 'Ģ��������ɹ���APP��', 'Ģ��������ɹ���APP��', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, 'Ģ�����������', '����Ģ������ͨ����ˣ���ÿ�½�����ǰ��¼Ģ���ⷿAPP֧�����⡣Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, 'Ģ�����������', '����Ģ������ͨ����ˣ���ÿ�½�����ǰ��¼Ģ���ⷿAPP֧�����⡣Ģ���ⷿ400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_1_notify', '��Դ������Ϣ֪ͨ', '��Դ������Ϣ֪ͨ��ԤԼ��Դ������', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '��Դ������Ϣ', '�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '��Դ������Ϣ', '�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_2_notify', '��Դ������Ϣ֪ͨ', '��Դ������Ϣ֪ͨ�������ڵ�ǰ֮��', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '��Դ������Ϣ', '�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�������ǰֱ��Ԥ��/ǩԼ���ܱ�Ǹ����δ��Ϊ������סTa���������������Ҫ�ߵ��չ�����ס����������ǿ������¼Ģ�������и��õķ�Դ�ڵ�����', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '��Դ������Ϣ', '�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�������ǰֱ��Ԥ��/ǩԼ���ܱ�Ǹ����δ��Ϊ������סTa���������������Ҫ�ߵ��չ�����ס����������ǿ������¼Ģ�������и��õķ�Դ�ڵ�����', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_3_notify', '��Դ������Ϣ֪ͨ', '��Դ������Ϣ֪ͨ��ԤԼ��ԴAPP��', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '��Դ������Ϣ', '�װ��ģ���ԤԼ��${roomAddress}��Դ�ѱ�����Ԥ��/ǩԼ�����¾������������ǰ���õ����ں��棬�������Բ��õȣ���¼Ģ��������Ѱ���������ķ�Դ��', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sendRenterContractFile', '��ͷ��ͺ�ͬͼƬ', '��ͷ��ͺ�ͬͼƬ', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 2, 'ǩԼ��ͬ', 'Ģ���ⷿ�ⷿ��ͬ,�������������', 1, 1, NULL, '');

COMMIT;

/* ������ */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_push_customBill','���������Զ����˵�','���������Զ����˵�','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','���������Զ����˵�','���ķ�����Ϊ��${roomInfo}�����˵������¼Ģ���ⷿAPP�鿴�˵�����ʱ֧����','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','���������Զ����˵�','���ķ�����Ϊ��${roomInfo}�����˵������¼Ģ���ⷿAPP�鿴�˵�����ʱ֧����','1','1',NULL,'MODULE_MyBill');

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_revoke_customBill','���������Զ����˵�','���������Զ����˵�','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','���������Զ����˵�','���ķ����ѽ���${roomInfo}�������˵����������¼Ģ���ⷿAPP�鿴�˵�ȷ�ϡ�','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','���������Զ����˵�','���ķ����ѽ���${roomInfo}�������˵����������¼Ģ���ⷿAPP�鿴�˵�ȷ�ϡ�','1','1',NULL,'MODULE_MyBill');


SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_update_customBill','�����޸��Զ����˵�','�����޸��Զ����˵�','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','�����޸��Զ����˵�','���ķ������޸���${roomInfo}�������˵������¼Ģ���ⷿAPP�鿴�޸ĺ���˵�����ʱ֧����','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','�����޸��Զ����˵�','���ķ������޸���${roomInfo}�������˵������¼Ģ���ⷿAPP�鿴�޸ĺ���˵�����ʱ֧����','1','1',NULL,'MODULE_MyBill');
COMMIT;

/* EQ�� */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_landlordinfo_afterpaid_withdefinedbill','�����˵��ѱ�֧��','�Զ����˵�֧���ɹ�������Ϣ','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','�����˵��ѱ�֧��', '${roomInfo}�����${renterName}�ѳɹ�֧�����������˵������¼Ģ�����鿴����','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','�����˵��ѱ�֧��', '${roomInfo}�����${renterName}�ѳɹ�֧�����������˵������¼Ģ�����鿴����','1','1',NULL,'');
COMMIT;

/* ������ */
BEGIN;
 delete from `mesg_subtemplet` where `templetId` in (SELECT id FROM mesg_templet WHERE templetCode='sms_bookOrder_price_update');
 delete from `mesg_templet` where `templetCode` = 'sms_bookOrder_price_update';
 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
 VALUES('sms_bookOrder_price_update','�����������','�����������',1,2,NOW(),5,NULL,NULL,NULL,1,2);
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_bookOrder_price_update'),3,'�����Ѹ���','[�����Ѹ���]����Ϊ�������˶����Ķ��� ����Ϣ������60���������֧������ʱδ֧��������ʧЧ',1,1,NULL,'MODULE_OrderList');
COMMIT;



/* ������ */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_signing_wait_confirm','ǩԼȷ��֪ͨ','ǩԼȷ��֪ͨ','1','2',NOW(),'4',NULL,NULL,NULL,'1','3');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','ǩԼȷ��֪ͨ','��ȷ����Լ','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','ǩԼȷ��֪ͨ','��ȷ����Լ','1','1',NULL,NULL);

update mesg_subtemplet set jumpCode='MODULE_OrderList',templetContent='${realName}���ã�����Ϊ�������һ�ݹ���${communityName}С����Դ������Լ����Ҫ����ȷ�ϣ��������鿴�����б��˶���Լ��Ϣ����ɺ������̡����칵ͨ���Ӵ�ס�ĸ��ã�' where templetId in (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');
COMMIT;

/* ������ */
BEGIN;
INSERT INTO mesg_templet (templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid) VALUES ('message_attack_warning','����Ԥ��֪ͨ','����Ԥ��֪ͨ',1,2,NOW(),3,1);
SELECT @templetId:= id FROM mesg_templet WHERE  templetCode = 'message_attack_warning';			
INSERT INTO mesg_subtemplet(templetId,templetType,templetTitle,templetContent,STATUS,valid,outTempletId,jumpCode)  VALUES(@templetId,1,'���Ź���Ԥ��','���Ź���Ԥ����${content}',1,1,NULL,'maw');	
COMMIT;
