/* ���в�-��𱦡�Ģ��������ģ�� */
USE mogoroomdb;

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toLandLord'), 1, '���вƳ����˵���������', '[Ģ����]�𾴵ķ������������������${renterName}��${roomAddress}��${rentMonth}��������󻹿��գ��붽����ͼ�ʱ���ɣ�����������ɽ�', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toLandLord'), 3, '���вƳ����˵���������', '[Ģ����]�𾴵ķ������������������${renterName}��${roomAddress}��${rentMonth}��������󻹿��գ��붽����ͼ�ʱ���ɣ�����������ɽ�', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_dueDate_toRenter', '���вƳ����˵���������', '���вƳ����˵���������', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toRenter'), 1, '���вƳ����˵���������', '��${rentMonth}��������󸶿���Ϊ���죬��������½Ģ���ⷿAPP���л�����ڽ���������Ҫ�����ɽ�', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toRenter'), 3, '���вƳ����˵���������', '��${rentMonth}��������󸶿���Ϊ���죬��������½Ģ���ⷿAPP���л�����ڽ���������Ҫ�����ɽ�', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_dueDate_before2_toRenter', '���вƳ����˵�����ǰ��������', '���вƳ����˵�����ǰ��������', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_before2_toRenter'), 1, '���вƳ����˵�����ǰ��������', '��${rentMonth}��������󸶿���Ϊ${dueDate}����������½Ģ���ⷿAPP���и�����ڽ���������Ҫ�����ɽ�', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_before2_toRenter'), 3, '���вƳ����˵�����ǰ��������', '��${rentMonth}��������󸶿���Ϊ${dueDate}����������½Ģ���ⷿAPP���и�����ڽ���������Ҫ�����ɽ�', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payover_toLandLord', '���вƳ����˵�֧�����', '���вƳ����˵�֧�����', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toLandLord'), 1, '���вƳ����˵�֧�����', '[Ģ����]�𾴵ķ������������${renterName}��${roomAddress}��${rentMonth}�������ȫ��', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toLandLord'), 3, '���вƳ����˵�֧�����', '[Ģ����]�𾴵ķ������������${renterName}��${roomAddress}��${rentMonth}�������ȫ��', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payover_toRenter', '���вƳ����˵�֧�����', '���вƳ����˵�֧�����', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toRenter'), 1, '���вƳ����˵�֧�����', '��${rentMonth}������ѳɹ����ɣ��������ĸ�����Ϊ${nextDueDate}��', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toRenter'), 3, '���вƳ����˵�֧�����', '��${rentMonth}������ѳɹ����ɣ��������ĸ�����Ϊ${nextDueDate}��', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payoverall_toRenter', '���вƳ����˵�֧�����', '���вƳ����˵�֧�����', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payoverall_toRenter'), 1, '���вƳ����˵�֧�����', '��${rentMonth}������ѳɹ����ɣ�Ģ�����˵��ѽ��壬��л����������Ģ����ҵ��', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payoverall_toRenter'), 3, '���вƳ����˵�֧�����', '��${rentMonth}������ѳɹ����ɣ�Ģ�����˵��ѽ��壬��л����������Ģ����ҵ��', 1, 1, '', NULL);