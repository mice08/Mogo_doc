/* Database name `mogoroomdb`，运营消息管理-菜单及权限初始化, 回滚SQL */

use mogoroomdb;

delete from `perm_functioninfo` where `fname`='运营消息管理' and `furl`='msg/findOperMesg';

delete from `perm_functioninfo` where `fname`='审核消息' and `furl`='msg/operOperMesgWithAudit';

delete from `perm_functioninfo` where `fname`='取消消息' and `furl`='msg/operOperMesgWithCancel';

delete from `perm_functioninfo` where `fname`='删除消息' and `furl`='msg/operOperMesgWithDel';

delete from `perm_functioninfo` where `fname`='导出消息' and `furl`='msg/exportOperMesg';

delete from `perm_functioninfo` where `fname`='查看消息详情' and `furl`='msg/viewOperMesg';

delete from `perm_functioninfo` where `fname`='查看用户明细' and `furl`='msg/userReadDetailList';

delete from `perm_functioninfo` where `fname`='导出用户明细' and `furl`='msg/exportUserReadDetail';

delete from `perm_functioninfo` where `fname`='查看操作日志' and `furl`='msg/operateMesgUpdateLog';

delete from `perm_functioninfo` where `fname`='新建消息' and `furl`='msg/addOperMesgInit';

delete from `perm_functioninfo` where `fname`='保存新建消息' and `furl`='msg/addOperMesg';

delete from `perm_functioninfo` where `fname`='编辑消息' and `furl`='msg/editOperMesgInit';

delete from `perm_functioninfo` where `fname`='保存编辑消息' and `furl`='msg/editOperMesg';

delete from `perm_functioninfo` where `fname`='导入推送人员' and `furl`='msg/importPushUsers';

delete from `perm_functioninfo` where `fname`='确认导入推送人员' and `furl`='msg/confirmImport';

delete from `perm_functioninfo` where `fname`='发送预览' and `furl`='msg/preSend';

