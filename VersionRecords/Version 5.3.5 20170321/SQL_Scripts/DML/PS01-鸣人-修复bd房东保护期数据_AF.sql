/*修复bd系统的房东保护期数据*/

USE bizd;

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