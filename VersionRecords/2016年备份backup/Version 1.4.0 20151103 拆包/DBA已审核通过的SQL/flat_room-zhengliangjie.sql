-- 同步小区id，区域id到flat_flats、flat_room表中
-- 2015-11-3 12:33:30
-- 优化小区
select * from flat_flats ff where ff.districtId is null and ff.communityId is not null;
--  初始化flat_flats的districtId
update flat_flats ff 
left join flat_community fc on fc.id = ff.communityId 
set  ff.districtId = fc.districtId  
where ff.districtId is null  and ff.communityId is not null ;

-- 优化房间
select * from flat_room fr where fr.communityId  = 0 or fr.districtId =0;
-- 初始化flat_room表的communityId 和districtId
update flat_room fr 
join flat_flats ff on ff.id = fr.flatsId
join flat_community fc on fc.id = ff.communityId 
set  fr.communityId = fc.id ,fr.districtId = fc.districtId
where fr.communityId = 0 or fr.districtId =0; 