/*删除月付活动新增的菜单*/
USE mogoroomdb;
BEGIN;

DELETE FROM perm_functioninfo WHERE fname='月付活动列表' AND furl='loanActivity/monthlyPayActivityList';
DELETE FROM perm_functioninfo WHERE fname='查询活动列表' AND furl='loanActivity/monthlyPayActivityList';
DELETE FROM perm_functioninfo WHERE fname='操作月付活动状态' AND furl='loanActivity/operateLoanMpayActivityStatus';
DELETE FROM perm_functioninfo WHERE fname='查询操作日志' AND furl='loanActivity/viewLoanActivityLogs';
DELETE FROM perm_functioninfo WHERE fname='打开新增月付活动页面' AND furl='loanActivity/turnToAddMonthlyPayActivity';
DELETE FROM perm_functioninfo WHERE fname='新增和修改活动时校验' AND furl='loanActivity/checkMonthlyPayActivity';
DELETE FROM perm_functioninfo WHERE fname='新增月付活动' AND furl='loanActivity/addMonthlyPayActivity';
DELETE FROM perm_functioninfo WHERE fname='打开编辑月付活动页面' AND furl='loanActivity/turnToEditMonthlyPayActivity';
DELETE FROM perm_functioninfo WHERE fname='编辑月付活动' AND furl='loanActivity/editMonthlyPayActivity';
DELETE FROM perm_functioninfo WHERE fname='查询活动数据' AND furl='loanActivity/findLoanActivityDataList';
DELETE FROM perm_functioninfo WHERE fname='导出活动数据' AND furl='loanActivity/exportLoanActivityDataList';

DELETE FROM perm_functioninfo WHERE fname='活动管理' AND furl='';



-- SELECT @newmenuid:=id FROM perm_functioninfo  WHERE fname='金融管理' AND functionpId =(SELECT id FROM perm_functioninfo  WHERE fname='财务管理');
-- DELETE FROM perm_functioninfo WHERE id =@newmenuid;

COMMIT;


SELECT * FROM perm_functioninfo WHERE id >=5256