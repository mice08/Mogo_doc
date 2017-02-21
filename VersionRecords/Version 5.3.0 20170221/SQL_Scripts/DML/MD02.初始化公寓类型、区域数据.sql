use mogoroomdb;

/*批量初始化公寓房型区域id*/
update flat_flats_prototype ffp left join flat_community fc on fc.id = ffp.communityId set ffp.districtId = fc.districtId where ffp.districtId is null ;

/*批量初始化公寓区域id*/
update flat_flats ff left join flat_community fc on fc.id = ff.communityId set ff.districtId = fc.districtId where ff.districtId is null ;

/*批量初始化房间区域id*/
update flat_room fr left join flat_community fc on fc.id = fr.communityId set fr.districtId = fc.districtId where fr.districtId is null ;

/*批量初始化公寓默认公寓类型*/
update flat_flats ff set ff.flatType = 'flatType-4' where ff.flatType is null ;