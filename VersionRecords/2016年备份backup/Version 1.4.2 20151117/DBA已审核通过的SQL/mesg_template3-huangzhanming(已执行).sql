use mogoroomdb;
UPDATE mesg_template 
    SET content = '${1}���ã�����ס��${2}${3}�ŵķ�����Ϊ��¼����������Լ����ʹ��Ģ���ⷿAPP��¼��������˺ţ��˺ţ�${4}�����룺${5}��ȷ����Լ��ȷ�������������ֱ��ͨ��Ģ���ⷿAPP֧��ʣ������˵���Ģ���ⷿAPP���ص�ַhttp://www.mogoroom.com/pages/activity/AppDown.jsp ����¼���뼰ʱ�޸ĺ������˺���Ϣ�����������뼰ʱ�뷿����ϵ��'
WHERE TYPE='sms_additional_renter_focus';

UPDATE mesg_template 
    SET content = '${1}���ã�����ס��${2}С��${3}��${4}��Room${5}�ķ�����Ϊ��¼����������Լ����ʹ��Ģ���ⷿAPP��¼��������˺ţ��˺ţ�${6}�����룺${7}��ȷ����Լ��ȷ�������������ֱ��ͨ��Ģ���ⷿAPP֧��ʣ������˵���Ģ���ⷿAPP���ص�ַhttp://www.mogoroom.com/pages/activity/AppDown.jsp ����¼���뼰ʱ�޸ĺ������˺���Ϣ�����������뼰ʱ�뷿����ϵ��'
WHERE TYPE='sms_additional_renter';