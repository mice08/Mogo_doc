/* Database name 'mogoroomdb',������Ϣģ������ݣ�*/
/* �޸�ģ�壨����ʵ���������-����������ӦtempletIdΪ73��ȥ�� ������δ֧������������ɽ𣬡�*/

use mogoroomdb;

update 	mesg_subtemplet
set 		templetContent = '���ã�����ס��${community}С��${room}�ҷ�Դ${startMonth}-${endMonth}������˵����ڽ���24:00���ڣ���������¼Ģ���ⷿAPP���֧����Ģ���ⷿ400-800-4949' 
where 	templetId  =  (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday' and status =1 and valid = 1 ) 
	and 	valid = 1 
	and 	status = 1;
