use mogoroomdb;

/*增加员工角色关系表主键 */
ALTER TABLE `perm_employee_role`
ADD COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '员工角色关系主键' FIRST ,ADD PRIMARY KEY (`id`);

/*增加角色功能关系表主键 */
ALTER TABLE `perm_role_function`
ADD COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '角色功能关系主键' FIRST ,ADD PRIMARY KEY (`id`);

/*增加个人版APP房间管理人字段 */
ALTER TABLE `rsci_rschartinfo_base` 
ADD COLUMN `orgClerk`  int(11) NULL COMMENT '房间管理人' AFTER `communityCreateTime`;