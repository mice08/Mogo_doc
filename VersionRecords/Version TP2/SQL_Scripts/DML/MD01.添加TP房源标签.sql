use mogoroomdb;

/*添加tp当月和次月展示房源标签*/
INSERT INTO `flat_tag` (category,NAME,userId,userType,createTime) 
VALUE (1,'当月',92158,0,NOW());
INSERT INTO `flat_tag` (category,NAME,userId,userType,createTime) 
VALUE (1,'次月',92158,0,NOW());

