use mogoroomdb;
ALTER TABLE flat_joint_template modify column roomDescTemplate varchar(2000);
ALTER TABLE flat_joint_room modify column description varchar(2000);
