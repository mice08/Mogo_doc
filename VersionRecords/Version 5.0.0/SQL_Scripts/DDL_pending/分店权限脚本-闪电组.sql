use mogoroomdb;
 
drop table if exists mesg_category_role;
 
/*==============================================================*/
/* Table: mesg_category_role                                    */
/*==============================================================*/
create table mesg_category_role
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    categoryId           int(11) comment '��Ϣ���id',
    roleId               int(11) comment '��ɫid',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ����ɫ��ϵ��';
 
 
drop table if exists mesg_category;
 
/*==============================================================*/
/* Table: mesg_category                                         */
/*==============================================================*/
create table mesg_category
(
    id                   int(11) not null auto_increment comment '��Ϣ����id',
    categoryName         varchar(50) not null comment '��Ϣ�����',
    categoryCode         varchar(50) comment '��Ϣ������',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ����';
 
 
drop table if exists mesg_category_templet;
 
/*==============================================================*/
/* Table: mesg_category_templet                                 */
/*==============================================================*/
create table mesg_category_templet
(
    id                   int(11) not null auto_increment comment '��Ϣ��� ģ���ϵ��id',
    categoryId           int(11) not null comment '��Ϣ���id',
    templetId            int(11) not null comment '��Ϣģ��id',
    status               int(1) not null comment '״̬',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ�����ģ�������';
 
 
drop table if exists mesg_record_org;
 
/*==============================================================*/
/* Table: mesg_record_org                                       */
/*==============================================================*/
create table mesg_record_org
(
    id                   int(11) not null auto_increment comment '��Ϣ�ֵ��ϵid',
    mesgRecordId         int(11) not null comment '��Ϣ��¼id',
    orgId                int(11) not null comment '��֯id',
    receiveBy            int(11) not null comment '������id',
    receiveByType        int(1) not null comment '����������',
    createTime           datetime not null comment '����ʱ��',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ��¼�ֵ��ϵ��';
 
 
drop table if exists mesg_user_category_filter;
 
/*==============================================================*/
/* Table:
mesg_user_category_filter                                         */
/*==============================================================*/
create table mesg_user_category_filter
(
    id                   int(11) not null auto_increment comment '�ֵ���Ϣ���ñ�id',
    userId               int(11) not null comment '����id',
    userType             int(1) not null comment '�û�����',
    orgId                int(11) not null comment '�ֵ�id',
    categoryId           int(11) not null comment '��Ϣ���id',
    status               int(1) not null comment '״̬',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û��ֵ���Ϣ���˱�';
 
 
drop table if exists perm_user_org_role;
 
/*==============================================================*/
/* Table: perm_user_org_role                                    */
/*==============================================================*/
create table perm_user_org_role
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    userId               int(11) not null comment '�û�Id',
    roleId               int(11) not null comment '��ɫId',
    orgId                int(11) not null comment '��֯Id',
    createTime           datetime not null comment '����ʱ��',
    createBy             int(11) not null comment '������',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û���֯��ɫ��ϵ��';
 
drop table if exists perm_landlord_menu;
 
/*==============================================================*/
/* Table: perm_landlord_menu                                    */
/*==============================================================*/
create table perm_landlord_menu
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    landlordId           int(11) not null comment '����id',
    roleId               int(11) not null comment '��ɫid',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�������Ի���ɫ��ϵ��';
 
 
drop table if exists perm_childacct_identitylog;
 
/*==============================================================*/
/* Table: perm_childacct_identitylog                            */
/*==============================================================*/
create table perm_childacct_identitylog
(
    id                   int(11) not null auto_increment comment '��½�����־ id',
    userId               int(11) not null comment '��½�˺�id',
    orgId                int(11) not null comment '��½�ķֵ�id',
    loginTime            datetime not null comment '��½ʱ��',
    remark               varchar(200) comment '��ע',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '���˺ŵ�½�����־';
 
ALTER TABLE perm_role ADD COLUMN intendOrg INT(2) NOT NULL DEFAULT 2 COMMENT '��ɫ����(0:�ܲ���ɫ 1:�콢���ɫ 2:�ֵ��ɫ )';
 
ALTER TABLE  perm_menu_group
   ADD COLUMN parentId INT(11) NULL  COMMENT '���ڵ�id',
   ADD COLUMN gcode VARCHAR(7) NULL  COMMENT '����',
   ADD COLUMN channel INT(2) NOT NULL  COMMENT 'Ƶ����Դ(�ο�groupName=channel)',
   ADD COLUMN glevel int(2) NULL COMMENT '�˵�����㼶';
   
   
drop table if exists perm_group_rel;
 
/*==============================================================*/
/* Table: perm_group_rel                                      */
/*==============================================================*/
create table perm_group_rel
(
    id                   int(11) not null auto_increment comment 'Ȩ�����ϵID',
    srcGroupId           int(11) not null comment 'ԴȨ����id',
    dstGroupId           int(11) not null comment 'Ŀ��Ȩ����id',
    relType              int(2) comment '��ϵ����(1:���� 2:����)',
    createBy             int(11) comment '������',
    createByType         int(2) comment '����������',
    createTime           datetime comment '����ʱ��',
    primary key (id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment 'Ȩ�����ϵ��';


ALTER TABLE perm_role ADD COLUMN `roleCode` varchar(10) DEFAULT NULL COMMENT '��ɫ����';

ALTER TABLE perm_role ADD COLUMN `roleScope` int(2) DEFAULT 1 COMMENT '��ɫӦ�÷�Χ(0:Ϊ�����û��ع��Ľ�ɫ 1:ȫ�ֹ����ɫ)';

ALTER TABLE mesg_category ADD COLUMN cateDesc VARCHAR(128) COMMENT '��Ϣ�������'; 
/*2016-07-19 ����*/
ALTER TABLE perm_role ADD COLUMN `quantity` int(11) DEFAULT null COMMENT '��ǰ��ɫ��ͬһ��֯�п��Է���������û�';
ALTER TABLE perm_role ADD COLUMN `isTop` int(1) DEFAULT 0 COMMENT '��ɫ�Ƿ��ö�(0:��  1����)';
ALTER TABLE perm_role modify column status int(1) NOT NULL comment '��ɫ״̬(1:��Ч  0:ɾ�� 2:����)';

/**2016-07-21 ����*/
ALTER TABLE perm_menu_group ADD COLUMN `remark` varchar(256) DEFAULT NULL COMMENT '����';
ALTER TABLE comm_business_record ADD COLUMN `operatorRoleId` int(11) DEFAULT NULL COMMENT '�����˽�ɫ';

/*��ɫ��ʷ��*/
CREATE TABLE `perm_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `roleId`  int(11) NOT NULL COMMENT '��ɫid',
  `roleName` varchar(20) DEFAULT NULL COMMENT '��ɫ����',
  `status` int(1) DEFAULT NULL COMMENT '��ɫ״̬(1:��Ч  0:ɾ�� 2:����)',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `createEmp` int(11) DEFAULT NULL COMMENT '������',
  `channel` tinyint(2) NULL COMMENT '��ɫ������ϵͳ���ο��ֵ��groupName=channel',
  `intendOrg` int(2) NULL DEFAULT '2' COMMENT '��ɫ����(0:�ܲ���ɫ 1:�콢���ɫ 2:�ֵ��ɫ )',
  `roleCode` varchar(10) DEFAULT NULL COMMENT '��ɫ����',
  `roleScope` int(2) DEFAULT '1' COMMENT '��ɫӦ�÷�Χ(0:Ϊ�����û��ع��Ľ�ɫ 1:ȫ�ֹ����ɫ)',
  `quantity` int(11) DEFAULT NULL COMMENT '��ǰ��ɫ��ͬһ��֯�п��Է���������û�',
  `isTop` int(1) DEFAULT '0' COMMENT '��ɫ�Ƿ��ö�(0:��  1����)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='��ɫ��ʷ��';

/*�˵��������ʷ��*/
CREATE TABLE `perm_menu_group_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `groupId` int(11) NOT NULL COMMENT '�˵������id',
  `menuGroupName` varchar(50) NOT NULL COMMENT '�˵���������',
  `grantorId` int(11) NULL COMMENT '�˵������Ӧ����Ȩ��ID',
  `grantorType` tinyint(1) NULL COMMENT '�˵������Ӧ����Ȩ������,����groupName=userType',
  `status` int(1) NULL COMMENT '�˵�����״̬(0����Ч 1����Ч)',
  `createTime` datetime NULL COMMENT '���鴴��ʱ��',
  `updateTime` datetime DEFAULT NULL COMMENT '�������ʱ��',
  `parentId` int(11) DEFAULT NULL COMMENT '���ڵ�id',
  `gcode` varchar(7) DEFAULT NULL COMMENT '����',
  `channel` int(2) NULL COMMENT 'Ƶ����Դ(�ο�groupName=channel)',
  `glevel` int(2) DEFAULT NULL COMMENT '�˵�����㼶',
  `remark` varchar(256) DEFAULT NULL COMMENT '����',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�˵��������ʷ��';

/*�˵���ʷ��*/
CREATE TABLE `perm_functioninfo_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `functionId` int(11) NOT NULL COMMENT '�ڵ�ID',
  `fcode` char(7) NULL COMMENT '��ʶ�����ɹ���   functionLevel + functionPid(����4λǰ�油0) + seq ��������λǰ�油0��',
  `fname` varchar(600) DEFAULT NULL COMMENT '����',
  `furl` varchar(765) DEFAULT NULL COMMENT '����url',
  `seq` int(11) NULL COMMENT '˳��� ͬһ��Pid ���������',
  `functionLevel` int(11) NULL COMMENT '���ṹ�ļ��� 0Ϊ�˵����루����ת���ӣ� 1Ϊ�����˵����루����ת���ӣ� 2Ϊ�����˵����루����ת���ӣ�3Ϊ����Ȩ�ޱ���',
  `functionpId` int(11) NULL COMMENT '���ڵ������ID',
  `functionisMenu` int(11) DEFAULT NULL COMMENT '�Ƿ�Ҫ�����ṹ�нڵ���ʾ',
  `functionVcode` varchar(60) DEFAULT NULL,
  `functionParam` varchar(765) DEFAULT NULL,
  `functionFaclass` varchar(60) DEFAULT NULL COMMENT '�ڵ���ʾ��Ӧ��css��class',
  `isAjax` tinyint(1) DEFAULT '1' COMMENT '�Ƿ���ajax����',
  `functionType` int(11) DEFAULT NULL COMMENT '���ͣ�0����̨Ȩ�� 1:osȨ��',
  `createdBy` int(11) DEFAULT NULL COMMENT '������',
  `createdTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatedBy` int(11) DEFAULT NULL COMMENT '������',
  `updatedTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `status` tinyint(1) DEFAULT '1' COMMENT '״̬�Ƿ����',
  `channel` int(2) DEFAULT '0' COMMENT '�˵�����ϵͳ������groupName=channel',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��ʱ���ܽڵ���ʷ��';

/*�˵������ϵ��ʷ�� */
CREATE TABLE `perm_menu_group_rel_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `menuId` int(11) NULL COMMENT '���ܲ˵�id',
  `menuGroupId` int(11) NULL COMMENT '�˵�����ID',
  `status` tinyint(1) NULL COMMENT '���ܲ˵�����״̬',
  `createTime` datetime DEFAULT NULL COMMENT '�˵����鴴��ʱ��',
  `updateTime` datetime DEFAULT NULL COMMENT '�˵��������ʱ��',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�˵������ϵ��ʷ��';

/*�˵��������ɫ��ϵ��ʷ��*/
CREATE TABLE `perm_menugroup_role_rel_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `roleId` int(11) NULL COMMENT '��Ӧ�Ľ�ɫ��id',
  `menuGroupId` int(11) NULL COMMENT '��Ӧ�Ĳ˵�id',
  `status` tinyint(1) NULL COMMENT '�˵������ɫ��ϵ״̬(0����Ч 1����Ч��',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updateTime` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='�˵��������ɫ��ϵ��ʷ��';

/*��ɫ�˵���ϵ��ʷ�� */
CREATE TABLE `perm_role_function_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `role_id` int(11) NULL,
  `function_id` int(11) NULL,
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��ɫ�˵���ϵ��ʷ��';

/*�û���֯��ɫ��ϵ��ʷ��*/
CREATE TABLE `perm_user_org_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `userId` int(11) NULL COMMENT '�û�Id',
  `roleId` int(11) NULL COMMENT '��ɫId',
  `orgId` int(11) NULL COMMENT '��֯Id',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `createBy` int(11) NULL COMMENT '������',
  `createByType` int(1) NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�û���֯��ɫ��ϵ��ʷ��';

/*�������Ի���ɫ��ϵ��ʷ��*/
CREATE TABLE `perm_landlord_menu_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `landlordId` int(11) NULL COMMENT '����id',
  `roleId` int(11) NULL COMMENT '��ɫid',
  `createBy` int(11) NULL COMMENT '������',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `createByType` int(1) NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�������Ի���ɫ��ϵ��ʷ��';

/*��Ϣ�����ʷ��*/
CREATE TABLE `mesg_category_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `categoryId` int(11) NOT NULL COMMENT '��Ϣ����id',
  `categoryName` varchar(50) NULL COMMENT '��Ϣ�����',
  `categoryCode` varchar(50) DEFAULT NULL COMMENT '��Ϣ������',
  `createBy` int(11) NULL COMMENT '������',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `createByType` int(1) NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
  `cateDesc` varchar(128) DEFAULT NULL COMMENT '��Ϣ�������',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ϣ�����ʷ��';

/*��Ϣ����ɫ��ϵ��ʷ��*/
CREATE TABLE `mesg_category_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `categoryId` int(11) DEFAULT NULL COMMENT '��Ϣ���id',
  `roleId` int(11) DEFAULT NULL COMMENT '��ɫid',
  `createBy` int(11) NOT NULL COMMENT '������',
  `createTime` datetime NOT NULL COMMENT '����ʱ��',
  `createByType` int(1) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ϣ����ɫ��ϵ��ʷ��';

/* ��Ϣģ����ʷ��  */
CREATE TABLE `mesg_templet_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `templetId` int(11) NULL COMMENT '��Ϣģ��id',
  `templetCode` varchar(50) NULL COMMENT '��Ϣcode������code��ѯģ������',
  `templetName` varchar(100) NULL COMMENT 'ģ������',
  `templetDesc` varchar(300) DEFAULT NULL COMMENT 'ģ������',
  `status` int(1) NULL COMMENT 'ģ��״̬��0���ã�1����',
  `createBy` int(11) NULL COMMENT 'ģ�崴����',
  `createTime` datetime DEFAULT NULL COMMENT 'ģ�崴��ʱ��',
  `createByType` int(2) NULL COMMENT 'ģ�崴�������ͣ��ο��ֵ��groupName=userType��',
  `updateBy` int(11) DEFAULT NULL COMMENT 'ģ���޸���',
  `updateTime` datetime DEFAULT NULL COMMENT 'ģ���޸�ʱ��',
  `updateByType` int(2) DEFAULT NULL COMMENT 'ģ���޸������ͣ��ο��ֵ��groupName=userType��',
  `valid` int(1) NULL COMMENT 'ɾ����־��0ɾ����1δɾ��',
  `businessType` int(2) DEFAULT NULL COMMENT 'ģ���ҵ������ 1:ԤԼ,2:Ԥ��,3ǩԼ,4:�ۺ�,5:�ʽ�,10:����',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ϣģ����ʷ��';

/*��Ϣ��ģ����ʷ��*/
CREATE TABLE `mesg_subtemplet_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `templetId` int(11) NULL COMMENT '��Ϣģ��id',
  `templetType` int(2) NULL COMMENT '���ͣ��ο��ֵ��groupName=templetType��1-���ţ�2-�ʼ���3-���ͣ�4-΢�ţ�',
  `templetTitle` varchar(100) NULL COMMENT 'ģ�����',
  `templetContent` varchar(3000) NULL COMMENT 'ģ������',
  `status` int(1) NULL COMMENT 'ģ��״̬��0���ã�1����',
  `valid` int(1) NULL COMMENT 'ɾ����־��0ɾ����1δɾ��',
  `outTempletId` varchar(64) DEFAULT NULL COMMENT '��������Ϣģ��id',
  `jumpCode` varchar(30) DEFAULT NULL COMMENT '��ת����',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '��Ӧcommon_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ϣ��ģ����ʷ��';

/*2016_07-25*/
ALTER TABLE PERM_FUNCTIONINFO DROP INDEX fcode; 
ALTER TABLE PERM_FUNCTIONINFO ADD UNIQUE INDEX(fcode,channel);

/**���ӷֵ걸ע�ֶγ���**/
ALTER TABLE orga_org MODIFY column remark varchar(512) DEFAULT NULL COMMENT '�رշֵ�ʱ��¼��ʷ״̬';


