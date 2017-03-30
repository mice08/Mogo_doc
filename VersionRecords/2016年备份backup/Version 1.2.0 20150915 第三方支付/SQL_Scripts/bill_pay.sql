 
##第三方交易支付对账基础表
CREATE TABLE `bill_checkbill_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bizOrderNum` varchar(30) DEFAULT NULL COMMENT '业务订单编号',
  `bizType` varchar(10) DEFAULT NULL COMMENT '业务类型',
  `price` double DEFAULT NULL COMMENT '交易金额',
  `billDate` date DEFAULT NULL COMMENT '交易时间',
  `plat` varchar(10) DEFAULT NULL COMMENT '平台类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

 
##每日对账结果表
CREATE TABLE `bill_checkbill_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` varchar(20) DEFAULT NULL COMMENT '平台',
  `checkDate` date DEFAULT NULL COMMENT '对账日期',
  `result` varchar(10) DEFAULT NULL COMMENT '结果',
  `reason` varchar(256) DEFAULT NULL COMMENT '原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

 
##微信原始每日账单
CREATE TABLE `bill_checkbill_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payTime` datetime DEFAULT NULL COMMENT '交易时间',
  `weiXinOrderNum` varchar(30) DEFAULT NULL COMMENT '微信支付单号',
  `bizOrderNum` varchar(30) DEFAULT NULL COMMENT '商户订单号',
  `mch_id` varchar(20) DEFAULT NULL COMMENT '商户号',
  `appId` varchar(20) DEFAULT NULL COMMENT 'appid',
  `billUser` varchar(30) DEFAULT NULL COMMENT '下单用户',
  `billEvn` varchar(20) DEFAULT NULL COMMENT '交易场景',
  `billStatus` varchar(20) DEFAULT NULL COMMENT '交易状态',
  `succTime` datetime DEFAULT NULL COMMENT '支付成功时间',
  `price` double DEFAULT NULL COMMENT '交易金额(元)',
  `refundMoney` double DEFAULT NULL COMMENT '退款金额',
  `refundStatus` varchar(20) DEFAULT NULL COMMENT '退款状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

ALTER TABLE bill_checkbill_weixin ADD COLUMN refundOrderNum VARCHAR(30) COMMENT '业务退款单号'
##支付宝原始每日账单
CREATE TABLE `bill_checkbill_zhifubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountNum` varchar(20) DEFAULT NULL COMMENT '账务流水号',
  `bizNum` varchar(30) DEFAULT NULL COMMENT '业务流水号',
  `orderNum` varchar(30) DEFAULT NULL COMMENT '商户订单号',
  `shopName` varchar(256) DEFAULT NULL COMMENT '商品名称',
  `startTime` datetime DEFAULT NULL COMMENT '发生时间',
  `userAccount` varchar(50) DEFAULT NULL COMMENT '对方账号',
  `comeMoney` double DEFAULT NULL COMMENT '收入金额（+元）',
  `outMoney` double DEFAULT NULL COMMENT '支出金额（-元）',
  `accountMoney` double DEFAULT NULL COMMENT '账户余额（元）',
  `bizChannel` varchar(10) DEFAULT NULL COMMENT '交易渠道',
  `bizType` varchar(10) DEFAULT NULL COMMENT '业务类型',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

 
##微信支付成功记录
CREATE TABLE `bill_paylog_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_orderid` varchar(30) DEFAULT NULL COMMENT '业务订单ID',
  `biz_type` varchar(20) DEFAULT NULL COMMENT '业务类型',
  `return_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL 此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断',
  `return_msg` varchar(128) DEFAULT NULL COMMENT '返回信息，如非空，为错误原因 签名失败 参数格式校验错误',
  `appid` varchar(32) DEFAULT NULL COMMENT '微信分配的公众账号ID（企业号corpid即为此appId）',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '微信支付分配的商户号',
  `device_info` varchar(32) DEFAULT NULL COMMENT '微信支付分配的终端设备号，',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机字符串，不长于32位',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `result_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL',
  `err_code` varchar(32) DEFAULT NULL COMMENT '错误返回的信息描述',
  `err_code_des` varchar(128) DEFAULT NULL COMMENT '错误返回的信息描述',
  `openid` varchar(128) DEFAULT NULL COMMENT '用户在商户appid下的唯一标识',
  `is_subscribe` varchar(1) DEFAULT NULL COMMENT '用户是否关注公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效',
  `trade_type` varchar(16) DEFAULT NULL COMMENT 'JSAPI、NATIVE、APP',
  `bank_type` varchar(16) DEFAULT NULL COMMENT '银行类型',
  `total_fee` int(11) DEFAULT NULL COMMENT '订单总金额，单位为分',
  `fee_type` varchar(8) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY，',
  `cash_fee` int(11) DEFAULT NULL COMMENT '现金支付金额订单现金支付金额',
  `cash_fee_type` varchar(16) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY',
  `coupon_fee` int(11) DEFAULT NULL COMMENT '代金券或立减优惠金额<=订单总金额，订单总金额-代金券或立减优惠金额=现金支付金额',
  `coupon_count` int(11) DEFAULT NULL COMMENT '代金券或立减优惠使用数量',
  `coupon_id_$n` varchar(20) DEFAULT NULL COMMENT '代金券或立减优惠ID,$n为下标，从0开始编号',
  `coupon_fee_$n` int(11) DEFAULT NULL COMMENT '单个代金券或立减优惠支付金额,$n为下标，从0开始编号',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '微信支付订单号',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户系统的订单号，与请求一致。',
  `attach` varchar(128) DEFAULT NULL COMMENT '商家数据包，原样返回',
  `time_end` varchar(14) DEFAULT NULL COMMENT '支付完成时间，格式为yyyyMMddHHmmss，如2009年12月25日9点10分10秒表示为20091225091010。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

 
