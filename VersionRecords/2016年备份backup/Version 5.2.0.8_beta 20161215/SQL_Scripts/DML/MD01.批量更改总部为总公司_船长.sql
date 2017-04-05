/* 修改总部更改为总公司 */

use mogoroomdb;

update perm_role set roleName=replace(roleName,'（总部）','（总公司）');
