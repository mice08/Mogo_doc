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
    'all-sensitiveword-addr',
    'd:/SensitiveWord.txt',
    'DOMAIN_CONFIG_SENSITIVEWORD',
    '敏感词文件地址',
    '敏感词文件地址',
     NOW(),
     1,
     33
  )