/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 新增消息模版 提醒房东有400电话呼入 */
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES('tele_notifyLandlordCall','400已接来电提醒','400已接来电提醒','1','-1',NOW(),'9','-1',NOW(),'9','1','10');
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES((SELECT id FROM mesg_templet WHERE templetcode ='tele_notifyLandlordCall' ORDER BY id DESC LIMIT 1),'1','400已接来电提醒','您在${callTime}成功与租客${renterPhone}进行了通话，为保证后续服务请保持电话沟通。','1','1',NULL,NULL);
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES('tele_notifyLandlordMissCall','400未接来电提醒','400未接来电提醒','1','-1',NOW(),'9','-1',NOW(),'9','1','10');
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES((SELECT id FROM mesg_templet WHERE templetcode ='tele_notifyLandlordMissCall' ORDER BY id DESC LIMIT 1),'1','400未接来电提醒','您在${callTime}有一通租客未接来电，来电号码${renterPhone}，请及时回电。','1','1',NULL,NULL);
