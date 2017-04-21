/*为了提升查询效率，需要添加以下索引*/
use dc;

ALTER TABLE `dc`.`dc_land_stat_inc_day`   
  ADD  INDEX `recordDate` (`recordDate`);


ALTER TABLE `dc`.`dc_land_stat_total_day`   
  ADD  INDEX `recordDate` (`recordDate`);


ALTER TABLE `dc`.`dc_land_stat_inc_month`   
  ADD  INDEX `recordMonth_valid` (`recordMonth`, `valid`);