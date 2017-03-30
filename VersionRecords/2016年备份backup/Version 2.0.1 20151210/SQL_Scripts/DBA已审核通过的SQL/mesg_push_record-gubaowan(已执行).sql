/*  Database name `mogoroomdb` £¬mesg_push_recordÌí¼Ó×Ö¶Î*/ 
use mogoroomdb; 

ALTER TABLE `mesg_push_record`
ADD  `valid` tinyint(1) NOT NULL COMMENT 'É¾³ý±êÖ¾£¬0É¾³ý£¬1Î´É¾³ý';