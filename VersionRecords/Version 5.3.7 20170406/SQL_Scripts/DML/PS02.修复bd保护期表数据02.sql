/*修复bd保护期数据共影响：546行*/
use mogoroomdb;

UPDATE bizd.`bizd_landlord_protect` SET allDays = 60,planEndDate = planStartDate + INTERVAL 60 DAY
WHERE allDays = 3 AND valid = 1;

COMMIT;