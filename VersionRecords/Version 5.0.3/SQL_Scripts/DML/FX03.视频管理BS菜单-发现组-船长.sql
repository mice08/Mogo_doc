
/*视频管理初始化脚本  */
use mogoroomdb;
BEGIN;

/* 初始化视频菜单根目录 */
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('500000001', '根', NULL, NULL, '0', NULL, NOW(), NULL, NOW(), '1', '1', '0', '5', '1');

/* 根据节点名称读取父节点id和level  */
select @rootId:=id,@level1:=`level` from coms_menu where name='根' and channel = '5';

/* 创建一级节点 */
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000000, '房源', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000001, '房源管理', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000002, '销售', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000003, '售后', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000004, '金融', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000005, '报表', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (501000006, '管理', NULL, NULL, '1', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

/* 创建二级节点*/
select @rootId:=id,@level1:=`level` from coms_menu where name='房源' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000000, '房源_分散式公寓', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
select @rootId:=id,@level1:=`level` from coms_menu where name='房源_分散式公寓' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('503000001', '房源_分散式公寓_添加公寓', NULL, NULL, '3', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000001, '房源_业主管理', NULL, NULL,   '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000002, '房源_业主账单', NULL, NULL,   '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

select @rootId:=id,@level1:=`level` from coms_menu where name='房源管理' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000003, '房源管理_集中式公寓', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
select @rootId:=id,@level1:=`level` from coms_menu where name='房源管理_集中式公寓' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('503000002', '房源管理_集中式公寓_添加公寓', NULL, NULL, '3', '2000031',  NOW(), NULL,  NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='销售' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000004, '销售_预约单', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000005, '销售_预定单', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000006, '销售_签约单', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000007, '销售_已补待确认', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000008, '销售_需退房单', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000009, '销售_添加账单', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000010, '销售_退款审批', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='售后' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000011, '售后_报修', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000012, '售后_投诉', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');

select @rootId:=id,@level1:=`level` from coms_menu where name='金融' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000013, '金融_租金宝', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='报表' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000014, '报表_应收报表', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000015, '报表_实收报表', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000016, '报表_账务汇总', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000017, '报表_坏账列表', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000018, '报表_租客列表', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


select @rootId:=id,@level1:=`level` from coms_menu where name='管理' and channel = '5';
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000019, '管理_分店设置', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000020, '管理_房源分配', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000021, '管理_消息管理', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000022, '管理_账号设置', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES (502000023, '管理_角色分配', NULL, NULL, '2', '2000031', NOW(), NULL, NOW(), '1', NULL, @rootId, '5', '1');


COMMIT;