use mogoroomdb;

/*房源上架时间初始化*/
UPDATE flat_room SET putawayTime = NOW() 
WHERE id IN (
	SELECT t.id FROM
	(SELECT fr.id FROM flat_room fr JOIN flat_flats ff ON fr.flatsId = ff.id 
	WHERE fr.STATUS = 1 AND fr.verifyStatus != 3 AND fr.rentStatus = 1 AND fr.onlineStatus = 1
	AND (fr.mogoOfflineEndTime IS NULL OR fr.mogoOfflineEndTime < NOW())
	AND ff.isVerify != 2) t
);