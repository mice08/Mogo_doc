/* Database name `mogoroomdb`�� ���ݺ����������� v3.3.1 */

user mogoroomdb;

alter table coms_contextcityrel add column districtId int default null comment '������ID' after cityId;