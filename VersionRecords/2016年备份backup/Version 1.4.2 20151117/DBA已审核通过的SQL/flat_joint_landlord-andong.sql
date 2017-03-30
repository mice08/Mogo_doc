drop table flat_joint_landlord;
create table flat_joint_landlord(
	id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
        listType tinyint NOT NULL COMMENT '名单类型(1-空置房源数量排名)',
	landlordId int(11) NOT NULL default 0 COMMENT '职业房东ID',
	userId int(11) NOT NULL default 0 COMMENT '管家ID(userinfo表ID)',
	status int(2)  NOT NULL COMMENT '状态 1-有效 0-无效',
  	createTime datetime NOT NULL default current_timestamp COMMENT '创建时间',
  	createBy int(11) NOT NULL COMMENT '创建人',
  	createByType varchar(50) NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
  	updateTime datetime NULL default current_timestamp on update current_timestamp COMMENT '修改时间',
  	updateBy int(11) NULL COMMENT '修改人',
  	updateByType varchar(50) NULL COMMENT '修改人类型(参考字典表groupName=userType)',
  	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='58赶集房东名单表';
