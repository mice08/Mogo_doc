/*查询是否存在提现重复的账户及流水sql*/
SELECT * FROM user_wateraccount
WHERE  businessType = 215001
group by serialNum 
having count(*) > 1;