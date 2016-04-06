UPDATE mogoroomdb.`user_bankcard` SET isCorp ='1' WHERE  CHAR_LENGTH(realName) >4;
UPDATE mogoroomdb.`user_bankcard` SET isCorp ='0' WHERE  CHAR_LENGTH(realName)<=4;