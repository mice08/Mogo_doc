use mogoroomdb;
/*����ƽ̨��ؽ������*/

/*���м���*/
INSERT INTO open_api_geo (
	geoid,
	parentgeoid,
	geoname,
	LEVEL,
	geocode
) SELECT DISTINCT
	cd.cityId,
	0,
	c.`name`,
	1,
	100000 + cd.cityId
FROM
	city_district cd,
	city c
WHERE
	cd.cityId = c.id;

/*��������*/
INSERT INTO open_api_geo (
	geoid,
	parentgeoid,
	geoname,
	LEVEL,
	geocode
) SELECT
	cd.id,
	cd.cityId,
	cd.`name`,
	2,
	200000 + cd.id
FROM
	city_district cd;
/*��Ȧ����*/
INSERT INTO open_api_geo (
	geoid,
	parentgeoid,
	geoname,
	LEVEL,
	geocode
) SELECT
	id,
	districtId,
	`name`,
	3,
	300000 + id
FROM
	city_business_area