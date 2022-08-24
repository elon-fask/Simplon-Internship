create table exercices (
	id BIGSERIAL PRIMARY KEY,
	year INT NOT NULL,
	date_start DATE NOT NULL,
	date_end DATE NOT NULL,
	state VARCHAR(50) NOT NULL
);
insert into exercices (id, year, date_start, date_end, state) values (1, 2021, '08/12/2022', '09/13/2022', 'Not yet');
insert into exercices (id, year, date_start, date_end, state) values (2, 2021, '08/05/2022', '09/12/2022', 'Not yet');
insert into exercices (id, year, date_start, date_end, state) values (3, 2022, '10/04/2022', '11/08/2022', 'Done');
insert into exercices (id, year, date_start, date_end, state) values (4, 2022, '25/06/2022', '09/08/2022', 'Done');
insert into exercices (id, year, date_start, date_end, state) values (5, 2022, '13/06/2022', '09/10/2022', 'Not yet');
