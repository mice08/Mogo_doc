
/*修复没开通账号房东的保护期记录*/

use mogoroomdb;

UPDATE 
  bizd.`bizd_landlord_protect` 
SET
  planEndDate = planEndDate + INTERVAL - 30 DAY,
  allDays = 30 
WHERE valid = 1 
  AND bdlandlordid IN 
  (SELECT 
    id 
  FROM
    bizd.`bizd_user_landlord` 
  WHERE ISNULL(landlordid)) 
  AND allDays = 60 ;