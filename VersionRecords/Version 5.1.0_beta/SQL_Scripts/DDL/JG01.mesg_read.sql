/*��Ϣ�鿴�������������*/
use mogoroomdb;

ALTER TABLE mesg_read ADD INDEX userid_usertype(userId,userType);