use mogoroomdb;


ALTER TABLE perm_role_function ADD `remark` VARCHAR (512) DEFAULT NULL COMMENT '备注',
 ADD `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 ADD `createBy` INT (11) DEFAULT NULL COMMENT '创建人',
 ADD `createByType` TINYINT (1) DEFAULT NULL COMMENT '创建人类型',
 ADD `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
 ADD `updateBy` INT (11) DEFAULT NULL COMMENT '更新人id',
 ADD `updateByType` TINYINT (1) DEFAULT NULL COMMENT '更新人类型';

ALTER TABLE perm_employee_role ADD `remark` VARCHAR (512) DEFAULT NULL COMMENT '备注',
 ADD `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 ADD `createBy` INT (11) DEFAULT NULL COMMENT '创建人',
 ADD `createByType` TINYINT (1) DEFAULT NULL COMMENT '创建人类型',
 ADD `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
 ADD `updateBy` INT (11) DEFAULT NULL COMMENT '更新人id',
 ADD `updateByType` TINYINT (1) DEFAULT NULL COMMENT '更新人类型',
 ADD `valid` TINYINT (1) DEFAULT '1' COMMENT '该数据是否有效(1:有效,0:无效)';


alter TABLE perm_employee_role drop PRIMARY KEY, add INDEX (role_id,employee_id);