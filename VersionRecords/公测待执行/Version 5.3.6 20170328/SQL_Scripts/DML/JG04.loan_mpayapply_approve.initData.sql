/*初始化审批表数据*/

USE mogoroomdb;

insert into 
	loan_mpayapply_approve(
	landlordid,
	contractId,
	applyId,
	busiApproveStatus1,
	busiApproveStatus2,
	creditApprover1,
	creditApproveTime1,
	creditApproveStatus1,
	creditApprover2,
	creditApproveTime2,
	creditApproveStatus2,
	hasUploadContract,
	status,
	remark1,
	remark2,
	createTime,
	createBy,
	updateTime,
	updateBy
)
select 
	contract.landlordId as landlordid,
	contract.id as contractId,
	-1 as applyId, /*申请id置为-1*/
	1 as busiApproveStatus1, /*拓展专员审核通过*/
	1 as busiApproveStatus2, /*拓展经理审核通过*/
	contract.approvalUser as creditApprover1, /*信审一审审核人*/
	contract.approvalTime as creditApproveTime1, /*信审一审审核时间*/
	case contract.status
		when 4 then 1
		when 5 then 0
	end as creditApproveStatus1, /*信审一审审核结果(0:不通过 1:通过 2:资料有误)*/
	contract.approvalUser1 as creditApprover2, /*信审二审审核人*/
	contract.approvalTime1 as creditApproveTime2, /*信审二审审核时间*/
	case contract.status
		when 2 then 1
		when 3 then 0
	end as creditApproveStatus2, /*信审二审审核结果(0:不通过 1:通过 3:驳回)*/
	1 as hasUploadContract, /*线下签约合同是否上传(0:否 1:是)*/
	case contract.status
		when 1 then 3
		when 2 then 40
		when 3 then 16
		when 4 then 4
		when 5 then 16
	end as status, /*总审核状态(0:初始化 1:待一审 2:待二审 3:待三审 4:待四审 8:资料有误 16:不通过 24:合同待上传 32:资质待开通 40:资质生效)*/
	'初始化导入' as remark1, /*拓展专员审核备注*/
	ifnull(contract.remark, contract.remark2) as remark2, /*信审员审核备注*/
	credit.createTime as createTime, /*创建时间*/
	credit.createUser as createBy, /*创建人*/
	credit.modifyTime as updateTime, /*更新时间*/
	credit.modifyUser as updateBy /*更新人*/
from loan_landlord_contract contract
inner join loan_landlord_credit credit on contract.id=credit.contractid
where contract.loanChannel=4 /*聚有财月付的申请*/
and credit.canloan=4 /*审核中的*/
and not exists(select id from loan_mpayapply_approve where contractId = contract.id); /*在loan_mpayapply_approve中没有记录*/