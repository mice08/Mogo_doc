/* Database name `mogoroomdb` , 修复历史补录租约数据 */
use  mogoroomdb;

set autocommit=0

update cntr_salecontract set confirmDate=createTime where turnStrtus=2 and confirmDate<='2016-07-13' ;

commit;