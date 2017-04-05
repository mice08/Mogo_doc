/*组织架构数据处理*/
use mogoroomdb;

/* 吴志文 */
INSERT INTO `orga_org_position` (`userId`, `orgId`, `positionId`, `label`, `status`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`) 
SELECT '2002462',id,'2','硬装设计师',1,1,5,NOW(),1,5,NOW() FROM `orga_org` WHERE orgname ='直营设计部';
/* 刘彬如 */
INSERT INTO `orga_org_position` (`userId`, `orgId`, `positionId`, `label`, `status`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`) 
SELECT '2002463',id,'2','用户运营',1,1,5,NOW(),1,5,NOW() FROM `orga_org` WHERE orgname ='SEO组';

/* 余冉 */
UPDATE user_employee_info SET thirdId ='0457303518650576' WHERE userid=2002535;
/* 邓加俊 */
UPDATE user_employee_info SET thirdId ='046614322936243709' WHERE userid=2002509;
/* 朱顺然 */
UPDATE user_employee_info SET thirdId ='033101171526625773' WHERE userid=2002506;
/* 刘招娣 */
UPDATE user_employee_info SET thirdId ='046537065121003968' WHERE userid=2002505;
/* 刘轩赫 */
UPDATE user_employee_info SET thirdId ='041015380921370682' WHERE userid=2002510;
/* 郑金杰 */
UPDATE user_employee_info SET thirdId ='035804083636810832' WHERE userid=2002511;
/* 王迪 */
UPDATE user_employee_info SET thirdId ='0468406743953791' WHERE userid=2002513;
/* 张迪 */
UPDATE user_employee_info SET thirdId ='0468260743791754' WHERE userid=2002514;
/* 田伯龙 */
UPDATE user_employee_info SET thirdId ='024019312929499258' WHERE userid=2002516;
/* 王毅 */
UPDATE user_employee_info SET thirdId ='0426190611944538' WHERE userid=2002517;
/* 王玉磊 */
UPDATE user_employee_info SET thirdId ='050352270329373228' WHERE userid=2002518;
/* 张令峰 */
UPDATE user_employee_info SET thirdId ='026516120224052140' WHERE userid=2002521;
/* 李楠 */
UPDATE user_employee_info SET thirdId ='0243391814846802' WHERE userid=2002522;
/* 高凤翔 */
UPDATE user_employee_info SET thirdId ='050549282838776648' WHERE userid=2002523;
/* 杨美威 */
UPDATE user_employee_info SET thirdId ='050547644626474907' WHERE userid=2002524;
/* 杨丽娜 */
UPDATE user_employee_info SET thirdId ='050550032126083559' WHERE userid=2002525;
/* 赵玉东 */
UPDATE user_employee_info SET thirdId ='030908310435737576' WHERE userid=2002526;
/* 韩淑芳 */
UPDATE user_employee_info SET thirdId ='051053555538277291' WHERE userid=2002532;
/* 张贤翠 */
UPDATE user_employee_info SET thirdId ='051061212624555100' WHERE userid=2002531;
/* 周润泽 */
UPDATE user_employee_info SET thirdId ='025406176421663359' WHERE userid=2002534;
/* 姚亚恒 */
UPDATE user_employee_info SET thirdId ='036109271522753362' WHERE userid=2002529;
/* 王华利 */
UPDATE user_employee_info SET thirdId ='031624006629107558' WHERE userid=2002528;
/* 赵存亮 */
UPDATE user_employee_info SET thirdId ='033315353535545739' WHERE userid=2002530;
/* 江雯琳 */
UPDATE user_employee_info SET thirdId ='2139584427888579' WHERE userid=2002533;