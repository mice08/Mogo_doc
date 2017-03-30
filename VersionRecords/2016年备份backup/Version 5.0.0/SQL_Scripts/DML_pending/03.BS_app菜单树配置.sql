use mogoroomdb;

set autocommit = 0;

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('1000000', '欠款', '', 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('2000000', '待付', '/mogoroom-partner/finance/ownerBillStatistics', 2, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('3000000', '房源', '', 3, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('4000000', '销售', '', 4, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('5000000', '财务', '', 5, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('6000000', '待办', '', 6, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('7000000', '业主', '', 7, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('8000000', '租客', '', 8, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('9000000', '售后', '', 9, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('A000000', '首页房态图展示', '', 10, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('E000000', '搜索', '', 20, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('F000000', '我', '', 30, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('G000000', '快捷添加入口', '', 40, 0, 0, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 4);

select @begindate:=NOW();
-- 欠款

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '1000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金列表',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1100000', '租金列表', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1100000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金确认收款',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1200000', '租金确认收款', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1200000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='水电煤列表',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1300000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1300000', '水电煤列表', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1300000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='水电煤确认收款',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='1400000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '1400000', '水电煤确认收款', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '1400000' and channel=4);



-- 待付

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '2000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='应付实付查询',furl='/mogoroom-partner/finance/ownerBillList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2100000', '应付实付查询', '/mogoroom-partner/finance/ownerBillList', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2100000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认付款/支付房租',furl='/mogoroom-partner/owner/editAcctPayStatus',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='2200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '2200000', '确认付款/支付房租', '/mogoroom-partner/owner/editAcctPayStatus', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '2200000' and channel=4);



-- 房源

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '3000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='分散式房源展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3300000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3300000', '分散式房源展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3300000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3300000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='锁定',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3310000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3310000', '锁定', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3310000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='出租状态',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3320000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3320000', '出租状态', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3320000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='房源信息',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3330000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3330000', '房源信息', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3330000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='备注',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3340000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3340000', '备注', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3340000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起签约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3360000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3360000', '发起签约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3360000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='上传图片',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3380000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3380000', '上传图片', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3380000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='补录租约信息',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3390000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3390000', '补录租约信息', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3390000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='价格设置',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='33B0000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '33B0000', '价格设置', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '33B0000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看预定单',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='33C0000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '33C0000', '查看预定单', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '33C0000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='集中式房源展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3400000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3400000', '集中式房源展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3400000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '3400000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='锁定',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3410000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3410000', '锁定', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3410000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='出租状态',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3420000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3420000', '出租状态', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3420000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='房源信息',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3430000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3430000', '房源信息', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3430000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='备注',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3440000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3440000', '备注', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3440000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发起签约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='3460000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3460000', '发起签约', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3460000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='上传图片',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3480000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3480000', '上传图片', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3480000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='补录租约信息',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='3490000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '3490000', '补录租约信息', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '3490000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='价格设置',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='34B0000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '34B0000', '价格设置', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '34B0000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看预定单',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='34C0000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '34C0000', '查看预定单', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '34C0000' and channel=4);



-- 销售

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '4000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='签约列表',furl='/mogoroom-partner/order/findSignedOrderList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4100000', '签约列表', '/mogoroom-partner/order/findSignedOrderList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4100000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4100000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='审核租约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4110000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4110000', '审核租约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4110000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改租约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4120000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4120000', '修改租约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4120000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销租约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4130000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4130000', '撤销租约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4130000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='是否同意',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4140000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4140000', '是否同意', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4140000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='最近一个月签约单',furl='/mogoroom-partner/order/lastMonthSignedOrder',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4200000', '最近一个月签约单', '/mogoroom-partner/order/lastMonthSignedOrder', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4200000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='预约列表',furl='mogoroom-partner/order/findReservationOrderList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4700000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4700000', '预约列表', 'mogoroom-partner/order/findReservationOrderList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4700000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4700000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已带看',furl='mogoroom-partner/order/editReservationOrderVisitedStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4710000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4710000', '已带看', 'mogoroom-partner/order/editReservationOrderVisitedStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4710000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='直接签约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4720000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4720000', '直接签约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4720000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='预定列表',furl='/mogoroom-partner/order/findBookOrdersList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4800000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4800000', '预定列表', '/mogoroom-partner/order/findBookOrdersList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4800000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4800000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改',furl='mogoroom-partner/landlord/editRoomDetail',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4810000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4810000', '修改', 'mogoroom-partner/landlord/editRoomDetail', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4810000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='撤销预定',furl='mogoroom-partner/landlord/revocationOrder.shtml',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4820000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4820000', '撤销预定', 'mogoroom-partner/landlord/revocationOrder.shtml', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4820000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='不同意预定',furl='/mogoroom-partner/order/refuseBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4830000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4830000', '不同意预定', '/mogoroom-partner/order/refuseBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4830000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='同意预定',furl='/mogoroom-partner/order/allowBookOrder',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4840000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4840000', '同意预定', '/mogoroom-partner/order/allowBookOrder', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4840000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='审核',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4850000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4850000', '审核', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4850000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='直接签约',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4860000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4860000', '直接签约', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4860000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租约查阅',furl='/mogoroom-partner/orderAndBill/details',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4900000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4900000', '租约查阅', '/mogoroom-partner/orderAndBill/details', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4900000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4900000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='信息',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4910000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4910000', '信息', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4910000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4910000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同预览',furl='/mogoroom-partner/order/contractPreview',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4910001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4910001', '合同预览', '/mogoroom-partner/order/contractPreview', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4910001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4920000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920000', '账单', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4920000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认收款',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920001', '确认收款', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单优惠',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920002' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920002', '账单优惠', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920002' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单拆分',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920003' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920003', '账单拆分', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920003' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单作废',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920004' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920004', '账单作废', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920004' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单详情',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4920005' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920005', '账单详情', '', @seq, @level3+1, @parentid3, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920005' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='最晚支付日',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920006' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920006', '最晚支付日', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920006' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账务结算',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920007' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920007', '账务结算', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920007' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加账单',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920008' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920008', '添加账单', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920008' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单保存',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4920009' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920009', '账单保存', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920009' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退房操作',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4920010' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4920010', '退房操作', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4920010' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4930000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4930000', '收款', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4930000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4930000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加收款',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4930001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4930001', '添加收款', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4930001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款详情',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='4930002' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4930002', '收款详情', '', @seq, @level3+1, @parentid3, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4930002' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款保存',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='4930003' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4930003', '收款保存', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4930003' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='收款作废',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4930004' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4930004', '收款作废', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4930004' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='房源编辑',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4940000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4940000', '房源编辑', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4940000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='分散式房源展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4A00000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4A00000', '分散式房源展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4A00000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='集中式房源展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='4B00000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4B00000', '集中式房源展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4B00000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退房',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4C00000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4C00000', '退房', '', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4C00000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '4C00000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退房处理',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4C10000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4C10000', '退房处理', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4C10000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = '4C10000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='结账退房',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='4C10001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '4C10001', '结账退房', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '4C10001' and channel=4);



-- 财务

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '5000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租客账单',furl='/mogoroom-partner/finance/renterBillList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5400000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5400000', '租客账单', '/mogoroom-partner/finance/renterBillList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5400000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '5400000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认收款',furl='/mogoroom-partner/finance/renterBillList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='5410000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5410000', '确认收款', '/mogoroom-partner/finance/renterBillList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5410000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='应付实付',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5500000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5500000', '应付实付', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5500000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '5500000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='应付实付列表',furl='/mogoroom-partner/finance/ownerBillStatistics',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='5510000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5510000', '应付实付列表', '/mogoroom-partner/finance/ownerBillStatistics', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5510000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认付款/支付房租',furl='/mogoroom-partner/owner/editAcctPayStatus',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='5520000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5520000', '确认付款/支付房租', '/mogoroom-partner/owner/editAcctPayStatus', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5520000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金宝',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5600000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5600000', '租金宝', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5600000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '5600000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='申请租金宝',furl='/mogoroom-partner/bill/myLoan',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='5610000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5610000', '申请租金宝', '/mogoroom-partner/bill/myLoan', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5610000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租金宝保证金',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='5620000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5620000', '租金宝保证金', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5620000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='退款审批',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5700000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5700000', '退款审批', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5700000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '5700000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='是否同意',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='5710000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5710000', '是否同意', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5710000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='财务统计详情',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5A00000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5A00000', '财务统计详情', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5A00000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '5A00000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账务详情',furl='/mogoroom-partner/finance/accountWaterList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5A20000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5A20000', '账务详情', '/mogoroom-partner/finance/accountWaterList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5A20000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='充值',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5A30000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5A30000', '充值', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5A30000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='提现',furl='/mogoroom-partner/finance/renterBillList',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='5A40000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '5A40000', '提现', '/mogoroom-partner/finance/renterBillList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '5A40000' and channel=4);



-- 待办



-- 业主

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '7000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='业主列表',furl='/mogoroom-partner/owner/findFlatsOwners',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='7100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '7100000', '业主列表', '/mogoroom-partner/owner/findFlatsOwners', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '7100000' and channel=4);



-- 租客

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '8000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='租客信息',furl='/mogoroom-partner/landlord/getRenterDetai',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='8100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8100000', '租客信息', '/mogoroom-partner/landlord/getRenterDetai', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8100000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '8100000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='合同查看',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='8110000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '8110000', '合同查看', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '8110000' and channel=4);



-- 售后

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = '9000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='报修列表',furl='/mogoroom-partner/support/repairList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='9200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9200000', '报修列表', '/mogoroom-partner/support/repairList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9200000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '9200000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='报修详情页',furl='/mogoroom-partner/support/repairDetail',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='9210000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9210000', '报修详情页', '/mogoroom-partner/support/repairDetail', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9210000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='报修维修完成',furl='/mogoroom-partner/support/editRepair',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='9220000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9220000', '报修维修完成', '/mogoroom-partner/support/editRepair', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9220000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看报修图片',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='9230000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9230000', '查看报修图片', '', @seq, @level2+1, @parentid2, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9230000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='投诉列表',furl='mogoroom-partner/support/complainList',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='9400000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9400000', '投诉列表', 'mogoroom-partner/support/complainList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9400000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = '9400000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='投诉详情页',furl='/mogoroom-partner/support/complainDetail',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='9410000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9410000', '投诉详情页', '/mogoroom-partner/support/complainDetail', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9410000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看投诉图片',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=2,isAjax=0,functionType=1,updatedTime=now() where fcode='9420000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT '9420000', '查看投诉图片', '', @seq, @level2+1, @parentid2, 2, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = '9420000' and channel=4);



-- 首页房态图展示

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = 'A000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='分散式房态展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='H000000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'H000000', '分散式房态展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'H000000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='集中式房态展示',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='I000000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'I000000', '集中式房态展示', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'I000000' and channel=4);



-- 搜索

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = 'E000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='查看详情',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='E100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'E100000', '查看详情', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'E100000' and channel=4);



-- 我

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = 'F000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='我的资料',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F100000', '我的资料', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F100000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = 'F100000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='修改手机号',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F110000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F110000', '修改手机号', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F110000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='我的品牌',furl='/mogoroom-partner/brand/getBrandInfoByLandlord',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F200000', '我的品牌', '/mogoroom-partner/brand/getBrandInfoByLandlord', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F200000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账户安全',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F300000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F300000', '账户安全', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F300000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = 'F300000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='登录密码修改',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F310000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F310000', '登录密码修改', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F310000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='支付密码修改',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='F320000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F320000', '支付密码修改', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F320000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='意见反馈',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F400000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F400000', '意见反馈', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F400000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='费用类型设置',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='F600000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F600000', '费用类型设置', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F600000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = 'F600000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='保存',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='F610000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'F610000', '保存', '', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'F610000' and channel=4);



-- 快捷添加入口

/**读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fcode = 'G000000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加房源',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G100000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G100000', '添加房源', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G100000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加账单',furl='',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G200000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G200000', '添加账单', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G200000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = 'G200000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='批量新增账单',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G210000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G210000', '批量新增账单', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G210000' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已新增账单查看',furl='',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G220000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220000', '已新增账单查看', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = 'G220000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单详情',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G220001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220001', '账单详情', '', @seq, @level3+1, @parentid3, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='最晚支付日',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='G220002' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220002', '最晚支付日', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220002' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单优惠',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='G220003' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220003', '账单优惠', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220003' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单拆分',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='G220004' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220004', '账单拆分', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220004' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单作废',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='G220005' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220005', '账单作废', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220005' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='确认收款',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=0,functionType=1,updatedTime=now() where fcode='G220006' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220006', '确认收款', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220006' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='账单保存',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G220007' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G220007', '账单保存', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G220007' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已有租约补录',furl='/mogoroom-partner/landlord/turnAddContractl',functionLevel=@rootLevel+1,functionpId=@rootId,functionisMenu=1,isAjax=0,functionType=1,updatedTime=now() where fcode='G300000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G300000', '已有租约补录', '/mogoroom-partner/landlord/turnAddContractl', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G300000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fcode = 'G300000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='待补录列表',furl='/mogoroom-partner/landlord/turnAddContractl',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G310000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G310000', '待补录列表', '/mogoroom-partner/landlord/turnAddContractl', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G310000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = 'G310000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='添加',furl='/mogoroom-partner/landlord/addContractl',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G310001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G310001', '添加', '/mogoroom-partner/landlord/addContractl', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G310001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='已补录列表',furl='/mogoroom-partner/landlord/turnAddContractl',functionLevel=@level2+1,functionpId=@parentid2,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320000' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320000', '已补录列表', '/mogoroom-partner/landlord/turnAddContractl', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320000' and channel=4);

/*读取父节点id和level防止重名，根据fcode查*/
select @parentid3:=id,@level3:=functionLevel from perm_functioninfo where fcode = 'G320000' and channel=4;

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='筛选',furl='/mogoroom-partner/landlord/turnAddContractl',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320001' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320001', '筛选', '/mogoroom-partner/landlord/turnAddContractl', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320001' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='详情',furl='/mogoroom-partner/landlord/editAddContract',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320002' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320002', '详情', '/mogoroom-partner/landlord/editAddContract', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320002' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='详情-确定',furl='/mogoroom-partner/landlord/editAddContractDo',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320003' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320003', '详情-确定', '/mogoroom-partner/landlord/editAddContractDo', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320003' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='详情-删除',furl='/mogoroom-partner/landlord/additionalIsCanDelete',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320004' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320004', '详情-删除', '/mogoroom-partner/landlord/additionalIsCanDelete', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320004' and channel=4);

/**生成新的顺序号**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid3;
select @seq:=(case when @seq is null then 1 else @seq end);

/**更新节点记录，如果记录存在**/
update perm_functioninfo set fname='发送',furl='',functionLevel=@level3+1,functionpId=@parentid3,functionisMenu=0,isAjax=1,functionType=1,updatedTime=now() where fcode='G320005' and channel=4;

/**插入新节点记录，如果记录不存在**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
SELECT 'G320005', '发送', '', @seq, @level3+1, @parentid3, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, now(), 1, 4
FROM dual WHERE not exists (select id from perm_functioninfo where fcode = 'G320005' and channel=4);




commit;