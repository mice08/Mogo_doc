/*初始化房东可短信群发的最小蘑菇分*/

use mogoroomdb;

BEGIN ;

INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('enable_gt_mogoscore',200,'GT_SCORE','房东短信群发_最小蘑菇分','房东短信发送最小蘑菇分',5,0,now());

COMMIT ;