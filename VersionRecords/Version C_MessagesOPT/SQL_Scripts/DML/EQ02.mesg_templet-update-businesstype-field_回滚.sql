/* Database name `mogoroomdb`，更换租客消息模版类型（businessType字段）---回滚SQL */

use mogoroomdb;

update mesg_templet set businessType=1 where id in (91,92,93,110,111,129,130,132);

update mesg_templet set businessType=2 where id in (61,62,99,127,128,131,141);

update mesg_templet set businessType=3 where id in (67,68,69,70,88,89,90,94,100,102,103,119,120,133,143,178,180,199,208,209,210,211,212,214,217);

update mesg_templet set businessType=4 where id in (79,85,86,87);

update mesg_templet set businessType=5 where id in (
	71,72,73,74,75,76,77,78,83,84,95,96,97,98,105,106,109,121,122,126,148,152,153,155,156,161,164,165,169,170,171,173,174,176,177,195,201,279,280,281,282,283);

update mesg_templet set businessType=6 where id in (55,57,58,59,107,108);

update mesg_templet set businessType=7 where id in (123,124);

update mesg_templet set businessType=11 where id in (56,112,113,114);

update mesg_templet set businessType=12 where id in (80,81,82,234,235,237,238,239,240,248,249,250,251,252,253,254,255,263,264,322);

update mesg_templet set businessType=14 where id = 125;