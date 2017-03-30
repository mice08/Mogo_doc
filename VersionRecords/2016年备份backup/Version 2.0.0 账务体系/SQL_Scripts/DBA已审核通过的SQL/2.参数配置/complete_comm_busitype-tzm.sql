/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.6.26 : Database - mogo_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `comm_busitype` */

LOCK TABLES `comm_busitype` WRITE;

truncate table comm_busitype;

insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (111001,'公司转房租给房东',1,1);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (111002,'公司租金贷款给房东',1,2);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (211001,'租客转账给房东',1,3);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (211002,'租客违约定金扣除',1,4);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (213001,'扣款',1,5);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (211003,'签约过期租客转账给房东',1,6);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (224001,'租客余额充值',1,7);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (215001,'租客提现',1,8);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (215002,'租客提现冲正',1,9);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216001,'支付定金',1,10);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216002,'租客支付首期款房租账单',1,11);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216003,'租客支付常规款房租账单',1,12);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216004,'租客支付水电煤账单',1,13);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3001,'职业房东余额充值',1,14);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3002,'职业房东提现',1,15);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3003,'职业房东保证金充值',1,16);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3004,'职业房东支付账单',1,17);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3005,'职业房东放款',1,18);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3006,'职业房东收款',1,19);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3007,'职业房东退押金',1,20);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3008,'职业房东退定金',1,21);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3009,'职业房东退违约金',1,22);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3010,'支付房东贷款服务费',1,23);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3011,'房东调账',1,24);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3012,'提现驳回',1,25);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3013,'房东买回逾期手续费',1,26);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3014,'房东买回滞纳金',1,27);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3015,'房东买回房租',1,28);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3016,'房东买回冻结',1,29);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (3017,'房东提现冲正',1,30);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (4001,'蘑菇贷自动扣款',1,31);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (311002,'BS后台充值保证金',1,32);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (311003,'BS后台扣除保证金',1,33);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (311001,'BS后台撤销预定单退还租客定金',1,34);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216005,'支付房租补贴',1,35);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (216006,'支付水电煤补贴',1,36);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1031001,'新增账户密码',1,58);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1031002,'修改账户密码',1,59);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1031003,'访问账户密码',1,60);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1041001,'修改账单信息',1,61);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001001,'退房-释放房态',1,62);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001002,'预定超时-释放房态',1,63);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001003,'提前招租-释放房态',1,64);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1011001,'房东房屋上架',1,65);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001005,'处理过时的预订单',1,66);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001006,'租客在规定的3天期限内未完成签约，预订单签约失败，当前预订单的定金转给职业房东',1,67);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001007,'职业房东拒绝预定，回调',1,68);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001008,'租客撤销预定单',1,69);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001009,'房东拒绝签约，不退定金',1,70);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001010,'处理过时的签约订单和合同',1,71);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001011,'房东拒绝签约，退还违约金和定金',1,72);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001012,'房东拒绝签约',1,73);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001013,'房东同意退房',1,74);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1001004,'将房态释放(前提是没有合约的房间)',1,75);
insert  into `comm_busitype`(`busiType`,`busiName`,`status`,`sort`) values (1041002,'线下支付修改账单信息',1,76);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`) VALUES(111003,'公司转贷款保证金给房东','1',77);

update comm_busitype set sort=id;


UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
