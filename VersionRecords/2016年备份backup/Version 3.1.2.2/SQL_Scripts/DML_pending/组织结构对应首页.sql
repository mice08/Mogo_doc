use mogoroomdb;
update 
-- select A.id,A.num,A.name,B.orgId,B.positionId,C.orgName,D.positionName,url
user_employee A 
inner  JOIN  orga_org_position  B  ON  A.id  =  B.userId
inner  JOIN  orga_org  C  ON  B.orgId  =  C.id
inner  JOIN  orga_position  D  ON  B.positionId  =  D.id
inner  JOIN  orga_position_url  E  ON  E.orgId  =  C.id
SET  url  =  'bd/findbdManagerTotleList'
where    1=1
AND  C.LEVEL  =4 and B.positionId =1

;

update 
-- select A.id,A.num,A.name,B.orgId,B.positionId,C.orgName,D.positionName,url
user_employee A 
inner  JOIN  orga_org_position  B  ON  A.id  =  B.userId
inner  JOIN  orga_org  C  ON  B.orgId  =  C.id
inner  JOIN  orga_position  D  ON  B.positionId  =  D.id
inner  JOIN  orga_position_url  E  ON  E.orgId  =  C.id
SET  url  =  'bd/findbdDirectorTotleList'
where    1=1
AND  C.LEVEL  =3 and B.positionId =1
AND  A.num  IN  (
SELECT  num  FROM  user_employee
WHERE  NAME  in ('袁睿','徐东','刘浩','陈梁','温志雄')

)