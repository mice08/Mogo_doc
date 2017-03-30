create table flat_room_user_relation (
	id int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	roomId int(11) NOT NULL COMMENT '房间ID',
	userId int(11) NOT NULL COMMENT 'userId',
	userSource int(4) NOT NULL COMMENT '用户来源,1:房东,2:员工,3:用户',
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

delete from comm_dictionary where groupName = 'userType';
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-0','userType','0','0','房东','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-1','userType','1','1','联系人','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-2','userType','2','2','保洁','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-3','userType','3','3','维修','1',NULL);

--insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-1' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t; 
insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-0' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t; 

update user_landlord set phoneExt = phoneNum where userType = 'C';


CREATE TABLE `user_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(50) NOT NULL COMMENT '登录名',
  `mobile` varchar(16) NOT NULL COMMENT '注册手机号',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别：用0(女)1(男)表示',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `career` varchar(250) DEFAULT NULL COMMENT '职业',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `constellation` varchar(20) DEFAULT NULL COMMENT '星座',
  `photo` varchar(128) DEFAULT NULL COMMENT '用户照片路径',
  `card_type` varchar(20) NOT NULL DEFAULT '0' COMMENT '证件类型',
  `card_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '证件号码',
  `nationality` int(11) NOT NULL DEFAULT '0' COMMENT '国籍',
  `email` varchar(50) DEFAULT NULL COMMENT '电邮',
  `addr` varchar(250) DEFAULT NULL COMMENT '地址',
  `edu` varchar(50) DEFAULT NULL COMMENT '教育',
  `create_ip` varchar(50) NOT NULL DEFAULT '0' COMMENT '创建IP',
  `emergency` varchar(50) DEFAULT NULL COMMENT '紧急联系人',
  `emerg_phone` varchar(16) DEFAULT NULL COMMENT '紧急联系电话',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_by` int(11) DEFAULT '0' COMMENT '修改人员',
  `done_code` int(32) NOT NULL DEFAULT '0' COMMENT '操作流水号',
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态: 0:不可用；1：可用',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  `regist_id` varchar(50) DEFAULT NULL COMMENT '推送标识ID',
  `login_device` varchar(250) DEFAULT NULL COMMENT '登录设备信息',
  `member_num` varchar(50) DEFAULT NULL COMMENT '会员编号(维金标识)',
  `acc_id` varchar(50) DEFAULT NULL COMMENT '帐号标识',
  `phoneExt` varchar(10) DEFAULT '0' COMMENT '分机号',
  `landlordId` int(11) DEFAULT '0' COMMENT '房东ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4000000 DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002102','房间联系人','roomContacts/findContactsRoomListByFeature','2','2','21','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
SELECT @maxid := MAX(id) FROM perm_functionInfo;
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002103','编辑房间工作人员','roomContacts/editRoomContacts','7','3',@maxid,'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002104','保存房间工作人员','roomContacts/saveRoomContacts','8','3',@maxid,'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002713','房东工作人员列表','userinfo/findUserInfoListByLandlordId','13','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002714','查询工作人员','userinfo/findUserInfoById','14','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002715','添加工作人员','userinfo/addUserInfo','15','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002716','修改工作人员','userinfo/editUserInfo','16','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002717','删除工作人员','userinfo/deleteUserInfo','17','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');