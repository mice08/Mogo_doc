/* 新增跟进表渠道来源 */
use bizd;

-- 更近记录来源
ALTER TABLE bizd_landlord_followup ADD column channel int not null default 19;
