/* Database name `mogoroomdb` ����ʼ�����֤��״̬ */
USE mogoroomdb;

/* 1.�����֤��Ϊnull����0 ����depositStatus��ʼ��Ϊ0��Ĭ��Ϊ0�ˣ���sql���Բ���ִ��*/
/*UPDATE loan_landlord_payplan SET depositStatus=0 WHERE depositAmount IS NULL ;*/

/* 2.�����ʴ����Ѿ�����ص�����depositStatus��ʼ��Ϊ2��*/
UPDATE  loan_landlord_payplan p JOIN loan_landlord_buyback  b  ON p.loanId = b.loanId 
SET p.depositStatus=2;


 /*3.ֻ��δ������ص����ұ�֤��>0����depositStatus��ʼ��Ϊ1.(��ʱ��û��3:�������˻�)��*/
UPDATE loan_landlord_payplan p 
LEFT JOIN loan_landlord_buyback  b  ON p.loanId = b.loanId 
JOIN loan_landlord_mgmt m ON m.id=p.loanId
JOIN loan_renter_contract lrc ON m.bizcontractid=lrc.id
SET p.depositStatus=1
WHERE  p.depositAmount>0  AND b.id IS NULL AND p.payStatus IN (4) AND  m.loanStatus IN (1,4) AND lrc.status=10 ;
