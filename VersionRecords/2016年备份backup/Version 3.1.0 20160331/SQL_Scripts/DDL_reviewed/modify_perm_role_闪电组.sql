use mogoroomdb;

/*新增channel字段，标示所属的系统*/
ALTER TABLE perm_role ADD COLUMN channel TINYINT(2) NOT NULL COMMENT '角色所属的系统，参考字典表groupName=channel';

/*初始化现有的channel值，全是BS的,key值为2*/
UPDATE perm_role SET channel = 2 WHERE channel=0; 