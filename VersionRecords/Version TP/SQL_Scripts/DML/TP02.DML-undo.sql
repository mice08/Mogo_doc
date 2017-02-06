USE mogoroomdb;

DELETE
FROM
	comm_dictionary
WHERE
	CODE IN (
		'suggestionType-1',
		'suggestionType-2',
    'complainType-1',
    'complainType-2',
    'complainType-3',
    'complainType-4',
    'complainType-5',
    'complainType-6',
    'complainType-7'
	);