/*金融贷款合同表维护聚有财蘑菇宝的subsId字段*/
USE mogoroomdb;


update loan_contract lc
inner join oder_signedorder os on lc.signedOrderId = os.id
set lc.subsId = os.subsId
where lc.loanChannel in (3,100);