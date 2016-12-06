
    /* Database name `mogoroomdb`, 投诉表添加数据类型字段区分是投诉还是举报 */
    
    USE mogoroomdb;

    ALTER TABLE supp_complain ADD COLUMN dateType TINYINT(1) DEFAULT 1 COMMENT '数据类型';