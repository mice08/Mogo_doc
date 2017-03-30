/*以下sql按照顺序分开执行*/

/*1.将所有老系统转入新系统的租客标记为1*/
UPDATE user_renter
SET oldLiveStatus = 1
WHERE nickname = 'nickname'


/*2.将已经转入新系统的租客标记为2*/
UPDATE user_renter
SET oldLiveStatus = 2
WHERE id IN 
(
	SELECT tbl_contract.`renterId` FROM cntr_salecontract tbl_contract
	WHERE tbl_contract.`contractAutoNum` LIKE '%OL'
)