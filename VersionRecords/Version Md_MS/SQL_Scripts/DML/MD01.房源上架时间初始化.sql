use mogoroomdb;

/*房源上架时间初始化*/
UPDATE flat_room SET putawayTime = '2016-12-20 00:00:00' 
WHERE STATUS = 1 AND verifyStatus != 3 AND rentStatus = 1 AND onlineStatus = 1
AND (mogoOfflineEndTime IS NULL OR mogoOfflineEndTime < NOW()); 