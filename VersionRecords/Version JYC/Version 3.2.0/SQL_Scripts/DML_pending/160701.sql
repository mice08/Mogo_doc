/*1.1	房屋主数据，包含房屋唯一识别号、房屋基础信息如：房屋面积、房间间数、地
址（门牌号、房号等）、对应职业房东ID、对应拓展人员ID、首次租赁周期*/
drop table if exists test.jz111;

CREATE TABLE test.jz111 AS SELECT * FROM
    flat_room fr
WHERE
    fr.`status` <> 1
        AND EXISTS( SELECT 
            1
        FROM
            oder_signedOrder oso
        WHERE
            fr.id = oso.roomId
                AND landlordId NOT IN (123 , 124,
                3100059,
                3100230,
                3100241,
                3100387,
                3100388,
                3100752,
                3101630));

create index jz111id on test.jz111(id);
create index jz111flat on test.jz111(flatsId);

drop table if exists test.jz11;

CREATE TABLE test.jz11 AS SELECT ff.`id` AS '房屋唯一识别号',
    ff.`area` AS '房屋面积',
    room.roomNum AS '房间间数',
    fc.`street` AS '路',
    fc.`nong` AS '弄',
    ff.`building` AS '栋',
    ff.`roomNum` AS '室',
    ff.`landlordId` AS '职业房东ID',
    ff.`saleManId` AS '拓展人员ID',
    CONCAT(`contract`.`beginDate`,
            '--',
            `contract`.`endDate`) AS '首次租赁周期' FROM
    `flat_flats` ff
        LEFT JOIN
    `flat_community` fc ON fc.`id` = ff.`communityId`
        JOIN
    (SELECT 
        flatsId, COUNT(*) AS roomNum
    FROM
        flat_room fr
    WHERE
        (fr.`createTime` < '2016-06-01'
            AND fr.`status` = 1
            AND NOT EXISTS( SELECT 
                1
            FROM
                flat_flats ffs
            WHERE
                ffs.id = fr.flatsid AND ffs.status = 0))
            OR EXISTS( SELECT 
                1
            FROM
                test.jz111 jz111
            WHERE
                fr.id = jz111.id)
    GROUP BY flatsId) room ON room.flatsId = ff.`id`
        LEFT JOIN
    (SELECT 
        `sale`.`flatsId`, `sale`.`beginDate`, `sale`.`endDate`
    FROM
        (SELECT 
        flatsId, cs.`beginDate`, cs.`endDate`
    FROM
        `cntr_salecontract` cs
    ORDER BY cs.`createTime` ASC) `sale`
    GROUP BY `sale`.flatsId) `contract` ON `contract`.flatsId = ff.`id`
WHERE
    (ff.`status` = 1
        OR EXISTS( SELECT 
            1
        FROM
            test.jz111 jz111
        WHERE
            ff.id = jz111.flatsId))
        AND ff.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND ff.`createTime` < '2016-06-01';

create index testjz11idx on test.jz11(`房屋唯一识别号`);

ALTER TABLE `test`.`jz11`   
  ADD COLUMN `单元` VARCHAR(20) NULL ,    
  ADD COLUMN `小区是否有效` VARCHAR(16) NULL,
  ADD COLUMN `合同状态` VARCHAR(32) NULL ,
  ADD COLUMN `是否已下线` VARCHAR(32) NULL,
  ADD COLUMN `小区名称` VARCHAR(128) NULL ,
  ADD COLUMN `城市` VARCHAR(128) NULL ;
  
