/* Database name `mogoroomdb` ，APP上线后，客户端版本升级提醒内容 */

USE mogoroomdb;

INSERT INTO `comm_app_version` (`channel`,`terminal_os`,`versionCode`,`versionName`,`forceUpdate`,`updatetitle`,`updatedesc`, `url`,`createBy`,`createTime`,`createByType`,`updateBy`,`status`) 
VALUES('1','Android','23','3.3.0','0','','["1.新增查看芝麻信用分功能","2.预约、预定、签约调整及优化"]','http://file.mgzf.com/android/Mogoroom_Renter_Relese.apk','1',NOW(),'4','1','1');

INSERT INTO `comm_app_version` (`channel`,`terminal_os`,`versionCode`,`versionName`,`forceUpdate`,`updatetitle`,`updatedesc`, `url`,`createBy`,`createTime`,`createByType`,`updateBy`,`status`) 
VALUES('1','iOS','330','3.3.0','0','检测到新版本，是否升级？','["新增了芝麻信用的支持","优化了部分的预约预定的显示"]','','1',NOW(),'4','1','1');