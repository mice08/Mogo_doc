/*use mogoroomdb,修改之前数据问题，loan_support_bank和loan_bank_mapping表中code字段*/
use mogoroomdb;
UPDATE loan_support_bank SET CODE='CCB' WHERE NAME='建设银行';
UPDATE loan_support_bank SET CODE='CITIC' WHERE NAME='中信银行';
UPDATE loan_support_bank SET CODE='GDB' WHERE NAME='广发银行';
UPDATE loan_support_bank SET CODE='SZPAB' WHERE NAME='平安银行';

UPDATE loan_bank_mapping SET CODE = 'CCB' WHERE CODE='CBC';
UPDATE loan_bank_mapping SET CODE = 'CITIC' WHERE CODE='CNCB';
UPDATE loan_bank_mapping SET CODE = 'GDB' WHERE CODE='CGB';
UPDATE loan_bank_mapping SET CODE = 'SZPAB' WHERE CODE='PAB';

UPDATE loan_renter_info SET debitbank = 'CCB' WHERE debitbank='CBC';
UPDATE loan_renter_info SET debitbank = 'CITIC' WHERE debitbank='CNCB';
UPDATE loan_renter_info SET debitbank = 'GDB' WHERE debitbank='CGB';
UPDATE loan_renter_info SET debitbank = 'SZPAB' WHERE debitbank='PAB';