use mogoroomdb;
 INSERT INTO `comm_sysconfig` (
    keyName,
    val,
    groupName,
    NAME,
    remark,
    updateTime,
    updateByType,
    updateBy
  ) VALUES (
    'bs-order-query',
    'localhost:8080',
    'DOMAIN_CONFIG_QUERYHOST',
    'bs第三方支付订单查询host',
    'bs第三方支付订单查询host',
     NOW(),
     1,
     33
  )