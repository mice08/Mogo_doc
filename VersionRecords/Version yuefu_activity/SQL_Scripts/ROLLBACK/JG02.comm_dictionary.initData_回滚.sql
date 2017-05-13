/*  Database name `mogoroomdb`  金融月付活动图标的回滚脚本*/
use mogoroomdb;


delete from comm_dictionary where groupname = 'monthlyPayDiscount';
