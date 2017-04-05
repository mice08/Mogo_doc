/*生成统一订单号*/
use mogoroomdb;

DELIMITER $$
USE `mogoroomdb` $$
DROP FUNCTION IF EXISTS function_get_payOrderNo $$
CREATE FUNCTION `function_get_payOrderNo`() RETURNS varchar(32) CHARSET utf8
DETERMINISTIC
BEGIN
	DECLARE curr_time datetime DEFAULT NOW();
	DECLARE payOrderNo VARCHAR(32);
	DECLARE randomStr VARCHAR(32);
	SET payOrderNo= CONCAT(DATE_FORMAT(curr_time,'%Y%m%d%H%i%s'),'000');
	select round(round(rand(),15)*1000000000000000) INTO @randomStr;
	RETURN CONCAT(payOrderNo,@randomStr);
END
$$
DELIMITER ;