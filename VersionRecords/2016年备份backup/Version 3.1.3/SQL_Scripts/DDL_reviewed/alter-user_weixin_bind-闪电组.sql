use mogoroomdb;


ALTER TABLE user_weixin_bind ADD COLUMN bindSrc INT(2) DEFAULT 0 COMMENT '°ó¶¨¹«ÖÚºÅ(0:Ä¢¹½¹«Ô¢ 1:Ä¢¹½»ï°é)';