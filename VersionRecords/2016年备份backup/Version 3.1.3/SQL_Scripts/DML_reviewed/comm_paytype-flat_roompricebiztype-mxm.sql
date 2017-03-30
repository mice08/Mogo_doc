use mogoroomdb;

--
-- 新增付款方式、以及与房间相关的flat_roompricebiztype记录 
--
begin;
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押四', 1, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押五', 1, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押六', 1, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押七', 1, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押八', 1, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押九', 1, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押十', 1, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押十一', 1, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付一押十二', 1, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押四', 2, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押五', 2, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押六', 2, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押七', 2, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押八', 2, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押九', 2, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押十', 2, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押十一', 2, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付二押十二', 2, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押四', 3, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押五', 3, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押六', 3, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押七', 3, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押八', 3, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押九', 3, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押十', 3, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押十一', 3, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付三押十二', 3, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押金自定义', 4, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押一', 4, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押二', 4, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押三', 4, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押四', 4, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押五', 4, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押六', 4, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押七', 4, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押八', 4, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押九', 4, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押十', 4, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押十一', 4, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付四押十二', 4, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押金自定义', 5, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押一', 5, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押二', 5, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押三', 5, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押四', 5, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押五', 5, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押六', 5, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押七', 5, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押八', 5, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押九', 5, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押十', 5, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押十一', 5, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付五押十二', 5, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押四', 6, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押五', 6, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押六', 6, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押七', 6, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押八', 6, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押九', 6, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押十', 6, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押十一', 6, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付六押十二', 6, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押金自定义', 7, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押一', 7, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押二', 7, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押三', 7, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押四', 7, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押五', 7, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押六', 7, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押七', 7, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押八', 7, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押九', 7, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押十', 7, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押十一', 7, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付七押十二', 7, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押金自定义', 8, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押一', 8, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押二', 8, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押三', 8, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押四', 8, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押五', 8, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押六', 8, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押七', 8, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押八', 8, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押九', 8, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押十', 8, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押十一', 8, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付八押十二', 8, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押金自定义', 9, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押一', 9, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押二', 9, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押三', 9, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押四', 9, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押五', 9, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押六', 9, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押七', 9, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押八', 9, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押九', 9, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押十', 9, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押十一', 9, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付九押十二', 9, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押金自定义', 10, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押一', 10, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押二', 10, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押三', 10, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押四', 10, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押五', 10, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押六', 10, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押七', 10, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押八', 10, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押九', 10, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押十', 10, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押十一', 10, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十押十二', 10, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押金自定义', 11, 0, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押一', 11, 1, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押二', 11, 2, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押三', 11, 3, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押四', 11, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押五', 11, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押六', 11, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押七', 11, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押八', 11, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押九', 11, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押十', 11, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押十一', 11, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十一押十二', 11, 12, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押四', 12, 4, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押五', 12, 5, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押六', 12, 6, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押七', 12, 7, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押八', 12, 8, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押九', 12, 9, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押十', 12, 10, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押十一', 12, 11, 0, 1);
INSERT INTO comm_paytype(name, `rentPeriods`, `foregiftPeriods` , `finProdType` , `payTypeGroup`)VALUES ('付十二押十二', 12, 12, 0, 1);

-- 增flat_roompricebiztype
insert into flat_roompricebiztype(bizType, payTypeId, payStage)
select  10000 + 100 * pt.id + ps.id 
, pt.id
, ps.id
from comm_paytype pt, 
(select 1 as id 
union select 2 as id
union select 3 as id
union select 4 as id) ps
where pt.id not in
(select  paytypeid from flat_roompricebiztype group by paytypeid)
;

commit;