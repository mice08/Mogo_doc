/*新增保理子账号的菜单*/
USE mogoroomdb;
BEGIN;

DELETE FROM perm_functioninfo WHERE fname ='拓展经理添加信息采集备注' AND furl='loanMonthlyPayApply/saveCollectionBusiManagerRemark';
DELETE FROM perm_functioninfo WHERE fname ='信审添加信息采集备注' AND furl='loanMonthlyPayApply/saveCollectionCreditRemark';
DELETE FROM perm_functioninfo WHERE fname ='检查是否已经上传合同' AND furl='loanMonthlyPayApply/checkIsUploadContract';
DELETE FROM perm_functioninfo WHERE fname ='查看合同'  AND furl='loanMonthlyPayApply/turnToViewUploadContractPage';
DELETE FROM perm_functioninfo WHERE fname ='合同文件下载'  AND furl='loanMonthlyPayApply/contractFileDown';

COMMIT;