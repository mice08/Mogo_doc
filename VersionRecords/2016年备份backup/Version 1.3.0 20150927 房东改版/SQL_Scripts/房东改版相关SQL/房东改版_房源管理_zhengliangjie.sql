/*
����PC����Ԣ���͹�����

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��11�� 15:14:04
Author ��zhegnliangjie
*/


-- ��Ԣ�����ֵ�
INSERT INTO  `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('flatsTag-1', 'flatsTag', '1', '1', '��ɢʽ��Ԣ', '1', NULL);
INSERT INTO  `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('flatsTag-2', 'flatsTag', '2', '2', '����ʽ��Ԣ', '1', NULL);

-- ��Ԣ���ͼ�¼��
-- CREATE TABLE `flat_flatsTag` (
--  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ֵ',
--  `landlordId` int(11) NOT NULL COMMENT '����Id',
--  `mansionName` varchar(255) NOT NULL COMMENT '��Ԣ¥������',
--  `flatsTag` int(1) NOT NULL DEFAULT '2' COMMENT '��Ԣ���(2����ʽ��1��ɢʽ�����ֵ�)',
--  `floorCount` int(3) DEFAULT '0' COMMENT '��¥����',
--  `isLift` int(1) DEFAULT '1' COMMENT '�Ƿ��е���(0���ޣ�1����)',
--  `createBy` int(11)  COMMENT '������Id',
--  `createTime` datetime  COMMENT '����ʱ��',
--  `createByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
--  `updateBy` int(11)  COMMENT '������',
--  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
--  `updateByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
--  `remark` varchar(255)  COMMENT '��ע',
--  `status` int(1) DEFAULT '1' COMMENT '״̬',
--  PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- ��Ԣ���͹�����
--CREATE TABLE `flat_flatsTag_relation` (
--  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ֵ',
--  `roomId` int(11) NOT NULL COMMENT '����Id',
--  `flatsTagId` int(11) NOT NULL COMMENT '��ǩId',
--  `flatsAlias` int(1) DEFAULT '2' COMMENT '�������ͣ�1:������,2:��׼�ͣ�',
--  `createBy` int(11)  COMMENT '������Id',
--  `createTime` datetime  COMMENT '����ʱ��',
--  `createByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
--  `updateBy` int(11)  COMMENT '������',
--  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
--  `updateByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
--  `remark` varchar(255)  COMMENT '��ע',
--  `status` int(1) DEFAULT '1' COMMENT '״̬',
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- ���й�Ԣ���Ա�
CREATE TABLE `flat_community_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ֵ',
  `landlordId` int(11) NOT NULL COMMENT '����Id',
  `communityId` int(11) NOT NULL COMMENT 'С��Id������ʽ��Ԣ��',
  `mansionName` varchar(255) NOT NULL COMMENT '��Ԣ¥������',
  `floorCount` int(3) DEFAULT '0' COMMENT '��¥����',
  `isLift` int(1) DEFAULT '1' COMMENT '�Ƿ��е���(0���ޣ�1����)',
  `flatsTag` int(1) NOT NULL DEFAULT '2' COMMENT '��Ԣ���(2����ʽ��1��ɢʽ�����ֵ�)',
  `createBy` int(11)  COMMENT '������Id',
  `createTime` datetime  COMMENT '����ʱ��',
  `createByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
  `updateBy` int(11)  COMMENT '������',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `updateByType` INT(11) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���',
  `remark` varchar(255)  COMMENT '��ע',
  `status` int(1) DEFAULT '1' COMMENT '״̬',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


/*
��Ԣ����������ͼ
Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��11�� 13:56:04
Author ��zhegnliangjie
*/
DROP TABLE IF EXISTS flats_room_detail;
CREATE OR REPLACE VIEW `flats_room_detail` AS SELECT
	`fr`.`id` AS `roomId`,
	`fr`.`roomNum` AS `roomNum`,
	`fr`.`roomName` AS `roomName`,
	`fr`.`face` AS `roomFace`,
	`fr`.`area` AS `roomArea`,
	`fr`.`rentStatus` AS `rentStatus`,
	`fr`.`roomType` AS `roomType`,
	`ur`.`sex` AS `renterSex`,
	`fr`.`bookingPrice` AS `bookingPrice`,
	`fr`.`payType` AS `payType`,
	`fr`.`roomPrice` AS `roomPrice`,
	`fr`.`salePrice` AS `salePrice`,
	`fr`.`payType2` AS `payType2`,
	`fr`.`roomPrice2` AS `roomPrice2`,
	`fr`.`salePrice2` AS `salePrice2`,
	`ff`.`id` AS `flatsId`,
	`ff`.`flatsNum` AS `flatsNum`,
	`ff`.`building` AS `building`,
	`ff`.`roomNum` AS `flatsRoomNum`,
	`ff`.`floorNum` AS `floorNum`,
	`ff`.`floorCountNum` AS `floorCountNum`,
	`c`.`id` AS `cityId`,
	`c`.`name` AS `cityName`,
	`cd`.`id` AS `districtId`,
	`cd`.`name` AS `districtName`,
	`fc`.`id` AS `communityId`,
	`fc`.`street` AS `street`,
	`fc`.`nong` AS `nong`,
	`fc`.`name` AS `communityName`,
	`cba`.`name` AS `businessName`,
	`fcp`.`flatsTag` AS `flatsTag`,
	`fcp`.`mansionName` AS `mansionName`,
	`ff`.`bedroomCount` AS `bedroomCount`,
	`ff`.`parlorCount` AS `parlorCount`,
	`ff`.`kitchenCount` AS `kitchenCount`,
	`ff`.`toiletCount` AS `toiletCount`,
	`ff`.`isVerify` AS `flatVerifyStatus`,
	`ff`.`landlordId` AS `landlordId`,
	`fcp`.`id` AS `flatsTagId`,
	`ff`.`rentType` AS `rentType`,
	`ff`.`area` AS `flatsArea`,
	`fr`.`subTitle` AS `subTitle`,
	`fr`.`intro` AS `roomDesc`,
	`fr`.`status` AS `roomStatus`,
	`ff`.`status` AS `flatsStatus`,
	`ff`.`nickName` AS `flatsAlias`,
	`fr`.`isPutaway` AS `isPutaway`,
	`fr`.`signedOrderId` AS `signedOrderId`,
	`fr`.`renterId` AS `renterId`
FROM
	(
		(
			(
				(
					(
						(
							`flat_room` `fr`
							LEFT JOIN `user_renter` `ur` ON (
								(`fr`.`renterId` = `ur`.`id`)
							)
						)
						JOIN `flat_flats` `ff`
					)
					JOIN (
						`flat_community` `fc`
						LEFT JOIN `flat_community_property` `fcp` ON (
							(
								`fcp`.`communityId` = `fc`.`id`
							)
						)
					)
				)
				JOIN `city_business_area` `cba`
			)
			JOIN `city_district` `cd`
		)
		JOIN `city` `c`
	)
WHERE
	(
		(`fr`.`flatsId` = `ff`.`id`)
		AND (
			`ff`.`communityId` = `fc`.`id`
		)
		AND (
			`fc`.`businessId` = `cba`.`id`
		)
		AND (
			`fc`.`districtId` = `cd`.`id`
		)
		AND (`cd`.`cityId` = `c`.`id`)
	)
;



-- room��������ֶ�
ALTER TABLE `flat_room`
ADD COLUMN `isPutaway` int(1) DEFAULT 1 COMMENT '�Ƿ��ϼ�(0:�¼ܣ�1���ϼ�),������Ĭ���ϼ�' AFTER `roomPrice2`,
ADD COLUMN `putawayTime` datetime NULL  COMMENT '�ϼ�ʱ��' AFTER `isPutaway`;

-- flat_room �м������סʱ���ֶ�
ALTER TABLE flat_room ADD checkInTime DATETIME COMMENT '����סʱ��';

-- ��ʼ���ϼ�ʱ��
update flat_room  set putawayTime =createTime;

-- flat��ӹ�Ԣ����
ALTER TABLE `flat_flats`
ADD COLUMN `nickName` varchar(50) COMMENT '��Ԣ����' AFTER `updateChannel`;

-- 2015-10-6 ������
-- ���С���ͷ�Դ�Ĺ�ϵ�����createByType

#community�����createByType(���������ͣ�emp,landlord)
ALTER TABLE `flat_community` ADD COLUMN `createByType` INT(2) COMMENT '�����û�����,���ֵ��groupName=userType��0:����;4���;5:Ա��' AFTER `status`;

#����ֵ���¼
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS)VALUES('userType-5','userType',5,5,'Ա��',1)

#����relation��������С���Ĺ�����
CREATE TABLE `landlord_community_relation` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `landlordId` INT(11) NOT NULL COMMENT '����ID',
  `communityId` INT(11) NOT NULL COMMENT 'С��ID',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `createBy` INT(11) NOT NULL COMMENT '������',
  `createByType` INT(2) NOT NULL COMMENT '�����û�����,���ֵ��groupName=userType��',
  `status` INT(1) NOT NULL DEFAULT '1' COMMENT '״̬0��Ч,1��Ч',
  PRIMARY KEY (`id`)
) comment='������С���Ĺ�ϵ��' ENGINE=INNODB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#���������ݱ��Ϊ��Ч �����ַ�Դ��Ϣ���󣬷���idΪNULL����ΪС��idΪNULL��
UPDATE flat_flats SET STATUS=0 WHERE ISNULL(communityId) OR landlordid=0 OR ISNULL(landlordid);

