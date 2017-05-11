/*初始化蘑菇分与倍数对应关系数据*/

use mogoroomdb;

BEGIN ;

/*蘑菇分范围：0_99*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_0_99',0,'SCORE_TIMES','短信额度_倍数_0_99','蘑菇分0_99的倍数配置',5,0,now());

/*蘑菇分范围：100_199*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_100_199',1,'SCORE_TIMES','短信额度_倍数_100_199','蘑菇分100_199的倍数配置',5,0,now());

/*蘑菇分范围：200_299*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_200_299',1,'SCORE_TIMES','短信额度_倍数_200_299','蘑菇分200_299的倍数配置',5,0,now());

/*蘑菇分范围：300_399*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_300_399',1,'SCORE_TIMES','短信额度_倍数_300_399','蘑菇分300_399的倍数配置',5,0,now());

/*蘑菇分范围：400_499*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_400_499',2,'SCORE_TIMES','短信额度_倍数_400_499','蘑菇分400_499的倍数配置',5,0,now());

/*蘑菇分范围：500_599*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_500_599',2,'SCORE_TIMES','短信额度_倍数_500_599','蘑菇分500_599的倍数配置',5,0,now());

/*蘑菇分范围：600_699*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_600_699',2,'SCORE_TIMES','短信额度_倍数_600_699','蘑菇分600_699的倍数配置',5,0,now());

/*蘑菇分范围：700_799*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_700_799',2,'SCORE_TIMES','短信额度_倍数_700_799','蘑菇分700_799的倍数配置',5,0,now());

/*蘑菇分范围：800_899*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_800_899',2,'SCORE_TIMES','短信额度_倍数_800_899','蘑菇分800_899的倍数配置',5,0,now());

/*蘑菇分范围：900_999*/
INSERT INTO comm_sysconfig(keyName, val, groupName, name, remark, updateByType, updateBy,updateTime)
VALUES('mogoScore_900_999',2,'SCORE_TIMES','短信额度_倍数_900_999','蘑菇分900_999的倍数配置',5,0,now());

COMMIT ;