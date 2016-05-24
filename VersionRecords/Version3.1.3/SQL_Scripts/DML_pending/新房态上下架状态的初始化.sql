use mogoroomdb;

begin;
-- 集中式公寓的上下架状态根据isputaway迁移到到onlinestatus(1上架，2下架)字段。
update flat_room fr join flat_flats ff on fr.flatsId=ff.id and ff.flatsTag=2
set fr.onlineStatus=if(fr.isPutaway=1, 1, 2);

-- 分散式公寓的上下架状态默认都为上架状态
update flat_room fr join flat_flats ff on fr.flatsId=ff.id and ff.flatsTag=1
set fr.onlineStatus=1;

-- 蘑菇上下架状态默认都为上架状态(mogoOfflineEndTime为null表示上架)
update flat_room set mogoOfflineEndTime=null;
commit;
