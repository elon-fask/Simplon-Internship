create table user (
	id BIGSERIAL PRIMARY KEY,
	orginal_id INT NOT NULL,
	user_name VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	role INT  NOT NULL
);
insert into user (id, orginal_id, user_name, password, role) values (1, 1, 'admin1', 'admin1', 1);
insert into user (id, orginal_id, user_name, password, role) values (2, 2, 'admin2', 'admin2', 1);
insert into user (id, orginal_id, user_name, password, role) values (3, 3, 'admin3', 'admin3', 1);
insert into user (id, orginal_id, user_name, password, role) values (4, 1, 'par1', 'par1', 2);
insert into user (id, orginal_id, user_name, password, role) values (5, 2, 'par2', 'par2', 2);
insert into user (id, orginal_id, user_name, password, role) values (6, 3, 'par3', 'par3', 2);
insert into user (id, orginal_id, user_name, password, role) values (7, 4, 'par4', 'par4', 2);
insert into user (id, orginal_id, user_name, password, role) values (8, 5, 'par5', 'par5', 2);
insert into user (id, orginal_id, user_name, password, role) values (9, 1, 'resp1', 'resp1', 3);
insert into user (id, orginal_id, user_name, password, role) values (10, 2, 'resp2', 'resp2', 3);
insert into user (id, orginal_id, user_name, password, role) values (11, 3, 'resp3', 'resp3', 3);
insert into user (id, orginal_id, user_name, password, role) values (12, 4, 'resp4', 'resp4', 3);
insert into user (id, orginal_id, user_name, password, role) values (13, 5, 'resp5', 'resp5', 3);
