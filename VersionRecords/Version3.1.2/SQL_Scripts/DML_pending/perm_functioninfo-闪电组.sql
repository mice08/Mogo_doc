/* Database name `mogoroomdb` , ����bsϵͳ�˵�ѡ���Ȩ�������ֶ�ֵ��10 */
use mogoroomdb;
UPDATE perm_functioninfo SET seq = seq*10 WHERE functionlevel IN (0,1,2) AND functionType=1