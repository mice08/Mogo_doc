-- ͬ��С��id������id��flat_flats��flat_room����
-- 2015-11-3 12:33:30
-- �Ż�С��
select * from flat_flats ff where ff.districtId is null and ff.communityId is not null;
--  ��ʼ��flat_flats��districtId
update flat_flats ff 
left join flat_community fc on fc.id = ff.communityId 
set  ff.districtId = fc.districtId  
where ff.districtId is null  and ff.communityId is not null ;

-- �Ż�����
select * from flat_room fr where fr.communityId  = 0 or fr.districtId =0;
-- ��ʼ��flat_room���communityId ��districtId
update flat_room fr 
join flat_flats ff on ff.id = fr.flatsId
join flat_community fc on fc.id = ff.communityId 
set  fr.communityId = fc.id ,fr.districtId = fc.districtId
where fr.communityId = 0 or fr.districtId =0; 