##支付宝支付成功记录
CREATE TABLE `bill_paylog_zhifubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_orderid` varchar(30) DEFAULT NULL COMMENT '业务订单ID',
  `biz_type` varchar(30) DEFAULT NULL COMMENT '业务类型',
  `notify_time` date DEFAULT NULL COMMENT '通知的发送时间。 格式为 yyyy-MM-dd HH:mm:ss',
  `notify_type` varchar(20) DEFAULT NULL COMMENT '通知的类型',
  `notify_id` varchar(64) DEFAULT NULL COMMENT '通知校验的ID',
  `sign_type` varchar(10) DEFAULT NULL COMMENT '固定取值为 RSA',
  `sign` varchar(1024) DEFAULT NULL COMMENT '签名',
  `out_trade_no` varchar(64) DEFAULT NULL COMMENT '对应商户网站的订单系统中的 唯一订单号，非支付宝交易号。\r\n需保证在商户网站中的唯一性。 是请求时对应的参数，原样返 回。',
  `subject` varchar(128) DEFAULT NULL COMMENT '商品的标题/交易标题/订单标题 /订单关键字等。 它在支付宝的交易明细中排在 第一列，对于财务对账尤为重 要。是请求时对应的参数，原样 通知回来。',
  `payment_type` varchar(4) DEFAULT NULL COMMENT '支付类型。默认值为：1（商品 购买）',
  `trade_no` varchar(64) DEFAULT NULL COMMENT '该交易在支付宝系统中的交易 流水号。 最短 16 位，最长 64 位。',
  `trade_status` varchar(20) DEFAULT NULL COMMENT '交易状态，取值范围请参见 “11.3  交易状态”。',
  `seller_id` varchar(30) DEFAULT NULL COMMENT '卖家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字',
  `seller_email` varchar(100) DEFAULT NULL COMMENT '卖家支付宝账号，可以是 email 和手机号码。',
  `buyer_id` varchar(30) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字。',
  `buyer_email` varchar(100) DEFAULT NULL COMMENT '买家支付宝账号，可以是 Email 或手机号码。',
  `total_fee` double DEFAULT NULL COMMENT '该笔订单的总金额。 请求时对应的参数，原样通知回 来。',
  `quantity` double DEFAULT NULL COMMENT '购买数量，固定取值为 1（请求 时使用的是 total_fee）。',
  `price` double DEFAULT NULL COMMENT 'price 等于 total_fee（请求时使 用的是 total_fee）',
  `body` varchar(512) DEFAULT NULL COMMENT '该笔订单的备注、描述、明细等。 对应请求时的 body 参数，原样 通知回来。',
  `gmt_create` datetime DEFAULT NULL COMMENT '该笔交易创建的时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `gmt_payment` datetime DEFAULT NULL COMMENT '该笔交易的买家付款时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `is_total_fee_adjust` varchar(1) DEFAULT NULL COMMENT '该交易是否调整过价格',
  `use_coupon` varchar(1) DEFAULT NULL COMMENT '是否在交易过程中使用了红包',
  `discount` varchar(10) DEFAULT NULL COMMENT '支付宝系统会把 discount 的值 加到交易金额上，如果有折扣， 本参数为负数，单位为元',
  `refund_status` varchar(20) DEFAULT NULL COMMENT '取值范围请参见“11.4  退款状 态”',
  `gmt_refund` datetime DEFAULT NULL COMMENT '卖家退款的时间，退款通知时会 发送。 格式为 yyyy-MM-dd HH:mm:ss。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

##新增权限导入支付宝每日账单
insert  into `perm_functionInfo`(`id`,`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionpId`,`functionisMenu`,`functionVcode`,`functionParam`,`functionFaclass`,`isAjax`,`functionType`,`createdBy`,`createdTime`,`updatedBy`,`updatedTime`,`status`) values (506,'2012803','支付宝对账单上传','accountManager/zhifubaoBill',3,2,128,1,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,1);
insert  into `perm_functionInfo`(`id`,`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionpId`,`functionisMenu`,`functionVcode`,`functionParam`,`functionFaclass`,`isAjax`,`functionType`,`createdBy`,`createdTime`,`updatedBy`,`updatedTime`,`status`) values (507,'3050601','支付宝对账单上传权限','accountManager/exeZhifubaoCheckBill',1,3,506,0,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,1);

 