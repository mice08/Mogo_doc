/* Database name `mogoroomdb` , �޸���ʷ��¼��Լ���� */
use  mogoroomdb;

set autocommit=0

update cntr_salecontract set confirmDate=createTime where turnStrtus=2 and confirmDate<='2016-07-13' ;

commit;