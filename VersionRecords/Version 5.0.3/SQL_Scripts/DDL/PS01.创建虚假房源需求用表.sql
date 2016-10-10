<<<<<<< HEAD:VersionRecords/Version 5.0.3/SQL_Scripts/DDL/åˆ›å»ºè™šå‡æˆ¿æºéœ€æ±‚ç”¨è¡¨-ç£çŸ³ç»„.sql
/* Database name `mogoroomdb`
´´½¨Ğé¼Ù·¿Ô´ĞèÇóÓÃ±í£¬µÚÒ»¸öÎª¿ìÕÕÊ¹ÓÃ£¬µÚ¶ş¸öÎªbsÒ³Ãæ²éÑ¯Ê¹ÓÃ£¬Á½¸ö±íµÄÊı¾İÓÉ¶¨Ê±Æ÷Î¬»¤
µÚ¶ş¸ö±íµÄÊı¾İ²¿·Ö×Ö¶ÎÓÉbsÒ³ÃæÎ¬»¤ */

USE mogoroomdb;

DROP TABLE IF EXISTS `risk_communityBase`;
CREATE TABLE `risk_communityBase` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` date DEFAULT NULL COMMENT '´´½¨Ê±¼ä,¾«È·µ½Ìì',
  `communityId` int(11) DEFAULT NULL COMMENT 'Ğ¡Çøid',
  `avgArea` int(4) DEFAULT NULL COMMENT '·¿Ô´Æ½¾ùÃæ»ı',
  `avgPrice` int(4) DEFAULT NULL COMMENT '·¿Ô´Æ½¾ùÊÛ¼Û',
  `unitPrice` int(6) DEFAULT NULL COMMENT '·¿Ô´Ã¿Æ½Ã×Æ½¾ùµ¥¼Û',
  `createTime` datetime DEFAULT NULL COMMENT '´´½¨Ê±¼ä,¼ÇÂ¼ÏµÍ³Éú³ÉÊı¾İµÄÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='·¿Ô´·çÏÕ»ù×¼ĞÅÏ¢';

DROP TABLE IF EXISTS `risk_roomDetail`;
CREATE TABLE `risk_roomDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `commBaseId` INT(11) DEFAULT NULL COMMENT 'Ğ¡Çø»ù×¼ĞÅÏ¢id',
  `roomId` int(11) DEFAULT NULL COMMENT '·¿¼äid',
  `riskCode` varchar(25) DEFAULT NULL COMMENT '·¿Ô´·çÏÕ±àÂë(²Î¿¼×Öµä±í×éÃû:riskCode)',
  `status` tinyint(1) DEFAULT '0' COMMENT '´¦Àí×´Ì¬(0:Î´´¦Àí 1:ÒÑ´¦Àí)',
  `valid` tinyint(1) DEFAULT '1' COMMENT 'ÊÇ·ñÓĞĞ§(1:ÓĞĞ§ 0:ÎŞĞ§)',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `handleTime` datetime DEFAULT NULL COMMENT '´¦ÀíÊ±¼ä',
  `employeeId` int(11) DEFAULT NULL COMMENT '´¦ÀíÈËid,Ô±¹¤id',
  `soDoneCode` int(32) DEFAULT NULL COMMENT '²Ù×÷Á÷Ë®ºÅ',
  `punishType` varchar(25) DEFAULT NULL COMMENT '³Í·£ÀàĞÍ(²Î¿¼×Öµä±í×éÃû:punishType)',
  `punishDegree` varchar(25) DEFAULT NULL COMMENT '³Í·£³Ì¶È(²Î¿¼×Öµä±í×éÃû:punishDegree)',
  `userMemo` varchar(255) DEFAULT NULL COMMENT '´¦ÀíÈË±¸×¢',
  `remark` varchar(255) DEFAULT NULL COMMENT 'ÏµÍ³±¸×¢',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `soDoneCode` (`soDoneCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='·çÏÕ·¿Ô´ĞÅÏ¢';
=======
/* Database name `mogoroomdb`
´´½¨Ğé¼Ù·¿Ô´ĞèÇóÓÃ±í£¬µÚÒ»¸öÎª¿ìÕÕÊ¹ÓÃ£¬µÚ¶ş¸öÎªbsÒ³Ãæ²éÑ¯Ê¹ÓÃ£¬Á½¸ö±íµÄÊı¾İÓÉ¶¨Ê±Æ÷Î¬»¤
µÚ¶ş¸ö±íµÄÊı¾İ²¿·Ö×Ö¶ÎÓÉbsÒ³ÃæÎ¬»¤ */

USE mogoroomdb;

DROP TABLE IF EXISTS `risk_communityBase`;
CREATE TABLE `risk_communityBase` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` date DEFAULT NULL COMMENT '´´½¨Ê±¼ä,¾«È·µ½Ìì',
  `communityId` int(11) DEFAULT NULL COMMENT 'Ğ¡Çøid',
  `avgArea` int(4) DEFAULT NULL COMMENT '·¿Ô´Æ½¾ùÃæ»ı',
  `avgPrice` int(4) DEFAULT NULL COMMENT '·¿Ô´Æ½¾ùÊÛ¼Û',
  `unitPrice` int(6) DEFAULT NULL COMMENT '·¿Ô´Ã¿Æ½Ã×Æ½¾ùµ¥¼Û',
  `createTime` datetime DEFAULT NULL COMMENT '´´½¨Ê±¼ä,¼ÇÂ¼ÏµÍ³Éú³ÉÊı¾İµÄÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='·¿Ô´·çÏÕ»ù×¼ĞÅÏ¢';

DROP TABLE IF EXISTS `risk_roomDetail`;
CREATE TABLE `risk_roomDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roomId` int(11) DEFAULT NULL COMMENT '·¿¼äid',
  `riskCode` varchar(25) DEFAULT NULL COMMENT '·¿Ô´·çÏÕ±àÂë(²Î¿¼×Öµä±í×éÃû:riskCode)',
  `status` tinyint(1) DEFAULT '0' COMMENT '´¦Àí×´Ì¬(0:Î´´¦Àí 1:ÒÑ´¦Àí)',
  `valid` tinyint(1) DEFAULT '1' COMMENT 'ÊÇ·ñÓĞĞ§(1:ÓĞĞ§ 0:ÎŞĞ§)',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `handleTime` datetime DEFAULT NULL COMMENT '´¦ÀíÊ±¼ä',
  `employeeId` int(11) DEFAULT NULL COMMENT '´¦ÀíÈËid,Ô±¹¤id',
  `soDoneCode` int(32) DEFAULT NULL COMMENT '²Ù×÷Á÷Ë®ºÅ',
  `punishType` varchar(25) DEFAULT NULL COMMENT '³Í·£ÀàĞÍ(²Î¿¼×Öµä±í×éÃû:punishType)',
  `punishDegree` varchar(25) DEFAULT NULL COMMENT '³Í·£³Ì¶È(²Î¿¼×Öµä±í×éÃû:punishDegree)',
  `userMemo` varchar(255) DEFAULT NULL COMMENT '´¦ÀíÈË±¸×¢',
  `remark` varchar(255) DEFAULT NULL COMMENT 'ÏµÍ³±¸×¢',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `soDoneCode` (`soDoneCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='·çÏÕ·¿Ô´ĞÅÏ¢';
>>>>>>> 7ce3726c15368185d1abc3e066a0555c82f01ae8:VersionRecords/Version 5.0.3/SQL_Scripts/DDL/PS01.åˆ›å»ºè™šå‡æˆ¿æºéœ€æ±‚ç”¨è¡¨.sql
 