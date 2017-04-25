/*新开两家新城市 成都和重庆，维护对应的logo图及app进入首页前背景图回滚脚本*/
USE mogoroomdb;

UPDATE city SET 
                logoUrl = NULL,
                bgMapUrl = NULL,
                domain = NULL
         WHERE id = 75;
         
         
         
         
         
 UPDATE city SET 
	logoUrl = NULL,
	bgMapUrl = NULL,
	domain = NULL
 WHERE id = 132;