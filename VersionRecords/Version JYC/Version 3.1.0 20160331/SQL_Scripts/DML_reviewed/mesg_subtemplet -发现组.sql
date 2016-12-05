UPDATE mesg_subtemplet su
LEFT JOIN mesg_templet t ON su.templetId = t.id
SET su.templetContent = "您好，您提交的${mansionName}房型${roomType}下属房间共${roomNum}，审核未通过，请及时修正重新提交审核。"
WHERE
	t.templetCode = "sms_flatsType_unVerify_landlord";