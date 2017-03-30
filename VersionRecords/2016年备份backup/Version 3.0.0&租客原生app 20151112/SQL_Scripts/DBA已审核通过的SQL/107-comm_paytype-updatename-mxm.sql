use mogoroomdb;

begin;
select * from comm_paytype where foregiftPeriods=0;

update comm_paytype set name=concat(name, '押金自定义')
where foregiftPeriods=0;
commit;
