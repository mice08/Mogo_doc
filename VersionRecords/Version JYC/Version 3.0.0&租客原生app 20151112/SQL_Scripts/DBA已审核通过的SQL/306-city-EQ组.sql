/* Database name `mogoroomdb` , 3.0版本app上线需要城市背景图及logo图，由于之前只考虑一个城市只放一张图，现需要放多张图随机选取一张，所以需要扩大字段长度*/
USE mogoroomdb;

#更新城市背景图字段长度
ALTER TABLE city MODIFY COLUMN bgMapUrl VARCHAR(1000) NOT NULL COMMENT '城市背景图';

#更新城市背景图  多张
UPDATE city
  SET bgMapUrl = '{"android":["http://image.mogoroom.com/common/CityBackground/ANDROID/Single","http://image.mogoroom.com/common/CityBackground/ANDROID/Family","http://image.mogoroom.com/common/CityBackground/ANDROID/Home"],"ios":["http://image.mogoroom.com/common/CityBackground/IOS/Single","http://image.mogoroom.com/common/CityBackground/IOS/Family","http://image.mogoroom.com/common/CityBackground/IOS/Home"]}'
 WHERE id IN (289,131,340,257);
 
#更新城市logo图
#上海
UPDATE city
   SET logoUrl = 'http://image.mogoroom.com/common/cityLogo/sh'
 WHERE id = 289;
 
#北京
UPDATE city
   SET logoUrl = 'http://image.mogoroom.com/common/cityLogo/bj'
 WHERE id = 131;
 
#深圳
UPDATE city
   SET logoUrl = 'http://image.mogoroom.com/common/cityLogo/sz'
 WHERE id = 340;
 
#广州
UPDATE city
   SET logoUrl = 'http://image.mogoroom.com/common/cityLogo/gz'
 WHERE id = 257;
