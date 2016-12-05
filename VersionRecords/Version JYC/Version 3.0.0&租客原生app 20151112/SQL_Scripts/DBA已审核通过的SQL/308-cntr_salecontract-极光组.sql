/* Database name `mogoroomdb` ����ͬ�����Ѻ���ֶ� */
use mogoroomdb;

ALTER TABLE `cntr_salecontract`
ADD COLUMN `deposit` DECIMAL(12,2) NULL COMMENT 'Ѻ��',
ADD COLUMN oddmentAmount DECIMAL(10,2) DEFAULT 0 COMMENT '�����������',
ADD COLUMN oddmentPlace INT(2) DEFAULT 1 COMMENT '0����������ͷ,1����������β',
ADD COLUMN oddmentMerge INT(2) DEFAULT '0' COMMENT '0��ʾ�������������ٽ����ںϲ���1��ʾ�����������ٽ����ںϲ�',
ADD COLUMN deadlineDate INT(2) DEFAULT NULL COMMENT 'deadlineDate<=0����ǰdeadlineDate�츶�32>deadlineDate>0��ÿ��deadlineDate�Ÿ���',
ADD COLUMN `sendFlag` INT(2) DEFAULT 2  NOT NULL  COMMENT '�Ƿ��� 1:δ���� 2:�ѷ���',
add COLUMN picGroupId INT(11) null comment '��ͬͼƬ��Id',
add COLUMN residentId INT(11) not null comment '��ס��Id',
add COLUMN billConfig varchar(4096) null comment '��ͬ�˵����ã�json�ַ���';


update cntr_salecontract set contracttype=(
case rentpaytype
	when 9 then 1 #���ʽ9ΪĢ������һѺһ����Ϊ��Ģ�������Ӻ�ͬ
	else
			case turnstrtus #ת��״̬0Ϊ��ת����Ϊ�Ƿ�Ģ�������Ӻ�ͬ�������Ϊ��ת����Ϊ�Ƿ�Ģ����ֽ�ʺ�ͬ
				when 0 then 2 else 3
			end
end
) where contracttype is null;




ALTER TABLE `cntr_salecontract`
MODIFY COLUMN `contractType` int(11) NOT NULL COMMENT '��ͬ����(1.Ģ�������Ӻ�ͬ;2.��Ģ�������Ӻ�ͬ;3��Ģ����ֽ�ʺ�ͬ)';