/*  Database name `bizd`  更新跟进时间和渠道来源 */
use bizd;

UPDATE bizd_landlord_followup SET channel = 19,communicateTime = createTime;