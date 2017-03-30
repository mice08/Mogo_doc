ALTER TABLE `city`
ADD COLUMN `logoUrl`  varchar(200) NOT NULL COMMENT '城市logo（城市列表显示的小图）',
ADD COLUMN `bgMapUrl`  varchar(200) NOT NULL COMMENT '城市背景图(APP首页显示的背景大图)',
ADD COLUMN `lng` Double NOT NULL COMMENT '经度',
ADD COLUMN `lat`  Double NOT NULL COMMENT '纬度',
ADD COLUMN `domain`  varchar(200) NOT NULL COMMENT '域名（北京：bj）';