 /* Database name `mogoroomdb` ，CMS 建表SQL(13张) */
use mogoroomdb;

/*Table structure for table `coms_bbschannel` */

DROP TABLE IF EXISTS `coms_bbschannel`;

CREATE TABLE `coms_bbschannel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `coverImgUrl` varchar(256) NOT NULL COMMENT '封面图',
  `coverImgLink` varchar(256) DEFAULT NULL COMMENT '封面链接',
  `seq` int(11) DEFAULT NULL COMMENT '排版序列',
  `name` varchar(64) NOT NULL COMMENT '频道名',
  `domain` varchar(46) NOT NULL DEFAULT '' COMMENT '频道域名(拼音或英语单词)',
  `cityId` int(11) NOT NULL COMMENT '发布城市ID',
  `platform` varchar(8) NOT NULL COMMENT '发布平台：PC / APP',
  `createBy` int(11) DEFAULT NULL COMMENT '创建者',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新者',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `online` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否上线,1=online,0=offline',
  `hasDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='社区频道';

/*Table structure for table `coms_context` */

DROP TABLE IF EXISTS `coms_context`;

CREATE TABLE `coms_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `context` longtext COMMENT '描述',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `onlineTime` datetime DEFAULT NULL COMMENT '上线时间',
  `offlineTime` datetime DEFAULT NULL COMMENT '下线时间',
  `coverImgUrl` varchar(128) DEFAULT NULL,
  `coverImg` varchar(256) DEFAULT NULL COMMENT '封面图',
  `seq` int(11) DEFAULT '0' COMMENT '排序',
  `type` int(10) unsigned DEFAULT '0' COMMENT '类型,',
  `pageview` int(10) unsigned DEFAULT '0' COMMENT '阅读量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='广告文章';

/*Table structure for table `coms_contextchannelrel` */

DROP TABLE IF EXISTS `coms_contextchannelrel`;

CREATE TABLE `coms_contextchannelrel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `channelId` int(10) unsigned NOT NULL COMMENT '频道ID',
  `contextId` int(10) unsigned NOT NULL COMMENT '频道内容ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='频道名与素材关系表/一个频道下有多个内容素材';

/*Table structure for table `coms_contextcityrel` */

DROP TABLE IF EXISTS `coms_contextcityrel`;

