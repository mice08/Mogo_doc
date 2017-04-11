/* Database name `mogoroomdb` 品牌标签修正初始化*/
use mogoroomdb;

/** 北京 pc 标签**/
UPDATE coms_hotbrand b SET b.brandtabid = 460 WHERE b.id in(261,262,265,267,268,274);
/** 北京 app标签**/
UPDATE coms_hotbrand b SET b.brandtabid = 461 WHERE b.id in(292,293,296,298,299,305);
/** 深圳 pc标签**/
UPDATE coms_hotbrand b SET b.brandtabid = 462 WHERE b.id in(253,254,255,257,258,259,260,263,269,270,271,273);
/** 深圳 app标签**/
UPDATE coms_hotbrand b SET b.brandtabid = 463 WHERE b.id in(284,285,286,288,289,290,291,294,300,301,302,304);