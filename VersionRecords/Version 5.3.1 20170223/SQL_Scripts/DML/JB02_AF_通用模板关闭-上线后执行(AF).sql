use mogoroomdb;

/* 历史模板关闭 */
update cntr_contract_templet set status = 3 where templetCode in ('TY001SH','TY002SH','TY003SH','TY001BJ','TY002BJ','TY003BJ','TY001SZ','TY002SZ','TY003SZ');