CREATE TABLE `coms_contextcityrel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextId` int(11) DEFAULT NULL COMMENT '内容id',
  `cityId` int(11) DEFAULT NULL COMMENT '城市id',
  `menuId` int(11) DEFAULT NULL COMMENT '菜单id',
  `seq` int(10) unsigned DEFAULT '0' COMMENT '推荐内容的展示序列',
  `img` varchar(256) DEFAULT NULL COMMENT '推荐内容第二张图片',
  `headInfo` varchar(256) DEFAULT NULL COMMENT '推荐内容第二个标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_Key_3` (`contextId`,`cityId`,`menuId`),
  KEY `AK_idx_menuid` (`menuId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='内容城市菜单关联表';

/*Table structure for table `coms_contexthelprel` */

DROP TABLE IF EXISTS `coms_contexthelprel`;

CREATE TABLE `coms_contexthelprel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `helpTypeId` int(10) unsigned NOT NULL COMMENT '帮助类型ID',
  `contextId` int(10) unsigned NOT NULL COMMENT '帮助素材内容ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='帮助类型与素材关系表/一种帮助类型下有多个内容素材';

/*Table structure for table `coms_contexttitlerel` */

DROP TABLE IF EXISTS `coms_contexttitlerel`;

CREATE TABLE `coms_contexttitlerel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextId` int(11) DEFAULT NULL,
  `titleNum` int(11) NOT NULL COMMENT '属性编码',
  `titleName` varchar(128) DEFAULT NULL COMMENT '属性名称',
  `titleValue` text COMMENT '属性值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='内容属性关联表';

/*Table structure for table `coms_helptype` */

DROP TABLE IF EXISTS `coms_helptype`;

CREATE TABLE `coms_helptype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `iconUrl` varchar(256) NOT NULL COMMENT '图表URL',
  `iconLink` varchar(256) NOT NULL COMMENT '帮助图表链接',
  `seq` int(11) NOT NULL COMMENT '排版序列',
  `name` varchar(64) NOT NULL COMMENT '类型名',
  `pinyin` varchar(64) NOT NULL COMMENT '帮助类型拼音（用以url）',
  `platform` varchar(8) NOT NULL COMMENT '发布平台：PC / APP',
  `createBy` int(11) DEFAULT NULL COMMENT '创建者',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新者',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `hasDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否被删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_Key_2` (`pinyin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='帮助类型';

/*Table structure for table `coms_hothouse` */

DROP TABLE IF EXISTS `coms_hothouse`;

CREATE TABLE `coms_hothouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `roomId` int(11) NOT NULL COMMENT '推荐房源1号位(房间ID)',
  `remarkOne` varchar(256) DEFAULT NULL COMMENT '对第一套推荐房源的评论',
  `backupRoomId` int(11) NOT NULL COMMENT '推荐房源1号位(房间ID)',
  `remarkTwo` varchar(256) DEFAULT NULL COMMENT '对第二套推荐房源的评论',
  `hotTabId` int(11) NOT NULL COMMENT '所属标签的标签ID',
  `createBy` int(11) NOT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateBy` int(11) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门房源推荐表';

/*Table structure for table `coms_hottab` */

DROP TABLE IF EXISTS `coms_hottab`;

CREATE TABLE `coms_hottab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(64) NOT NULL COMMENT '标签名',
  `seq` int(10) unsigned NOT NULL COMMENT '展示顺序',
  `cityId` int(11) NOT NULL COMMENT '城市ID',
  `onlineTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上线时间',
  `createBy` int(11) NOT NULL COMMENT '创建人工号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人工号',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='房源推荐位表';

/*Table structure for table `coms_menu` */

DROP TABLE IF EXISTS `coms_menu`;

CREATE TABLE `coms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `code` int(11) NOT NULL COMMENT '菜单编码',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `url` varchar(512) DEFAULT NULL COMMENT '链接',
  `seq` int(11) DEFAULT NULL COMMENT '排序',
  `level` tinyint(4) DEFAULT NULL COMMENT '等级',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `type` int(11) DEFAULT NULL COMMENT '类别1:PC ,2APP',
  `pid` int(11) NOT NULL COMMENT '父id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_key_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='官网菜单表';

/*Table structure for table `coms_menutitlerel` */

DROP TABLE IF EXISTS `coms_menutitlerel`;

CREATE TABLE `coms_menutitlerel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `titleNum` int(11) NOT NULL COMMENT '属性编码',
  `titleName` varbinary(64) DEFAULT NULL,
  `showSeq` int(11) NOT NULL COMMENT '展示顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='菜单和属性title关联表';

/*Table structure for table `coms_pageview` */

DROP TABLE IF EXISTS `coms_pageview`;

CREATE TABLE `coms_pageview` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextid` int(11) NOT NULL COMMENT '文章ID',
  `timeline` int(10) unsigned NOT NULL COMMENT '时间轴日期格式：20151122(day)/201543(week)/201507(month)',
  `timetype` tinyint(3) unsigned NOT NULL COMMENT '时间类型：1=天，2=周，3=月',
  `clicks` bigint(20) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_unique_key` (`contextid`,`timeline`,`timetype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章浏览量记录';

/*Table structure for table `coms_title` */

DROP TABLE IF EXISTS `coms_title`;

CREATE TABLE `coms_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '非自增主键',
  `titleNum` int(11) NOT NULL COMMENT '属性编码',
  `titleName` varchar(64) NOT NULL COMMENT '属性名',
  `describes` varchar(64) DEFAULT '' COMMENT '属性描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_u_key` (`titleNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='各类属性title表';
