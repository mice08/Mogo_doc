
/*投诉列表增加建议所属人*/
-- ALTER TABLE comm_suggestion ADD `toUserId` int(11) DEFAULT NULL COMMENT '接收用户id';

-- ALTER TABLE comm_suggestion ADD `toUserType` int(11) DEFAULT NULL COMMENT '接收类型';

/*接受人枚举初始化*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('suggestion-1', 'suggestion', '1', '1', '房东接收意见', '1', NULL);

/*同表添加转客状态字段*/
ALTER TABLE cntr_saleContract ADD turnStrtus int(11) DEFAULT '0' COMMENT '0非转客1转客2客人同意3客人不同意';

/*短信模板*/
INSERT INTO `mesg_template` (`type`, `content`, `paramCount`) VALUES ('sms_additional_renter', '${1}您好，您租住的${2}小区${3}栋${4}号Room${5}的房东已为您录入了线上租约，请到http://t.cn/RLlDhwJ去下载蘑菇租房APP，您的账号密码已生成为：${6},${7}，请先登录确认租约，确认无误后您需通过蘑菇租房APP支付每期账单，并及时修改密码和完善个人资料。若有疑问及时与房东沟通。', '7');

/*添加集中合同补录模板*/
INSERT INTO mesg_template (type, content, paramCount, status) VALUES ('sms_additional_renter_focus', '${1}您好，您租住的${2}${3}号的房东已为您录入了线上租约，请到http://t.cn/RLlDhwJ去下载蘑菇租房APP，您的账号密码已生成为：${4},${5}，请先登录确认租约，确认无误后您需通过蘑菇租房APP支付每期账单，并及时修改密码和完善个人资料。若有疑问及时与房东沟通。', '5', '1');

/*添加转客消息模版*/
insert into mesg_template(type,content,paramCount,status) values('sms_renter_saleContractConvert_failure','租客${1},不同意您${2}小区${3}栋${4}号Room${5}的补录租约，请及时与租客联系并修改该房间的合约信息。',5,1);

/*转客合同更新通知*/
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_saleContractConvert_update','${1}您好，您租住的${2}小区${3}栋${4}号Room${5}的房东已为您修改了租约，请退出账号并重新登录蘑菇租房APP确认租约，并及时修改密码和完善个人资料，若有疑问及时与房东沟通。',5,1);

/*转客合同同意通知 2015-10-8*/
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_saleContractConvert_success','租客${1},同意了您${2}小区${3}栋${4}号Room${5}的补录租约。',5,1);

/*添加转客消息模版(集中式) 2015-10-8*/
INSERT INTO mesg_template(type,content,paramCount,status) values('sms_renter_saleContractConvert_foucs_failure','租客${1},不同意您${2}${3}号的补录租约，请及时与租客联系并修改该房间的合约信息。',3,1);

/*转客合同更新通知(集中式) 2015-10-8*/
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_saleContractConvert_foucs_update','${1}您好，您租住的${2}${3}号的房东已为您修改了租约，请退出账号并重新登录蘑菇租房APP确认租约，并及时修改密码和完善个人资料，若有疑问及时与房东沟通。',3,1);

/*转客合同同意通知(集中式) 2015-10-8*/
INSERT INTO mesg_template(TYPE,content,paramCount,STATUS) VALUES('sms_renter_saleContractConvert_foucs_success','租客${1},同意了您${2}${3}号的补录租约。',3,1);


-- 转客枚举状态 2015-9-28
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('saleContractTurnStrtus-0', 'saleContractTurnStrtus', '1', '0', '非转客', '1', NULL);
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('saleContractTurnStrtus-1', 'saleContractTurnStrtus', '2', '1', '转客', '1', NULL);
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('saleContractTurnStrtus-2', 'saleContractTurnStrtus', '3', '2', '同意转客', '1', NULL);
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('saleContractTurnStrtus-3', 'saleContractTurnStrtus', '4', '3', '不同意转客', '1', NULL);

-- 销售合同表添加每期付款日字段 2015-9-30


-- 添加签约单上的状态deadline
ALTER TABLE oder_signedOrder ADD deadline datetime COMMENT '截止日期（转客专用）';

-- 销售合同表添加每期付款日字段
ALTER TABLE cntr_saleContract ADD payDate int(2) COMMENT '每期付款日（后期业务需要每期付款日，使用UPDATE cntr_saleContract SET payDate = DAY(beginDate);初始化）';

-- 数据初始化语句
-- UPDATE cntr_saleContract SET payDate = DAY(beginDate);

/*新增业务类型-转客*/
INSERT INTO comm_dictionary (CODE,groupName,sort,keypro,VALUE,STATUS) VALUES('orderRemark-1','orderRemark',1,1,'转客业务',1);

CREATE OR REPLACE VIEW repo_convertRent_info AS         
SELECT
    os.id                  AS signedOrderId,
    ffr.flatsTag           AS flatsTag,
    fr.id                  AS roomId,
    fr.roomName            AS roomName,
    ff.id                  AS flatsId,
    ff.roomNum             AS roomNum,
    ff.building            AS building,
    ff.flatType            AS flatType,
    c.id                   AS cityId,           
    cd.id                  AS districtId,
    fc.id                  AS communityId,
    fc.name                AS communityName,
    cd.name                AS districtName,
    c.name                 AS cityName,
    cst.turnStrtus         AS saleContractTurnStrtus,
    cst.id                 AS saleContractId,
    cst.createTime         AS saleContractCreateTime,
    os.status              AS signedOrderStatus,
    ff.landlordId          AS landlordId,
    ur.id                  AS renterId
FROM
    flat_room fr
JOIN flat_flats ff ON ff.id   = fr.flatsId
JOIN flat_community fc ON fc.id = ff.communityId
JOIN city_district cd ON cd.id = fc.districtId
JOIN city c ON c.id = cd.cityId
LEFT JOIN oder_signedOrder os ON fr.id = os.roomId
LEFT JOIN user_renter ur ON os.renterId = ur.id
LEFT JOIN cntr_saleContract cst ON os.saleContractId = cst.id
LEFT JOIN flat_community_property ffr ON ffr.communityId = fc.id 
WHERE fr.rentStatus = 2;

-- 2015-10-7


/*业务意见表*/
CREATE TABLE `oder_remark`( 
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(200) NOT NULL COMMENT '意见内容',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `proposer` INT(11) NOT NULL COMMENT '提出者Id',
  `proposerType` INT(2) NOT NULL COMMENT '提出者类型:见字典表groupName=userType。',
  `toUser` INT(11) NOT NULL COMMENT '接收者Id',
  `toUserType` INT(2) NOT NULL COMMENT '接收者类型:见字典表groupName=userType。',
  `busiId` INT(11) NOT NULL COMMENT '业务Id',
  `busiType` INT(2) NOT NULL COMMENT '业务类型:见字典表groupName=orderRemark',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8 COMMENT '意见记录表';