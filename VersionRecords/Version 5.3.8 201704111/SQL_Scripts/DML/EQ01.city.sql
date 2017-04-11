/*新开两家新城市 南京和杭州，维护对应的logo图及app进入首页前背景图*/
USE mogoroomdb;

UPDATE city SET isSupport = 1,
                isApp = 0,
                isWebsite = 1,
                isFlatsInput = 1,
                logoUrl = 'http://image.mogoroom.com/common/cityLogo/hznew',
                bgMapUrl = '{"android":["http://image.mogoroom.com/common/CityBackground/ANDROID/Single","http://image.mogoroom.com/common/CityBackground/ANDROID/Family","http://image.mogoroom.com/common/CityBackground/ANDROID/Home"],"ios":["http://image.mogoroom.com/common/CityBackground/IOS/Single","http://image.mogoroom.com/common/CityBackground/IOS/Family","http://image.mogoroom.com/common/CityBackground/IOS/Home"]}',
                domain = 'hz',
                isTP = 0
         WHERE id = 179;
         
         
         
         
         
 UPDATE city SET isSupport = 1,
	isApp = 0,
	isWebsite = 1,
	isFlatsInput = 1,
	logoUrl = 'http://image.mogoroom.com/common/cityLogo/njnew',
	bgMapUrl = '{"android":["http://image.mogoroom.com/common/CityBackground/ANDROID/Single","http://image.mogoroom.com/common/CityBackground/ANDROID/Family","http://image.mogoroom.com/common/CityBackground/ANDROID/Home"],"ios":["http://image.mogoroom.com/common/CityBackground/IOS/Single","http://image.mogoroom.com/common/CityBackground/IOS/Family","http://image.mogoroom.com/common/CityBackground/IOS/Home"]}',
	domain = 'nj',
	isTP = 0
 WHERE id = 315;