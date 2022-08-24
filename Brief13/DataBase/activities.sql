create table activities (
	id BIGSERIAL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	description VARCHAR(50) NOT NULL,
	type  VARCHAR(50) NOT NULL,
	date_start DATE NOT NULL,
	date_end DATE NOT NULL,
	state VARCHAR(50) NOT NULL,

	FOREIGN KEY (resp_id) REFERENCES responsables(id),
	FOREIGN KEY (exer_id) REFERENCES exercices(id)
);
insert into activities (id, title, description, type, date_start, date_end, state, resp_id, exer_id) values (1, 'activity1', 'description1', 'talk', '15/08/2022', '22/11/2022', 'enabled', 2, 1);
insert into activities (id, title, description, type, date_start, date_end, state, resp_id, exer_id) values (2, 'activity2', 'description2', 'talk', '14/08/2022', '22/112022', 'disabled', 5, 3);
insert into activities (id, title, description, type, date_start, date_end, state, resp_id, exer_id) values (3, 'activity3', 'description3', 'Formation', '10/08/2022', '11/11/2022', 'enabled', 2,3);
insert into activities (id, title, description, type, date_start, date_end, state, resp_id, exer_id) values (4, 'activity4', 'description4', 'talk', '15/08/2022', '25/09/2022', 'enabled',1, 4);
insert into activities (id, title, description, type, date_start, date_end, state, resp_id, exer_id) values (5, 'activity5', 'description5', 'event', '05/08/2022', '09/10/2022', 'disabled', 2, 3); 