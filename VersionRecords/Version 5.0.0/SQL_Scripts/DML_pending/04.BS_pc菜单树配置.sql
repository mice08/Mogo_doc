use mogoroomdb;

set autocommit = 0;

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '1000000', '房源', '', 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('2000000', '售后', '', 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);


INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('3000000', '管理', '', 5, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('7000000', '报表', '', 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('4000000', '销售', '', 2, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('6000000', '金融', '', 4, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 5);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('8000000', '我的', '', 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 5);

select @begindate:=NOW();
-- 房源

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '1000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='分散式房态图',furl='/mogoroom-partnerpc/rs/findRsInfo',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1100000', '分散式房态图', '/mogoroom-partnerpc/rs/findRsInfo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '1100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑房源',furl='/mogoroom-partnerpc/flats/editDisperseFlats',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1110000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1110000', '编辑房源', '/mogoroom-partnerpc/flats/editDisperseFlats', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1110000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑房间',furl='/mogoroom-partnerpc/flats/editDisperseRoom',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1120000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1120000', '编辑房间', '/mogoroom-partnerpc/flats/editDisperseRoom', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1120000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑整套房源',furl='/mogoroom-partnerpc/flats/editDisperseFlats',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1130000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1130000', '编辑整套房源', '/mogoroom-partnerpc/flats/editDisperseFlats', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1130000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='删除房源',furl='/mogoroom-partnerpc/flats/deleteRoomById',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1140000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1140000', '删除房源', '/mogoroom-partnerpc/flats/deleteRoomById', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1140000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加房间',furl='/mogoroom-partnerpc/flats/returnRoomPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1150000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1150000', '添加房间', '/mogoroom-partnerpc/flats/returnRoomPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1150000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='业主信息详情',furl='/mogoroom-partnerpc/host/flats/turnToEditProprietor',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1160000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1160000', '业主信息详情', '/mogoroom-partnerpc/host/flats/turnToEditProprietor', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1160000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加业主信息',furl='/mogoroom-partnerpc/host/flats/turnToaddProprietor',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1170000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1170000', '添加业主信息', '/mogoroom-partnerpc/host/flats/turnToaddProprietor', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1170000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改出租状态',furl='/mogoroom-partnerpc/flats/freeRentStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1180000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1180000', '修改出租状态', '/mogoroom-partnerpc/flats/freeRentStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1180000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='解除锁定',furl='/mogoroom-partnerpc/flats/landlordReleaseRoomAsyn',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1190000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1190000', '解除锁定', '/mogoroom-partnerpc/flats/landlordReleaseRoomAsyn', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1190000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='临时锁定',furl='/mogoroom-partnerpc/flats/landlordLockRoomNew',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='11A0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11A0000', '临时锁定', '/mogoroom-partnerpc/flats/landlordLockRoomNew', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11A0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='官网展示',furl='/mogoroom-partnerpc/flats/editRoomStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11B0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11B0000', '官网展示', '/mogoroom-partnerpc/flats/editRoomStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11B0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起在线签约',furl='/mogoroom-partnerpc/saleOrder/flats/signedByLandlord',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11C0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11C0000', '发起在线签约', '/mogoroom-partnerpc/saleOrder/flats/signedByLandlord', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11C0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看官网详情',furl='http://www.mogoroom.com/room/',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11D0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11D0000', '查看官网详情', 'http://www.mogoroom.com/room/', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11D0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='订单详情',furl='/mogoroom-partnerpc/order/flats/details',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11E0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11E0000', '订单详情', '/mogoroom-partnerpc/order/flats/details', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11E0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同预览',furl='/mogoroom-partnerpc/order/flats/contract',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11F0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11F0000', '合同预览', '/mogoroom-partnerpc/order/flats/contract', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11F0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单推送',furl='bill/flats/queryRenter',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11G0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11G0000', '账单推送', 'bill/flats/queryRenter', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11G0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改补录租约',furl='/mogoroom-partnerpc/flats/editAdditionalPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11I0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11I0000', '修改补录租约', '/mogoroom-partnerpc/flats/editAdditionalPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11I0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销补录租约',furl='flats/deleteAdditional',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11J0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11J0000', '撤销补录租约', 'flats/deleteAdditional', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11J0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起补录租约',furl='/mogoroom-partnerpc/flats/turnAdditionalPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11K0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11K0000', '发起补录租约', '/mogoroom-partnerpc/flats/turnAdditionalPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11K0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑备注',furl='/mogoroom-partnerpc/flats/saveSingleRoom',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='11L0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11L0000', '编辑备注', '/mogoroom-partnerpc/flats/saveSingleRoom', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11L0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='数据统计',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='11M0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11M0000', '数据统计', '', @seq, @level2+1, @parentid2, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11M0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看全部账单',furl='/mogoroom-partnerpc/account/billHome',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11N0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11N0000', '查看全部账单', '/mogoroom-partnerpc/account/billHome', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11N0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看未结订单详情',furl='/mogoroom-partnerpc/order/list',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='11O0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '11O0000', '查看未结订单详情', '/mogoroom-partnerpc/order/list', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '11O0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='集中式房态图',furl='mogoroom-partnerpc/rs/findRsInfo',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1200000', '集中式房态图', 'mogoroom-partnerpc/rs/findRsInfo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '1200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑房源',furl='/mogoroom-partnerpc/flats/editCenRoom',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1210000', '编辑房源', '/mogoroom-partnerpc/flats/editCenRoom', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1210000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='删除房源',furl='/mogoroom-partnerpc/flats/deleteRoomById',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1220000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1220000', '删除房源', '/mogoroom-partnerpc/flats/deleteRoomById', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1220000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='业主信息详情',furl='/mogoroom-partnerpc/host/flats/turnToEditProprietor',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1230000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1230000', '业主信息详情', '/mogoroom-partnerpc/host/flats/turnToEditProprietor', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1230000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加业主信息',furl='/mogoroom-partnerpc/host/flats/turnToaddProprietor',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1240000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1240000', '添加业主信息', '/mogoroom-partnerpc/host/flats/turnToaddProprietor', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1240000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改出租状态',furl='/mogoroom-partnerpc/flats/freeRentStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1250000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1250000', '修改出租状态', '/mogoroom-partnerpc/flats/freeRentStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1250000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='临时锁定',furl='/mogoroom-partnerpc/flats/landlordLockRoomNew',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1270000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1270000', '临时锁定', '/mogoroom-partnerpc/flats/landlordLockRoomNew', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1270000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='解除锁定',furl='/mogoroom-partnerpc/flats/landlordReleaseRoomAsyn',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='1280000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1280000', '解除锁定', '/mogoroom-partnerpc/flats/landlordReleaseRoomAsyn', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1280000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='官网展示',furl='/mogoroom-partnerpc/flats/editRoomStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1290000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1290000', '官网展示', '/mogoroom-partnerpc/flats/editRoomStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1290000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起在线签约',furl='/mogoroom-partnerpc/flats/freeRentStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12A0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12A0000', '发起在线签约', '/mogoroom-partnerpc/flats/freeRentStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12A0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看官网详情',furl='http://www.mogoroom.com/room/',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12B0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12B0000', '查看官网详情', 'http://www.mogoroom.com/room/', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12B0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='订单详情',furl='/mogoroom-partnerpc/order/flats/details',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12C0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12C0000', '订单详情', '/mogoroom-partnerpc/order/flats/details', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12C0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同预览',furl='/mogoroom-partnerpc/order/flats/contract',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12D0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12D0000', '合同预览', '/mogoroom-partnerpc/order/flats/contract', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12D0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单推送',furl='/mogoroom-partnerpc/bill/flats/queryRenter',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12E0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12E0000', '账单推送', '/mogoroom-partnerpc/bill/flats/queryRenter', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12E0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改补录租约',furl='/mogoroom-partnerpc/flats/editAdditionalPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12G0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12G0000', '修改补录租约', '/mogoroom-partnerpc/flats/editAdditionalPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12G0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销补录租约',furl='/mogoroom-partnerpc/flats/deleteAdditional',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12H0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12H0000', '撤销补录租约', '/mogoroom-partnerpc/flats/deleteAdditional', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12H0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起补录租约',furl='/mogoroom-partnerpc/flats/turnAdditionalPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12I0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12I0000', '发起补录租约', '/mogoroom-partnerpc/flats/turnAdditionalPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12I0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看预定单',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12J0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12J0000', '查看预定单', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12J0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑备注',furl='/mogoroom-partnerpc/flats/saveSingleRoom',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='12K0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12K0000', '编辑备注', '/mogoroom-partnerpc/flats/saveSingleRoom', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12K0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑公寓',furl='/mogoroom-partnerpc/flats/editConcentrationFlats',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12M0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12M0000', '编辑公寓', '/mogoroom-partnerpc/flats/editConcentrationFlats', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12M0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='数据统计',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='12N0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12N0000', '数据统计', '', @seq, @level2+1, @parentid2, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12N0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看全部订单',furl='/mogoroom-partnerpc/account/billHome',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12O0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12O0000', '查看全部订单', '/mogoroom-partnerpc/account/billHome', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12O0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看未结订单详情',furl='/mogoroom-partnerpc/order/list',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='12P0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '12P0000', '查看未结订单详情', '/mogoroom-partnerpc/order/list', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '12P0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加分散式公寓',furl='/mogoroom-partnerpc/flats/turnInitializeData',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1300000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1300000', '添加分散式公寓', '/mogoroom-partnerpc/flats/turnInitializeData', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1300000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加集中式公寓',furl='/mogoroom-partnerpc/flats/addNewBuilding',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1400000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1400000', '添加集中式公寓', '/mogoroom-partnerpc/flats/addNewBuilding', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1400000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='业主管理',furl='/mogoroom-partnerpc/host/turnToHostFlats',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1500000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1500000', '业主管理', '/mogoroom-partnerpc/host/turnToHostFlats', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1500000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '1500000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加业主列表页面',furl='/mogoroom-partnerpc/host/findHostFlatList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1510000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1510000', '添加业主列表页面', '/mogoroom-partnerpc/host/findHostFlatList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1510000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '1510000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加业主',furl='/mogoroom-partnerpc/host/turnToaddProprietor',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1510001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1510001', '添加业主', '/mogoroom-partnerpc/host/turnToaddProprietor', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1510001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看业主详情',furl='/mogoroom-partnerpc/host/turnToEditProprietor',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1520000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1520000', '查看业主详情', '/mogoroom-partnerpc/host/turnToEditProprietor', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1520000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '1520000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='保存业主修改',furl='/mogoroom-partnerpc/host/turnToEditProprietor',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1520001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1520001', '保存业主修改', '/mogoroom-partnerpc/host/turnToEditProprietor', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1520001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='业主账单',furl='/mogoroom-partnerpc/finance/ownerBillList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1600000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1600000', '业主账单', '/mogoroom-partnerpc/finance/ownerBillList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1600000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '1600000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已支付',furl='/mogoroom-partnerpc/host/editAcctPayStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1610000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1610000', '已支付', '/mogoroom-partnerpc/host/editAcctPayStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1610000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销',furl='/mogoroom-partnerpc/host/editAcctPayStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='1620000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1620000', '撤销', '/mogoroom-partnerpc/host/editAcctPayStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1620000' and channel=5);



-- 售后

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '2000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='报修',furl='/mogoroom-partnerpc/support/listRepair',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='2100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2100000', '报修', '/mogoroom-partnerpc/support/listRepair', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '2100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看报修列表',furl='/mogoroom-partnerpc/support/listRepair',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2120000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2120000', '查看报修列表', '/mogoroom-partnerpc/support/listRepair', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2120000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '2120000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看报修图片',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='2120001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2120001', '查看报修图片', '', @seq, @level3+1, @parentid3, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2120001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑备注',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2130000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2130000', '编辑备注', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2130000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认解决',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2140000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2140000', '确认解决', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2140000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='投诉',furl='/mogoroom-partnerpc/support/listComplain',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='2200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2200000', '投诉', '/mogoroom-partnerpc/support/listComplain', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '2200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看投诉列表',furl='/mogoroom-partnerpc/support/listComplain',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2210000', '查看投诉列表', '/mogoroom-partnerpc/support/listComplain', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2210000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '2210000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看投诉图片',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='2210001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2210001', '查看投诉图片', '', @seq, @level3+1, @parentid3, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2210001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑备注',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2230000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2230000', '编辑备注', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2230000' and channel=5);



-- 管理

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '3000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='分店设置',furl='/mogoroom-partnerpc/orgExtend/orgExtendList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3100000', '分店设置', '/mogoroom-partnerpc/orgExtend/orgExtendList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='新建分店',furl='/mogoroom-partnerpc/orgExtend/addOrgExtend',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3110000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3110000', '新建分店', '/mogoroom-partnerpc/orgExtend/addOrgExtend', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3110000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '3110000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账号设置',furl='/mogoroom-partnerpc/subAccount/subAccountList',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3110001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3110001', '账号设置', '/mogoroom-partnerpc/subAccount/subAccountList', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3110001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑信息',furl='/mogoroom-partnerpc/orgExtend/orgExtendById',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3120000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3120000', '编辑信息', '/mogoroom-partnerpc/orgExtend/orgExtendById', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3120000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='关闭分店',furl='/mogoroom-partnerpc/orgExtend/closeOrgExtend',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3130000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3130000', '关闭分店', '/mogoroom-partnerpc/orgExtend/closeOrgExtend', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3130000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看历史分店',furl='/mogoroom-partnerpc/orgExtend/orgExtendList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3140000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3140000', '查看历史分店', '/mogoroom-partnerpc/orgExtend/orgExtendList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3140000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='管理房源',furl='/mogoroom-partnerpc/orgExtend/orgFlatsList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3150000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3150000', '管理房源', '/mogoroom-partnerpc/orgExtend/orgFlatsList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3150000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='管理子账号',furl='/mogoroom-partnerpc/subAccount/subAccountList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3160000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3160000', '管理子账号', '/mogoroom-partnerpc/subAccount/subAccountList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3160000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='房源设置',furl='/mogoroom-partnerpc/orgExtend/orgFlatsList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3200000', '房源设置', '/mogoroom-partnerpc/orgExtend/orgFlatsList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='更改分店',furl='/mogoroom-partnerpc/orgExtend/batchChangeOrg',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3210000', '更改分店', '/mogoroom-partnerpc/orgExtend/batchChangeOrg', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3210000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='批量分配房源',furl='/mogoroom-partnerpc/orgExtend/toOrgFlatsTree',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3220000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3220000', '批量分配房源', '/mogoroom-partnerpc/orgExtend/toOrgFlatsTree', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3220000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='取消关联',furl='/mogoroom-partnerpc/orgExtend/batchChangeOrg',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3230000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3230000', '取消关联', '/mogoroom-partnerpc/orgExtend/batchChangeOrg', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3230000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='新建分店',furl='/mogoroom-partnerpc/orgExtend/saveOrgExtend',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3250000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3250000', '新建分店', '/mogoroom-partnerpc/orgExtend/saveOrgExtend', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3250000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='消息管理',furl='/mogoroom-partnerpc/category/categorySettingLis',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3300000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3300000', '消息管理', '/mogoroom-partnerpc/category/categorySettingLis', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3300000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账号设置',furl='/mogoroom-partnerpc/subAccount/subAccountList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3400000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3400000', '账号设置', '/mogoroom-partnerpc/subAccount/subAccountList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3400000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3400000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='新建子账号',furl='/mogoroom-partnerpc/subAccount/newSubAccount',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3410000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3410000', '新建子账号', '/mogoroom-partnerpc/subAccount/newSubAccount', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3410000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '3410000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='新建分店',furl='/mogoroom-partnerpc/subAccount/saveOrgExtend',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3410001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3410001', '新建分店', '/mogoroom-partnerpc/subAccount/saveOrgExtend', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3410001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看离职员工',furl='/mogoroom-partnerpc/subAccount/resignationList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3420000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3420000', '查看离职员工', '/mogoroom-partnerpc/subAccount/resignationList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3420000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='批量更改分店',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3430000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3430000', '批量更改分店', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3430000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='批量更改角色',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3440000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3440000', '批量更改角色', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3440000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='员工总览',furl='/mogoroom-partnerpc/subAccount/allAccountList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3450000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3450000', '员工总览', '/mogoroom-partnerpc/subAccount/allAccountList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3450000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '3450000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3450001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3450001', '导出', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3450001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看登录记录',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3450002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3450002', '查看登录记录', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3450002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账号列表',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460000', '账号列表', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '3460000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改信息',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460001', '修改信息', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='更改分店',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460002', '更改分店', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改角色',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460003' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460003', '修改角色', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460003' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看操作日志',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460004' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460004', '查看操作日志', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460004' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='移出',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460005' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460005', '移出', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460005' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='禁用',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460006' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460006', '禁用', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460006' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='启用',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460007' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460007', '启用', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460007' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='离职',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460008' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460008', '离职', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460008' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看登录记录',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3460009' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460009', '查看登录记录', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460009' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='操作分店长',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3470000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3470000', '操作分店长', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3470000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='角色设置',furl='/mogoroom-partnerpc/role/roleSetting',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3500000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3500000', '角色设置', '/mogoroom-partnerpc/role/roleSetting', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3500000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3500000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3510000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3510000', '编辑', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3510000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看权限',furl='/mogoroom-partnerpc/role/roleInfo',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3520000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3520000', '查看权限', '/mogoroom-partnerpc/role/roleInfo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3520000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看详细',furl='/mogoroom-partnerpc/role/roleInfo',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3530000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3530000', '查看详细', '/mogoroom-partnerpc/role/roleInfo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3530000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账号管理',furl='/mogoroom-partnerpc/subAccount/subAccountList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='3540000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3540000', '账号管理', '/mogoroom-partnerpc/subAccount/subAccountList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3540000' and channel=5);



-- 报表

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '7000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单列表',furl='/mogoroom-partnerpc/billreport/billListshow',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='7100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7100000', '账单列表', '/mogoroom-partnerpc/billreport/billListshow', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '7100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7130000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7130000', '导出', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7130000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7140000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7140000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7140000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7150000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7150000', '收款', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7150000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款列表',furl='/mogoroom-partnerpc/billreport/billverification',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='7200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7200000', '收款列表', '/mogoroom-partnerpc/billreport/billverification', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '7200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7210000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7210000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='核销',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7220000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7220000', '核销', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7220000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='批量核销',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7230000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7230000', '批量核销', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7230000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='取消核销',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7240000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7240000', '取消核销', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7240000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7250000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7250000', '导出', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7250000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账务汇总',furl='/mogoroom-partnerpc/billreport/billcountlist',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='7300000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7300000', '账务汇总', '/mogoroom-partnerpc/billreport/billcountlist', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7300000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '7300000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7310000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7310000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7310000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7320000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7320000', '导出', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7320000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='坏账列表',furl='/mogoroom-partnerpc/billreport/billbaddebts',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='7400000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7400000', '坏账列表', '/mogoroom-partnerpc/billreport/billbaddebts', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7400000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '7400000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7410000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7410000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7410000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租客补交',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7420000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7420000', '租客补交', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7420000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7430000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7430000', '导出', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7430000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租客列表',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='7500000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7500000', '租客列表', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7500000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '7500000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7510000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7510000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7510000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看详情',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7520000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7520000', '查看详情', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7520000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '7520000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同预览',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7520001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7520001', '合同预览', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7520001' and channel=5);



