-- role
create role if not exists 'hr_role';

-- no user in the role
select to_user as 'User' , to_host as 'Host'
from mysql.role_edges 
where from_user = 'hr_role';

-- create user
create user vivek2604 identified by 'vivek2604';

-- assign permission to role
grant select on tcldb2.* to hr_role;

-- role assign to user
grant hr_role to vivek2604;

show grants for vivek2604; 

-- vivek2604 user in the role
select to_user as 'User' , to_host as 'Host'
from mysql.role_edges 
where from_user = 'hr_role';

use tcldb2;
show tables;

grant select on tcldb2.* to vivek2604;

set default role hr_role to vivek2604; -- assigning a default role to the user everytime











