
use mogoroomdb;

/**��ȡ��ʼʱ��**/
select @begindate:=NOW();
/**���ݽڵ����ƶ�ȡ���ڵ�id��level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = 'ְҵ����¼��';



/**�����µ�˳���,nullĬ����1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**�����µ�fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**�����½ڵ��¼-'�������ܲ��'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '�������ܲ��', 'common/autoConturyInfo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);
