/* Database name `mogoroomdb` ���޸���Ϣģ�� */
use mogoroomdb;

/* ������ */
UPDATE mesg_subtemplet SET templetContent='${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_guanWangYuyueSuccessNotify') ;

update mesg_subtemplet set jumpCode='MODULE_OrderList',templetContent='[ȷ����Լ]${realName}���ã�����Ϊ�������һ�ݹ���${communityName}С����Դ������Լ����Ҫ����ȷ�ϣ���ʹ��Ģ���ⷿAPP��¼��������˺ţ��˺ţ�${cellPhone}�����룺${password}���鿴�����б��˶���Լ��Ϣ����ɺ������̡����칵ͨ���Ӵ�ס�ĸ��ã�' where templetId in (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');

UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[��Լ����������˿�]Ģ���ⷿ�����������˻�${amount}Ԫ����ɲ������ͺ�ͬ��������κ����ʿ���ϵ��������Ģ���ⷿͶ�ߡ�'
WHERE mt.templetCode = 'sms_landlordRefund_affirm';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_SignedOrder' 
WHERE temp.templetCode='sms_signing_wait_audit';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_BookOrder' 
WHERE temp.templetCode='sms_landlord_bookOrderSuccess';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_ReservationOrder' 
WHERE temp.templetCode='sms_landlord_guanWangYuyueSuccessNotify';

UPDATE mesg_subtemplet SET templetContent='���ڡ�Ģ����顱�˻�������${money}Ԫ,�˻����:${balance}Ԫ.���Ǳ��˲����������ʣ��뼰ʱ��ϵĢ���ⷿ��' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_withdrawal_success') ;

/* EQ�� */
UPDATE mesg_subtemplet SET templetTitle='���Ԥ�����', templetContent='${name}��ã�${roomInfo}��Դ��һ��Ԥ�������뼰ʱ������ˣ����������${renterName}���ֻ����룺${renterPhoneNum}�����������뾡���������ϵ��' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_bookOrderSuccess') ;
UPDATE mesg_subtemplet SET templetTitle='���ǩԼ���', templetContent='${name}��ã�${roomInfo}��Դ��һ��ǩԼ�����뼰ʱ������ˣ����������${renterName}���ֻ����룺${renterPhoneNum}�����������뾡���������ϵ��' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_signing_wait_audit') ;
UPDATE mesg_subtemplet SET templetTitle='Ģ���ⷿ���޺�ͬ', templetContent='���ã�<br />���������ĵ������޺�ͬ�ĵ�����ע����գ������Ʊ��ܡ�<br />����Ժ�ͬ���������ʣ�����Ҫ��������������������ϵ��<br /><br />Ģ���ⷿ - 4008004949' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sendRenterContractFile') ;

/* ������ */
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '${landlordName}���ã�${roomInfo}��Դ��һ���˷����뵥���뼰ʱ���д������������${renterName}���ֻ����룺${renterPhone}�����������뾡���������ϵ��'
WHERE mt.templetCode = 'sms_outhome_landlord';

