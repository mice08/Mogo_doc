/*跟换BS保证金管理菜单表*/

use mogoroomdb;

update perm_functioninfo set  furl='loanManage/queryDepositManage' where  furl='loanManage/depositManageList' ;

update perm_functioninfo set  furl='loanManageExport/queryDepositManageExport' where  furl='loanManageExport/depositManageListExport' ;