
/*��Ƶ�����ʼ���ű�  */
use mogoroomdb;
BEGIN;

/* ��ʼ����Ƶ�˵���Ŀ¼ */
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('500000001', '��', NULL, NULL, '0', NULL, NOW(), NULL, NOW(), '1', '1', '0', '5', '1');

/* ���ݽڵ����ƶ�ȡ���ڵ�id��level  */
select @rootId:=id,@level1:=`level` from coms_menu where name='��' and channel = '5';

/* ����һ���ڵ� */
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000000, '��Դ', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000001, '��Դ����', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000002, '����', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000003, '�ۺ�', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000004, '����', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000005, '����', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000006, '����', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

/* ���������ڵ�*/
select @rootId:=id,@level1:=`level` from coms_menu where name='��Դ' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000000, '��Դ_��ɢʽ��Ԣ', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
select @rootId:=id,@level1:=`level` from coms_menu where name='��Դ_��ɢʽ��Ԣ' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('503000001', '��Դ_��ɢʽ��Ԣ_��ӹ�Ԣ', NULL, NULL, '3', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000001, '��Դ_ҵ������', NULL, NULL,   '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000002, '��Դ_ҵ���˵�', NULL, NULL,   '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

select @rootId:=id,@level1:=`level` from coms_menu where name='��Դ����' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000003, '��Դ����_����ʽ��Ԣ', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
select @rootId:=id,@level1:=`level` from coms_menu where name='��Դ����_����ʽ��Ԣ' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('503000002', '��Դ����_����ʽ��Ԣ_��ӹ�Ԣ', NULL, NULL, '3', '2000031',  NOW(), NULL,  NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='����' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000004, '����_ԤԼ��', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000005, '����_Ԥ����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000006, '����_ǩԼ��', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000007, '����_�Ѳ���ȷ��', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000008, '����_���˷���', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000009, '����_����˵�', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000010, '����_�˿�����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='�ۺ�' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000011, '�ۺ�_����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000012, '�ۺ�_Ͷ��', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

select @rootId:=id,@level1:=`level` from coms_menu where name='����' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000013, '����_���', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='����' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000014, '����_Ӧ�ձ���', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000015, '����_ʵ�ձ���', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000016, '����_�������', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000017, '����_�����б�', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000018, '����_����б�', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='����' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000019, '����_�ֵ�����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000020, '����_��Դ����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000021, '����_��Ϣ����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000022, '����_�˺�����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000023, '����_��ɫ����', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


COMMIT;