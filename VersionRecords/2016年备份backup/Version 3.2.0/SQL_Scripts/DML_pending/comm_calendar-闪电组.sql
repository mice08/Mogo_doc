/*日历表数据初始化*/
use mogoroomdb;

drop procedure if exists calendarinit;
truncate table comm_calendar;

insert into comm_calendar(date, weekday, type) values('20160915', 4, 0);
insert into comm_calendar(date, weekday, type) values('20160916', 5, 0);
insert into comm_calendar(date, weekday, type) values('20160918', 7, 1);
insert into comm_calendar(date, weekday, type) values('20161003', 1, 0);
insert into comm_calendar(date, weekday, type) values('20161004', 2, 0);
insert into comm_calendar(date, weekday, type) values('20161005', 3, 0);
insert into comm_calendar(date, weekday, type) values('20161006', 4, 0);
insert into comm_calendar(date, weekday, type) values('20161007', 5, 0);
insert into comm_calendar(date, weekday, type) values('20161008', 6, 1);
insert into comm_calendar(date, weekday, type) values('20161009', 7, 1);