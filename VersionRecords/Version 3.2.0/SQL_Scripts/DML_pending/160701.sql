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
    SHA2(CONCAT(phone, 'jZ*rS$5'), 512) AS '手机号',
    SHA2(CONCAT(validDoc, 'jZ*rS$6'), 512) AS '身份证号码',
    oo.orgName,
    entryDate AS '用户注册时间' FROM
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
            ue.id = ul.salesmanId));

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
    fr.`status` = 1 AND ff.`status` = 1
        AND ff.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND fr.`createTime` < '2016-6-1';

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
CREATE TABLE test.jz17 AS SELECT sign.id AS '签约流水号',
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
    reg.value AS 'APP来源' FROM
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
    sign.status IN (4 , 5, 6)
        AND sign.landlordId NOT IN (123 , 124,
        3100059,
        3100230,
        3100241,
        3100387,
        3100388,
        3100752,
        3101630)
        AND sale.createTime < '2016-6-1';

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