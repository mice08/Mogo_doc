/**银行图片数据初始化*/
use mogoroomdb;
/**添加comm_picture_group表150条数据*/
INSERT INTO comm_picture_group(picgrouptype,picgroupname,createBytype,createby,remark)SELECT 6,id,4,-1,'初始化' FROM comm_bank;

/**修改comm_picture表的picGroupId字段*/
UPDATE comm_picture LEFT JOIN comm_bank ON comm_bank.`enName` = comm_picture.`name`
LEFT JOIN comm_picture_group ON comm_picture_group.`picGroupName` = comm_bank.`id`
SET comm_picture.`picGroupId` = comm_picture_group.`id`
WHERE comm_bank.`id` IS NOT NULL AND comm_picture.`url` !=''
AND comm_picture_group.`picGroupType`=6;

/**修改comm_bank表的picGroupId字段*/
UPDATE comm_bank LEFT JOIN comm_picture_group ON comm_picture_group.`picGroupName` = comm_bank.`id`
SET comm_bank.`picGroupId` = comm_picture_group.`id`
WHERE comm_picture_group.`picGroupType`=6;

/**修改comm_picture表的name*/
UPDATE comm_picture JOIN comm_picture_group ON comm_picture_group.id = comm_picture.`picGroupId` 
SET comm_picture.name ='icon' 
WHERE comm_picture_group.`picGroupType`=6;

/**添加那31个background*/
INSERT INTO comm_picture(picGroupId,url,NAME,create_by_type,create_by,remark) 
SELECT picgroupid,LEFT(remark,LOCATE("#",remark)-1),"background",4,-1,'数据初始化' FROM comm_picture 
WHERE comm_picture.name ='icon' AND comm_picture.`remark` LIKE '%#%';

/**添加那31个waterMark*/
INSERT INTO comm_picture(picGroupId,url,NAME,create_by_type,create_by,remark) 
SELECT picgroupid,SUBSTRING(remark,LOCATE("#",remark)+1,LENGTH(remark)),"waterMark",4,-1,'数据初始化' FROM comm_picture 
WHERE comm_picture.name ='icon' AND comm_picture.`remark` LIKE '%#%';
/**添加119个背景图片*/
INSERT INTO comm_picture (picGroupId,url,NAME,create_by_type,create_by,remark)
(
SELECT m.id,'http://image.mogoroom.com/common/bankColor/red.png','background',4,-1,'初始化' FROM (SELECT id FROM comm_picture_group WHERE comm_picture_group.id NOT IN 
(SELECT picgroupid FROM comm_picture WHERE NAME ='icon')AND comm_picture_group.`picGroupType`=6) m
)
