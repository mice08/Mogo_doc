/* Database name 'mogoroomdb',ֻ��ִ��step 2 update ��䣬 step1-->step3 ������  */

use mogoroomdb;

-- step 1 ִ��ǰ check  ���       ���������  1-->ת��104(�ֽ�)  2 or null -->ת��199(����)
select exempttype,count(*) from bill_salebill 	where 	exempt = 1 group by exempttype;
 
-- step 2 update
UPDATE bill_salebill old,(select id,case when exempttype = 1 then 104 else 199 END as fundchl from bill_salebill where exempt = 1)new set old.exempttype = new.fundchl where old.id = new.id AND old.exempt = 1;
-- step 3 check   '104' count ==  '1' count    '199' count == '2 + null' count             �����������  Ŀǰֻ��һ��Ϊnull�ļ�¼
select exempttype,count(*) from bill_salebill 	where 	exempt = 1 group by exempttype;


