/* Database name `mogoroomdb` ��������Ϣģ��*/
use mogoroomdb;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_brand_online_notify', 'Ʒ����������', 'Ʒ����������', 1, 2, NOW(), 5, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_brand_online_notify');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 2, 'Ʒ����������','<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>mail model</title></head><body><p>С��飬��ã�</p><p>���յ���Ӧ�������ߵ�Ʒ���У�</p><p>${brandNames}</p><p>�뾡���¼BS��̨���鿴������Ϣ��������ز�����</p></body></html>', 1, 1, NULL, NULL);
COMMIT;
