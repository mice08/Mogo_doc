INSERT INTO `mesg_template` (`type`, `content`, `paramCount`, `status`) VALUES ('sms_flats_verifyHint_landlord', '您好，我们正在对您提交的房源${1}进行审核，通过后，即会自动进行发布。', '1', '1');
INSERT INTO `mesg_template` (`type`, `content`, `paramCount`, `status`) VALUES ('sms_flats_unVerify_landlord', '您好，您提交的房源${1}审核未通过，请及时修正重新提交审核。', '1', '1');
INSERT INTO `mesg_template` (`type`, `content`, `paramCount`, `status`) VALUES ('sms_flats_verify_landlord', '您好，您提交的房源${1}审核已通过并上线，若有租客请求，请及时处理。', '1', '1');
