use mogoroomdb;

/*�����������ݳ�ʼ��*/
/*Ԥ�Ƹ�������538��*/
UPDATE flat_joint_register
SET registerTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d '),
 jointBeginTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d '),
 jointEndTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d ')
WHERE
  registerTime BETWEEN '2017-03-20' AND '2017-03-26'