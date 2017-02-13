use mogoroomdb;

/* 金融模板 */
update cntr_contract_templet set belongContractType = 2 where id in (16,17,60);
/* 租房模板 */
update cntr_contract_templet set belongContractType = 1 where id not in (16,17,60);
/*自营 */
update cntr_salecontract c  inner join oder_signedOrder o ON o.salecontractid = c.id set c.templetCode = 'ZL000000000001' WHERE o.status IN (1,2,3,7,9,21,23,24) AND c.contractType <> 3 AND o.landlordId = 1;
/*非自营 北京*/		  
UPDATE cntr_salecontract c  inner join oder_signedOrder o ON o.salecontractid = c.id inner join user_landlord l ON l.id = o.landlordId set c.templetCode = 'TY001BJ'  WHERE o.status IN (1,2,3,7,9,21,23,24) AND c.contractType <> 3 AND o.landlordId <> 1 AND l.applycityid = 131;
/*非自营 上海*/		  
UPDATE cntr_salecontract c  inner join oder_signedOrder o ON o.salecontractid = c.id inner join user_landlord l ON l.id = o.landlordId set c.templetCode = 'TY001SH'  WHERE o.status IN (1,2,3,7,9,21,23,24) AND c.contractType <> 3 AND o.landlordId <> 1 AND l.applycityid = 289;
/*非自营 深圳*/		  
UPDATE cntr_salecontract c  inner join oder_signedOrder o ON o.salecontractid = c.id inner join user_landlord l ON l.id = o.landlordId set c.templetCode = 'TY001SZ'  WHERE o.status IN (1,2,3,7,9,21,23,24) AND c.contractType <> 3 AND o.landlordId <> 1 AND l.applycityid = 340;
