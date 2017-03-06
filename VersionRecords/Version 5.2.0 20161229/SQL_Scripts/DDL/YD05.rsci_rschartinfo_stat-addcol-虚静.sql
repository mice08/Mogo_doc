use mogoroomdb;

alter table rsci_rschartinfo_stat add column publishFlag     tinyint(1) default NULL comment '房源发布状态';