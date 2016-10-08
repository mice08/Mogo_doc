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
    'tasktracker-withdraw-switch',
    'false',
    'DOMAIN_CONFIG_WITHDRAW',
    '出款渠道开关',
    'true表示使用网商银行出款,false则关闭',
     NOW(),
     1,
     33
  )