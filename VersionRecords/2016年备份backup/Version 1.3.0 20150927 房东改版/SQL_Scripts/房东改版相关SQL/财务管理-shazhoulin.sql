/*押金借款-添加房东ID*/
ALTER TABLE bill_saleShouldAccount ADD COLUMN `landlordId` INT(11) NOT NULL DEFAULT 0 COMMENT '房东ID';

/*租客账单-添加房东ID*/
ALTER TABLE bill_saleBill ADD COLUMN `landlordId` INT(11) NOT NULL DEFAULT 0 COMMENT '房东ID';


/*初始化数据-更新其房东ID*/
UPDATE bill_saleShouldAccount sale SET sale.landlordId = (
	IFNULL((SELECT flat.landlordId
		FROM 
		     flat_flats flat 
		WHERE 
		     flat.id = sale.flatsId),0)
	);

/*初始化数据-更新其房东ID*/
UPDATE bill_saleBill sale SET sale.landlordId = (
	IFNULL((SELECT 
		oder.landlordId
		FROM 
		     oder_signedOrder oder
		WHERE 
		     sale.signedOrderId = oder.id),0)

);
/*添加豁免相关字段*/
ALTER TABLE bill_saleBill 
  ADD COLUMN `exempt` INT(11) NULL  COMMENT '是否豁免 1:是 0:否' AFTER `landlordId`,
  ADD COLUMN `exemptType` INT(11) NULL  COMMENT '豁免方式 1:现金 2:非现金' AFTER `exempt`;

/*消息模板 2015-10-8*/
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_exept_foucs','${1}${2}号租客${3}通过转账或现金支付了账单，请及时确认。',3,1);
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_exept','${1}小区${2}栋${3}号Room${4}租客${5}通过转账或现金支付了账单，请及时确认。',5,1);

