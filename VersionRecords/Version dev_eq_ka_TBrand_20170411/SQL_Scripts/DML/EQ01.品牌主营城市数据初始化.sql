/* Database name `mogoroomdb`��Ʒ����Ӫ�������ݳ�ʼ��*/

use mogoroomdb;

INSERT INTO `brand_city_rel`
(brandid,cityid,valid,STATUS,createtime,createby,createbytype,updatetime,updateby,updatebytype,remark)
SELECT id,mainSaleCity,1,1,NOW(),-1,5,NOW(),-1,5,'��ʼ������' FROM brand;