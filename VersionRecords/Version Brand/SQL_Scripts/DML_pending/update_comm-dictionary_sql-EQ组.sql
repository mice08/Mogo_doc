/* Database name `mogoroomdb`�� ���ע��������ϸ�޸� */

use mogoroomdb;

/* ע����Դ��ϸfcode�ÿ� */
update comm_dictionary set fcode=null where groupname='regChannelDtl';

/* ���ͨ������������ */
update comm_dictionary set fcode='10007' where groupname='regChannelDtl' and keyPro='28';

/* �������������������� */
update comm_dictionary set fcode='10005' where groupname='regChannelDtl' and keyPro='29';

/* ����ͷ�������������� */
update comm_dictionary set fcode='10006' where groupname='regChannelDtl' and keyPro='30';

/* ��˿ͨ������������ */
update comm_dictionary set fcode='10008' where groupname='regChannelDtl' and keyPro='32';

/* �ٶ����������������� */
update comm_dictionary set fcode='10001',enValue='baidu_search' where groupname='regChannelDtl' and keyPro='34';

/* 360���������������� */
update comm_dictionary set fcode='10003',enValue='360_search' where groupname='regChannelDtl' and keyPro='37';


/* �ѹ������滻�ɰٶ����� */
update comm_dictionary set value='�ٶ�����',fcode='10002',enValue='baidu_webunion' where groupname='regChannelDtl' and keyPro='35';

/* �ȸ������滻�������������� */
update comm_dictionary set value='������������',enValue='other_search' where groupname='regChannelDtl' and keyPro='36';

/* �е������滻��360���� */
update comm_dictionary set value='360����',fcode='10004',enValue='360_webunion' where groupname='regChannelDtl' and keyPro='38';

/* ��Ӧ�����滻��Ģ���ⷿweb */
update comm_dictionary set value='Ģ���ⷿweb',enValue='mogo_web' where groupname='regChannelDtl' and keyPro='39';

/* �Ż������滻��Ģ���ⷿwap */
update comm_dictionary set value='Ģ���ⷿwap',enValue='mogo_wap' where groupname='regChannelDtl' and keyPro='40';

/* Ģ���ⷿ����ΪĢ���ⷿandroid */
update comm_dictionary set value='Ģ���ⷿandroid' where groupname='regChannelDtl' and keyPro='2';



/* �޸������������ (ע��ƽ̨Ϊ���APP������ΪĢ���ⷿ������һ��Ĭ��Ϊ Ģ���ⷿandroid)*/
/* ע��ƽ̨Ϊ����������ΪĢ���ⷿ�������޸�Ϊ������ԴΪ Ģ���ⷿweb */
update user_renter set regChannelDtl=39 where regChannel=3 and regChannelDtl=2;

/* ע��ƽ̨ΪWAP������ΪĢ���ⷿ�������޸�Ϊ������ԴΪ Ģ���ⷿwap */
update user_renter set regChannelDtl=39 where regChannel=9 and regChannelDtl=2;
