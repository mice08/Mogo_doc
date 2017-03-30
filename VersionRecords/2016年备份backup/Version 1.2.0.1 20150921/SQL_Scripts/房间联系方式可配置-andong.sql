create table flat_room_user_relation (
	id int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	roomId int(11) NOT NULL COMMENT '����ID',
	userId int(11) NOT NULL COMMENT 'userId',
	userSource int(4) NOT NULL COMMENT '�û���Դ,1:����,2:Ա��,3:�û�',
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

delete from comm_dictionary where groupName = 'userType';
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-0','userType','0','0','����','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-1','userType','1','1','��ϵ��','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-2','userType','2','2','����','1',NULL);
insert into comm_dictionary (code, groupName, sort, keyPro, value, status, fcode) values('userType-3','userType','3','3','ά��','1',NULL);

--insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-1' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t; 
insert into flat_room_user_relation(roomId, userId, userSource, userType, createBy, updateBy) select * from (select fr.id as roomId, ul.id as userId, 1 as userSource, 'userType-0' as userType, 1 as createBy, 1 as updateBy from flat_room fr join flat_flats ff on fr.flatsId = ff.id join user_landlord ul on ff.landlordId = ul.id) t; 

update user_landlord set phoneExt = phoneNum where userType = 'C';


CREATE TABLE `user_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '�û�ID',
  `user_name` varchar(50) NOT NULL COMMENT '��¼��',
  `mobile` varchar(16) NOT NULL COMMENT 'ע���ֻ���',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '�Ա���0(Ů)1(��)��ʾ',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '�ǳ�',
  `real_name` varchar(50) NOT NULL COMMENT '��ʵ����',
  `career` varchar(250) DEFAULT NULL COMMENT 'ְҵ',
  `birthday` datetime DEFAULT NULL COMMENT '����',
  `constellation` varchar(20) DEFAULT NULL COMMENT '����',
  `photo` varchar(128) DEFAULT NULL COMMENT '�û���Ƭ·��',
  `card_type` varchar(20) NOT NULL DEFAULT '0' COMMENT '֤������',
  `card_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '֤������',
  `nationality` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `email` varchar(50) DEFAULT NULL COMMENT '����',
  `addr` varchar(250) DEFAULT NULL COMMENT '��ַ',
  `edu` varchar(50) DEFAULT NULL COMMENT '����',
  `create_ip` varchar(50) NOT NULL DEFAULT '0' COMMENT '����IP',
  `emergency` varchar(50) DEFAULT NULL COMMENT '������ϵ��',
  `emerg_phone` varchar(16) DEFAULT NULL COMMENT '������ϵ�绰',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `create_by` int(11) DEFAULT '0' COMMENT '������Ա',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  `update_by` int(11) DEFAULT '0' COMMENT '�޸���Ա',
  `done_code` int(32) NOT NULL DEFAULT '0' COMMENT '������ˮ��',
  `status` tinyint(1) DEFAULT '1' COMMENT '�û�״̬: 0:�����ã�1������',
  `remark` varchar(250) DEFAULT NULL COMMENT '��ע',
  `regist_id` varchar(50) DEFAULT NULL COMMENT '���ͱ�ʶID',
  `login_device` varchar(250) DEFAULT NULL COMMENT '��¼�豸��Ϣ',
  `member_num` varchar(50) DEFAULT NULL COMMENT '��Ա���(ά���ʶ)',
  `acc_id` varchar(50) DEFAULT NULL COMMENT '�ʺű�ʶ',
  `phoneExt` varchar(10) DEFAULT '0' COMMENT '�ֻ���',
  `landlordId` int(11) DEFAULT '0' COMMENT '����ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4000000 DEFAULT CHARSET=utf8 COMMENT='�û���';

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002102','������ϵ��','roomContacts/findContactsRoomListByFeature','2','2','21','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
SELECT @maxid := MAX(id) FROM perm_functionInfo;
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002103','�༭���乤����Ա','roomContacts/editRoomContacts','7','3',@maxid,'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('2002104','���淿�乤����Ա','roomContacts/saveRoomContacts','8','3',@maxid,'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002713','����������Ա�б�','userinfo/findUserInfoListByLandlordId','13','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002714','��ѯ������Ա','userinfo/findUserInfoById','14','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002715','��ӹ�����Ա','userinfo/addUserInfo','15','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002716','�޸Ĺ�����Ա','userinfo/editUserInfo','16','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('3002717','ɾ��������Ա','userinfo/deleteUserInfo','17','3','27','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');