UPDATE test.jz11 `jz11`
        INNER JOIN
    `flat_flats` `ff` ON `jz11`.`房屋唯一识别号` = ff.id
        LEFT JOIN
    `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
        LEFT JOIN
    `city_district` cd ON cd.`id` = `fc`.`districtId`
        LEFT JOIN
    `city` ON `city`.`id` = cd.`cityId`
        LEFT JOIN
    (SELECT 
        `sale`.`flatsId`,
            `sale`.`status`,
            `sale`.`loseEfficacyDate`,
            `sale`.`beginDate`
    FROM
        (SELECT 
        flatsId, cs.`status`, cs.`loseEfficacyDate`, cs.`beginDate`
    FROM
        `cntr_salecontract` cs
    ORDER BY cs.`createTime` ASC) `sale`
    GROUP BY `sale`.flatsId) `contract` ON `ff`.`id` = `contract`.`flatsId`
        LEFT JOIN
    (SELECT 
        rooms.flatsId, COUNT(*) AS statusCount
    FROM
        (SELECT 
        flatsid flatsid,
            CASE
                WHEN
                    mogoOfflineEndTime IS NOT NULL
                        AND mogoOfflineEndTime >= NOW()
                THEN
                    1
                WHEN onlineStatus = 2 THEN 1
                WHEN rentStatus != 1 THEN 1
                WHEN verifyStatus = 3 THEN 1
                ELSE 2
            END onlineStatu
    FROM
        flat_room
    WHERE
        STATUS = 1) rooms
    WHERE
        rooms.onlineStatu = 2
    GROUP BY rooms.flatsId) linesCount ON linesCount.flatsId = `jz11`.`房屋唯一识别号` 
SET 
    `jz11`.`单元` = `ff`.unit,
    `jz11`.`小区是否有效` = IF(`fc`.`status` = 1,
        '有效',
        '无效'),
    `jz11`.`合同状态` = (CASE
        WHEN
            (`contract`.`status` = 3
                OR `contract`.`status` = 5)
                AND (`contract`.`loseEfficacyDate` > `contract`.`beginDate`
                OR `contract`.`loseEfficacyDate` IS NULL)
                AND `contract`.`beginDate` IS NOT NULL
        THEN
            '有效'
        ELSE '无效'
    END),
    `jz11`.`是否已下线` = IF(`linesCount`.`statusCount` > 0,
        '否',
        '是'),
    `jz11`.`小区名称` = `fc`.name,
    `jz11`.`城市` = `city`.`name`;

INSERT INTO  test.jz11  (`房屋唯一识别号`,`房屋面积`,`房间间数`,`路`,`弄`,`栋`,`室`,`职业房东ID`,`拓展人员ID`,`首次租赁周期`)
SELECT ff.`id` AS '房屋唯一识别号',
    ff.`area` AS '房屋面积',
    room.roomNum AS '房间间数',
    fc.`street` AS '路',
    concat(ifnull(fc.`nong`,''),'*') AS '弄',
    ff.`building` AS '栋',
    ff.`roomNum` AS '室',
    ff.`landlordId` AS '职业房东ID',
    ff.`saleManId` AS '拓展人员ID',
    CONCAT(`contract`.`beginDate`, '--',`contract`.`endDate`) AS '首次租赁周期' 
    FROM `flat_flats` ff 
    LEFT JOIN
    `flat_community` fc ON fc.`id` = ff.`communityId`
    JOIN
	     (SELECT 
    flatsId, COUNT(*) AS roomNum
FROM
    flat_room fr
WHERE
    id IN (20940 , 21979,
        23022,
        186781,
        186781,
        27772,
        27774,
        27773,
        61614,
        2125,
        2124,
        2126,
        2127,
        103003,
        4108,
        107626,
        19742,
        19744,
        19745,
        19746,
        19747,
        19748,
        19755,
        19765,
        19779,
        19790,
        19795,
        19797,
        19798,
        19805,
        19806,
        19807,
        19809,
        19816,
        19819,
        19820,
        19871)
GROUP BY flatsId) room ON room.flatsId = ff.`id`
        LEFT JOIN
		(SELECT 
			`sale`.`flatsId`, `sale`.`beginDate`, `sale`.`endDate`
		FROM
		(SELECT 
			flatsId, cs.`beginDate`, cs.`endDate`
		FROM
		`cntr_salecontract` cs
	    ORDER BY cs.`createTime` ASC) `sale`
	    GROUP BY `sale`.flatsId) `contract` ON `contract`.flatsId = ff.`id`;

UPDATE test.jz11 `jz11`
        INNER JOIN
    `flat_flats` `ff` ON `jz11`.`房屋唯一识别号` = ff.id
        AND `ff`.`id` IN (10406 , 11218,
        11873,
        138250,
        138250,
        15174,
        15175,
        15175,
        36412,
        419,
        419,
        419,
        419,
        68698,
        702,
        73110,
        9332,
        9334,
        9335,
        9336,
        9337,
        9338,
        9345,
        9355,
        9369,
        9380,
        9385,
        9387,
        9388,
        9395,
        9396,
        9397,
        9399,
        9406,
        9409,
        9410,
        9461)
        LEFT JOIN
    `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
        LEFT JOIN
    `city_district` cd ON cd.`id` = `fc`.`districtId`
        LEFT JOIN
    `city` ON `city`.`id` = cd.`cityId`
        LEFT JOIN
    (SELECT 
        `sale`.`flatsId`,
            `sale`.`status`,
            `sale`.`loseEfficacyDate`,
            `sale`.`beginDate`
    FROM
        (SELECT 
        flatsId, cs.`status`, cs.`loseEfficacyDate`, cs.`beginDate`
    FROM
        `cntr_salecontract` cs
    ORDER BY cs.`createTime` ASC) `sale`
    GROUP BY `sale`.flatsId) `contract` ON `ff`.`id` = `contract`.`flatsId`
        LEFT JOIN
    (SELECT 
        rooms.flatsId, COUNT(*) AS statusCount
    FROM
        (SELECT 
        flatsid flatsid,
            CASE
                WHEN
                    mogoOfflineEndTime IS NOT NULL
                        AND mogoOfflineEndTime >= NOW()
                THEN
                    1
                WHEN onlineStatus = 2 THEN 1
                WHEN rentStatus != 1 THEN 1
                WHEN verifyStatus = 3 THEN 1
                ELSE 2
            END onlineStatu
    FROM
        flat_room
    WHERE
        STATUS = 1) rooms
    WHERE
        rooms.onlineStatu = 2
    GROUP BY rooms.flatsId) linesCount ON linesCount.flatsId = `jz11`.`房屋唯一识别号` 
SET 
    `jz11`.`单元` = `ff`.unit,
    `jz11`.`小区是否有效` = IF(`fc`.`status` = 1,
        '有效',
        '无效'),
    `jz11`.`合同状态` = (CASE
        WHEN
            (`contract`.`status` = 3
                OR `contract`.`status` = 5)
                AND (`contract`.`loseEfficacyDate` > `contract`.`beginDate`
                OR `contract`.`loseEfficacyDate` IS NULL)
                AND `contract`.`beginDate` IS NOT NULL
        THEN
            '有效'
        ELSE '无效'
    END),
    `jz11`.`是否已下线` = IF(`linesCount`.`statusCount` > 0,
        '否',
        '是'),
    `jz11`.`小区名称` = `fc`.name,
    `jz11`.`城市` = `city`.`name`;

