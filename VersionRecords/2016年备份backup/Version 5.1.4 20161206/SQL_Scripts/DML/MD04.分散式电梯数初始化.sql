use mogoroomdb;
/*分散式电梯数为空初始化 */
update `flat_flats` set elevatorCount = 0 where elevatorCount is null and flatsTag=1;