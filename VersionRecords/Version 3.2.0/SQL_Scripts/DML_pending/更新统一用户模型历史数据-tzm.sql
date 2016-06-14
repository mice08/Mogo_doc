use mogoroomdb;

/*更新user_landlord/user_renter添加的字段数据*/

UPDATE user_renter_info a,user_renter b SET a.isverified = b.isverified WHERE a.userid=b.id ; 

UPDATE user_info a,user_renter b SET a.nationality=ifnull(b.nationality,1),a.`birthday`=b.`birthday`,a.`real_name`=ifnull(b.`realName`,''),a.`user_name`=ifnull(b.`account`,''),a.`gender`=ifnull(b.`sex`,1),a.`nick_name`=b.`nickName` WHERE a.id =b.id;


UPDATE user_landlord_info a,user_landlord b SET a.`editPwdNum`=b.`editPwdNum`,a.`signCount`=b.`signCount` WHERE (a.`userId`=b.`id` AND b.`id`>3000000) OR (a.`userId`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_info a,user_landlord b SET a.`phoneExt` =b.`phoneExt` ,a.`addr`=b.`address`,a.`create_by`=b.`createby` WHERE (a.`id`=b.`id` AND b.`id`>300000) OR (a.`id`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_password a,user_landlord b SET a.`password`=b.`password` WHERE (a.`userId`=b.`id` AND b.`id`>300000) OR (a.`userId`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_usertype a,user_renter b SET a.status=b.status WHERE a.userid = b.id ;