#添加一列新字段
ALTER TABLE `test`.`jz11`   
  ADD COLUMN `当前房屋状态` VARCHAR(20) NULL ;

UPDATE test.jz11 `jz11` 
SET 
    `当前房屋状态` = '1'
WHERE
    `是否已下线` = '否';
    OR EXISTS( SELECT 
            *
        FROM
            test.jz171 jz171
        WHERE
            NOW() BETWEEN SUBSTR(`签约周期`, 1, 10) AND SUBSTR(`签约周期`, 13, 10)
                AND (`取消签约标识` IS NULL
                OR `取消签约标识` = '')
                AND `有效性` != '无效'
                AND `房屋唯一识别号` = jz11.`房屋唯一识别号`)
    OR EXISTS( SELECT 
            *
        FROM
            test.jz172 jz172
        WHERE
            NOW() BETWEEN SUBSTR(`签约周期`, 1, 10) AND SUBSTR(`签约周期`, 13, 10)
                AND (`取消签约标识` IS NULL
                OR `取消签约标识` = '')
                AND `有效性` != '无效'
                AND `房屋唯一识别号` = jz11.`房屋唯一识别号`);

/*1.2	房间主数据，包含房间唯一识别号、房间基础信息如：房间面积、
地址（门牌号、房号、房间号等）、对应职业房东ID、对应拓展人员ID、首次租赁周期*/
drop table if exists test.jz12;

CREATE TABLE test.jz12 AS SELECT fr.`id` AS '房间唯一识别号',
    ff.id AS `房屋唯一识别号`,
    fr.`area` AS '房间面积',
    fc.`street` AS '路',
    fc.`nong` AS '弄',
    ff.`building` AS '栋',
    ff.`roomNum` AS '室',
    ff.landlordId AS '职业房东ID',
    ff.saleManId AS '拓展人员ID',
    CONCAT(`contract`.`beginDate`,
            '--',
            `contract`.`endDate`) '首次租赁周期' FROM
    flat_room fr
        LEFT JOIN
    flat_flats ff ON ff.`id` = fr.`flatsId`
        LEFT JOIN
    `flat_community` fc ON fc.`id` = ff.`communityId`
        LEFT JOIN
    (SELECT 
        `sale`.`roomId`, `sale`.`beginDate`, `sale`.`endDate`
    FROM
        (SELECT 
        roomId, cs.`beginDate`, cs.`endDate`
    FROM
        `cntr_salecontract` cs
    ORDER BY cs.`createTime` ASC) `sale`
    GROUP BY `sale`.roomId) `contract` ON `contract`.roomId = fr.`id`
WHERE
    ff.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND ff.`createTime` < '2016-06-01'
        AND fr.`createTime` < '2016-06-01'
        AND (ff.`status` = 1 AND fr.`status` = 1
        AND fc.`status` = 1
        OR EXISTS( SELECT 
            1
        FROM
            test.jz111 jz111
        WHERE
            ff.id = jz111.flatsId
                AND fr.id = jz111.id));

create index testjz12idx on jz12(`房屋唯一识别号`);

ALTER TABLE `test`.`jz12`
  ADD COLUMN `小区` VARCHAR(32) NULL ,
  ADD COLUMN `单元` VARCHAR(32) NULL ,
  ADD COLUMN `小区是否有效` tinyint NULL ,
  ADD COLUMN `合同状态` tinyint NULL ,
  ADD COLUMN `是否有效` tinyint NULL ,
  ADD COLUMN `是否显示` tinyint NULL ;

