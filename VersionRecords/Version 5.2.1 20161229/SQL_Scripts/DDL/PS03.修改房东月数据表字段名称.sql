/*修改字段名称*/

use mogoroomdb;

ALTER TABLE repo_landlord_monthdata CHANGE updateByType createByType  INT(2)NOT NULL COMMENT '创建人类型';