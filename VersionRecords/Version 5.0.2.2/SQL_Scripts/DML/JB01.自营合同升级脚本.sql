/* 升级自营合同模板 */
USE mogoroomdb;
 
/* 之前的模板设置为过期 */
update cntr_contract_templet set endTime = NOW()  where templetPath like '%v2/zy.vm';

/* 设置新的版本 */
insert into cntr_contract_templet(cityId,rentType,templetName,templetCode,templetPath,status,createTime,createBy,createByType,lang,BeginTime,endTime )  
select cityId,rentType,templetName,templetCode,REPLACE(templetPath,'/template/v2/','/template/v3/'),1,now(),createBy,createByType,lang,endTime as BeginTime,'2020-12-31 23:59:59' as endTime from  cntr_contract_templet where templetPath like '%v2/zy.vm';
 