USE mogoroomdb;
 
/* ֮ǰ��ģ������Ϊ���� */
update cntr_contract_templet set endTime = NOW()  where templetPath like '%/zz.vm' or  templetPath like '%/zy.vm' or templetPath like '%/hz.vm' 

/* �����µİ汾 */
insert into cntr_contract_templet(cityId,rentType,templetName,templetCode,templetPath,status,createTime,createBy,createByType,lang,BeginTime,endTime )  
select cityId,rentType,templetName,templetCode,REPLACE(templetPath,'/template/','/template/v2/'),1,now(),createBy,createByType,lang,endTime as BeginTime,'2020-12-31 23:59:59' as endTime from  cntr_contract_templet where templetPath like '%/zz.vm' or  templetPath like '%/zy.vm' or templetPath like '%/hz.vm'  
 