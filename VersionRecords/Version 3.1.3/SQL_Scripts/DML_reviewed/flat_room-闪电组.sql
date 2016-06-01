use mogoroomdb;

-- 初始化集中式公寓已上架房源
UPDATE flat_room fr LEFT JOIN flat_flats ff ON fr.flatsId = ff.id SET fr.onlineStatus = 1, fr.mogoOfflineEndTime = NULL WHERE ff.flatsTag = 2 AND fr.isPutaway = 1;

-- 初始化集中式公寓已下架房源
UPDATE flat_room fr LEFT JOIN flat_flats ff ON fr.flatsId = ff.id SET fr.onlineStatus = 2, fr.mogoOfflineEndTime = NULL WHERE ff.flatsTag = 2 AND fr.isPutaway = 0;

-- 初始化分散式公寓
UPDATE flat_room fr LEFT JOIN flat_flats ff ON fr.flatsId = ff.id SET fr.onlineStatus = 1, fr.mogoOfflineEndTime = NULL WHERE ff.flatsTag = 1;
commit;