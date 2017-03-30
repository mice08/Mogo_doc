USE mogoroomdb;
 
 
/* 之前的模板设置为过期 */
update cntr_contract_templet set endTime = NOW()  where templetPath in ('/var/lib/docker/contract/template/v2/zz.vm','/var/lib/docker/contract/template/v2/hz.vm','/var/lib/docker/contract/template/v3/zy.vm');

/* 设置新的版本 */
insert into cntr_contract_templet(cityId,rentType,templetName,templetCode,templetPath,status,createTime,createBy,createByType,lang,BeginTime,endTime )  
select cityId,rentType,templetName,templetCode,CONCAT(left(templetPath,34),'v4',right(templetPath,6)),1,NOW(),createBy,createByType,lang,endTime as BeginTime,'2020-12-31 23:59:59' as endTime from cntr_contract_templet where templetPath in ('/var/lib/docker/contract/template/v2/zz.vm','/var/lib/docker/contract/template/v2/hz.vm','/var/lib/docker/contract/template/v3/zy.vm');
 