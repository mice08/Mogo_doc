/* Database name 'mogoroomdb',只用执行step 2 update 语句， step1-->step3 检查语句  */

use mogoroomdb;

-- step 1 执行前 check  语句       处理的数据  1-->转换104(现金)  2 or null -->转换199(其他)
select exempttype,count(*) from bill_salebill 	where 	exempt = 1 and (exempttype in (1,2) or exempttype is null) group by exempttype;
-- step 2 update
UPDATE bill_salebill old,(select id,case when exempttype = 1 then 104 else 199 END as fundchl from bill_salebill where exempt = 1)new set old.exempttype = new.fundchl where old.id = new.id AND old.exempt = 1 and (old.exempttype in (1,2) or old.exempttype is null);
-- step 3 check   '104' count ==  '1' count    '199' count == '2 + null' count             查过生产数据  目前只有一笔为null的记录
select exempttype,count(*) from bill_salebill 	where 	exempt = 1  group by exempttype;