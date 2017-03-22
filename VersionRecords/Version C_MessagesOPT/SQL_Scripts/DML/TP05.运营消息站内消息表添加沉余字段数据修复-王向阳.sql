/* Database name `mogoroomdb`，站内消息mesg_news_record表添加沉余字段后，数据修复，分匹次修复数据，每次20万量 */

use mogoroomdb;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1到200000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1 AND 200000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息200001到400000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 200001 AND 400000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息400001到600000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 400001 AND 600000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息600001到800000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 600001 AND 800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息800001到1000000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 800001 AND 1000000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1000001到1200000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1000001 AND 1200000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;                           

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1200001到1400000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1200001 AND 1400000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1400001到1600000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1400001 AND 1600000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1600001到1800000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1600001 AND 1800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息1800001到2000000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 1800001 AND 2000000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息2000001到2200000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 2000001 AND 2200000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息2200001到2400000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 2200001 AND 2400000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息2400001到2600000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 2400001 AND 2600000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息2600001到2800000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 2600001 AND 2800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息2800001到3000000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 2800001 AND 3000000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息3000001到3200000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 3000001 AND 3200000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息3200001到3400000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 3200001 AND 3400000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息3400001到3600000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 3400001 AND 3600000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息3600001到3800000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 3600001 AND 3800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType; 

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息3800001到4000000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 3800001 AND 4000000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息4000001到4200000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 4000001 AND 4200000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息4200001到4400000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 4200001 AND 4400000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息4400001到4600000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 4400001 AND 4600000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新消息4600001到4800000 */
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id BETWEEN 4600001 AND 4800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;

/* 从主表mesg_record和模板表mesg_templet获取数据进行更新,更新剩下所有的*/
UPDATE mesg_news_record 
INNER JOIN (
  SELECT r.id,r.templetId,r.receiveBy,r.receiveByType,IFNULL(t.businessType,0) businessType,0 pubMessageId 
  FROM mesg_record r
  LEFT JOIN mesg_templet t ON t.id = r.templetId
  WHERE r.id > 4800000
) msg ON mesg_news_record.recordId = msg.id 
SET mesg_news_record.templetId = msg.templetId,
    mesg_news_record.receiveBy = msg.receiveBy,
    mesg_news_record.receiveByType = msg.receiveByType,
    mesg_news_record.pubMessageId = msg.pubMessageId,
    mesg_news_record.businessType = msg.businessType;                                                                                         