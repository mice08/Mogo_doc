/* Database name `mogoroomdb`�� ��ͬ״̬Ϊ"ǩԼ�ɹ�"��ǩԼ��ʽΪ"��¼��Լ"�ĺ�ͬ��confirmDate��ʼ��Ϊ���ߵ��� */

use mogoroomdb;

update cntr_salecontract set confirmDate=NOW() where turnStrtus=2;