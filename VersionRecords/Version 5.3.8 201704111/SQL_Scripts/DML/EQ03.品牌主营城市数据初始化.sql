/* Database name `mogoroomdb`，品牌主营城市数据初始化*/

use mogoroomdb;

INSERT INTO `brand_city_rel`
(brandid,cityid,valid,STATUS,createtime,createby,createbytype,updatetime,updateby,updatebytype,remark)
SELECT id,mainSaleCity,1,1,NOW(),-1,5,NOW(),-1,5,'初始化数据' FROM brand;