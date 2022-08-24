create table participants (
	id BIGSERIAL PRIMARY KEY,
	fullName VARCHAR(50) NOT NULL,
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	field VARCHAR(50) NOT NULL,
	structure VARCHAR(50) NOT NULL,
	FOREIGN KEY (admin_id) REFERENCES admin(id),
	user_name VARCHAR(20) UNIQUE NOT NULL,
	password VARCHAR(20) NOT NULL
);
insert into participants (id, fullName, phone, email, field, structure, admin_id, user_name, password) values (1, 'Sigi Spurrior', '391-208-5904', 'sspurrior0@liveinternet.ru', 'field1', 'structure1',1, 'par1', 'par1');
insert into participants (id, fullName, phone, email, field, structure, admin_id, user_name, password) values (2, 'Chris Hinsch', '986-928-4722', 'chinsch1@odnoklassniki.ru', 'field2', 'structure2',2, 'par2', 'par2');
insert into participants (id, fullName, phone, email, field, structure, admin_id, user_name, password) values (3, 'Ruperto Blacklidge', '860-617-4295', 'rblacklidge2@guardian.co.uk', 'field3', 2,'structure3', 'par3', 'par3');
insert into participants (id, fullName, phone, email, field, structure, admin_id, user_name, password) values (4, 'Kirsten Armin', '740-518-2205', 'karmin3@usatoday.com', 'field4', 'structure4',1, 'par4', 'par4');
insert into participants (id, fullName, phone, email, field, structure, admin_id, user_name, password) values (5, 'Ilse Ensor', '575-292-0079', 'iensor4@salon.com', 'field5', 'structure5',3, 'par5', 'par5');
