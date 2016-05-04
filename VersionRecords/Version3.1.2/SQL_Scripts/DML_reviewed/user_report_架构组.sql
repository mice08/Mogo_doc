/* Database name `mogoroomdb` , 3.1.2 添加用户注册统计相关字段*/
use mogoroomdb;

/* 添加租客渠道枚举(租客WAP) */
insert into  comm_dictionary(code,groupName,sort,keyPro,value,status,fcode,enValue)
values('channel-9','channel',9,9,'租客WAP',1,'','channel-9');

/* 更新城市编码区号 */
update city c,( 
	select mc.areaCode,mc.mobileArea
	from  comm_mobile_city mc 
	group by mc.areaCode,mc.mobileArea ) cc
set c.areaCode=cc.areaCode
where cc.mobileArea like concat('%',c.name,'%');