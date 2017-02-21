/***这个脚本 等所有脚本走完后，项目部署完成之后再走,补充遗漏的push消息到news***/
use mogroomdb;

INSERT INTO mesg_news_record (
  recordId,
  newsTitle,
  newsContent,
  willSendTime,
  sendStatus,
  isRead,
  updateTime,
  createTime,
  jumpCode,
  jumpValue,
  valid
) 
SELECT 
  mpr.recordId,
  mpr.pushTitle,
  mpr.pushContent,
  mpr.willSendTime,
  mpr.sendStatus,
  mpr.isRead,
  mpr.lastSendTime,
  mpr.createTime,
  mpr.jumpCode,
  mpr.jumpValue,
  mpr.valid
FROM
  mesg_push_record  mpr
  LEFT JOIN mesg_news_record mnr ON mpr.recordId = mnr.recordId
WHERE mnr.id IS NULL