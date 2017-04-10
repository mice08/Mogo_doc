use mogoroomdb;

/*热表添加索引 */

ALTER TABLE `flat_mansion_draft` ADD INDEX IDX_MANSIONID (`mansionId`);

ALTER TABLE `flat_room_tag` ADD INDEX IDX_ROOMID (`roomId`);

ALTER TABLE `flat_room_tag` ADD INDEX IDX_TAGID (`tagId`);

ALTER TABLE `user_landlord_billdtltype` ADD INDEX IDX_LANDLORDID (`landlordId`);

ALTER TABLE `flat_upload_pictrue_draft` ADD INDEX IDX_LANDLORDID (`landlordId`);

ALTER TABLE `flat_upload_pictrue_draft` ADD INDEX IDX_COMMUNITYID (`communityId`);