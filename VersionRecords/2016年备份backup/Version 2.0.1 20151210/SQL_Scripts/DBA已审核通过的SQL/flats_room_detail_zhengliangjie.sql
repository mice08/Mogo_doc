/*  Database name `mogoroomdb` ，视图添加查询条件 */
use mogoroomdb;

DROP VIEW IF EXISTS flats_room_detail;

CREATE VIEW flats_room_detail
AS 
SELECT
	fr.id AS roomId,
	fr.roomNum AS roomNum,
	fr.roomName AS roomName,
	fr.face AS roomFace,
	fr.area AS roomArea,
	fr.rentStatus AS rentStatus,
	fr.roomType AS roomType,
	ur.sex AS renterSex,
	fr.bookingPrice AS bookingPrice,
	fr.payType AS payType,
	fr.roomPrice AS roomPrice,
	fr.salePrice AS salePrice,
	fr.payType2 AS payType2,
	fr.roomPrice2 AS roomPrice2,
	fr.salePrice2 AS salePrice2,
	ff.id AS flatsId,
	ff.flatsNum AS flatsNum,
	ff.building AS building,
	ff.roomNum AS flatsRoomNum,
	ff.floorNum AS floorNum,
	ff.floorCountNum AS floorCountNum,
	c.id AS cityId,
	c. NAME AS cityName,
	cd.id AS districtId,
	cd. NAME AS districtName,
	fc.id AS communityId,
	fc.street AS street,
	fc.nong AS nong,
	fc. NAME AS communityName,
	cba. NAME AS businessName,
	fcp.flatsTag AS flatsTag,
	fcp.mansionName AS mansionName,
	ff.bedroomCount AS bedroomCount,
	ff.parlorCount AS parlorCount,
	ff.kitchenCount AS kitchenCount,
	ff.toiletCount AS toiletCount,
	ff.isVerify AS flatVerifyStatus,
	ff.landlordId AS landlordId,
	fcp.id AS flatsTagId,
	ff.rentType AS rentType,
	ff.area AS flatsArea,
	fr.subTitle AS subTitle,
	fr.intro AS roomDesc,
	fr. STATUS AS roomStatus,
	ff. STATUS AS flatsStatus,
	ff.nickName AS flatsAlias,
	fr.isPutaway AS isPutaway,
	fr.signedOrderId AS signedOrderId,
	fr.renterId AS renterId,
	ff.unit AS unit,
	ff.protoType AS flatProtoType,
	fr.protoType AS roomProtoType,
	fr.agencyFee AS agencyFee,
	fr.manageFee AS manageFee
FROM
	flat_flats ff
LEFT JOIN flat_room fr ON fr.flatsId = ff.id
LEFT JOIN user_renter ur ON fr.renterId = ur.id
JOIN flat_community fc ON ff.communityId = fc.id
LEFT JOIN flat_community_property fcp ON fcp.communityId = fc.id and fcp.landlordId = ff.landlordId
JOIN city_business_area cba ON fc.businessId = cba.id
JOIN city_district cd ON fc.districtId = cd.id
JOIN city c ON cd.cityId = c.id;
        
        
        