/*豁免图片记录表*/
DROP TABLE IF EXISTS bill_exempt_picture;
CREATE TABLE bill_exempt_picture(
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `picId` INT(11) NOT NULL COMMENT '图片ID',
  `billId` INT(11) NOT NULL COMMENT '表bill_saleBill的主键',
  `status` INT(11) NOT NULL COMMENT '状态 0:无效 1:有效',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8 COMMENT '豁免图片记录表';


/*创建业务交易关联表*/
CREATE TABLE user_businessAccount(  
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `serialNum` VARCHAR(64) NOT NULL COMMENT '交易流水号',
  `accountNum` VARCHAR(64) NOT NULL COMMENT '用户账户',
  `landlordId` INT(11) NOT NULL COMMENT '房东Id',
  `tradeObjectId` INT(11) NOT NULL COMMENT '交易方Id',
  `flatId` INT(11) NULL COMMENT '公寓Id',
  `roomId` INT(11) NULL COMMENT '房间Id',
  `signedOrderId` INT(11) NULL COMMENT '签约单Id',
  `createTime` TIMESTAMP NOT NULL COMMENT '创建时间',
  `businessType` INT(11) NOT NULL COMMENT '业务交易类型',
  `tradeObjectType` INT(11) NOT NULL COMMENT '交易方类型 1:租客 2:蘑菇公寓',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8;

/*豁免交易记录表*/
CREATE TABLE bill_exemptInfo(  
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `saleContractId` INT(11) NOT NULL COMMENT '合同Id',
  `billId` INT(11) NOT NULL COMMENT '表bill_saleBill主键',
  `serialNum` VARCHAR(60) NOT NULL COMMENT '流水号',
  `amount` DECIMAL(12) NOT NULL COMMENT '豁免金额',
  `createBy` INT(11) NOT NULL COMMENT '创建用户ID',
  `createByType` INT(11) NOT NULL COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客',
  `createTime` TIMESTAMP NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
)ENGINE=INNODB CHARSET=utf8;

/*创建租客账单视图*/
CREATE OR REPLACE VIEW repo_renter_bill AS 
SELECT 
	saleBill.id                 AS saleBillId,
	saleBill.userId             AS renterId,
	saleBill.landlordId         AS landlordId,
	flat.id                     AS flatId,
	saleBill.billType           AS billType,   
	saleBill.amount             AS amount,          /*应付金额*/
	saleBill.billDate           AS billDate,       /*账单日*/
	saleBill.dueDate            AS dueDate,        /*应付款日*/
	saleBill.payTime            AS payTime,        /*支付时间*/
	saleBill.payStatus          AS payStatus,
	saleBill.serialNum          AS serialNum,      /*支付流水号*/
	saleBill.createTime         AS createTime,
	saleBill.startDate          AS startDate,
	saleBill.endDate            AS endDate,
	saleBill.signedOrderId      AS signedOrderId,
	saleBill.periodStage        AS periodStage,     /*期数年(1-2期中的1)*/
	saleBill.periodYear         AS periodYear,      /*期数期(1-2期中的2)*/
	flat.districtId             AS districtId,
	flat.flatsNum               AS flatsNum,        /*房源编号*/
	flat.roomNum                AS roomNum,        
	flat.building               AS building,         /*房源号码*/
	community.name              AS communityName,   /*小区名称*/
	community.id                AS communityId,
	room.roomNum                AS roomSubNum,      /*房间编号*/
	room.roomName               AS roomName,
	room.id		            AS roomId,
	renter.realName             AS renterName,
	renter.cellphone            AS renterPhone,
	saleContract.rentPayType    AS rentPayType,      /*付款方式*/
	saleContract.id             AS saleContractId,   /*销售合同ID*/
	cityDistrict.id             AS cityDistrictId,
	cityDistrict.name           AS cityDistrictName,   /*区域名称*/
	saleContract.beginDate      AS saleContractStartDate,
	saleContract.endDate        AS saleContractEndDate,
	saleContract.status         AS saleContractStatus,
	saleContract.leaseTerm      AS leaseTerm,
	saleBill.exempt             AS exempt,            /*是否豁免*/
	saleBill.exemptType         AS exemptType        /*豁免方式*/
FROM 
	bill_saleBill saleBill,
	user_renter renter,
	flat_flats flat,
	flat_room room,
	flat_community community,
	oder_signedOrder signedOrder,
	cntr_saleContract saleContract,
	city_district cityDistrict
WHERE
	saleBill.userType = 1
	AND saleBill.userId = renter.id
	AND saleBill.signedOrderId = signedOrder.id
	AND signedOrder.roomId = room.id
	AND signedOrder.saleContractId = saleContract.id
	AND signedOrder.flatsId = flat.id
	AND community.id = flat.communityId
	AND room.districtId = cityDistrict.id;
	


/*创建押金列表视图*/
CREATE OR REPLACE VIEW repo_deposit_bill AS 
SELECT 
    saleBill.id                 AS saleBillId,
    saleBill.renterId           AS renterId,
    saleBill.landlordId         AS landlordId,
    saleBill.saleBillId         AS billId,
    flat.id                     AS flatId, 
    saleBill.money              AS money,        /*应付金额*/
    saleBill.realPayMoney       AS realPayMoney, /*金额*/
    saleBill.billDate           AS billDate,     /*账单日*/
    saleBill.payStatus          AS payStatus,
    saleBill.createTime         AS createTime,
    saleBill.startDate          AS startDate,
    saleBill.endDate            AS endDate,
    saleBill.signedOrderId      AS signedOrderId,
    saleBill.periodStage        AS periodStage,    /*期数年(1-2期中的1)*/
    saleBill.periodYear         AS periodYear,     /*期数期(1-2期中的2)*/
    flat.flatsNum               AS flatsNum,       /*房源编号*/
    flat.roomNum                AS roomNum,        /*房源号码*/
    community.name              AS communityName,  /*小区名称*/
    renter.realName             AS renterName,
    renter.cellphone            AS renterPhone,
    saleContract.status         AS saleContractStatus,
    room.id                     AS roomId,
    room.roomNum                AS roomSubNum,
    room.roomName               AS roomName,
    flat.building               AS building
FROM 
    bill_saleShouldAccount saleBill,
    user_renter renter,
    flat_flats flat,
    flat_community community,
    cntr_saleContract saleContract,
    oder_signedOrder signedOrder,
    flat_room room
WHERE
    saleBill.renterId = renter.id
    AND saleBill.flatsId = flat.id
    AND community.id = flat.communityId
    AND signedOrder.saleContractId = saleContract.id
    AND signedOrder.flatsId = flat.id
    AND room.id = saleBill.roomId
    AND saleBill.consumeType =1;

/*业主账单*/
CREATE OR REPLACE VIEW repo_host_bill AS  
 SELECT 
	hostRec.id                     AS hostRecId,
	userInfo.id                    AS userId,
	hostRec.flat_id                AS flatId,
	hostRel.pay_type               AS payType,
	hostRec.pay_date               AS payDate,
	hostRec.real_pay_date          AS realPayDate,
	hostRec.has_paid               AS payStatus,
	userInfo.real_name             AS userName,
	userInfo.mobile                AS userPhone,
	community.name                 AS communityName,
	flat.roomNum                   AS roomNum,
	flat.flatsNum                  AS flatsNum,
	flat.building                  AS building,
	cityDistrict.id                AS cityDistrictId,
	cityDistrict.name              AS cityDistrictName,
	hostRec.landlord_id            AS landlordId,
	hostRec.pay_money              AS payMoney,
	cityDistrict.id		       AS districtId
FROM 
	 host_acct_busi_rec hostRec,
	 host_flats_relation hostRel,
	 user_info userInfo,
	 flat_flats flat,
	flat_community community,
	city_district cityDistrict
 WHERE 
	hostRec.flat_id = hostRel.flat_id
	AND hostRec.host_Id = hostRel.host_Id
	AND hostRec.landlord_id = hostRel.landlord_id
	AND userInfo.id = hostRec.host_Id
	AND flat.id = hostRec.flat_id
	AND community.id = flat.communityId
	AND flat.districtId = cityDistrict.id;

/*定金、退定金*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		book.renterId,
		book.flatsId,
		book.roomId,
		NULL,
		w.fluctuantTime,
		w.businessType,
		1
	FROM 
		user_waterAccount w,
		oder_businessOrder oder,
		oder_bookOrder     book,
		user_landlord      uu
	WHERE 
		w.serialNum=oder.businessNum
		AND w.frozenBalance = 0
		AND w.accountNum = uu.accountNum
		AND oder.mogoTradeId = book.id
		AND w.businessType IN(216001,3008);

/*退违约金*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		book.renterId,
		book.flatsId,
		book.roomId,
		book.id,
		w.fluctuantTime,
		w.businessType,
		1
	FROM 
		user_waterAccount w,
		oder_businessOrder oder,
		oder_signedOrder     book,
		oder_refuseorderrecord ref,
		user_landlord      uu
	WHERE 
		w.serialNum=oder.businessNum
		AND w.frozenBalance = 0
		AND w.accountNum = uu.accountNum
		AND oder.mogoTradeId = ref.id
		AND ref.orderId = book.id
		AND w.businessType =3009;
		
/*退押金*/		
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		book.renterId,
		book.flatsId,
		book.roomId,
		book.id,
		w.fluctuantTime,
		w.businessType,
		1
	FROM 
		user_waterAccount w,
		oder_businessOrder oder,
		oder_signedOrder     book,
		oder_surrenderapply  sur,
		user_landlord      uu
	WHERE 
		w.serialNum=oder.businessNum
		AND w.frozenBalance = 0
		AND w.accountNum = uu.accountNum
		AND oder.mogoTradeId = sur.id
		AND book.id = sur.signedOrderId
		AND w.businessType IN(3007);


/*租金，水电煤*/		
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		sig.renterId,
		sig.flatsId,
		sig.roomId,
		bill.signedOrderId,
		w.fluctuantTime,
		w.businessType,
		1
	FROM 
		user_waterAccount w,
		oder_signedOrder     sig,
		bill_saleBill     bill,
		user_landlord      uu
	WHERE 
		w.serialNum=bill.serialNum
		AND w.frozenBalance = 0
		AND w.accountNum = uu.accountNum
		AND sig.id = bill.signedOrderId
		AND w.businessType IN(216002,216003,216004);


/*租金宝放款*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
SELECT 
  water.serialNum,
  uu.id landlordId,
  uu.accountNum,
  0,
  sig.flatsId,
  sig.roomId,
  info.signedOrderId,
  water.fluctuantTime,
  water.businessType,
  2
FROM
  user_waterAccount water 
  JOIN user_landlord uu 
    ON water.accountNum = uu.accountNum
  JOIN oder_businessOrder bOrder 
    ON water.serialNum = bOrder.businessNum 
  JOIN loan_landlord_payplan payplan 
    ON bOrder.mogoTradeId = payplan.id 
  JOIN loan_landlord_mgmt mgmt 
    ON payplan.loanId = mgmt.id 
  JOIN loan_renter_contract con 
    ON mgmt.bizContractId = con.id 
  JOIN loan_renter_info info 
    ON con.infoId = info.id 
  JOIN oder_signedOrder sig 
    ON info.signedOrderId = sig.id 
WHERE water.businessType = 111002 
	AND water.frozenBalance = 0;

/*租金宝买回*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		0,
		sig.flatsId,
		sig.roomId,
		info.signedOrderId,
		w.fluctuantTime,
		w.businessType,
		2
	FROM 
		user_waterAccount    w,
		oder_signedOrder     sig,
		loan_landlord_buyback     bill,
		user_landlord        uu,
		oder_businessOrder   bOrder,
		loan_landlord_mgmt   mgmt,
		loan_renter_contract con, 
		loan_renter_info     info
		
	WHERE 
		w.serialNum=bOrder.businessNum
		AND w.frozenBalance = 0
		AND mgmt.id = bill.loanId
		AND mgmt.bizContractId = con.id
		AND con.infoId = info.id
		AND info.signedOrderId = sig.id		
		AND bOrder.mogoTradeId = bill.id
		AND w.accountNum = uu.accountNum
		AND w.businessType IN(3013,3014,3015);

/*装修放款*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		0,
		bill.flatsId,
		NULL,
		NULL,
		w.fluctuantTime,
		w.businessType,
		2
	FROM 
		user_waterAccount    w,
		bill_loan     bill,
		user_landlord        uu,
		oder_businessOrder   bOrder
		
	WHERE 
		w.serialNum=bOrder.businessNum	
		AND w.frozenBalance = 0
		AND bOrder.mogoTradeId = bill.id
		AND w.accountNum = uu.accountNum
		AND w.businessType =3005;

/*装修借款-买回、手续费*/
INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		0,
		loan.flatsId,
		NULL,
		NULL,
		w.fluctuantTime,
		w.businessType,
		2
	FROM 
		user_waterAccount    w,
		bill_repayment     bill,
		bill_loan           loan,
		user_landlord        uu,
		oder_businessOrder   bOrder
		
	WHERE 
		w.serialNum=bOrder.businessNum	
		AND w.frozenBalance = 0
		AND bOrder.mogoTradeId = bill.id
		AND loan.id = bill.loanId
		AND w.accountNum = uu.accountNum
		AND w.businessType IN (3010,3006);

INSERT INTO user_businessAccount(serialNum,landlordId,accountNum,tradeObjectId,flatId,roomId,signedOrderId,createTime,businessType,tradeObjectType)
	SELECT 
		w.serialNum,
		uu.id,
		uu.accountNum,
		0,
		NULL,
		NULL,
		NULL,
		w.fluctuantTime,
		w.businessType,
		2
	FROM 
		user_waterAccount w,
		user_landlord      uu
	WHERE 
		w.accountNum = uu.accountNum
		AND w.frozenBalance = 0
		AND w.businessType IN(3001,3002,3003);