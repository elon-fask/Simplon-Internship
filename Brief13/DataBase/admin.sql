create table admin (
	id BIGSERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	state VARCHAR(20) NOT NULL,
	user_name VARCHAR(20) UNIQUE NOT NULL,
	password VARCHAR(20) NOT NULL
);
insert into admin (id, first_name, last_name, phone, email, state, user_name, password) values (1, 'Hirsch', 'Lighterness', '0612344222', 'hligh@yandex.ru', 'enabled', 'admin1', 'admin1');
insert into admin (id, first_name, last_name, phone, email, state, user_name, password) values (2, 'Rochette', 'Bartunek', '0674532209', 'rbar1@squidoo.com', 'enabled', 'admin2', 'admin2');
insert into admin (id, first_name, last_name, phone, email, state, user_name, password) values (3, 'Isidro', 'Karoly', '0642235108', 'ikar2@myspace.com', 'disabled', 'admin3', 'admin3');
