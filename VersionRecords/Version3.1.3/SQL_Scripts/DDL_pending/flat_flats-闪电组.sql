/* 公寓表的字段roomNum和flatsNum增加全文索引 */
use mogoroomdb;

CREATE FULLTEXT INDEX full_index_flats_roomNum ON flat_flats(roomNum);
CREATE FULLTEXT INDEX full_index_flats_flatsNum ON flat_flats(flatsNum);