UPDATE `test`.`jz12` jz12
        INNER JOIN
    `flat_room` `fr` ON `fr`.`id` = `jz12`.`房间唯一识别号`
        LEFT JOIN
    `flat_flats` `ff` ON `ff`.`id` = `jz12`.`房屋唯一识别号`
        LEFT JOIN
    `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
        LEFT JOIN
    `cntr_salecontract` `cs` ON `cs`.`roomId` = `jz12`.`房间唯一识别号`
        AND `首次租赁周期` = CONCAT(`cs`.`beginDate`, '--', `cs`.`endDate`) 
SET 
    `jz12`.`单元` = `ff`.`unit`,
    `jz12`.`小区是否有效` = (IF(`fc`.`status` = 1, 1, 0)),
    `jz12`.`合同状态` = (CASE
        WHEN
            `cs`.`status` IN (3 , 5)
                AND (cs.loseEfficacyDate > cs.beginDate
                OR cs.loseEfficacyDate IS NULL)
                AND cs.`beginDate` IS NOT NULL
        THEN
            1
        ELSE 0
    END),
    `jz12`.`是否显示` = (CASE
        WHEN
            `fr`.`mogoOfflineEndTime` IS NOT NULL
                AND `fr`.`mogoOfflineEndTime` >= NOW()
        THEN
            0
        WHEN `fr`.`onlineStatus` = 2 THEN 0
        WHEN `fr`.`rentStatus` != 1 THEN 0
        WHEN `fr`.`verifyStatus` = 3 THEN 0
        ELSE 1
    END),
    `jz12`.`是否有效` = IF(`fr`.`status` = 1, 1, 0)
WHERE
    jz12.`房间唯一识别号` > 0;

/*1.3	用户主（包括签约人）数据，包含用户ID、手机号、用户属性（如身份证号码）、
用户注册时间（账号生成时间）、最近登录时间、该用户交易明细（每笔签约信息）、首次租赁的周期*/
drop table if exists test.jz131;

CREATE TABLE test.jz131 AS SELECT * FROM
    user_loginlog
WHERE
    loginType IN (1 , 4)
        AND loginStatus = 2001;

UPDATE test.jz131 ul 
SET 
    userid = (SELECT 
            id
        FROM
            user_renter ur
        WHERE
            ul.loginAccount = ur.account)
WHERE
    userid IS NULL;

UPDATE test.jz131 ul 
SET 
    userid = (SELECT 
            id
        FROM
            user_renter ur
        WHERE
            ul.loginAccount = ur.cellphone)
WHERE
    userid IS NULL;

create index jz131uid on test.jz131(userid);
create index jz131id on test.jz131(id);

drop table if exists test.jz132;

CREATE TABLE test.jz132 AS SELECT MAX(id) id,
    MAX(clientip) clientip,
    MAX(accessTime) accesstime,
    userid FROM
    test.jz131
GROUP BY userid;

UPDATE test.jz132 jz132 
SET 
    clientip = (SELECT 
            clientip
        FROM
            test.jz131
        WHERE
            jz132.id = jz131.id);

create index jz132uid on test.jz132(userid);

drop TABLE if exists test.jz13;

CREATE TABLE test.jz13 AS SELECT ur.id AS '用户ID',
    SHA2(CONCAT(ur.cellphone, 'jZ*rS$1'), 512) AS '手机号',
    SHA2(CONCAT(ur.idcard, 'jZ*rS$2'), 512) AS '身份证号码',
    ur.createTime AS '用户注册时间',
    ur.createTime AS '最近登录时间' FROM
    user_renter ur
WHERE
    ur.`createTime` < '2016-06-01';

UPDATE test.jz13 ur 
SET 
    `最近登录时间` = (SELECT 
            ul.`accessTime`
        FROM
            test.jz132 ul
        WHERE
            ur.`用户ID` = ul.userid);

/*1.4	职业房东数据，包含主页房东ID、手机号、用户属性（如身份证号码）、
用户注册时间（账号生成时间）、最近登录时间、该用户交易明细（每笔签约信息）、首次租赁的周期*/
CREATE TABLE test.jz14 AS SELECT id AS '职业房东ID',
    SHA2(CONCAT(phone, 'jZ*rS$3'), 512) AS '手机号',
    SHA2(CONCAT(identityId, 'jZ*rS$4'), 512) AS '身份证号码',
    createTime AS '用户注册时间',
    latestLoginTime AS '最近登录时间' FROM
    user_landlord
WHERE
    id NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND `createTime` < '2016-06-01';

/*1.5	员工主数据（拓展人员），包含员工ID、员工注册时间、员工最近一次交易成功时间*/
drop table if exists test.jz15;

CREATE TABLE test.jz15 AS SELECT ue.id AS '拓展人员ID',
    name,
    SHA2(CONCAT(MIN(phone), 'jZ*rS$5'), 512) AS '手机号',
    SHA2(CONCAT(MIN(validDoc), 'jZ*rS$6'), 512) AS '身份证号码',
    MIN(oo.orgName) AS orgName,
    MIN(entryDate) AS '用户注册时间' FROM
    user_employee ue
        LEFT JOIN
    orga_org_position oop ON ue.id = oop.userid
        LEFT JOIN
    orga_org oo ON oop.orgid = oo.id
WHERE
    `entryDate` < '2016-06-01'
        AND (((orgName LIKE '%拓展%'
        OR orgName LIKE '%区%')
        AND orgName NOT LIKE '浦%')
        OR EXISTS( SELECT 
            1
        FROM
            user_landlord ul
        WHERE
            ue.id = ul.salesmanId))
GROUP BY ue.id;

/*1.6	房屋挂牌数据，包含房屋挂牌唯一识别号、挂牌时间、租赁时间、
结束租赁时间、房屋唯一识别号、房屋方式（单身公寓、整租、合租）、职业房东ID*/
drop table if exists test.jz161;

CREATE TABLE test.jz161 AS SELECT fr.`roomNum` AS '房间挂牌唯一识别号',
    fr.`createTime` AS '挂牌时间',
    cs.`beginDate` AS '租赁时间',
    cs.`endDate` AS '租赁结束时间',
    fr.`id` AS '房间唯一标示号',
    CASE ff.`rentType`
        WHEN 1 THEN '单身公寓'
        WHEN 2 THEN '合租'
        WHEN 3 THEN '整租'
    END AS '房间出租方式',
    ff.`landlordId` AS '职业房东ID' FROM
    flat_room fr
        LEFT JOIN
    `cntr_salecontract` cs ON fr.`id` = cs.`roomId`
        LEFT JOIN
    flat_flats ff ON ff.`id` = fr.`flatsId`
WHERE
    (fr.`status` = 1 AND ff.`status` = 1
        OR EXISTS( SELECT 
            1
        FROM
            test.jz111 jz111
        WHERE
            ff.id = jz111.flatsId
                AND fr.id = jz111.id))
        AND ff.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND fr.`createTime` < '2016-6-1'
        AND ff.`createTime` < '2016-6-1';

drop table if exists test.jz16;

CREATE TABLE test.jz16 AS SELECT `房间挂牌唯一识别号`,
    `挂牌时间`,
    MAX(`租赁时间`) AS `租赁时间`,
    MAX(`租赁结束时间`) AS `租赁结束时间`,
    `房间唯一标示号`,
    `房间出租方式`,
    `职业房东ID` FROM
    test.jz161
GROUP BY `房间挂牌唯一识别号`;

/*1.7	房屋签约数据，包含签约流水号、签约时间、签约周期、签约金额、违约金金额、
房屋交易唯一识别号、房屋挂牌唯一识别号、房间唯一识别号、房屋唯一识别号、签约人ID、
签约方式（线上、线下）、签约人使用网络设备标识（如网络设备号、IP地址、MAC地址）、
取消签约标识（提前解约标识或提前解约时间）、职业房东ID、拓展人员ID、APP来源（百度、搜狗、360等）*/
/*（线上）1.拆分线上 */
drop table if exists test.jz171;

CREATE TABLE test.jz171 AS SELECT sign.id AS '签约流水号',
    IFNULL(sale.signingDate, sale.createTime) AS '签约时间',
    CONCAT(DATE_FORMAT(sale.beginDate, '%Y/%m/%d'),
            '--',
            DATE_FORMAT(sale.endDate, '%Y/%m/%d'),
            '(',
            TIMESTAMPDIFF(MONTH,
                begindate,
                DATE_ADD(enddate, INTERVAL 1 DAY)),
            '个月',
            CASE
                WHEN
                    TIMESTAMPDIFF(DAY,
                        DATE_ADD(begindate,
                            INTERVAL TIMESTAMPDIFF(MONTH,
                                begindate,
                                DATE_ADD(enddate, INTERVAL 1 DAY)) MONTH),
                        enddate) > 0
                THEN
                    CONCAT(TIMESTAMPDIFF(DAY,
                                DATE_ADD(begindate,
                                    INTERVAL TIMESTAMPDIFF(MONTH,
                                        begindate,
                                        DATE_ADD(enddate, INTERVAL 1 DAY)) MONTH),
                                enddate),
                            '天')
                ELSE ''
            END,
            ')') AS '签约周期',
    sale.realRentPrice AS '签约金额（月租）',
    (SELECT 
            SUM(account.money)
        FROM
            bill_saleshouldaccount account
        WHERE
            account.signedOrderId = sign.id
                AND account.valid = 1
                AND account.billType = 1003
                AND account.billDtlType = 10003) AS '违约金',
    sign.id AS '房屋交易唯一识别号',
    flat.flatsNum AS '房屋挂牌唯一识别号',
    sign.roomId AS '房间唯一识别号',
    sign.flatsId AS '房屋唯一识别号',
    sign.renterId AS '签约人ID',
    CASE
        WHEN sale.turnStrtus = 0 THEN '线上'
        ELSE '线下'
    END AS '签约方式',
    CASE
        WHEN
            sign.status = 5
        THEN
            (SELECT 
                    CASE
                            WHEN surr.checkOutType = 1 THEN '正常解约'
                            ELSE CONCAT('提前解约(',
                                    DATE_FORMAT(surr.checkingOutDate, '%Y-%m-%d'),
                                    ')')
                        END
                FROM
                    oder_surrenderapply surr
                WHERE
                    surr.signedOrderId = sign.id
                        AND surr.status = 2
                ORDER BY surr.id DESC
                LIMIT 1)
        ELSE ''
    END AS '取消签约标识',
    sign.landlordId AS '职业房东ID',
    land.salesmanId AS '拓展人员ID',
    reg.value AS 'APP来源', 
    CASE WHEN sign.status IN (4 , 5, 6)  
    		 THEN '有效' 
    		 ELSE '无效'	
    END	AS '有效性' FROM
    oder_signedorder sign
        LEFT JOIN
    cntr_salecontract sale ON sign.saleContractId = sale.id
        LEFT JOIN
    user_landlord land ON sign.landlordId = land.id
        LEFT JOIN
    user_renter renter ON sign.renterId = renter.id
        LEFT JOIN
    (SELECT 
        keypro, value
    FROM
        comm_dictionary
    WHERE
        groupName = 'regChannelDtl') reg ON renter.regChannelDtl = reg.keypro
        LEFT JOIN
    flat_flats flat ON sign.flatsId = flat.id
WHERE
				sign.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND sale.createTime < '2016-6-1'
        AND sale.turnStrtus = 0
        ORDER BY sign.id ASC;

/*（线下）1.添加转客待确认  2.签约时间为NULL 取 合同起始日 3.拆分线下 */
drop table if exists test.jz172;

CREATE TABLE test.jz172 AS SELECT sign.id AS '签约流水号',
    NULL AS '签约时间',
    CONCAT(DATE_FORMAT(sale.beginDate, '%Y/%m/%d'),
            '--',
            DATE_FORMAT(sale.endDate, '%Y/%m/%d'),
            '(',
            TIMESTAMPDIFF(MONTH,
                begindate,
                DATE_ADD(enddate, INTERVAL 1 DAY)),
            '个月',
            CASE
                WHEN
                    TIMESTAMPDIFF(DAY,
                        DATE_ADD(begindate,
                            INTERVAL TIMESTAMPDIFF(MONTH,
                                begindate,
                                DATE_ADD(enddate, INTERVAL 1 DAY)) MONTH),
                        enddate) > 0
                THEN
                    CONCAT(TIMESTAMPDIFF(DAY,
                                DATE_ADD(begindate,
                                    INTERVAL TIMESTAMPDIFF(MONTH,
                                        begindate,
                                        DATE_ADD(enddate, INTERVAL 1 DAY)) MONTH),
                                enddate),
                            '天')
                ELSE ''
            END,
            ')') AS '签约周期',
    sale.realRentPrice AS '签约金额（月租）',
    (SELECT 
            SUM(account.money)
        FROM
            bill_saleshouldaccount account
        WHERE
            account.signedOrderId = sign.id
                AND account.valid = 1
                AND account.billType = 1003
                AND account.billDtlType = 10003) AS '违约金',
    sign.id AS '房屋交易唯一识别号',
    flat.flatsNum AS '房屋挂牌唯一识别号',
    sign.roomId AS '房间唯一识别号',
    sign.flatsId AS '房屋唯一识别号',
    sign.renterId AS '签约人ID',
    CASE
        WHEN sale.turnStrtus = 0 THEN '线上'
        ELSE '线下'
    END AS '签约方式',
    CASE
        WHEN
            sign.status = 5
        THEN
            (SELECT 
                    CASE
                            WHEN surr.checkOutType = 1 THEN '正常解约'
                            ELSE CONCAT('提前解约(',
                                    DATE_FORMAT(surr.checkingOutDate, '%Y-%m-%d'),
                                    ')')
                        END
                FROM
                    oder_surrenderapply surr
                WHERE
                    surr.signedOrderId = sign.id
                        AND surr.status = 2
                ORDER BY surr.id DESC
                LIMIT 1)
        ELSE ''
    END AS '取消签约标识',
    sign.landlordId AS '职业房东ID',
    land.salesmanId AS '拓展人员ID',
    reg.value AS 'APP来源',
        CASE WHEN sign.status IN (4 , 5, 6)  
    		 THEN '有效'
             WHEN sign.status = 7
    		 THEN '补录待确认'
    		 ELSE '无效'	
    END	AS '有效性' FROM
    oder_signedorder sign
        LEFT JOIN
    cntr_salecontract sale ON sign.saleContractId = sale.id
        LEFT JOIN
    user_landlord land ON sign.landlordId = land.id
        LEFT JOIN
    user_renter renter ON sign.renterId = renter.id
        LEFT JOIN
    (SELECT 
        keypro, value
    FROM
        comm_dictionary
    WHERE
        groupName = 'regChannelDtl') reg ON renter.regChannelDtl = reg.keypro
        LEFT JOIN
    flat_flats flat ON sign.flatsId = flat.id
WHERE
      sign.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND sale.createTime < '2016-6-1'
        AND sale.turnStrtus <> 0
       ORDER BY sign.id asc;

create index idxjz171 on test.jz171(`房屋唯一识别号`);
create index idxjz172 on test.jz172(`房屋唯一识别号`);

/*1.8	房屋租赁交易数据，包含交易流水号、交易时间、交易金额、付款标识（线上/线下）、
房屋交易唯一识别号、房屋签约唯一识别号、房屋挂牌唯一识别号、房间唯一识别号、房屋唯一识别号、
用户ID/签约人ID（是两个字段吗？可能是不一样的人吗？）、入住人ID、
用户使用网络设备标识（如网络设备号、IP地址、MAC地址）、交易时间、
取消交易标识（提前解约标识或提前解约时间）、职业房东ID、拓展人员ID、APP来源（百度、搜狗、360等）*/
drop table if exists test.jz18;

CREATE TABLE test.jz18 AS SELECT abr.`doneCode` AS '交易流水号',
    IF(abfd.`fundChannel` > 100
            AND abfd.`fundChannel` < 200,
        so.`fleecyTime`,
        abr.`createTime`) AS '交易时间',
    ABS(abbd.`amount`) AS '交易金额',
    IF(abfd.`fundChannel` > 100
            AND abfd.`fundChannel` < 200,
        '线下支付',
        '线上支付') AS '付款标识',
    so.id AS '签约流水号',
    ff.`flatsNum` AS '房屋挂牌唯一识别号',
    fr.`id` AS '房间唯一识别号',
    ff.`id` AS '房屋唯一识别号',
    so.`renterId` AS '签约人ID',
    (SELECT 
            GROUP_CONCAT(scu.`userId`)
        FROM
            `cntr_salecontractuserrel` scu
        WHERE
            scu.`contractId` = so.`saleContractId`) AS '入住人ID',
    IF(so.`status` = 5
            AND DATE(so.`checkOutTime`) < DATE(sc.`endDate`),
        1,
        0) AS '提前解约标识',
    so.`landlordId` '职业房东ID',
    ul.salesmanId AS '拓展员ID',
    dict.`value` AS 'APP来源' FROM
    acct.`acct_busirec` abr
        LEFT JOIN
    acct.`acct_busifeedtl` abfd ON abfd.`doneCode` = abr.`doneCode`
        AND abfd.`amount` > 0
        INNER JOIN
    acct.`acct_busibilldtl` abbd ON abbd.`doneCode` = abr.`doneCode`
        INNER JOIN
    acct.`acct_bill` ab ON abbd.`billId` = ab.`billId`
        AND ab.`billType` IN (1003)
        INNER JOIN
    bill_account_mapping bam ON bam.`billId` = ab.`billId`
        INNER JOIN
    bill_salebill sb ON sb.`id` = bam.`orderId`
        LEFT JOIN
    oder_signedorder so ON so.`id` = sb.`signedOrderId`
        LEFT JOIN
    user_landlord ul ON so.landlordId = ul.id
        LEFT JOIN
    `cntr_salecontract` sc ON sc.`id` = so.`saleContractId`
        LEFT JOIN
    flat_room fr ON fr.`id` = so.`roomId`
        LEFT JOIN
    flat_flats ff ON ff.`id` = fr.`flatsId`
        LEFT JOIN
    user_renter ur ON so.`renterId` = ur.`id`
        LEFT JOIN
    comm_dictionary dict ON dict.`groupName` = 'regChannelDtl'
        AND dict.`keyPro` = ur.`regChannelDtl`
WHERE
    so.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND abr.`createTime` < '2016-06-01';

/*1.9	租期内水电煤信息（明细）数据，包含房屋交易唯一识别号，签约人ID，职业房东ID，支
付金额，支付日期，支付方式（支付宝/微信/线下），支付人使用网络设备标识（如网络设备号、IP地址、MAC地址）、支付人信息等*/
drop table if exists test.jz19;

CREATE TABLE test.jz19 AS SELECT so.id AS '签约流水号',
    so.`renterId` AS '签约人ID',
    so.`landlordId` '职业房东ID',
    abdt.billDtlType '支付项目编号',
    abdt.`billDtlName` AS '支付项目',
    abd.`amount` AS '支付金额',
    abr.`createTime` AS '支付日期',
    CASE
        WHEN
            abfd.`fundChannel` > 100
                AND abfd.`fundChannel` < 200
        THEN
            '线下支付'
        WHEN abfd.`fundChannel` = 2 THEN '支付宝'
        WHEN abfd.`fundChannel` = 3 THEN '微信'
        ELSE '其他'
    END '支付方式',
    so.renterId '支付人' FROM
    acct.`acct_busirec` abr
        INNER JOIN
    acct.`acct_busifeedtl` abfd ON abfd.`doneCode` = abr.`doneCode`
        AND abfd.`amount` > 0
        INNER JOIN
    acct.`acct_busibilldtl` abbd ON abbd.`doneCode` = abr.`doneCode`
        INNER JOIN
    acct.`acct_bill` ab ON abbd.`billId` = ab.`billId`
        AND ab.`billType` IN (1005 , 20001)
        INNER JOIN
    acct.`acct_billdtl` abd ON abd.`billId` = ab.`billId`
        AND abd.billDtlType IN (100006 , 100007, 100008)
        INNER JOIN
    acct.`acct_billdtltype` abdt ON abdt.`billDtlType` = abd.`billDtlType`
        INNER JOIN
    bill_account_mapping bam ON bam.`billId` = ab.`billId`
        INNER JOIN
    bill_salebill sb ON sb.`id` = bam.`orderId`
        LEFT JOIN
    oder_signedorder so ON so.`id` = sb.`signedOrderId`
WHERE
    so.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND abr.`createTime` < '2016-06-01';

/*1.10 付款记录（明细）数据，包含房屋交易唯一识别号，签约人ID，职业房东ID，支付金额，
支付日期，支付方式（支付宝/微信/线下），支付人使用网络设备标识（如网络设备号、IP地址、MAC地址）、支付人信息等*/
drop table if exists test.jz1a;

CREATE TABLE test.jz1a AS SELECT so.id AS '签约流水号',
    so.`renterId` AS '签约人ID',
    so.`landlordId` '职业房东ID',
    abfd.`amount` AS '支付金额',
    abr.`createTime` AS '支付日期',
    CASE
        WHEN
            abfd.`fundChannel` > 100
                AND abfd.`fundChannel` < 200
        THEN
            '线下支付'
        WHEN abfd.`fundChannel` = 2 THEN '支付宝'
        WHEN abfd.`fundChannel` = 3 THEN '微信'
        ELSE '其他'
    END '支付方式',
    so.renterId '支付人' FROM
    acct.`acct_busirec` abr
        INNER JOIN
    acct.`acct_busifeedtl` abfd ON abfd.`doneCode` = abr.`doneCode`
        AND abfd.`amount` > 0
        INNER JOIN
    acct.`acct_busibilldtl` abbd ON abbd.`doneCode` = abr.`doneCode`
        INNER JOIN
    acct.`acct_bill` ab ON abbd.`billId` = ab.`billId`
        AND ab.`billType` IN (1003 , 1004, 1005, 10003, 20001)
        INNER JOIN
    bill_account_mapping bam ON bam.`billId` = ab.`billId`
        INNER JOIN
    bill_salebill sb ON sb.`id` = bam.`orderId`
        LEFT JOIN
    oder_signedorder so ON so.`id` = sb.`signedOrderId`
WHERE
    so.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND abr.`createTime` < '2016-06-01';

-- 1.11 查询201506月底到201605月底，每个月底的空置房间价格
drop table if exists test.jz1b;

CREATE TABLE test.jz1b AS SELECT tmp.roomId '房间id',
    tmp.checkTime '检查时间',
    tmp.salePrice '销售价格' FROM
    (SELECT 
        tmp1.roomId,
            tmp1.checkTime,
            tmp1.defPrice,
            IFNULL(tmp2.amount, tmp1.defPrice) salePrice,
            tmp2.amount,
            tmp2.startTime,
            tmp2.endTime
    FROM
        (SELECT 
        fr.id roomId,
            ct.checkTime,
            (SELECT 
                    rpd.amount
                FROM
                    flat_roomprice rp
                JOIN flat_roompricedtl rpd ON rpd.priceId = rp.id
                JOIN flat_roompricebiztype bt ON bt.bizType = rp.bizType
                JOIN comm_paytype pt ON pt.id = bt.payTypeId
                WHERE
                    pt.payTypeGroup = '1'
                        AND bt.payStage = 3
                        AND rpd.billDtlType = 10002
                        AND rp.goodsIdType = 1
                        AND rp.goodsId = fr.id
                ORDER BY rp.startTime
                LIMIT 1) defPrice
    FROM
        flat_room fr
    JOIN flat_flats ff ON fr.flatsId = ff.id
    JOIN (SELECT '2015-06-30' checkTime UNION SELECT '2015-07-31' checkTime UNION SELECT '2015-08-31' checkTime UNION SELECT '2015-09-30' checkTime UNION SELECT '2015-10-31' checkTime UNION SELECT '2015-11-30' checkTime UNION SELECT '2015-12-31' checkTime UNION SELECT '2016-01-31' checkTime UNION SELECT '2016-02-29' checkTime UNION SELECT '2016-03-31' checkTime UNION SELECT '2016-04-30' checkTime UNION SELECT '2016-05-31' checkTime) ct ON 1 = 1
    WHERE
        ff.rentType = 1
            AND NOT EXISTS( SELECT 
                *
            FROM
                flat_room fr2
            JOIN flat_flats ff2 ON fr2.flatsId = ff2.id
            JOIN oder_signedorder oso ON fr2.id = oso.roomId
            JOIN cntr_salecontract csc ON csc.id = oso.saleContractId
            WHERE
                ff2.rentType = 1 AND fr.id = fr2.id
                    AND csc.status IN (3 , 5)
                    AND ct.checkTime >= DATE(csc.beginDate)
                    AND ct.checkTime <= DATE(IFNULL(csc.loseEfficacyDate, csc.endDate)))) tmp1
    LEFT JOIN (SELECT 
        rp.goodsId roomId,
            pt.payTypeGroup payTypeGroup,
            ct.checkTime,
            rpd.amount,
            rp.startTime,
            rp.endTime
    FROM
        flat_roomprice rp
    JOIN flat_roompricedtl rpd ON rpd.priceId = rp.id
    JOIN flat_roompricebiztype bt ON bt.bizType = rp.bizType
    JOIN comm_paytype pt ON pt.id = bt.payTypeId
    JOIN (SELECT '2015-06-30' checkTime UNION SELECT '2015-07-31' checkTime UNION SELECT '2015-08-31' checkTime UNION SELECT '2015-09-30' checkTime UNION SELECT '2015-10-31' checkTime UNION SELECT '2015-11-30' checkTime UNION SELECT '2015-12-31' checkTime UNION SELECT '2016-01-31' checkTime UNION SELECT '2016-02-29' checkTime UNION SELECT '2016-03-31' checkTime UNION SELECT '2016-04-30' checkTime UNION SELECT '2016-05-31' checkTime) ct ON rp.startTime <= ct.checkTime
        AND (rp.endTime > ct.checkTime
        OR rp.endTime IS NULL)
    WHERE
        rp.goodsIdType = 1 AND bt.payStage = 3
            AND rpd.billDtlType = 10002) tmp2 ON tmp1.roomId = tmp2.roomId
        AND tmp1.checkTime = tmp2.checkTime
    ORDER BY tmp1.roomId , tmp1.checkTime , tmp2.amount) tmp
GROUP BY tmp.roomId , tmp.checkTime;

-- 1.12从201506月底到201605月底，每个月底的逾期租金账单
drop table if exists test.jz1c;
CREATE TABLE test.jz1c AS SELECT oso.roomId '房间id',
    csc.realRentPrice '月租',
    sb.amount '账单金额',
    sb.dueDate '应交日期',
    sb.payTime '最终交款日期',
    ct.checkTime '检查日期' FROM
    bill_salebill sb
        JOIN
    oder_signedorder oso ON sb.signedOrderId = oso.id
        JOIN
    cntr_salecontract csc ON csc.id = oso.saleContractId
        AND csc.status IN (3 , 5)
        JOIN
    flat_room fr ON fr.id = oso.roomId
        JOIN
    flat_flats ff ON fr.flatsId = ff.id
        JOIN
    (SELECT '2015-06-30' checkTime UNION SELECT '2015-07-31' checkTime UNION SELECT '2015-08-31' checkTime UNION SELECT '2015-09-30' checkTime UNION SELECT '2015-10-31' checkTime UNION SELECT '2015-11-30' checkTime UNION SELECT '2015-12-31' checkTime UNION SELECT '2016-01-31' checkTime UNION SELECT '2016-02-29' checkTime UNION SELECT '2016-03-31' checkTime UNION SELECT '2016-04-30' checkTime UNION SELECT '2016-05-31' checkTime) ct ON LAST_DAY(sb.dueDate) = LAST_DAY(ct.checkTime)
        AND (DATE(sb.dueDate) < DATE(sb.payTime)
        OR sb.payTime IS NULL)
        AND sb.valid = 1
WHERE
    sb.bill_type IN (1004 , 10003)
        AND ff.rentType = 1
ORDER BY oso.roomId , ct.checkTime;
