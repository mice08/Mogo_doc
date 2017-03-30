use mogoroomdb;
/*��ʼ��oder_reservationOrder��hasVisited�ֶΣ�����Ƿ��ѿ��� 0:�� 1:�ǣ�������Ԥ����ǩԼ���������ݾͱ�ʶΪ�ǣ����������2016��ǰҲ��ʶΪ�ǣ����඼Ϊ��*/
UPDATE oder_reservationorder oro SET oro.hasVisited = 1 WHERE YEAR(oro.createTime) < 2016 OR EXISTS (SELECT 1 FROM oder_bookorder obo WHERE obo.reservationOrderId = oro.id) OR EXISTS (SELECT 1 FROM oder_signedorder oso WHERE oso.reservationOrderId = oro.id);

/*��ʼ��oder_signedorder��channel�ֶΣ�ǩԼ��Դ��1-���App��4-����App����������ͬ��turnStrtusΪnull��0����Ϊ1��������Ϊ4*/
UPDATE oder_signedorder SET channel = '1' WHERE id IN (SELECT t.id FROM(SELECT oso.id FROM oder_signedorder oso LEFT JOIN cntr_salecontract csc ON oso.saleContractId = csc.id WHERE csc.turnStrtus IS NULL OR csc.turnStrtus = 0)t);
UPDATE oder_signedorder SET channel = '4' WHERE id IN (SELECT t.id FROM(SELECT oso.id FROM oder_signedorder oso LEFT JOIN cntr_salecontract csc ON oso.saleContractId = csc.id WHERE csc.turnStrtus IS NOT NULL AND csc.turnStrtus != 0)t);

/*�����洢���̣����ڳ�ʼ��cntr_salecontract���billConfig�ֶΣ�����ú�ͬ��صĶ���Ѻ������н�ѣ��������֯��JSON��ʽ����billConfig
��ʼ����������øô洢���� call contractinit()*/
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
	        UPDATE cntr_salecontract SET billConfig = CONCAT('{"nodeName":"����۸���ϸ","totalAmount":',deposit+realRentPrice+agencyFee+foregift+manageFee,',"nodeType":"ROOT","children":[{"nodeName":"����","totalAmount":',deposit,',"nodeType":"TOPLEVEL","path":"����","children":[{"nodeName":"֧������","totalAmount":',deposit,',"nodeType":"COMMON_LEAF","path":"����/֧������","bindData":"{\\"code\\":1002,\\"name\\":\\"֧������\\",\\"usageType\\":0,\\"amount\\":',deposit,',\\"payStage\\":1}"}]},{"nodeName":"���淿��","totalAmount":',realRentPrice,',"nodeType":"TOPLEVEL","path":"���淿��","children":[{"nodeName":"����","totalAmount":',realRentPrice,',"nodeType":"COMMON_LEAF","path":"���淿��/����","bindData":"{\\"code\\":10002,\\"name\\":\\"����\\",\\"usageType\\":0,\\"amount\\":',realRentPrice,',\\"payStage\\":3}"}]},{"nodeName":"���ڿ�","totalAmount":',agencyFee+foregift+manageFee,',"nodeType":"TOPLEVEL","path":"���ڿ�","children":[{"nodeName":"�н��","totalAmount":',agencyFee,',"nodeType":"COMMON_LEAF","path":"���ڿ�/�н��","bindData":"{\\"code\\":100002,\\"name\\":\\"�н��\\",\\"usageType\\":0,\\"amount\\":',agencyFee,',\\"payStage\\":2}"},{"nodeName":"Ѻ��","totalAmount":',foregift,',"nodeType":"COMMON_LEAF","path":"���ڿ�/Ѻ��","bindData":"{\\"code\\":10003,\\"name\\":\\"Ѻ��\\",\\"usageType\\":0,\\"amount\\":',foregift,',\\"payStage\\":2}"},{"nodeName":"�����","totalAmount":',manageFee,',"nodeType":"COMMON_LEAF","path":"���ڿ�/�����","bindData":"{\\"code\\":100001,\\"name\\":\\"�����\\",\\"usageType\\":0,\\"amount\\":',manageFee,',\\"payStage\\":2}"}]}]}')
	        WHERE id = contractId;
	        IF done = 1 THEN   
	            LEAVE contract_loop;   
	        END IF;   
	    END LOOP contract_loop;   
	CLOSE cur;   
END //
DELIMITER ;

call contractinit();

/*Ѻ��*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���ڿ�',billType = 1003 ,billDtlType = 10003, soDoneCode = 0 WHERE consumeType = 1;
/*����ֿ����*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���ڿ�',billType = 1003 , billDtlType = 10004, soDoneCode = 0 WHERE consumeType = 6;
/*�����*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���ڿ�',billType = 1003 , billDtlType = 100001, soDoneCode = 0 WHERE consumeType = 7;
/*�н��*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���ڿ�',billType = 1003 , billDtlType = 100002, soDoneCode = 0 WHERE consumeType = 8;
/*�������*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���ڿ�',billType = 1003 , billDtlType = 10002, soDoneCode = 0 WHERE consumeType = 3 AND periodYear = 1 AND periodStage = 1;
/*���������*/
UPDATE bill_saleshouldaccount SET deadline = startDate,title = '���', billType = 1004 , billDtlType = 10002, soDoneCode = 0 WHERE consumeType = 3 AND (periodYear != 1 OR periodStage != 1);

/*���ڿ����*/
UPDATE bill_salebill SET title = '���ڿ�', bill_type=1003, sendFlag = 2 WHERE billType = 1011 AND periodYear = 1 AND periodStage = 1;
/*��������*/
UPDATE bill_salebill SET title = '���', bill_type=1004, sendFlag = 2 WHERE billType = 1011 AND (periodYear != 1 OR periodStage != 1);



/*ˮ��ú*/ 
/*��ˮ����ϸ*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.water,NULL,NULL,  CONCAT('��ˮ���˵�ת��-',uti.time),NOW(),bill.valid,bill.landlordId,20001,100006,0,bill.dueDate,'ˮ���˵�' 
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND water > 0;
/*�ɵ����ϸ*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.elec,NULL,NULL,CONCAT('��ˮ���˵�ת��-',uti.time), NOW(),bill.valid,bill.landlordId,20001,100007,0,bill.dueDate,'����˵�'
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND elec > 0;
/*��ú������ϸ*/
INSERT INTO bill_saleshouldaccount ( signedOrderId, flatsId,roomId,saleBillId,renterId,consumeType,periodStage,startDate,endDate,billDate,payStatus,money,realPayMoney,preferentialMoney,remark,createTime,valid,landlordId,billType,billDtlType,soDoneCode,deadline,title) 
SELECT bill.signedOrderId,NULL,bill.roomId, bill.id, bill.userId,5,1,bill.createTime,bill.dueDate,bill.billDate,bill.payStatus,uti.gas,NULL,NULL,CONCAT('��ˮ���˵�ת��-',uti.time), NOW(),bill.valid,bill.landlordId,20001,100008,0,bill.dueDate,'ú�����˵�'
FROM bill_salebill bill, supp_utilitybill uti WHERE billType = 1021 AND bill.id = uti.saleBillId AND uti.gas > 0;
/*ˮ��ú�˵�*/
UPDATE bill_salebill SET title = 'ˮ��ú�˵�', bill_type=20001, sendFlag = 2,periodStage=1,startDate=billDate,endDate=dueDate WHERE billType = 1021;