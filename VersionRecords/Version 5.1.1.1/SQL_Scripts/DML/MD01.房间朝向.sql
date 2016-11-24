use mogoroomdb;

/*房间朝向修改*/
UPDATE `flat_room` SET face='东' WHERE face=1;
UPDATE `flat_room` SET face='南' WHERE face=2;
UPDATE `flat_room` SET face='西' WHERE face=3;
UPDATE `flat_room` SET face='北' WHERE face=4;
UPDATE `flat_room` SET face='东南' WHERE face=5;
UPDATE `flat_room` SET face='东北' WHERE face=6;
UPDATE `flat_room` SET face='西南' WHERE face=7;
UPDATE `flat_room` SET face='西北' WHERE face=8;

