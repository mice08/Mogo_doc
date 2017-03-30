/* Database name `mogoroomdb` ，APP上线后（app store / 各大应用市场审核通过后），客户端版本升级提醒内容 v3.1.1 */
USE mogoroomdb;

INSERT INTO `comm_app_version` (`channel`,`terminal_os`,`versionCode`,`versionName`,`forceUpdate`,`updatetitle`,`updatedesc`, `url`,`createBy`,`createTime`,`createByType`,`updateBy`,`status`) 
VALUES('1','iOS','220','2.2.0','0','检测到新版本，是否升级？','["地图中添加了新的附近/通勤功能，方便大家在地图更方便的找房","房源详情页重新换了件衣服，更多详情都能一目了然了","账单做了点儿优化，让已付/未付看起来更清晰了","售后中添加了可以和客服妹纸聊天的功能","大幅优化了好多签约过程中遇到的大坑小坑种种坑"]','','1',NOW(),'4','1','1');

INSERT INTO `comm_app_version` (`channel`,`terminal_os`,`versionCode`,`versionName`,`forceUpdate`,`updatetitle`,`updatedesc`, `url`,`createBy`,`createTime`,`createByType`,`updateBy`,`status`) 
VALUES('1','Android','16','2.2.0','0','', '["1.更方便的找房，地图新增了附近找房","2.部分页面看上去更清新自然了","3.售后可以和客服妹纸聊天了","4.优化了部分机器的签约流程，终于可以愉快的玩耍了"]','http://file.mogoroom.com/android/Mogoroom_Renter_Relese.apk','1',NOW(),'4','1','1');