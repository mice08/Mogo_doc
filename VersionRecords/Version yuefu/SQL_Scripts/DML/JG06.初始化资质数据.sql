/*  初始化资质列表*/
USE mogoroomdb;

/*初始化聚有财表(渠道为3)的prodTypeCode(1000001)*/
UPDATE loan_landlord_credit SET prodTypeCode='1000001' WHERE loanChannel IN (3,1) AND prodTypeCode IS NULL;

/* 聚有财的可能是多对1的（多个个contract对应1个credit）。credit表中要初始化contractId和prodTypeCode*/
UPDATE loan_landlord_credit credit
LEFT JOIN (SELECT MAX(id) AS applyContractId,landlordId 
		FROM loan_landlord_contract inside_contract 
		WHERE loanChannel=3 
		GROUP BY landlordId
	  ) correct_contract
ON credit.landlordId = correct_contract.landlordId AND credit.loanChannel = 3 
SET credit.contractId = correct_contract.applyContractId
WHERE  credit.loanChannel = 3;


/* 拉卡拉都是1对1的（1个contract对应1个credit）。现在应该不能申请拉卡拉资质了，这直接做数据初始化也行，做了也没什么用，credit表中要初始化contractId和prodTypeCode */
/*UPDATE loan_landlord_credit credit,loan_landlord_contract contract      
SET contractId = contract.id
WHERE  credit.landlordId = contract.landlordId 
AND  credit.loanChannel = 1 AND contract.loanChannel = 1;*/


/*初始化聚有财历史表(渠道为3)的prodTypeCode(1000001)  contractId*/
UPDATE loan_landlord_credit_his SET prodTypeCode='1000001' WHERE loanChannel=3;




