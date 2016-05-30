use acct;

begin;
update acct.acct_bill b join ( 
  select
    bbd.billid
    , max(br.createTime) lastPayTime 
  from
    acct.acct_busibilldtl bbd join acct.acct_busirec br 
      on br.doneCode = bbd.doneCode 
  group by
    bbd.billid
) pt 
  on b.billid = pt.billid 
set
  b.lastPayTime = pt.lastPayTime; 

commit;



