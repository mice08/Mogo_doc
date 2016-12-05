/* Database name `mogoroomdb` , 修改房东退款信息模版 */
use mogoroomdb;

UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[合约解除，房东退款]${roomInfo}的房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。'
WHERE mt.templetCode = 'sms_landlordRefund_affirm';