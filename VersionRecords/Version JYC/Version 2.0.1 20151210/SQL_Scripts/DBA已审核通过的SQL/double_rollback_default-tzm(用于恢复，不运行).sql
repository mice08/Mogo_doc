/* use mogoroomdb ，将列类型为double的修改为double */

use mogoroomdb;

alter table flat_flats_prototype modify column area double DEFAULT '0';

alter table flat_room_prototype modify column roomScore double DEFAULT '0';

alter table flat_room  modify column roomScore double DEFAULT '0';

alter table flat_room  modify column bookingPrice double DEFAULT '0';

alter table flat_room  modify column salePrice double DEFAULT '0';

alter table flat_room  modify column roomPrice double DEFAULT '0';

alter table flat_room  modify column area double DEFAULT '0';

alter table flat_room_prototype  modify column bookingPrice double DEFAULT '0';

alter table flat_room_prototype  modify column salePrice double DEFAULT '0';

alter table flat_room_prototype  modify column roomPrice double DEFAULT '0';

alter table flat_room_prototype  modify column area double DEFAULT '0';


alter table oder_businessorder  modify column payTotalAccount double DEFAULT '0' ;

alter table oder_businessorder  modify column balanceAccount double DEFAULT '0';


alter table user_useraccount  modify column balance double DEFAULT '0';

alter table user_useraccount  modify column frozenBalance double DEFAULT '0';

alter table user_useraccounttemp  modify column balance double DEFAULT '0';

alter table user_wateraccount  modify column frozenBalance double DEFAULT '0';