USE mogoroomdb;
/*��һ������ ��������ֶ�ȥ�� not null Լ��*/
ALTER TABLE opex_timer_monitor MODIFY endTime datetime NULL COMMENT ' ִ�н���ʱ��';  
ALTER TABLE opex_timer_monitor MODIFY targetBeginTime datetime NULL COMMENT ' ��Ӱ�����ݵĿ�ʼʱ��';  
ALTER TABLE opex_timer_monitor MODIFY targetEndTime datetime NULL COMMENT ' ��Ӱ�����ݵĽ���ʱ��';
ALTER TABLE opex_timer_monitor MODIFY targetCurrTime datetime NULL COMMENT ' ��Ӱ�����ݵĵ�ǰʱ��';
ALTER TABLE opex_timer_monitor MODIFY soDoneCode int(11) NULL COMMENT ' ҵ�����id(�ο�comm_business_record���id)';
ALTER TABLE opex_timer_monitor MODIFY result tinyint(1) NULL COMMENT ' ���(0:ʧ�� 1:�ɹ�)';

/*����ֶ� �ϵ�ID*/
ALTER TABLE opex_timer_monitor add currPoint int(11) NULL COMMENT ' ���������У��ϵ�-ҵ��ID';
ALTER TABLE opex_timer_monitor add retryCount int NULL COMMENT '(�� ��)���Դ���';
ALTER TABLE opex_timer_monitor add status int NOT NULL COMMENT ' ״̬��1������ 2������ ';