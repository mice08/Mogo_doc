/* Database name `mogoroomdb` ，插入数据*/
use mogoroomdb;

INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES('filterPhone-1','filterPhone',NULL,1,'((\\d)(\\s*)(-*)){7,}|(([一二三四五六七八九])(\\s*)(-*)){7,}',1,'filterPhone');