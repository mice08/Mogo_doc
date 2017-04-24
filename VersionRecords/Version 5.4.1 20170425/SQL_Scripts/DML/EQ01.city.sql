/*新开两家新城市 成都和重庆，维护对应的logo图及app进入首页前背景图*/
USE mogoroomdb;

UPDATE city SET 
                logoUrl = 'http://image.mogoroom.com/common/cityLogo/cdnew',
                bgMapUrl = '{"android":["http://image.mogoroom.com/common/CityBackground/ANDROID/Single","http://image.mogoroom.com/common/CityBackground/ANDROID/Family","http://image.mogoroom.com/common/CityBackground/ANDROID/Home"],"ios":["http://image.mogoroom.com/common/CityBackground/IOS/Single","http://image.mogoroom.com/common/CityBackground/IOS/Family","http://image.mogoroom.com/common/CityBackground/IOS/Home"]}',
                domain = 'cd'
         WHERE id = 75;
         
         
         
         
         
 UPDATE city SET 
	logoUrl = 'http://image.mogoroom.com/common/cityLogo/cqnew',
	bgMapUrl = '{"android":["http://image.mogoroom.com/common/CityBackground/ANDROID/Single","http://image.mogoroom.com/common/CityBackground/ANDROID/Family","http://image.mogoroom.com/common/CityBackground/ANDROID/Home"],"ios":["http://image.mogoroom.com/common/CityBackground/IOS/Single","http://image.mogoroom.com/common/CityBackground/IOS/Family","http://image.mogoroom.com/common/CityBackground/IOS/Home"]}',
	domain = 'cq'
 WHERE id = 132;