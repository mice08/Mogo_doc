/* Database name `mogoroomdb` ���¹�����Ҫ��SEO��Գ��������ֶΣ��ڶ��������ݳ�ʼ�� */
use mogoroomdb;

ALTER TABLE city_business_area ADD column enName VARCHAR(30) COMMENT 'Ӣ��ȫ�ƻ���(seo)';

UPDATE city_business_area t SET enName = CONCAT('sh','_',t.`districtId`,'_',t.id) WHERE t.`districtId` BETWEEN 2 AND 19;

