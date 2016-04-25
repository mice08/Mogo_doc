<<<<<<< HEAD:VersionRecords/Version3.1.2/SQL_Scripts/DDL_pending/supp_question_paper_rel-é—ªç”µç»„.sql
/*  Database name `mogoroomdb` £¬ÎÊ¾íÎÊÌâ¹ØÁª±íÔö¼ÓÎÊÌâ·Ö×ékey×Ö¶Î*/
use mogoroomdb;

ALTER TABLE supp_question_paper_rel ADD group int(11) DEFAULT NULL COMMENT 'ÎÊÌâ·Ö×é(²Î¿¼×Öµä±í×éÃû:questionGroup)';
=======
/*  Database name `mogoroomdb` £¬ÎÊ¾íÎÊÌâ¹ØÁª±íÔö¼ÓÎÊÌâ·Ö×ékey×Ö¶Î*/
use mogoroomdb;

ALTER TABLE supp_question_paper_rel ADD groupKey VARCHAR(32) DEFAULT NULL COMMENT 'ÎÊÌâ·Ö×ékey';
>>>>>>> 6825ca9ba7c09a9eaa0136d6a76219d3cac91919:VersionRecords/Version3.1.2/SQL_Scripts/DDL_reviewed/supp_question_paper_rel-é—ªç”µç»„.sql
