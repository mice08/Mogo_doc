use mogoroomdb;

/* ���˷���ʷ���ݣ���������� ����Ϊ�����ѽ��� */
update oder_signedorder set acctFinished = 1 where status = 5;