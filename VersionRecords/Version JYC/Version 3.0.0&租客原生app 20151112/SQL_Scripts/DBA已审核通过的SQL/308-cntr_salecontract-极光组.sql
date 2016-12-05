/* Database name `mogoroomdb` ，合同表添加押金字段 */
use mogoroomdb;

ALTER TABLE `cntr_salecontract`
ADD COLUMN `deposit` DECIMAL(12,2) NULL COMMENT '押金',
ADD COLUMN oddmentAmount DECIMAL(10,2) DEFAULT 0 COMMENT '租期余数金额',
ADD COLUMN oddmentPlace INT(2) DEFAULT 1 COMMENT '0租期余数置头,1租期余数置尾',
ADD COLUMN oddmentMerge INT(2) DEFAULT '0' COMMENT '0表示租期余数不与临近整期合并，1表示租期余数与临近整期合并',
ADD COLUMN deadlineDate INT(2) DEFAULT NULL COMMENT 'deadlineDate<=0，提前deadlineDate天付款；32>deadlineDate>0，每月deadlineDate号付款',
ADD COLUMN `sendFlag` INT(2) DEFAULT 2  NOT NULL  COMMENT '是否发送 1:未发送 2:已发送',
add COLUMN picGroupId INT(11) null comment '合同图片组Id',
add COLUMN residentId INT(11) not null comment '入住人Id',
add COLUMN billConfig varchar(4096) null comment '合同账单配置，json字符串';


update cntr_salecontract set contracttype=(
case rentpaytype
	when 9 then 1 #付款方式9为蘑菇宝付一押一，认为是蘑菇宝电子合同
	else
			case turnstrtus #转客状态0为非转客认为是非蘑菇宝电子合同，其余的为非转客认为是非蘑菇宝纸质合同
				when 0 then 2 else 3
			end
end
) where contracttype is null;




ALTER TABLE `cntr_salecontract`
MODIFY COLUMN `contractType` int(11) NOT NULL COMMENT '合同类型(1.蘑菇宝电子合同;2.非蘑菇宝电子合同;3非蘑菇宝纸质合同)';