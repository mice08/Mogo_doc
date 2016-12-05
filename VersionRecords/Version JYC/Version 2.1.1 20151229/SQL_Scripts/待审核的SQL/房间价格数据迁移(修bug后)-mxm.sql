use mogoroomdb;

BEGIN;
-- 删除既存数据
DELETE FROM flat_roompricebiztype;
DELETE FROM flat_roompricebase;
DELETE FROM flat_roomprice;
DELETE FROM flat_roompricedtl;

-- 初始化 biztype表（根据paytype以及4种paystage组合生成)
insert into flat_roompricebiztype(bizType, payTypeId, payStage)
select  10000 + 100 * pt.id + ps.id 
, pt.id
, ps.id
from comm_paytype pt, 
(select 1 as id 
union select 2 as id
union select 3 as id
union select 4 as id) ps;


-- 导入既存房源各种biztype下的价格记录
INSERT INTO flat_roomprice( 
  `goodsId`
 , goodsIdType
 , bizType
  , `startTime`
  , `createTime`
  , `createBy`
  , `createByType`
  , `createChannel`
  , valid
) 
SELECT
  r.id goodsId
  , 1 goodsIdType  -- 商品id类型为房间id
 ,  bt.bizType
 , now() startTime
  , now() createTime
  , 1 createBy
  , 5 createByType                                             -- 员工类型
  , 2 createChannel                                             -- BS后台渠道
  , 1 valid                                         -- 有效
FROM
  flat_room r
  , flat_roompricebiztype bt
WHERE
  r.status = 1
  AND bt.payStage <> 4
  AND bt.payTypeId IN (r.payType, r.payType2)

UNION ALL  -- 合并上房型相关信息
SELECT
  r.id goodsId
  , 2 goodsIdType  -- 商品id类型为房型id
 ,  bt.bizType
 , now() startTime
  , now() createTime
  , 1 createBy
  , 5 createByType                                             -- 员工类型
  , 2 createChannel                                             -- BS后台渠道
  , 1 valid                                         -- 有效
FROM
  flat_room_prototype r
  , flat_roompricebiztype bt
WHERE
  r.status = 1
  AND bt.payStage <> 4
  AND bt.payTypeId IN (r.payType, r.payType2);

-- 导入定金价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1002 billType,   -- 支付定金
1002 billDtlType,   -- 支付定金
IFNULL(r.bookingPrice, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payStage = 1  -- 定金阶段

UNION ALL  -- 合并上房型相关信息
SELECT 
rp.id priceId,
1002 billType,   -- 支付定金
1002 billDtlType,   -- 支付定金
IFNULL(r.bookingPrice, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payStage = 1  -- 定金阶段
;

-- 导入付款方式1下常规房租价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1004 billType,   -- 租客支付常规款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payStage = 3  -- 常规房租阶段
AND r.payType = bt.payTypeId

UNION ALL  -- 合并上房型相关信息
SELECT 
rp.id priceId,
1004 billType,   -- 租客支付常规款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payStage = 3  -- 常规房租阶段
AND r.payType = bt.payTypeId
;

-- 导入付款方式2下常规房租价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1004 billType,   -- 租客支付常规款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice2, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payStage = 3  -- 常规房租阶段
AND r.payType2 = bt.payTypeId

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1004 billType,   -- 租客支付常规款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice2, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payStage = 3  -- 常规房租阶段
AND r.payType2 = bt.payTypeId
;

-- 导入付款方式1下首期款-房租价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice * pt.rentPeriods, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType = bt.payTypeId

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice * pt.rentPeriods, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType = bt.payTypeId
;

-- 导入付款方式1下首期款-押金价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10003 billDtlType,   -- 押金
IFNULL(r.salePrice * pt.foregiftPeriods, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType = bt.payTypeId

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10003 billDtlType,   -- 押金
IFNULL(r.salePrice * pt.foregiftPeriods, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType = bt.payTypeId
;

-- 导入付款方式2下首期款-房租价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice2 * pt.rentPeriods, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType2 = bt.payTypeId

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10002 billDtlType,   -- 房租
IFNULL(r.salePrice2 * pt.rentPeriods, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType2 = bt.payTypeId
;

-- 导入付款方式2下首期款-押金价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10003 billDtlType,   -- 押金
IFNULL(r.salePrice2 * pt.foregiftPeriods, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType2 = bt.payTypeId

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
10003 billDtlType,   -- 押金
IFNULL(r.salePrice2 * pt.foregiftPeriods, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt,
comm_paytype pt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payTypeId = pt.id
AND bt.payStage = 2  -- 首期款阶段
AND r.payType2 = bt.payTypeId
;

-- 导入首期款-中介费价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
100002 billDtlType,   -- 中介费
IFNULL(r.agencyFee, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payStage = 2  -- 首期款阶段
AND r.agencyFee > 0

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
100002 billDtlType,   -- 中介费
IFNULL(r.agencyFee, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payStage = 2  -- 首期款阶段
AND r.agencyFee > 0
;

-- 导入首期款-管理费价格详细
INSERT INTO flat_roompricedtl(priceId, billType, billDtlType, amount)
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
100001 billDtlType,   -- 管理费
IFNULL(r.manageFee, 0) amount
FROM 
flat_room r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 1 -- 商品id类型为房间id
AND rp.bizType = bt.bizType
AND bt.payStage = 2  -- 首期款阶段
AND r.manageFee > 0

UNION ALL -- 合并上房型相关信息
SELECT 
rp.id priceId,
1003 billType,   -- 租客支付首期款房租账单
100001 billDtlType,   -- 管理费
IFNULL(r.manageFee, 0) amount
FROM 
flat_room_prototype r,
flat_roomprice rp,
flat_roompricebiztype bt
WHERE
r.id = rp.goodsId
AND rp.goodsIdType = 2 -- 商品id类型为房型id
AND rp.bizType = bt.bizType
AND bt.payStage = 2  -- 首期款阶段
AND r.manageFee > 0
;

COMMIT;

