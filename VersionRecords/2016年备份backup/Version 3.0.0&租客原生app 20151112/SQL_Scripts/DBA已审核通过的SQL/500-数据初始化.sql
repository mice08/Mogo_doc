use mogoroomdb;
/*初始化oder_reservationOrder表hasVisited字段（租客是否已看房 0:否 1:是），关联预订单签约单，有数据就标识为是，并且如果是2016年前也标识为是，其余都为否*/
UPDATE oder_reservationorder oro SET oro.hasVisited = 1 WHERE YEAR(oro.createTime) < 2016 OR EXISTS (SELECT 1 FROM oder_bookorder obo WHERE obo.reservationOrderId = oro.id) OR EXISTS (SELECT 1 FROM oder_signedorder oso WHERE oso.reservationOrderId = oro.id);

/*初始化oder_signedorder表channel字段（签约来源，1-租客App，4-房东App），关联合同表，turnStrtus为null或0的设为1，否则设为4*/
UPDATE oder_signedorder SET channel = '1' WHERE id IN (SELECT t.id FROM(SELECT oso.id FROM oder_signedorder oso LEFT JOIN cntr_salecontract csc ON oso.saleContractId = csc.id WHERE csc.turnStrtus IS NULL OR csc.turnStrtus = 0)t);
UPDATE oder_signedorder SET channel = '4' WHERE id IN (SELECT t.id FROM(SELECT oso.id FROM oder_signedorder oso LEFT JOIN cntr_salecontract csc ON oso.saleContractId = csc.id WHERE csc.turnStrtus IS NOT NULL AND csc.turnStrtus != 0)t);

/*创建存储过程，用于初始化cntr_salecontract表的billConfig字段，将与该合同相关的定金，押金，租金，中介费，管理费组织成JSON格式存入billConfig
初始化数据需调用该存储过程 call contractinit()*/
DELIMITER //
DROP PROCEDURE IF EXISTS `contractinit` //
CREATE PROCEDURE contractinit()
BEGIN
	DECLARE contractId INT;
	DECLARE deposit DECIMAL(12,2);
	DECLARE foregift DECIMAL(12,2);
	DECLARE realRentPrice DECIMAL(12,2);
	DECLARE agencyFee DECIMAL(12,2);
	DECLARE manageFee DECIMAL(12,2);
	DECLARE done INT DEFAULT 0;

	DECLARE cur CURSOR FOR 
	SELECT csc.id AS contractId, 
		CASE WHEN obo.deposit IS NULL THEN 0 ELSE obo.deposit END AS deposit,
		CASE WHEN csc.rentPayType IN(5,6,7,8,12) THEN csc.realRentPrice*2 
		WHEN csc.rentPayType IN(10,13,14,15,16) THEN csc.realRentPrice*3
		ELSE csc.realRentPrice END AS foregift,
		csc.realRentPrice,
		CASE WHEN csc.agencyFee IS NULL THEN 0 ELSE csc.agencyFee END AS agencyFee,
		CASE WHEN csc.manageFee IS NULL THEN 0 ELSE csc.manageFee END AS manageFee
	FROM cntr_salecontract csc 
		LEFT JOIN oder_signedorder oso ON oso.saleContractId = csc.id
		LEFT JOIN oder_bookorder obo ON oso.bookOrderId = obo.id;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1; 

	OPEN cur;   
	    contract_loop: LOOP   
	        FETCH cur INTO contractId, deposit, foregift, realRentPrice, agencyFee, manageFee;  
	        UPDATE cntr_salecontract SET billConfig = CONCAT('{"nodeName":"房间价格明细","totalAmount":',deposit+realRentPrice+agencyFee+foregift+manageFee,',"nodeType":"ROOT","children":[{"nodeName":"定金","totalAmount":',deposit,',"nodeType":"TOPLEVEL","path":"定金","children":[{"nodeName":"支付定金","totalAmount":',deposit,',"nodeType":"COMMON_LEAF","path":"定金/支付定金","bindData":"{\\"code\\":1002,\\"name\\":\\"支付定金\\",\\"usageType\\":0,\\"amount\\":',deposit,',\\"payStage\\":1}"}]},{"nodeName":"常规房租","totalAmount":',realRentPrice,',"nodeType":"TOPLEVEL","path":"常规房租","children":[{"nodeName":"房租","totalAmount":',realRentPrice,',"nodeType":"COMMON_LEAF","path":"常规房租/房租","bindData":"{\\"code\\":10002,\\"name\\":\\"房租\\",\\"usageType\\":0,\\"amount\\":',realRentPrice,',\\"payStage\\":3}"}]},{"nodeName":"首期款","totalAmount":',agencyFee+foregift+manageFee,',"nodeType":"TOPLEVEL","path":"首期款","children":[{"nodeName":"中介费","totalAmount":',agencyFee,',"nodeType":"COMMON_LEAF","path":"首期款/中介费","bindData":"{\\"code\\":100002,\\"name\\":\\"中介费\\",\\"usageType\\":0,\\"amount\\":',agencyFee,',\\"payStage\\":2}"},{"nodeName":"押金","totalAmount":',foregift,',"nodeType":"COMMON_LEAF","path":"首期款/押金","bindData":"{\\"code\\":10003,\\"name\\":\\"押金\\",\\"usageType\\":0,\\"amount\\":',foregift,',\\"payStage\\":2}"},{"nodeName":"管理费","totalAmount":',manageFee,',"nodeType":"COMMON_LEAF","path":"首期款/管理费","bindData":"{\\"code\\":100001,\\"name\\":\\"管理费\\",\\"usageType\\":0,\\"amount\\":',manageFee,',\\"payStage\\":2}"}]}]}')
	        WHERE id = contractId;
	        IF done = 1 THEN   
	            LEAVE contract_loop;   
	        END IF;   
	    END LOOP contract_loop;   
	CLOSE cur;   
