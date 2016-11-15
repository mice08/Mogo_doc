/*App版本数据初始化 */

USE mogoroomdb;

/*IOS企业版 -正式用户*/
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(1,18,1,'1.0.0','1.0.0','','',11,5,NOW());  
 
/*IOS企业版 -测试用户 */
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(1,18,2,'1.0.0','1.0.0','','',11,5,NOW());  
 
 
/*IOS市场版 -正式用户*/
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(2,18,1,'1.0.0','1.0.0','','',11,5,NOW());  
 
/*IOS市场版 -测试用户*/
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(2,18,2,'1.0.0','1.0.0','','',11,5,NOW());  
 
 
/*安卓市场版 -正式用户*/
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(3,18,1,'1.0.0','1.0.0','','',11,5,NOW());  
 
/*安卓市场版 -测试用户*/ 
INSERT INTO `comm_app_version_manage` (apptype,channel,stafftype,lowestVersion,latestVersion,updateDesc,downloadUrl,createBy,createByType,createTime) VALUES(3,18,2,'1.0.0','1.0.0','','',11,5,NOW());  

