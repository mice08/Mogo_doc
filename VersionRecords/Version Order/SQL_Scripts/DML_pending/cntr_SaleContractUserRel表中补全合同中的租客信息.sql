use mogoroomdb;

--cntr_SaleContractUserRel表补缺失数据：合同中租客数据补到cntr_SaleContractUserRel关系表中（userType=4 租客）
INSERT INTO cntr_SaleContractUserRel(contractId,userId,userType,userRel,createTime)
	SELECT b.id,b.renterId,4,1,b.createTime
	FROM oder_signedorder a
	INNER JOIN cntr_saleContract b ON a.saleContractId=b.id
	LEFT JOIN cntr_salecontractUserRel c ON b.id=c.contractId
	WHERE c.id IS NULL;