create table flat_room_user_relation (
	id int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	roomId int(11) NOT NULL COMMENT '����ID',
	userId int(11) NOT NULL COMMENT 'userId',
	userSource int(4) NOT NULL COMMENT '�û���Դ,1:����,2:Ա��',
	userType varchar(10) NOT NULL COMMENT '��ϵ������(userType-key)',
	status int(4) NOT NULL DEFAULT 1 COMMENT '�Ƿ���Ч(0��Ч1��Ч)',
	createTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	createBy INT(11) NOT NULL COMMENT '������',
	updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
	updateBy INT(11) NOT NULL COMMENT '�޸���',
	doneCode INT(32) DEFAULT NULL COMMENT '������ˮ��',
	PRIMARY KEY (id),
  	KEY IDX_ROOMID (roomId)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������ϵ�˹�����';

alter table user_landlord add phoneExt varchar(10) default '0' comment '�ֻ���';
alter table user_employee add phoneExt varchar(10) default '0' comment '�ֻ���';

insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-1','userType','1','1','����','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-2','userType','2','2','����','1',NULL);

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002208','�༭���乤����Ա','roomContacts/editRoomContacts','7','3','22','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002209','���淿�乤����Ա','roomContacts/saveRoomContacts','8','3','22','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');

insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-1' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t 