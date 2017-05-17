/*  Database name `mogoroomdb`  风控规则表初始化 */
use mogoroomdb;

begin;

insert  into `risk_rule`(`id`,`ruleType`,`ruleKey`,`ruleStatus`,`isSysprocess`) values 
(1,1,'W-HZ-DJ-L-01',1,0),
(2,1,'W-HZ-MJ-H-02',1,0),
(3,2,'ALL-CZZT-03',1,1),
(4,1,'W-HZ-MJ-JG-01',1,0),
(5,1,'W-ZZ-MJ-JG-01',1,0),
(6,3,'PT-JY-001',1,0),
(7,3,'PT-JY-002',1,0),
(8,3,'PT-JY-003',1,0),
(9,3,'PT-JY-004',1,0),
(10,4,'MH-FD-001',1,0),
(11,4,'MH-FD-002',1,0),
(12,4,'MH-FD-003',1,0),
(13,4,'MH-ZK-001',1,0),
(14,4,'MH-ZK-002',1,0),
(15,4,'MH-ZK-003',1,0),
(16,3,'TX-ZK-001',1,0),
(17,3,'TX-POS-002',1,0),
(18,5,'MR-JE-01',1,0),
(19,3,'PT-JY-PayID-FDs-001',1,0),
(20,3,'PT-JY-PayID-ZKs-001',1,0),
(21,3,'PT-JY-Contr-CHs-001',1,0),
(22,1,'WZ-HZ-RMs-M-001',1,0),
(23,1,'WZ-HZ-RMs-M-002',1,0),
(24,2,'FD-Acct-Login-001',1,1),
(25,1,'WZ-HZ-RM1-001',1,1),
(26,1,'WZ-HZ-MJ-001',1,1),
(28,2,'FD-MGS-001',1,1),
(29,2,'FD-MGS-002',1,1);

commit;
