create table flat_room_user_relation (
	id int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	roomId int(11) NOT NULL COMMENT '房间ID',
	userId int(11) NOT NULL COMMENT 'userId',
	userSource int(4) NOT NULL COMMENT '用户来源,1:房东,2:员工',
	userType varchar(10) NOT NULL COMMENT '联系人类型(userType-key)',
	status int(4) NOT NULL DEFAULT 1 COMMENT '是否有效(0无效1有效)',
	createTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	createBy INT(11) NOT NULL COMMENT '创建人',
	updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	updateBy INT(11) NOT NULL COMMENT '修改人',
	doneCode INT(32) DEFAULT NULL COMMENT '操作流水号',
	PRIMARY KEY (id),
  	KEY IDX_ROOMID (roomId)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房间联系人关联表';

alter table user_landlord add phoneExt varchar(10) default '0' comment '分机号';
alter table user_employee add phoneExt varchar(10) default '0' comment '分机号';

insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-1','userType','1','1','房东','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-2','userType','2','2','保洁','1',NULL);

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002208','编辑房间工作人员','roomContacts/editRoomContacts','7','3','22','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002209','保存房间工作人员','roomContacts/saveRoomContacts','8','3','22','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');

insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-1' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t 