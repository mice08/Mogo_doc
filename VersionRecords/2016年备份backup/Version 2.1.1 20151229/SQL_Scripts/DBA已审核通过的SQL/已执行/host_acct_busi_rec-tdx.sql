use mogoroomdb;

UPDATE host_acct_busi_rec tbr, 
(select hbr.pay_money*tt.rentPeriods as money, hbr.* from host_acct_busi_rec hbr,
(select cp.rentPeriods,hfr.* from host_flats_relation  hfr, comm_paytype cp where hfr.pay_type = cp.`name`) tt
where tt.flat_id = hbr.flat_id and tt.host_id = hbr.host_id and tt.landlord_id = hbr.landlord_id) ee 
SET tbr.pay_money = ee.money WHERE ee.id = tbr.id;