END //
DELIMITER ;

call contractinit();

/*押金*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '首期款',billType = 1003 ,billDtlType = 10003, soDoneCode = 0 WHERE consumeType = 1;
/*定金抵扣租金*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '首期款',billType = 1003 , billDtlType = 10004, soDoneCode = 0 WHERE consumeType = 6;
/*管理费*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '首期款',billType = 1003 , billDtlType = 100001, soDoneCode = 0 WHERE consumeType = 7;
/*中介费*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '首期款',billType = 1003 , billDtlType = 100002, soDoneCode = 0 WHERE consumeType = 8;
/*首期租金*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '首期款',billType = 1003 , billDtlType = 10002, soDoneCode = 0 WHERE consumeType = 3 AND periodYear = 1 AND periodStage = 1;
/*非首期租金*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '租金', billType = 1004 , billDtlType = 10002, soDoneCode = 0 WHERE consumeType = 3 AND (periodYear != 1 OR periodStage != 1);

/*首期款租金*/
UPDATE bill_salebill SET title = '首期款', bill_type=1003, sendFlag = 2 WHERE billType = 1011 AND periodYear = 1 AND periodStage = 1;
/*常规款租金*/
UPDATE bill_salebill SET title = '租金', bill_type=1004, sendFlag = 2 WHERE billType = 1011 AND (periodYear != 1 OR periodStage != 1);



/*水电煤*/ 
/*旧水费明细*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.water,NULL,NULL,  CONCAT('旧水费账单转换-',uti.time),NOW(),bill.valid,bill.landlordId,20001,100006,0,bill.dueDate,'水费账单' 
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND water > 0;
/*旧电费明细*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.elec,NULL,NULL,CONCAT('旧水费账单转换-',uti.time), NOW(),bill.valid,bill.landlordId,20001,100007,0,bill.dueDate,'电费账单'
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND elec > 0;
/*旧煤气费明细*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.gas,NULL,NULL,CONCAT('旧水费账单转换-',uti.time), NOW(),bill.valid,bill.landlordId,20001,100008,0,bill.dueDate,'煤气费账单'
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND uti.gas > 0;
/*水电煤账单*/
UPDATE bill_salebill SET title = '水电煤账单', bill_type=20001, sendFlag = 2,periodStage=1,startDate=billDate,endDate=dueDate WHERE billType = 1021;