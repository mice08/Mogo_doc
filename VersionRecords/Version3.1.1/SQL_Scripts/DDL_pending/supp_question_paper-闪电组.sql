use mogoroomdb;

/*==============================================================*/
/* Table: supp_question_paper                                   */
/*==============================================================*/
create table supp_question_paper 
(
   id                   int(11)           NOT NULL AUTO_INCREMENT COMMENT '����',
   name              varchar(32)     NOT NULL COMMENT '�ʾ�����',
   createBy          int(11)           NOT NULL COMMENT '������',
   createByType   int(2)             NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime      datetime          NOT NULL default current_timestamp COMMENT '����ʱ��',
   status             int(1)              NOT NULL default 1 COMMENT '״̬(1:��Ч 0:��Ч)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='�ʾ��';

/*==============================================================*/
/* Table: supp_question                                         */
/*==============================================================*/
create table supp_question 
(
   id                   int(11)             NOT NULL AUTO_INCREMENT COMMENT '����',
   description       varchar(256)    NOT NULL COMMENT '���',
   questionType    int(1)              NOT NULL COMMENT '��������(1:��ѡ�� 2:��ѡ�� 3:�ʴ��� 4:�ж���)',
   createBy          int(11)             NOT NULL COMMENT '������',
   createByType   int(2)               NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime      datetime           NOT NULL default current_timestamp COMMENT '����ʱ��',
   status             int(1)               NOT NULL default 1 COMMENT '״̬(1:��Ч 0:��Ч)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='�����';

/*==============================================================*/
/* Table: supp_question_option                                  */
/*==============================================================*/
create table supp_question_option 
(
   id                   int(11)            NOT NULL AUTO_INCREMENT COMMENT '����',
   questionId       int(11)            NOT NULL COMMENT '����ID',
   name              varchar(256)    NOT NULL COMMENT 'ѡ������',
   score              int(5)              NOT NULL default 0 COMMENT 'ѡ���ֵ',
   createBy          int(11)            NOT NULL COMMENT '������',
   createByType   int(2)              NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime      datetime          NOT NULL default current_timestamp COMMENT '����ʱ��',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='�ʾ������Ŀ��';

/*==============================================================*/
/* Table: supp_question_paper_rel                               */
/*==============================================================*/
create table supp_question_paper_rel 
(
   id                        int(11)        NOT NULL AUTO_INCREMENT COMMENT '����',
   questionPaperId    int(11)         NOT NULL COMMENT '�ʾ�ID',
   questionId            int(11)        NOT NULL COMMENT '����ID',
   sort                   int(4)        NOT NULL COMMENT '����',
   createBy               int(11)        NOT NULL COMMENT '������',
   createByType        int(2)           NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime           datetime       NOT NULL default current_timestamp COMMENT '����ʱ��',
   status                  int(1)           NOT NULL default 1 COMMENT '״̬(1:��Ч 0:��Ч)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='�ʾ����������';

/*==============================================================*/
/* Table: supp_answer_paper                                     */
/*==============================================================*/
create table supp_answer_paper 
(
   id                         int(11)       NOT NULL AUTO_INCREMENT COMMENT '����',
   questionPaperId      int(11)       NOT NULL COMMENT '�ʾ�ID',
   totalScore              int(5)         NOT NULL default 0 COMMENT '�ܷ�',
   createBy                int(11)        NOT NULL COMMENT '������',
   createByType         int(2)          NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime            datetime      NOT NULL default current_timestamp COMMENT '����ʱ��',
   answeredBy           int(11)        NOT NULL COMMENT '������',
   answeredByTime    int(2)          NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   answerTime          datetime       NOT NULL default current_timestamp COMMENT '����ʱ��',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='����';

/*==============================================================*/
/* Table: supp_answer_detail                                    */
/*==============================================================*/
create table supp_answer_detail 
(
   id                        int(11)             NOT NULL AUTO_INCREMENT COMMENT '����',
   answerPaperId       int(11)             NOT NULL COMMENT '���ID',
   questionPaperId    int(11)              NOT NULL COMMENT '�ʾ�ID',
   questionId            int(11)             NOT NULL COMMENT '����ID',
   answer                 varchar(256)     NOT NULL COMMENT '��',
   score                   int(5)                NOT NULL default 0 COMMENT '����',
   createBy               int(11)             NOT NULL COMMENT '������',
   createByType         int(2)              NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
   createTime            datetime           NOT NULL default current_timestamp COMMENT '����ʱ��',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='�����ϸ��';