#���relation���¼(��ʼ��)
INSERT INTO landlord_community_relation(landlordId,communityId,createTime,createBy,createByType)
SELECT landlordId,communityId,NOW(),703,5 FROM flat_flats 
WHERE flat_flats.status=1 AND landlordId IS NOT NULL AND communityId IS NOT NULL AND landlordId != 0 
GROUP BY flat_flats.`communityId`,flat_flats.`landlordId`;

-- 2015-10-10 ������
-- ��̬ͼ��ѯ��ͼ
CREATE OR REPLACE
VIEW `repo_room_status` AS 
select 
fr.id as roomId,
fc.`name` as communityName,
fcp.mansionName as mansionName,
fc.id as communityId,
ff.id as flatsId,
ff.building as building,
ff.roomNum as flatsRoomNum,
ff.flatsNum as flatsNum,
ff.rentType as rentType,
fr.roomNum as roomNum,
fr.roomName as roomName,
fr.payType as payType,
fr.salePrice as salePrice,
fr.roomPrice as roomPrice,
fr.payType2 as payType2,
fr.salePrice2 as salePrice2,
fr.roomPrice2 as roomPrice2,
fr.lockTime as lockTime ,
fr.rentStatus  as rentStatus,
ur.id as rentId,
ur.realName as rentName,
ur.cellphone as rentPhone,
cs.id  as saleContractId,
cs.leaseTerm as rentPeriod,
cs.turnStrtus as turnStrtus,
ff.landlordId as landlordId,
ff.nickName as nickName,
ff.isVerify as flatsVerify,
ff.bedroomCount as bedroomCount,
ff.parlorCount as parlorCount,
ff.floorNum as floorNum,
fr.isPutaway as isPutaway,
fr.putawayTime as putawayTime,
os.id as signedOrderId,
ba.id as saleBillId,
fcp.id as flatsTagId,
case fcp.flatsTag when  2 then 2 ELSE 1 end as flatsTag,
CASE ff.isVerify WHEN 1  THEN  fr.rentStatus 
                 WHEN 0  then 4
                 WHEN 2   THEN 4 end as roomRentStatus,
