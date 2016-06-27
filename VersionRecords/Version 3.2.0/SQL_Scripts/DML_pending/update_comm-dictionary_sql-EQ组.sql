/* Database name `mogoroomdb`， 租客注册渠道明细修改 */

use mogoroomdb;

/* 注册来源明细fcode置空 */
update comm_dictionary set fcode=null where groupname='regChannelDtl';

/* 广点通渠道参数编码 */
update comm_dictionary set fcode='10007' where groupname='regChannelDtl' and keyPro='28';

/* 神马搜索渠道参数编码 */
update comm_dictionary set fcode='10005' where groupname='regChannelDtl' and keyPro='29';

/* 今日头条渠道参数编码 */
update comm_dictionary set fcode='10006' where groupname='regChannelDtl' and keyPro='30';

/* 粉丝通渠道参数编码 */
update comm_dictionary set fcode='10008' where groupname='regChannelDtl' and keyPro='32';

/* 百度搜索渠道参数编码 */
update comm_dictionary set fcode='10001',enValue='baidu_search' where groupname='regChannelDtl' and keyPro='34';

/* 360搜索渠道参数编码 */
update comm_dictionary set fcode='10003',enValue='360_search' where groupname='regChannelDtl' and keyPro='37';


/* 搜狗搜索替换成百度网盟 */
update comm_dictionary set value='百度网盟',fcode='10002',enValue='baidu_webunion' where groupname='regChannelDtl' and keyPro='35';

/* 谷歌搜索替换成其它搜索引擎 */
update comm_dictionary set value='其它搜索引擎',enValue='other_search' where groupname='regChannelDtl' and keyPro='36';

/* 有道搜索替换成360网盟 */
update comm_dictionary set value='360网盟',fcode='10004',enValue='360_webunion' where groupname='regChannelDtl' and keyPro='38';

/* 必应搜索替换成蘑菇租房web */
update comm_dictionary set value='蘑菇租房web',enValue='mogo_web' where groupname='regChannelDtl' and keyPro='39';

/* 雅虎搜索替换成蘑菇租房wap */
update comm_dictionary set value='蘑菇租房wap',enValue='mogo_wap' where groupname='regChannelDtl' and keyPro='40';

/* 蘑菇租房更名为蘑菇租房android */
update comm_dictionary set value='蘑菇租房android' where groupname='regChannelDtl' and keyPro='2';



/* 修复线上租客数据 (注册平台为租客APP，渠道为蘑菇租房的数据一律默认为 蘑菇租房android)*/
/* 注册平台为官网，渠道为蘑菇租房的数据修改为渠道来源为 蘑菇租房web */
update user_renter set regChannelDtl=39 where regChannel=3 and regChannelDtl=2;

/* 注册平台为WAP，渠道为蘑菇租房的数据修改为渠道来源为 蘑菇租房wap */
update user_renter set regChannelDtl=39 where regChannel=9 and regChannelDtl=2;
