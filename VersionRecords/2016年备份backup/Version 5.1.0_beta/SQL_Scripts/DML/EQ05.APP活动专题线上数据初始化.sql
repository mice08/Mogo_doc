/* Database name `mogoroomdb`， 初始化线上已存在的APP活动专题中的房源推荐存储格式 */

USE mogoroomdb;

UPDATE coms_context SET context=CONCAT('{"roomId":"',context,'","remark":""}') WHERE pid IS NOT NULL AND contenttype = 3 AND LENGTH(0+context)= LENGTH(context);

UPDATE coms_menu SET url="cms/findContextForPcActivityQuery" WHERE code=204009;