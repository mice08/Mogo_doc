/*ɾ���ظ�����Ϣ�鿴��¼*/
use mogoroomdb;

DELETE
FROM
	mesg_read
WHERE
	id IN (
		SELECT
			c.id
		FROM
			(
				SELECT
					max(b.id) id
				FROM
					mesg_read b
				GROUP BY
					b.userid
				HAVING
					count(1) > 1
			) c
	);

DELETE
FROM
	mesg_read
WHERE
	id IN (
		SELECT
			c.id
		FROM
			(
				SELECT
					max(b.id) id
				FROM
					mesg_read b
				GROUP BY
					b.userid
				HAVING
					count(1) > 1
			) c
	);

DELETE
FROM
	mesg_read
WHERE
	id IN (
		SELECT
			c.id
		FROM
			(
				SELECT
					max(b.id) id
				FROM
					mesg_read b
				GROUP BY
					b.userid
				HAVING
					count(1) > 1
			) c
	);