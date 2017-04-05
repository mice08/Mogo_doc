  /*  Database name `bizd`  增加签到表*/
  use bizd;
  /*
  1、预估表容量:App版本签到表，基础数据新增较少
  2、每次读取量:在20条左右
  3、主要查询:
    SELECT id, longitude, latitude, address, detailAddress, createTime, createByType, createBy, createByType, soDoneCode, userId, depId, landlordId,landlordName,picGroupId,valid,remark
    FROM
      bizd_user_sign
    WHERE userId = 101
      AND depId = '20001'
    ORDER BY createTime DESC
  4. 索引:目前索引有主键id,当前签到人的部门ID-depId
  */
CREATE TABLE `bizd_user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `longitude` DOUBLE DEFAULT NULL COMMENT '经度',
  `latitude` DOUBLE DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `detailAddress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  `empId` int(11) NOT NULL COMMENT '签到人ID',
  `depId` int(11) NOT NULL COMMENT '当前签到人的部门ID(冗余字段)',
  `landlordId` int(11) DEFAULT NULL COMMENT '拜访人ID',
  `landlordName` varchar(50) DEFAULT NULL COMMENT '拜访人',
  `picGroupId` int(11) DEFAULT NULL COMMENT '图片分组表Id',
  `valid` tinyint(1) DEFAULT '1' COMMENT '用于标示该记录是否逻辑删除(1:否 0:是)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `empId` (`userId`) USING BTREE COMMENT '签到人ID',
  KEY `depId` (`depId`) USING BTREE COMMENT '当前签到人的部门ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户签到表';

