/*新增日历表*/
use mogoroomdb;

DROP TABLE IF EXISTS comm_calendar;

/*==============================================================*/
/* Table: comm_calendar                           */
/*==============================================================*/
create table comm_calendar (
	`id`   INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
	`cityId`  INT(11) COMMENT '城市ID(为空表示适用所有城市，不为空表示适用cityId城市)',
	`date` date not null comment '日期',
        `weekday` int(1) not null comment '星期几(星期一:1 星期二:2 星期三:3 星期四:4 星期五:5 星期六:6 星期日:7)',
	`type` tinyint(1) not null comment '日期类型(0:休息日 1:工作日)',
	`updateBy` int(11) default null comment '修改人',
	`updateByType`  tinyint(2) default null comment '修改人类型(参考字典表组名:userType)',
	`updateTime` datetime default null comment '修改时间',
	primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历表';

/*初始化日历存储过程*/
DELIMITER //
DROP PROCEDURE IF EXISTS calendarinit //
CREATE PROCEDURE calendarinit()
BEGIN
	declare num int;
	declare dt date;
	declare wd int;
	declare type int;
	
	set num = 1;
	set dt = CURRENT_DATE();
	
	while num < 1096 do
		set wd = DAYOFWEEK(dt)-1;
		if wd = 0 then
			set wd = 7;
		end if;
		if wd > 5 then
			set type = 0;
		else
			set type = 1;
		end if;
		insert into comm_calendar(date, weekday, type) values(dt, wd, type);
		set num = num + 1;
		set dt = DATE_ADD(dt, INTERVAL 1 DAY);
	end while;
END //
DELIMITER ;