/* Database name `mogoroomdb`自营合同模板升级 */

use mogoroomdb;

/* 之前的模板设置为过期  影响3 rows */
update cntr_contract_templet set endTime = NOW()  where id in (48,49,50);
/* 设置新的版本 影响  3 rows        */
insert into cntr_contract_templet(cityId,rentType,templetName,templetCode,templetPath,status,createTime,createBy,createByType,lang,BeginTime,endTime )  
select cityId,rentType,templetName,templetCode,REPLACE(templetPath,'/template/v4/','/template/v5/'),1,now(),createBy,createByType,lang,endTime as BeginTime,'2020-12-31 23:59:59' as endTime from  cntr_contract_templet where id in (48,49,50);