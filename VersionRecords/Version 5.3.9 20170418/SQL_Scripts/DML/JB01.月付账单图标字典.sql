use mogoroomdb;

delete from comm_dictionary where groupName ='billExtendTitles';

/**icon**/
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleDiscount', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/hui.png', '1', NULL, '优惠');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billtitleRenew', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/xu.png', '1', NULL, '续');

INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleBook', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/dingred.png', '1', NULL, '定');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitlePay', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/fured.png', '1', NULL, '付');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleMin', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/diblue.png', '1', NULL, '低');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleMonth', 'billExtendTitles', '1', '1', '2016-08/billTitlePic/3/2/6773/yue.png', '1', NULL, '月');


/**灰色icon**/
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleBookGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/dinggray.png', '1', NULL, '定');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleDiscountGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/huigray.png', '1', NULL, '惠');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billtitleRenewGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/grayxu.png', '1', NULL, '续');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitlePayGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/fugray.png', '1', NULL, '付');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleMinGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/digray.png', '1', NULL, '低');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('billTitleMonthGray', 'billExtendTitlesGray', '1', '1', '2016-08/billTitlePic/3/2/6773/grayyue.png', '1', NULL, '月');
/**新增加背景图**/
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('checkedOutImage', 'billBackdropImage', '1', '1', '2016-08/billTitlePic/3/2/6773/tuifangbackground.png', '1', NULL, '已经退房');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('invalidImage', 'billBackdropImage', '1', '1', '2016-08/billTitlePic/3/2/6773/zuofeibackground.png', '1', NULL, '已作废');
INSERT INTO  `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('invalidateTheContractImage', 'billBackdropImage', '1', '1', '2016-08/billTitlePic/3/2/6773/fenqizhongzhibackground.png', '1', NULL, '分期终止');