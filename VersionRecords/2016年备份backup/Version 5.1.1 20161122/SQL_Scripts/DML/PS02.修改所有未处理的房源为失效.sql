/*修改所有未处理的房源为失效，定时器改了逻辑，此处数据全部废弃*/

USE mogoroomdb;

UPDATE risk_roomdetail SET valid = 0 WHERE STATUS=0;