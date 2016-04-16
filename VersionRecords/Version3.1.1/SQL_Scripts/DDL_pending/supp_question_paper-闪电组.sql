use mogoroomdb;

/*==============================================================*/
/* Table: supp_question_paper                                   */
/*==============================================================*/
create table supp_question_paper 
(
   id                   int(11)           NOT NULL AUTO_INCREMENT COMMENT '主键',
   name              varchar(32)     NOT NULL COMMENT '问卷名称',
   createBy          int(11)           NOT NULL COMMENT '创建人',
   createByType   int(2)             NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime      datetime          NOT NULL default current_timestamp COMMENT '创建时间',
   status             int(1)              NOT NULL default 1 COMMENT '状态(1:有效 0:无效)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='问卷表';

/*==============================================================*/
/* Table: supp_question                                         */
/*==============================================================*/
create table supp_question 
(
   id                   int(11)             NOT NULL AUTO_INCREMENT COMMENT '主键',
   description       varchar(256)    NOT NULL COMMENT '题干',
   questionType    int(1)              NOT NULL COMMENT '问题题型(1:单选题 2:多选题 3:问答题 4:判断题)',
   createBy          int(11)             NOT NULL COMMENT '创建人',
   createByType   int(2)               NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime      datetime           NOT NULL default current_timestamp COMMENT '创建时间',
   status             int(1)               NOT NULL default 1 COMMENT '状态(1:有效 0:无效)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='问题表';

/*==============================================================*/
/* Table: supp_question_option                                  */
/*==============================================================*/
create table supp_question_option 
(
   id                   int(11)            NOT NULL AUTO_INCREMENT COMMENT '主键',
   questionId       int(11)            NOT NULL COMMENT '问题ID',
   name              varchar(256)    NOT NULL COMMENT '选项名称',
   score              int(5)              NOT NULL default 0 COMMENT '选项分值',
   createBy          int(11)            NOT NULL COMMENT '创建人',
   createByType   int(2)              NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime      datetime          NOT NULL default current_timestamp COMMENT '创建时间',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='问卷调查项目表';

/*==============================================================*/
/* Table: supp_question_paper_rel                               */
/*==============================================================*/
create table supp_question_paper_rel 
(
   id                        int(11)        NOT NULL AUTO_INCREMENT COMMENT '主键',
   questionPaperId    int(11)         NOT NULL COMMENT '问卷ID',
   questionId            int(11)        NOT NULL COMMENT '问题ID',
   sort                   int(4)        NOT NULL COMMENT '排序',
   createBy               int(11)        NOT NULL COMMENT '创建人',
   createByType        int(2)           NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime           datetime       NOT NULL default current_timestamp COMMENT '创建时间',
   status                  int(1)           NOT NULL default 1 COMMENT '状态(1:有效 0:无效)',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='问卷问题关联表';

/*==============================================================*/
/* Table: supp_answer_paper                                     */
/*==============================================================*/
drop table if exists supp_answer_paper;

create table supp_answer_paper 
(
   id                         int(11)       NOT NULL AUTO_INCREMENT COMMENT '主键',
   questionPaperId      int(11)       NOT NULL COMMENT '问卷ID',
   totalScore              int(5)         NOT NULL default 0 COMMENT '总分',
   createBy                int(11)        NOT NULL COMMENT '创建人',
   createByType         int(2)          NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime            datetime      NOT NULL default current_timestamp COMMENT '创建时间',
   answeredBy           int(11)        NOT NULL COMMENT '答题人',
   answeredByType    int(2)          NOT NULL  COMMENT '答题人类型(参考字典表groupName=userType)',
   answerTime          datetime       NOT NULL default current_timestamp COMMENT '答题时间',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='答卷表';

/*==============================================================*/
/* Table: supp_answer_detail                                    */
/*==============================================================*/
create table supp_answer_detail 
(
   id                        int(11)             NOT NULL AUTO_INCREMENT COMMENT '主键',
   answerPaperId       int(11)             NOT NULL COMMENT '答卷ID',
   questionPaperId    int(11)              NOT NULL COMMENT '问卷ID',
   questionId            int(11)             NOT NULL COMMENT '问题ID',
   answer                 varchar(256)     NOT NULL COMMENT '答案',
   score                   int(5)                NOT NULL default 0 COMMENT '分数',
   createBy               int(11)             NOT NULL COMMENT '创建人',
   createByType         int(2)              NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
   createTime            datetime           NOT NULL default current_timestamp COMMENT '创建时间',
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='答卷明细表';