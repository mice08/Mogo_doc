use mogoroomdb;

--cntr_SaleContractUserRel表补缺失数据：合同中租客数据补到cntr_SaleContractUserRel关系表中
--（新逻辑中此表只会存userType=6[入住人]的记录，但数据可能是签约人入住，可根据合同中renterId来判断）
--INSERT INTO cntr_SaleContractUserRel(contractId,userId,userType,userRel,createTime)
--	SELECT b.id,b.renterId,6,1,b.createTime
--	FROM oder_signedorder a
--	INNER JOIN cntr_saleContract b ON a.saleContractId=b.id
--	LEFT JOIN cntr_salecontractUserRel c ON b.id=c.contractId
--	WHERE c.id IS NULL;
-- 多入住人逻辑不上#3.2了，故注释