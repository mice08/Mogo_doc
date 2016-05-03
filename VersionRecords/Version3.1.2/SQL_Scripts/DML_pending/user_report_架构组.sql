/* Database name `mogoroomdb` , 3.1.2 ����û�ע��ͳ������ֶ�*/
use mogoroomdb;

--����������ö��(���WAP)
insert into  comm_dictionary(code,groupName,sort,keyPro,value,status,fcode,enValue)
values('channel-9','channel',9,9,'���WAP',1,'','channel-9');

--���³��б�������
update city c,( 
	select mc.areaCode,mc.mobileArea
	from  comm_mobile_city mc 
	group by mc.areaCode,mc.mobileArea ) cc
set c.areaCode=cc.areaCode
where cc.mobileArea like concat('%',c.name,'%');