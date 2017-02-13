/* Database name `mogo_da` ,创建hadoop 上线需要的表*/

USE `mogo_da`;

/*Table structure for table `user_renter_app_action_detail` */

DROP TABLE IF EXISTS `user_renter_app_action_detail`;

CREATE TABLE `user_renter_app_action_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `visitDate` date NOT NULL COMMENT '访问日期，yyyy-mm-dd',
  `sysId` varchar(30) NOT NULL COMMENT '系统标识ID',
  `uid` varchar(50) NOT NULL COMMENT '租户身份唯一标识',
  `renterId` varchar(50) NOT NULL COMMENT '租户id',
  `pageActionId` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹id',
  `pageAction` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客app业务链访问明细表';

/*Table structure for table `user_renter_app_action_rule` */

DROP TABLE IF EXISTS `user_renter_app_action_rule`;

CREATE TABLE `user_renter_app_action_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sysId` varchar(30) NOT NULL COMMENT '系统标识ID',
  `pageActionId` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹id',
  `pageAction` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹',
  `module` varchar(200) NOT NULL COMMENT '轨迹模块',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客app业务链访问规则表';

/*Table structure for table `user_renter_app_action_sum` */

DROP TABLE IF EXISTS `user_renter_app_action_sum`;

CREATE TABLE `user_renter_app_action_sum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `visitDate` date NOT NULL COMMENT '访问日期，yyyy-mm-dd',
  `sysId` varchar(30) NOT NULL COMMENT '系统标识ID',
  `pageId` varchar(30) NOT NULL COMMENT '页面标识ID,关联字典表user_renter_portrait_dictionary',
  `pageTitle` varchar(50) NOT NULL COMMENT '页面标题',
  `pageActionId` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹id',
  `pageAction` varchar(1000) NOT NULL COMMENT '页面标识访问轨迹',
  `visitCount` int(10) NOT NULL DEFAULT '0' COMMENT '访问次数',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客app业务链访问表';

/*Table structure for table `user_renter_app_increased_sum` */

DROP TABLE IF EXISTS `user_renter_app_increased_sum`;

CREATE TABLE `user_renter_app_increased_sum` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `visitDate` date NOT NULL COMMENT '访问日期，yyyy-mm-dd',
  `sysId` varchar(30) NOT NULL COMMENT '系统标识ID',
  `vistCount` int(11) NOT NULL COMMENT '总访问数',
  `renterCount` int(11) NOT NULL COMMENT '登录用户访问数',
  `registCount` int(11) NOT NULL COMMENT '新注册数',
  `unRegistCount` int(11) NOT NULL COMMENT '未注册数',
  `buluCount` int(11) NOT NULL COMMENT '转客数',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客app新增用户汇总表';

/*Table structure for table `user_renter_app_sum` */

DROP TABLE IF EXISTS `user_renter_app_sum`;

