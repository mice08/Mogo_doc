--
-- 从loan_district_mapping导出行政区信息到city_district表。
-- 若行政区已存在city_district则该行政区不做导入
-- 
begin;

insert 
into city_district(name, cityId, code, status) 
select name, cityId, code, 1 status from(
select
 dm.id
 , dm.cityName
  , replace ( 
    replace (replace (districtName, ' ', ''), '	', '')
    , '　'
    , ''
  ) name
  , c.id cityId
  , dm.districtId % 100 as code
from
  loan_district_mapping dm join city c 
    on instr(dm.cityName, c.name) = 1 
) tmp
where
not exists (select * from city_district cd 
where cd.cityId=tmp.cityId
 and instr(tmp.name, cd.name) = 1
)
order by tmp.cityId, tmp.code;

commit;
