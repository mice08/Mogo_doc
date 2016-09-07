/*自定义账单中的“租金”改成“房租（手动添加）*/

use mogoroomdb;

UPDATE acct.`acct_billdtltype` SET billDtlName='房租手动添加',displayName='房租手动添加',remark='房租手动添加' WHERE BillDtlType='100004';