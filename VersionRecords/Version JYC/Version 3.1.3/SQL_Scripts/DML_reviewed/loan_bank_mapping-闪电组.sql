/*use mogoroomdb,�޸�֮ǰ�������⣬loan_support_bank��loan_bank_mapping����code�ֶ�*/
use mogoroomdb;
UPDATE loan_support_bank SET CODE='CCB' WHERE NAME='��������';
UPDATE loan_support_bank SET CODE='CITIC' WHERE NAME='��������';
UPDATE loan_support_bank SET CODE='GDB' WHERE NAME='�㷢����';
UPDATE loan_support_bank SET CODE='SZPAB' WHERE NAME='ƽ������';

UPDATE loan_bank_mapping SET CODE = 'CCB' WHERE CODE='CBC';
UPDATE loan_bank_mapping SET CODE = 'CITIC' WHERE CODE='CNCB';
UPDATE loan_bank_mapping SET CODE = 'GDB' WHERE CODE='CGB';
UPDATE loan_bank_mapping SET CODE = 'SZPAB' WHERE CODE='PAB';

UPDATE loan_renter_info SET debitbank = 'CCB' WHERE debitbank='CBC';
UPDATE loan_renter_info SET debitbank = 'CITIC' WHERE debitbank='CNCB';
UPDATE loan_renter_info SET debitbank = 'GDB' WHERE debitbank='CGB';
UPDATE loan_renter_info SET debitbank = 'SZPAB' WHERE debitbank='PAB';