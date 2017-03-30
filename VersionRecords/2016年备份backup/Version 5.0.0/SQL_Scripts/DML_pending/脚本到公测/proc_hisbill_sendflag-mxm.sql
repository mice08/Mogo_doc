

use mogoroomdb;

begin;

/*
 *签约成功(包括补录租约成功/租约待确认、发起签约成功)的账单(包括租金账单、自定义账单）：置账单状态由未发送-->已发送
 * salebill部分
 */
update bill_salebill sb
join
(
select sb.id from bill_salebill sb
join oder_signedorder so on sb.signedOrderId=so.id and so.status in (4, 7) where sb.sendFlag<>2 and sb.bill_type  in (1004, 10005, 20001)
) sbid on sb.id=sbid.id
set sb.sendFlag = 2;

/*
 *签约成功(包括补录租约成功/租约待确认、发起签约成功)的账单(包括租金账单、自定义账单）：置账单状态由未发送-->已发送
 * acctBill部分
 */
update acct.acct_bill ab
join bill_account_mapping bam on ab.billid=bam.billid and ab.billType  in (1004, 10005, 20001)
join
(
select sb.id from bill_salebill sb
join oder_signedorder so on sb.signedOrderId=so.id and so.status in (4, 7) where sb.sendFlag<>2 and sb.bill_type  in (1004, 10005, 20001)
) sbid on bam.orderId=sbid.id
set ab.sendFlag = 2;

/*
 *签约待支付签约单状态-->签约已撤销状态
 */
update oder_signedorder set status=22 where status=2;

commit;

