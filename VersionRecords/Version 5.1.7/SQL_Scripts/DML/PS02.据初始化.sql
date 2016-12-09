/*����sql������150���Ի���ִ�У�����*/

/*���ռ�¼���򿪹�*/

use mogoroomdb;

INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-001','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-002','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-003','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-004','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-001','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-002','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-003','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-001','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-002','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-003','1','riskRule','��ʱ�����չ���','val=1(����)val=0(�ر�)',NOW(),6,1);

/*ɾ��ǩԼ�ˣ�ǩԼ��Ȩ��*/
UPDATE perm_functioninfo SET STATUS=0 WHERE id IN (2820,2822);


/*����ֵ��?/
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-8','userType',8,8,'ҵ��',1,'userType-8');
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-9','userType',9,9,'ϵͳ',1,'userType-9');