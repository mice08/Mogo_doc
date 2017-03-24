use mogoroomdb;

/*房东申请数据初始化*/
/*预计更新数据538条*/
UPDATE flat_joint_register
SET registerTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d '),
 jointBeginTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d '),
 jointEndTime = DATE_FORMAT('2017-03-27', '%Y-%m-%d ')
WHERE
  registerTime BETWEEN '2017-03-20' AND '2017-03-26'