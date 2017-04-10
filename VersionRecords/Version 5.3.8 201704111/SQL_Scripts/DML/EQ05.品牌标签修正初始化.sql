/* Database name `mogoroomdb` 品牌标签修正初始化*/
use mogoroomdb;

/** 北京 pc 标签**/
UPDATE coms_hotbrand b,
 (
	SELECT
		hb.id
	FROM
		coms_hotbrand hb
	LEFT JOIN brand b ON hb.brandid = b.id
	WHERE
		b.mainsalecity = 131
	AND hb.brandtabid = (
		SELECT
			id
		FROM
			coms_hottab
		WHERE
			NAME = 'PC品牌主页推荐房源标签'
		AND cityId = 289
	)
) new
SET b.brandtabid = (
	SELECT
		id
	FROM
		coms_hottab
	WHERE
		NAME = 'PC品牌主页推荐房源标签'
	AND cityId = 131
)
WHERE
	b.id = new.id;

/** 北京 app标签**/
UPDATE coms_hotbrand b,
 (
	SELECT
		hb.id
	FROM
		coms_hotbrand hb
	LEFT JOIN brand b ON hb.brandid = b.id
	WHERE
		b.mainsalecity = 131
	AND hb.brandtabid = (
		SELECT
			id
		FROM
			coms_hottab
		WHERE
			NAME = 'APP品牌主页推荐房源标签'
		AND cityId = 289
	)
) new
SET b.brandtabid = (
	SELECT
		id
	FROM
		coms_hottab
	WHERE
		NAME = 'APP品牌主页推荐房源标签'
	AND cityId = 131
)
WHERE
	b.id = new.id;
	
/** 深圳 pc标签**/
UPDATE coms_hotbrand b,
 (
	SELECT
		hb.id
	FROM
		coms_hotbrand hb
	LEFT JOIN brand b ON hb.brandid = b.id
	WHERE
		b.mainsalecity = 340
	AND hb.brandtabid = (
		SELECT
			id
		FROM
			coms_hottab
		WHERE
			NAME = 'PC品牌主页推荐房源标签'
		AND cityId = 289
	)
) new
SET b.brandtabid = (
	SELECT
		id
	FROM
		coms_hottab
	WHERE
		NAME = 'PC品牌主页推荐房源标签'
	AND cityId = 340
)
WHERE
	b.id = new.id;
	
/** 深圳 app标签**/
UPDATE coms_hotbrand b,
 (
	SELECT
		hb.id
	FROM
		coms_hotbrand hb
	LEFT JOIN brand b ON hb.brandid = b.id
	WHERE
		b.mainsalecity = 340
	AND hb.brandtabid = (
		SELECT
			id
		FROM
			coms_hottab
		WHERE
			NAME = 'APP品牌主页推荐房源标签'
		AND cityId = 289
	)
) new
SET b.brandtabid = (
	SELECT
		id
	FROM
		coms_hottab
	WHERE
		NAME = 'APP品牌主页推荐房源标签'
	AND cityId = 340
)
WHERE
	b.id = new.id;