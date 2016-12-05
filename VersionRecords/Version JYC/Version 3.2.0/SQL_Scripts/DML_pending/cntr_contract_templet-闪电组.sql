/*聚有财合同模板录入*/
use mogoroomdb;

INSERT INTO cntr_contract_templet(cityId, templetName, templetCode, templetPath, status, createTime, createBy, createByType, lang)
VALUES(289, '拉卡拉合同模板', 'lakala', '/var/lib/docker/contract/template/MogoBaoProtocolTemplet.vm', 1, NOW(), 1, 1, 1);

INSERT INTO cntr_contract_templet(cityId, templetName, templetCode, templetPath, status, createTime, createBy, createByType, lang)
VALUES(289, '聚有财合同模板', 'jyc', '/var/lib/docker/contract/template/MogoBaoProtocolTemplet_JYC.vm', 1, NOW(), 1, 1, 1);