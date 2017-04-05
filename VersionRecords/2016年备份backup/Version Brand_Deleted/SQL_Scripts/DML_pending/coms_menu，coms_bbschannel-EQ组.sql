/* Database name `mogoroomdb`， CMS菜单结构重新排版 v-brand */

use mogoroomdb;

update coms_menu set name='内容管理' where code=100001;

update coms_menu set name='APP广告位管理' where code=100002;

update coms_menu set name='PC广告位管理' where code=100003;

update coms_menu set name='社区频道', url='/cms/findContextForBBSChannelList', seq='1', level='2', pid='1' where code=100013;

update coms_menu set name='社区文章', seq='2', level='2', pid='1' where code=203006;

update coms_menu set name='PC活动专题', seq='3', level='2', pid='1' where code=204009;

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(304009,'APP活动专题','/cms/findContextForAppActivityQuery','4','2','2000082',now(),'2000082',now(),'1','1','1', '1', '1');

update coms_menu set name='媒体报道', seq='5', level='2', pid='1' where code=208012;

update coms_menu set name='帮助类型', seq='6', level='2', pid='1' where code=100010;

update coms_menu set name='帮助内容', seq='7', level='2', pid='1' where code=207014;

update coms_menu set name='友情链接', seq='8', level='2', pid='1' where code=100016;

update coms_menu set name='招聘职位', seq='9', level='2', pid='1' where code=206013;

update coms_menu set name='房东加盟', seq='10', level='2', pid='1' where code=100015;

update coms_menu set name='意见反馈', seq='11', level='2', pid='1' where code=100009;

update coms_menu set name='福利社', seq='12', level='2', pid='1' where code=204015;

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(100017,'合作申请','/cms/cooperationList','13','2','2000082',now(),'2000082',now(),'1','1','1', '3', '1');

update coms_menu set name='顶部轮播', url='/cms/topCarouselForQuery?channel=1', seq='1', level='2', pid='2' where code=100004;

update coms_menu set name='品牌推荐', url='/cms/recommendBrandForQuery?channel=1', seq='2', level='2', pid='2' where code=100005;

update coms_menu set name='房源推荐', url='/cms/recommendRoomForQuery?channel=1', seq='3', level='2', pid='2' where code=100006;

update coms_menu set name='顶部轮播', url='/cms/topCarouselForQuery?channel=3', seq='1', level='2', pid='3' where code=100007;

update coms_menu set name='品牌推荐', url='/cms/recommendBrandForQuery?channel=3', seq='2', level='2', pid='3' where code=100008;

update coms_menu set name='房源推荐', url='/cms/recommendRoomForQuery?channel=3', seq='3', level='2', pid='3' where code=100012;

update coms_menu set name='社区内容推荐描述', url='/cms/recommendCommunityDesc', seq='4', level='2', pid='3' where code=100014;

update coms_menu set name='首页-社区内容推荐', seq='5', level='2', pid='3' where code=201006;

update coms_menu set name='房间详情页-社区内容推荐', seq='6', level='2', pid='3' where code=202006;

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(205006,'房东入驻页-社区内容推荐','','7','2','2000082',now(),'2000082',now(),'1','1','3', '3', '1');

update coms_menu set name='社区首页-蘑菇圈活动', seq='8', level='2', pid='3' where code=203010;

update coms_menu set name='社区首页-租房知乎', seq='9', level='2', pid='3' where code=203011;

update coms_menu set name='社区首页-右侧广告位', seq='10', level='2', pid='3' where code=203008;

update coms_menu set name='首页-条状广告位', seq='11', level='2', pid='3' where code=201002;

update coms_menu set name='首页-底部友链', seq='12', level='2', pid='3' where code=201007;

update coms_menu set name='友情链接页', seq='13', level='2', pid='3' where code=201016;

update coms_menu set pid=0, isMenu=0 where code=201001;

update coms_menu set pid=0, isMenu=0 where code=203001;

update coms_menu set pid=0, isMenu=0 where code=301001;

update coms_menu set pid=0, isMenu=0 where code=205001;

update coms_menu set pid=0, isMenu=0 where code=206001;

update coms_menu set pid=0, isMenu=0 where code=307014;

update coms_menu set pid=0, isMenu=0 where code=201005;

update coms_menu set name='首页_推荐房源主题', pid=0, isMenu=0 where code=201003;

update coms_menu set name='首页_推荐房源', url='', pid=0, channel=1, isMenu=0 where code=100011;

update coms_menu set name='生活-社区内容推荐', pid=0, isMenu=0 where code=309006;

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(210001,'品牌专区_顶部轮播','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(310001,'品牌专区_顶部轮播','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(211001,'精品专区_顶部轮播','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(311001,'精品专区_顶部轮播','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(202005,'房间详情页_社区内容推荐描述','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(201017,'首页_品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(301017,'首页_品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(210017,'品牌专区_品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(310017,'品牌专区_品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');	

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(205017,'房东入驻页_品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');																							

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(301003,'首页_推荐房源主题','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(211004,'精品专区_推荐房源','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(301004,'首页_推荐房源','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(311004,'精品专区_推荐房源','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(210018,'精品专区_优选品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(310018,'精品专区_优选品牌推荐','','0','2','2000082',now(),'2000082',now(),'1','1','0', '1', '0');

insert into `coms_bbschannel` (`id`, `coverImgUrl`, `coverImgLink`, `seq`, `name`, `domain`, `cityId`, `platform`, `createBy`, `createTime`, `updateBy`, `updateTime`, `online`, `hasDelete`) values('10000340','','','999','伙伴报导','hbbd','340','PC','2000887',now(),'2000887',now(),'1','0');

insert into `coms_bbschannel` (`id`, `coverImgUrl`, `coverImgLink`, `seq`, `name`, `domain`, `cityId`, `platform`, `createBy`, `createTime`, `updateBy`, `updateTime`, `online`, `hasDelete`) values('10000289','','','999','伙伴报导','hbbd','289','PC','2000887',now(),'2000887',now(),'1','0');

insert into `coms_bbschannel` (`id`, `coverImgUrl`, `coverImgLink`, `seq`, `name`, `domain`, `cityId`, `platform`, `createBy`, `createTime`, `updateBy`, `updateTime`, `online`, `hasDelete`) values('10000131','','','999','伙伴报导','hbbd','131','PC','2000887',now(),'2000887',now(),'1','0');