CREATE TABLE `user_renter_app_sum` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `visitDate` date NOT NULL COMMENT '访问日期，yyyy-mm-dd',
  `sysId` varchar(30) NOT NULL COMMENT '系统标识ID',
  `pageId` varchar(30) NOT NULL COMMENT '页面标识ID,关联字典表user_renter_portrait_dictionary',
  `pageTitle` varchar(50) NOT NULL COMMENT '页面标题',
  `visitCount` int(10) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visitSeconds` decimal(12,3) NOT NULL DEFAULT '0.000' COMMENT '访问时长，单位秒',
  `clickCount` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `evgSeconds` decimal(12,3) NOT NULL COMMENT '平均访问时长，单位秒',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='app界面访问情况表';

/*Table structure for table `user_renter_base` */

DROP TABLE IF EXISTS `user_renter_base`;

CREATE TABLE `user_renter_base` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `createTime` date DEFAULT NULL COMMENT '创建日期',
  `userId` int(11) DEFAULT NULL COMMENT '租户id',
  `cellphone` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `cookieUID` varchar(50) DEFAULT NULL COMMENT '租户cookieUID',
  `idCard` varchar(32) DEFAULT NULL COMMENT '证件号码',
  `sex` int(11) DEFAULT NULL COMMENT '性别(男(1),女(2);)',
  `nationality` varchar(16) DEFAULT NULL COMMENT '国籍',
  `province` int(11) DEFAULT NULL COMMENT '省份id',
  `city` int(11) DEFAULT NULL COMMENT '城市id',
  `age` int(2) DEFAULT NULL COMMENT '年龄',
  `registTime` date DEFAULT NULL COMMENT '注册日期',
  `ip` varchar(16) DEFAULT NULL COMMENT '注册IP地址',
  `career` varchar(64) DEFAULT NULL COMMENT '职业',
  `constellation` varchar(16) DEFAULT NULL COMMENT '星座',
  `hobby` varchar(64) DEFAULT NULL COMMENT '兴趣爱好',
  `educational` varchar(16) DEFAULT NULL COMMENT '教育情况',
  `regChannel` int(1) NOT NULL DEFAULT '3' COMMENT '渠道类型,关联字典表comm_dictionary值groupName=channel',
  `regChannelDtl` int(1) NOT NULL DEFAULT '2' COMMENT '渠道明细,关联字典表comm_dictionary值groupName=regChannelDtl',
  `isCharge` varchar(1) DEFAULT NULL COMMENT '是否预定过房间,0:否,1:是',
  `active` varchar(5) DEFAULT NULL COMMENT '活跃等级排名(满分100,越大越活跃)',
  `lastLoginTime` date DEFAULT NULL COMMENT '访问日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户画像基础表';

/*Table structure for table `user_renter_portrait` */

DROP TABLE IF EXISTS `user_renter_portrait`;

CREATE TABLE `user_renter_portrait` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `createTime` date DEFAULT NULL COMMENT '创建日期',
  `userId` int(11) DEFAULT NULL COMMENT '租户id',
  `cellphone` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `cookieUID` varchar(50) DEFAULT NULL COMMENT '租户cookieUID',
  `city` varchar(16) DEFAULT NULL COMMENT '搜索城市',
  `cityCount` int(11) DEFAULT NULL COMMENT '搜索城市次数',
  `district` varchar(16) DEFAULT NULL COMMENT '搜索区县id',
  `districtCount` int(11) DEFAULT NULL COMMENT '搜索区县次数',
  `tradeArea` varchar(20) DEFAULT NULL COMMENT '商圈',
  `tradeAreaCount` int(11) DEFAULT NULL COMMENT '商圈次数',
  `metroLine` varchar(5) DEFAULT NULL COMMENT '最常用地铁线',
  `metroLineCount` int(11) DEFAULT NULL COMMENT '最常用地铁线次数',
  `rentType` varchar(5) DEFAULT NULL COMMENT '出租方式,1:单身公寓,2:合租,3:整租',
  `rentTypeCount` int(11) DEFAULT NULL COMMENT '出租方式次数',
  `roomType` varchar(5) DEFAULT NULL COMMENT '房源品质,1:精品房源,2:经济房源',
  `roomTypeCount` int(11) DEFAULT NULL COMMENT '房源品质次数',
  `startRoomPrice` int(30) DEFAULT NULL COMMENT '开始价格区间(1,1000)',
  `endRoomPrice` int(30) DEFAULT NULL COMMENT '开始价格区间(1,1000)',
  `roomMate` varchar(5) DEFAULT NULL COMMENT '室友类型,1:都是美女,2:都是帅哥',
  `roomMateCount` int(11) DEFAULT NULL COMMENT '室友类型次数',
  `hourseType` varchar(5) DEFAULT NULL COMMENT '户型,1室,2室,3室,4室,5室',
  `hourseTypeCount` int(11) DEFAULT NULL COMMENT '户型次数',
  `roomSourceType` varchar(5) DEFAULT NULL COMMENT '房源类型,1:小区式公寓,2:酒店式公寓',
  `roomSourceTypeCount` int(11) DEFAULT NULL COMMENT '房源类型次数',
  `turnWay` varchar(5) DEFAULT NULL COMMENT '朝向,东,西,南,北,东南,西南,东北,西北',
  `turnWayCount` int(11) DEFAULT NULL COMMENT '朝向次数',
  `isToilet` varchar(5) DEFAULT NULL COMMENT '独卫,0:否,1:是',
  `isToiletCount` int(11) DEFAULT NULL COMMENT '独卫次数',
  `isBalcony` varchar(5) DEFAULT NULL COMMENT '阳台,0:否,1:是',
  `isBalconyCount` int(11) DEFAULT NULL COMMENT '阳台次数',
  `isAirConditioner` varchar(5) DEFAULT NULL COMMENT '空调,0:否,1:是',
  `isAirConditionerCount` int(11) DEFAULT NULL COMMENT '空调次数',
  `searchWord` varchar(50) DEFAULT NULL COMMENT '搜索关键字',
  `searchWordCount` int(11) DEFAULT NULL COMMENT '搜索关键字次数',
  `sortType` varchar(5) DEFAULT NULL COMMENT '排序方式,1:价格,4:面积',
  `sortTypeCount` int(11) DEFAULT NULL COMMENT '排序方式次数',
  `active` varchar(5) DEFAULT NULL COMMENT '活跃等级排名(满分100,越大越活跃)',
  `lastLoginTime` date DEFAULT NULL COMMENT '上传访问日期',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户画像汇总表';

/*Table structure for table `user_renter_portrait_day` */

DROP TABLE IF EXISTS `user_renter_portrait_day`;

CREATE TABLE `user_renter_portrait_day` (
  `id` bigint(60) NOT NULL COMMENT '主键',
  `cellphone` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `createTime` date DEFAULT NULL COMMENT '创建日期',
  `userId` int(11) DEFAULT NULL COMMENT '租户id',
  `cookieUID` varchar(50) DEFAULT NULL COMMENT '租户cookieUID',
  `city` varchar(16) DEFAULT NULL COMMENT '搜索城市',
  `cityCount` int(11) DEFAULT NULL COMMENT '搜索城市次数',
  `district` varchar(11) DEFAULT NULL COMMENT '搜索区县id',
  `districtCount` int(11) DEFAULT NULL COMMENT '搜索区县次数',
  `tradeArea` varchar(20) DEFAULT NULL COMMENT '商圈',
  `tradeAreaCount` int(11) DEFAULT NULL COMMENT '商圈次数',
  `metroLine` varchar(5) DEFAULT NULL COMMENT '最常用地铁线',
  `metroLineCount` int(11) DEFAULT NULL COMMENT '最常用地铁线次数',
  `rentType` varchar(5) DEFAULT NULL COMMENT '出租方式,1:单身公寓,2:合租,3:整租',
  `rentTypeCount` int(11) DEFAULT NULL COMMENT '出租方式次数',
  `roomType` varchar(5) DEFAULT NULL COMMENT '房源品质,1:精品房源,2:经济房源',
  `roomTypeCount` int(11) DEFAULT NULL COMMENT '房源品质次数',
  `startRoomPrice` int(30) DEFAULT NULL COMMENT '开始价格区间(1,1000)',
  `endRoomPrice` int(30) DEFAULT NULL COMMENT '开始价格区间(1,1000)',
  `roomMate` varchar(5) DEFAULT NULL COMMENT '室友类型,1:都是美女,2:都是帅哥',
  `roomMateCount` int(11) DEFAULT NULL COMMENT '室友类型次数',
  `hourseType` varchar(5) DEFAULT NULL COMMENT '户型,1室,2室,3室,4室,5室',
  `hourseTypeCount` int(11) DEFAULT NULL COMMENT '户型次数',
  `roomSourceType` varchar(5) DEFAULT NULL COMMENT '房源类型,1:小区式公寓,2:酒店式公寓',
  `roomSourceTypeCount` int(11) DEFAULT NULL COMMENT '房源类型次数',
  `turnWay` varchar(5) DEFAULT NULL COMMENT '朝向,东,西,南,北,东南,西南,东北,西北',
  `turnWayCount` int(11) DEFAULT NULL COMMENT '朝向次数',
  `isToilet` varchar(5) DEFAULT NULL COMMENT '独卫,0:否,1:是',
  `isToiletCount` int(11) DEFAULT NULL COMMENT '独卫次数',
  `isBalcony` varchar(5) DEFAULT NULL COMMENT '阳台,0:否,1:是',
  `isBalconyCount` int(11) DEFAULT NULL COMMENT '阳台次数',
  `isAirConditioner` varchar(5) DEFAULT NULL COMMENT '空调,0:否,1:是',
  `isAirConditionerCount` int(11) DEFAULT NULL COMMENT '空调次数',
  `searchWord` varchar(50) DEFAULT NULL COMMENT '搜索关键字',
  `searchWordCount` int(11) DEFAULT NULL COMMENT '搜索关键字次数',
  `sortType` varchar(5) DEFAULT NULL COMMENT '排序方式,1:价格,4:面积',
  `sortTypeCount` int(11) DEFAULT NULL COMMENT '排序方式次数',
  `lastLoginTime` date DEFAULT NULL COMMENT '访问日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户画像日表';

/*Table structure for table `user_renter_portrait_dictionary` */

DROP TABLE IF EXISTS `user_renter_portrait_dictionary`;

CREATE TABLE `user_renter_portrait_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `busicode` varchar(30) NOT NULL COMMENT '埋点编码',
  `busiName` varchar(30) NOT NULL COMMENT '埋点名称',
  `timinal` int(1) NOT NULL DEFAULT '1' COMMENT '终端,1app,2pc',
  `sort` int(1) NOT NULL DEFAULT '1' COMMENT '排序,默认1 值越大越靠前',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '是否有效,1启用,0作废',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户画像字典表';

/*Table structure for table `user_renter_portrait_sum` */

DROP TABLE IF EXISTS `user_renter_portrait_sum`;

CREATE TABLE `user_renter_portrait_sum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cityId` int(11) DEFAULT NULL COMMENT '城市ID',
  `channel` int(2) DEFAULT NULL COMMENT '来源渠道，对应渠道字典表（1租客APP,2BS后台,3官网,4房东APP,5房东PC,6定时任务,7后台操作,8租客WAP）',
  `type` int(11) DEFAULT NULL COMMENT '统计字段（1区，2商圈，3地铁线，4房间出租方式，5品质，6价格区间，7室友类别，8户型，9房源类型，10朝向，11是否独卫，12是否有阳台，13是否有空调，14搜索关键字）',
  `keyId` varchar(100) DEFAULT NULL COMMENT '统计字段value',
  `accessNum` int(11) DEFAULT NULL COMMENT '统计次数',
  `state` int(1) DEFAULT NULL COMMENT '状态（1有效，0无效）',
  `createDate` date DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='租客汇通统计表';
