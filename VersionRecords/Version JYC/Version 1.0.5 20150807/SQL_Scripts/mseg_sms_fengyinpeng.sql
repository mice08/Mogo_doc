ALTER TABLE mesg_sms ADD COLUMN  sendType INT;
UPDATE mesg_sms SET sendType = 0;