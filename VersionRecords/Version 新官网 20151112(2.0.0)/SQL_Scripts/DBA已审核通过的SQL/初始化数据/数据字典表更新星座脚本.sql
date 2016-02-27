/* Database name `mogoroomdb` , 新官网数据字典表更新星座的enValue字段，用于生成seo枚举类 */
use mogoroomdb;
#更新水瓶座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'sp'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-1';
   
#更新双鱼座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'sy'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-2';
   
   
#更新白羊座对应的enValue
 
UPDATE 
  comm_dictionary t 
SET
  t.enValue = 'by' 
WHERE t.`groupName` = 'constellation' 
  AND t.`code` = 'constellation-3' ;

   
   
   #更新白羊座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'jn'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-4';
   
      #更新双子座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'sz'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-5';
   
   #更新双子座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'jx'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-6';
   
   #更新双子座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'szi'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-7';
   
   #更新处女座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'cn'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-8';
   
   #更新天平座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'tc'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-9';
   
     #更新天蝎座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'tx'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-10';
   
     #更新射手座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'ss'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-11';
   
     #更新摩羯座对应的enValue
UPDATE comm_dictionary t
  SET t.enValue = 'mx'
 WHERE t.`groupName` = 'constellation'
   AND t.`code` = 'constellation-12';
   
COMMIT;