/*初始化借款人信息*/

use mogoroomdb;

UPDATE loan_borrower_info u,
 user_info_his h
SET u.userId = h.userId,
 u.userMoblie = h.mobile
WHERE
	h.tid = u.tid