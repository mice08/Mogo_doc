/*��ѯ�Ƿ���������ظ����˻�����ˮsql*/
SELECT * FROM user_wateraccount
WHERE  businessType = 215001
group by serialNum 
having count(*) > 1;