-- 销售

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '4000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='预约单',furl='/mogoroom-partnerpc/saleOrder/listReservationOrder',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4100000', '预约单', '/mogoroom-partnerpc/saleOrder/listReservationOrder', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='/mogoroom-partnerpc/saleOrder/listReservationOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4110000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4110000', '查询', '/mogoroom-partnerpc/saleOrder/listReservationOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4110000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已带看',furl='/mogoroom-partnerpc/saleOrder/listReservationOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4120000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4120000', '已带看', '/mogoroom-partnerpc/saleOrder/listReservationOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4120000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起签约',furl='/mogoroom-partnerpc/signOrder/signingOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4130000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4130000', '发起签约', '/mogoroom-partnerpc/signOrder/signingOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4130000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='预定单',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4200000', '预定单', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4210000', '查询', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4210000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='审核',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4220000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4220000', '审核', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4220000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4230000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4230000', '撤销', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4230000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改',furl='/mogoroom-partnerpc/saleOrder/listBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4240000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4240000', '修改', '/mogoroom-partnerpc/saleOrder/listBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4240000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起签约',furl='/mogoroom-partnerpc/signOrder/signingOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4250000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4250000', '发起签约', '/mogoroom-partnerpc/signOrder/signingOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4250000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='签约单',furl='/mogoroom-partnerpc/order/list',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4300000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4300000', '签约单', '/mogoroom-partnerpc/order/list', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4300000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4300000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账务信息',furl='/mogoroom-partnerpc/account/billHome',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4310000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310000', '账务信息', '/mogoroom-partnerpc/account/billHome', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4310000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认收款',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310001', '确认收款', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加收支',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310002', '添加收支', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账务结算',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310003' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310003', '账务结算', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310003' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加账单',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310004' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310004', '添加账单', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310004' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='费用类型设置',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310005' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310005', '费用类型设置', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310005' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单详情',furl='/mogoroom-partnerpc/account/findAcctBillById',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310006' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310006', '账单详情', '/mogoroom-partnerpc/account/findAcctBillById', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310006' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='最晚支付日',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310007' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310007', '最晚支付日', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310007' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单拆分',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310008' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310008', '账单拆分', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310008' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单优惠',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310009' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310009', '账单优惠', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310009' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单作废',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310010' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310010', '账单作废', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310010' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单保存',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4310011' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310011', '账单保存', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310011' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收支详情',furl='/mogoroom-partnerpc/imageUpload/getYunFile',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310012' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310012', '收支详情', '/mogoroom-partnerpc/imageUpload/getYunFile', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310012' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='保存收支',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4310013' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310013', '保存收支', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310013' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='作废收支',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310014' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310014', '作废收支', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310014' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退房操作',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4310015' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4310015', '退房操作', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4310015' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改租约',furl='/mogoroom-partnerpc/signOrder/getSigningOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4330000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4330000', '修改租约', '/mogoroom-partnerpc/signOrder/getSigningOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4330000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='审核租约',furl='/mogoroom-partnerpc/signOrder/getSigningOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4340000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4340000', '审核租约', '/mogoroom-partnerpc/signOrder/getSigningOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4340000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4340000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4340001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4340001', '修改', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4340001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='同意/不同意',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4340002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4340002', '同意/不同意', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4340002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销租约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4350000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4350000', '撤销租约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4350000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='电子租约详情',furl='/mogoroom-partnerpc/order/details',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4370000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4370000', '电子租约详情', '/mogoroom-partnerpc/order/details', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4370000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4370000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='编辑房源',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4370001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4370001', '编辑房源', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4370001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改租约',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4370002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4370002', '修改租约', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4370002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销租约',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4370003' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4370003', '撤销租约', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4370003' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='审核租约',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4370004' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4370004', '审核租约', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4370004' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同信息页面',furl='/mogoroom-partnerpc/order/flats/contract',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4390000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4390000', '合同信息页面', '/mogoroom-partnerpc/order/flats/contract', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4390000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4390000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='下载合同',furl='/mogoroom-partnerpc/order/downloadContract',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4390001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4390001', '下载合同', '/mogoroom-partnerpc/order/downloadContract', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4390001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='上传合同',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4390002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4390002', '上传合同', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4390002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加推送账单',furl='/mogoroom-partnerpc/bill/querySignedOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='43A0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '43A0000', '添加推送账单', '/mogoroom-partnerpc/bill/querySignedOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '43A0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='43B0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '43B0000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '43B0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='操作记录',furl='/mogoroom-partnerpc/order/changeslog',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='43C0000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '43C0000', '操作记录', '/mogoroom-partnerpc/order/changeslog', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '43C0000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已补待确认',furl='/mogoroom-partnerpc/flats/querySignedOrderConvertInfo',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4400000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4400000', '已补待确认', '/mogoroom-partnerpc/flats/querySignedOrderConvertInfo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4400000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4400000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加新租约',furl='/mogoroom-partnerpc/flats/queryConvertInfo',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4410000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4410000', '添加新租约', '/mogoroom-partnerpc/flats/queryConvertInfo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4410000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4410000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='保存',furl='/mogoroom-partnerpc/flats/newAdditionalContract',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4410002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4410002', '保存', '/mogoroom-partnerpc/flats/newAdditionalContract', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4410002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加',furl='/mogoroom-partnerpc/flats/turnAdditionalPage',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4410003' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4410003', '添加', '/mogoroom-partnerpc/flats/turnAdditionalPage', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4410003' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改租约',furl='/mogoroom-partnerpc/flats/editAdditionalPage',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4420000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4420000', '修改租约', '/mogoroom-partnerpc/flats/editAdditionalPage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4420000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4420000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='保存',furl='/mogoroom-partnerpc/flats/editAdditionalContract',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4420001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4420001', '保存', '/mogoroom-partnerpc/flats/editAdditionalContract', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4420001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='删除租约',furl='/mogoroom-partnerpc/flats/additionalIsCanDelete',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4430000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4430000', '删除租约', '/mogoroom-partnerpc/flats/additionalIsCanDelete', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4430000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='/mogoroom-partnerpc/flats/querySignedOrderConvertInfo',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4440000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4440000', '查询', '/mogoroom-partnerpc/flats/querySignedOrderConvertInfo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4440000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发送',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4450000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4450000', '发送', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4450000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='需退房单',furl='/mogoroom-partnerpc/saleOrder/listCheckoutRequest',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4500000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4500000', '需退房单', '/mogoroom-partnerpc/saleOrder/listCheckoutRequest', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4500000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4500000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退房',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4510000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4510000', '退房', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4510000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加账单',furl='/mogoroom-partnerpc/bill/pushedCustomBillList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4600000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4600000', '添加账单', '/mogoroom-partnerpc/bill/pushedCustomBillList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4600000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4600000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出查询结果',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4610000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4610000', '导出查询结果', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4610000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='新增账单',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4620000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4620000', '新增账单', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4620000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='费用类型设置',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4630000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4630000', '费用类型设置', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4630000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查询',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4660000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4660000', '查询', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4660000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改',furl='/mogoroom-partnerpc/account/findAcctBillById',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670000', '修改', '/mogoroom-partnerpc/account/findAcctBillById', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4670000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='最晚支付日',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670001' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670001', '最晚支付日', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670001' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单拆分',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670002' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670002', '账单拆分', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670002' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单优惠',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670003' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670003', '账单优惠', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670003' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单作废',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670004' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670004', '账单作废', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670004' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单保存',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4670005' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4670005', '账单保存', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4670005' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='费用类型设置保存',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4680000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4680000', '费用类型设置保存', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4680000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退款审批',furl='/mogoroom-partnerpc/finance/refundApprovalList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4700000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4700000', '退款审批', '/mogoroom-partnerpc/finance/refundApprovalList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4700000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4700000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='是否同意',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4710000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4710000', '是否同意', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4710000' and channel=5);



-- 金融

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '6000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金宝',furl='/mogoroom-partnerpc/finance/rentLoanBillList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='6100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '6100000', '租金宝', '/mogoroom-partnerpc/finance/rentLoanBillList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '6100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '6100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='申请租金宝',furl='finance/myLoanBill',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='6110000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '6110000', '申请租金宝', 'finance/myLoanBill', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '6110000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金宝保证金',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='6120000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '6120000', '租金宝保证金', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '6120000' and channel=5);



-- 我的

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '8000000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账户管理',furl='/mogoroom-partnerpc/finance/accountWaterList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='8100000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8100000', '账户管理', '/mogoroom-partnerpc/finance/accountWaterList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8100000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '8100000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出查询结果',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='8110000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8110000', '导出查询结果', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8110000' and channel=5);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='操作日志',furl='/mogoroom-partnerpc/orgExtend/operationLog',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='8200000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8200000', '操作日志', '/mogoroom-partnerpc/orgExtend/operationLog', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8200000' and channel=5);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '8200000' and channel=5;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='导出查询结果',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='8210000' and channel=5;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8210000', '导出查询结果', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 5
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8210000' and channel=5);




commit;