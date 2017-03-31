/*  
	Database name `mogoroomdb`;

	房型数据初始化
		分5部分，请严格按顺序执行，执行前，请确保库中flat_flats表
	已经存在flatsTag，protoType字段，flat_room表中已存在protoType字段。

	by jiangwen 2015-11-26
*/
use mogoroomdb;

/*1. 初始化房源类型 begin*/
update flat_flats f 
left join ( 
	select ff.id, case fcp.flatsTag when 2 then 2 else 1 end as flatsTag from flat_flats ff
	left join flat_community fc on ff.communityId = fc.id
	left join flat_community_property fcp on fcp.communityId = fc.id and fcp.landlordId = ff.landlordId
) t on f.id = t.id
set f.flatsTag = t.flatsTag;
/*1. 初始化房源类型 end*/

/*2. 初始化公寓房型数据 begin*/
insert into flat_flats_prototype (
	communityId, districtId, flatType, 
	bedroomCount, parlorCount, kitchenCount, balconyCount, toiletCount,
	isDuplex, oldType, area, landlordId, ownersId, 
	status, isVerify, hasSmartLock, rentType,
	isRemoved  ,elevatorCount ,Level ,nickName, flatsTag, floorNum)
select
	ff.communityId, ff.districtId, ff.flatType, 
	ff.bedroomCount, ff.parlorCount, ff.kitchenCount, ff.balconyCount, ff.toiletCount,
	ff.isDuplex, ff.oldType, ff.area, ff.landlordId, ff.ownersId, 
	ff.status, ff.isVerify, ff.hasSmartLock, ff.rentType,
	ff.isRemoved, ff.elevatorCount, ff.Level, ff.nickName, ff.flatsTag, ff.floorNum
from flat_flats ff
where ff.flatsTag = 2
group by ff.landlordId, ff.communityId, ff.bedroomCount, ff.parlorCount, ff.nickName;
/*2. 初始化公寓房型数据 end*/

/*3. 初始化公寓房型关系 begin*/
update flat_flats f
right join (
	select f.id as flatsId, t.id as protoType from (
		select ff.id, 
			ff.landlordId, ff.communityId, ff.bedroomCount, ff.parlorCount, ff.nickName, ff.protoType 
		from flat_flats ff
		where ff.flatsTag = 2 and ff.protoType <> -1
	) f 
	left join (
		select 
			fp.id, fp.landlordId, fp.communityId, fp.bedroomCount, fp.parlorCount, fp.nickName
		from flat_flats_prototype fp
		where fp.flatsTag = 2
	) t on f.landlordId = t.landlordId and f.communityId = t.communityId and f.bedroomCount = t.bedroomCount 
		and f.parlorCount = t.parlorCount and (f.nickName = t.nickName or (f.nickName is null and t.nickName is null))
) p on f.id = p.flatsId
set f.protoType = p.protoType;
/*3. 初始化公寓房型关系 end*/

/*4. 初始化房间房型数据 begin*/
insert into flat_room_prototype (
	flatsId, styleCode, communityId, districtId, subTitle,
	bookingPrice, roomPrice, salePrice, area,
	payType, person, face, roomType, status, 
	claim, salePrice2, isPutaway, checkInTime,
	agencyFee, manageFee)
select
	ff.protoType, fr.styleCode, fr.communityId, fr.districtId, fr.subTitle,
	fr.bookingPrice, fr.roomPrice, fr.salePrice, fr.area,
	fr.payType, fr.person, fr.face, fr.roomType, fr.status, 
	fr.claim, fr.salePrice2, fr.isPutaway, fr.checkInTime,
	fr.agencyFee, fr.manageFee
from flat_room fr
left join flat_flats ff on ff.id = fr.flatsId
where ff.flatsTag = 2
group by ff.landlordId, ff.communityId, ff.bedroomCount, ff.parlorCount, ff.nickName;
/*4. 初始化房间房型数据 end*/

/*5. 初始化房间房型关系 begin*/
update flat_room r
right join(
	/*通过公寓查询出对应的房间*/
	select r.roomId as sourceId, f.roomId from (
		select
			fr.id as roomId, fr.flatsId
		from flat_room fr
		left join flat_flats ff on ff.id = fr.flatsId
		where ff.flatsTag = 2 and fr.protoType <> -1
	) r
	left join (
		/*通过公寓房型关联出该房型下的公寓，公寓与房间房型的关系*/
		select 
			p.roomId, f.id as flatsId, f.protoType 
		from flat_flats f 
		right join (
			/*房间房型公寓房型关联*/
			select rp.id as roomId, rp.flatsId
			from flat_room_prototype rp
			left join flat_flats_prototype fp on rp.flatsId = fp.id
			where fp.flatsTag = 2
		) p on f.protoType = p.flatsId
	) f on r.flatsId = f.flatsId
) rf on r.id = rf.sourceId
set r.protoType = rf.roomId;
/*5. 初始化房间房型关系 end*/