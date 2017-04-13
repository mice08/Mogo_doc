/* Database name `mogoroomdb`，BS消息模板管理下子菜单调整， 回滚SQL */

use mogoroomdb;

/* 租客消息二级菜单 */
update `perm_functioninfo` set `fname`='消息修改记录', `furl`='mesgTemp/editTempLog' where `fname`='租客消息修改记录' and `furl`='mesgTemp/editRenterTempLog';

update `perm_functioninfo` set `fname`='消息发送记录', `furl`='mesgTemp/sendRecord' where `fname`='租客消息发送记录' and `furl`='esgTemp/sendRenterRecord';

update `perm_functioninfo` set `fname`='产品消息模板', `furl`='mesgTemp/mesgTempList' where `fname`='租客产品消息模板' and `furl`='mesgTemp/renterMesgTempList';

/* 租客消息三级菜单 */
update `perm_functioninfo` set `fname`='启用/禁用消息子模板', `furl`='mesgTemp/enableOrDisableSubTemp' where `fname`='启用/禁用租客消息子模板' and `furl`='mesgTemp/enableOrDisableRenterSubTemp';

update `perm_functioninfo` set `fname`='启用禁用消息主模板', `furl`='mesgTemp/enableOrDisableTemp' where `fname`='启用禁用租客消息主模板' and `furl`='mesgTemp/enableOrDisableRenterTemp';

update `perm_functioninfo` set `fname`='删除消息模板', `furl`='mesgTemp/delTemp' where `fname`='删除租客消息模板' and `furl`='mesgTemp/delRenterTemp';

update `perm_functioninfo` set `fname`='添加消息模板', `furl`='mesgTemp/addTemp' where `fname`='添加租客消息模板' and `furl`='mesgTemp/addRenterTemp';

update `perm_functioninfo` set `fname`='添加/编辑模板-保存消息模板', `furl`='mesgTemp/saveTemp' where `fname`='添加/编辑模板-保存租客消息模板' and `furl`='mesgTemp/saveRenterTemp';

update `perm_functioninfo` set `fname`='添加/编辑模板-验证模板是否已存在', `furl`='mesgTemp/checkMesgTempTitle' where `fname`='添加/编辑模板-验证租客模板是否已存在' and `furl`='mesgTemp/checkRenterMesgTempTitle';

update `perm_functioninfo` set `fname`='编辑消息模板', `furl`='mesgTemp/editTemp' where `fname`='编辑租客消息模板' and `furl`='mesgTemp/editRenterTemp';


/* 房东消息菜单 */
delete from `perm_functioninfo` where `fname`='房东消息修改记录' and `furl`='mesgTemp/editLandlordTempLog';

delete from `perm_functioninfo` where `fname`='房东消息发送记录' and `furl`='mesgTemp/sendLandlordRecord';

delete from `perm_functioninfo` where `fname`='房东产品消息模板' and `furl`='mesgTemp/landlordMesgTempList';

delete from `perm_functioninfo` where `fname`='启用/禁用房东消息子模板' and `furl`='mesgTemp/enableOrDisableLandlordSubTemp';

delete from `perm_functioninfo` where `fname`='启用禁用房东消息主模板' and `furl`='mesgTemp/enableOrDisableLandlordTemp';

delete from `perm_functioninfo` where `fname`='删除房东消息模板' and `furl`='mesgTemp/delLandlordTemp';

delete from `perm_functioninfo` where `fname`='添加房东消息模板' and `furl`='mesgTemp/addLandlordTemp';

delete from `perm_functioninfo` where `fname`='添加/编辑模板-保存房东消息模板' and `furl`='mesgTemp/saveLandlordTemp';

delete from `perm_functioninfo` where `fname`='添加/编辑模板-验证房东模板是否已存在' and `furl`='mesgTemp/checkMesgLandlordTempTitle';

delete from `perm_functioninfo` where `fname`='编辑房东消息模板' and `furl`='mesgTemp/editLandlordTemp';
