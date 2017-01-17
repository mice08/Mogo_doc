/* Database name `mogoroomdb`, 更新煤气费账单类型为燃气费 */
USE mogoroomdb;

UPDATE acct.acct_billdtltype set billDtlName = '燃气费',displayName = '燃气费',remark = '燃气费' WHERE billDtlType = 100008


