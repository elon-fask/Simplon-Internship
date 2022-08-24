create table responsables (
	id BIGSERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) UNIQUE NOT NULL,
	field VARCHAR(50) NOT NULL,
	type VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	user_name VARCHAR(20) UNIQUE NOT NULL,
	password VARCHAR(20) NOT NULL
);
insert into responsables (id, first_name, last_name, phone, field, type, state, user_name, password) values (1, 'Kelby', 'Errett', '0611223344', 'field1', 'trainer', 'enabled', 'resp1', 'resp1');
insert into responsables (id, first_name, last_name, phone, field, type, state, user_name, password) values (2, 'Lanae', 'Cheney', '0612345678', 'field2', 'trainer', 'disabled', 'resp2', 'resp2');
insert into responsables (id, first_name, last_name, phone, field, type, state, user_name, password) values (3, 'Alard', 'Boullin', '0711223344', 'field3', 'trainer', 'enabled', 'resp3', 'resp3');
insert into responsables (id, first_name, last_name, phone, field, type, state, user_name, password) values (4, 'Christiana', 'Spores', '0712345677', 'field4', 'speaker', 'disabled', 'resp4', 'resp4');
insert into responsables (id, first_name, last_name, phone, field, type, state, user_name, password) values (5, 'Whittaker', 'Kinchley', '0123456789', 'field5', 'speaker', 'disabled', 'resp5', 'resp5');