use mogoroomdb;
/*水电煤只保留每个房间一条*/
UPDATE bill_weg_detail bwd
SET bwd.valid = 0
WHERE
	bwd.valid = 1
  AND bwd.billId IS NULL
AND bwd.id NOT IN (
SELECT * FROM(
	SELECT
		MAX(bwd2.id)
	FROM
		bill_weg_detail bwd2
	WHERE
	valid = 1
	AND bwd2.billId IS NULL
	GROUP BY
		bwd2.roomId,bwd2.wegType
) AS TEMP
)