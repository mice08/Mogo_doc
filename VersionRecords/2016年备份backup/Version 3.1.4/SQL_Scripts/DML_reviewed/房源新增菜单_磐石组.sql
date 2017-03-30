use mogoroomdb;

SELECT @id:=id from perm_functionInfo WHERE channel = 2 and fname = '公寓信息' and functionLevel = 2; 

INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id,4,0),'25'),'公寓编辑跳转','flats/turnEditFlats2',25,3,@id,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id,4,0),'30'),'分散式保存','flats/editFlats',30,3,@id,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id,4,0),'35'),'集中式保存','flats/editCentlFlats',35,3,@id,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);

INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id,4,0),'40'),'编辑房间跳转','room/findRoomById',40,3,@id,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id,4,0),'45'),'房间保存','room/editRoom',45,3,@id,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);


SELECT @id1:=id from perm_functionInfo WHERE channel = 2 and fname = '房型信息' and functionLevel = 2;

INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id1,4,0),'20'),'房型编辑跳转','flats/turnEditFlatsType2',20,3,@id1,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id1,4,0),'25'),'房型保存','flats/editFlatsType',25,3,@id1,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);


SELECT @id2:=id from perm_functionInfo WHERE channel = 2 and fname = '组织架构部门列表' and functionLevel = 2;
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id2,4,0),'40'),'同步钉钉','orga/synOrga2DingTalk',40,3,@id2,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);

SELECT @id3:=id from perm_functionInfo WHERE channel = 2 and fname = '组织架构员工列表' and functionLevel = 2;
INSERT INTO perm_functionInfo(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,`status`,channel)
VALUES (CONCAT('3',lpad(@id3,4,0),'30'),'同步钉钉','orga/synEmploye2DingTalk',30,3,@id3,0,NULL,NULL,NULL,1,1,NULL,NOW(),NULL,NOW(),1,2);
  