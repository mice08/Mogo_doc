/* �����Ƿ���Ч�ֶ� */
use mogoroomdb;

ALTER TABLE city_community_station ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '�Ƿ���Ч(0:��Ч 1:��Ч)';
ALTER TABLE flat_joint_58community ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '�Ƿ���Ч(0:��Ч 1:��Ч)';
ALTER TABLE flat_joint_ganjicommunity ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '�Ƿ���Ч(0:��Ч 1:��Ч)';