/*�޸ķ��ձ��ֶ�����*/

use mogoroomdb;

ALTER TABLE `risk_landlord_level`   
  CHANGE `phase` `phase` VARCHAR(25) NOT NULL  COMMENT 'ʶ�𻷽�(1:������� 2:������� 3:��ͻط� 4:��������ط� 5:����)';