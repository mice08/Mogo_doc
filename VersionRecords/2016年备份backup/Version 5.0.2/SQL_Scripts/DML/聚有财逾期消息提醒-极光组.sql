USE mogoroomdb;


UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${startMonth}-${endMonth}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue') AND templetType IN (1,3);



UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${startMonth}-${endMonth}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue7') AND templetType IN (1,3);


UPDATE mesg_subtemplet SET templetContent='您${startMonth}-${endMonth}月租金已逾期${overDue}天，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue') AND templetType IN (1,3);


UPDATE mesg_subtemplet SET templetContent='您${startMonth}-${endMonth}月租金已逾期${overDue}天，今日若不及时缴纳系统将强行退房，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue7') AND templetType IN (1,3);

