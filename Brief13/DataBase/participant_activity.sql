create table participant_activity (

id BIGSERIAL PRIMARY KEY,
FOREIGN KEY (part_id) REFERENCES participants(id),
FOREIGN KEY (act_id) REFERENCES activities(id)

);
insert into participant_activity (id, part_id, act_id) values (1, 1, 1);
insert into participant_activity (id, part_id, act_id) values (2, 2, 1);
insert into participant_activity (id, part_id, act_id) values (3, 3, 3);
insert into participant_activity (id, part_id, act_id) values (4, 3, 4);
insert into participant_activity (id, part_id, act_id) values (5, 1, 5);
insert into participant_activity (id, part_id, act_id) values (6, 2, 5);
insert into participant_activity (id, part_id, act_id) values (7, 2, 2);
insert into participant_activity (id, part_id, act_id) values (8, 2, 3);
insert into participant_activity (id, part_id, act_id) values (9, 3, 4);
insert into participant_activity (id, part_id, act_id) values (10, 3, 1);