ba.dueDate as dueDate,
cs.endDate as endDate,
fr.`status` as roomStatus,
ff.`status` as flatsStatus,
fc.`status` as communityStatus,
fr.checkInTime as checkInTime

from flat_room fr 
left join user_renter ur on ur.id  = fr.renterId
left join oder_signedOrder os on os.id = fr.signedOrderId
left join cntr_saleContract cs on cs.id = os.saleContractId 	
left join bill_saleBill ba  on ba.signedOrderId = fr.signedOrderId  and (ba.billType =1011 and ba.valid = 1 and ba.payStatus = 0)

 join flat_flats ff on ff.id = fr.flatsId 
 join flat_community fc on fc.id= ff.communityId
 left join flat_community_property fcp on fcp.communityId = fc.id AND fcp.landlordId = ff.landlordId
 join city_district cd on cd.id = fc.districtId
 join city_business_area cba on cba.id = fc.businessId
 join city c on c.id = cd.cityId ;
 
 
 -- 2015��10��11�� ֣����
 -- ��������������
ALTER TABLE `flat_community_property`
ADD INDEX `fcp_landlordId` (`landlordId`) USING BTREE ,
ADD INDEX `fcp_communityId` (`communityId`) USING BTREE ;

ALTER TABLE `bill_saleBill`
ADD INDEX `bs_signedOrderId` (`signedOrderId`) USING BTREE ;

ALTER TABLE `flat_room`
ADD INDEX `fr_signedOrderId` (`signedOrderId`) USING BTREE ;

ALTER TABLE `oder_signedOrder`
ADD INDEX `os_saleContractId` (`saleContractId`) USING BTREE ;

ALTER TABLE `flat_community`
ADD INDEX `fc_businessId` (`businessId`) USING BTREE ;
 


 
 
 
 
 
 
 