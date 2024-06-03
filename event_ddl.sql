CREATE DATABASE if not exists events ;

drop table users;
create table users
(id integer,
name varchar(50) not null,
primary key (id));

drop table event;
create table event
(id integer,
name varchar(50) not null,
date datetime,
place varchar(100),
ticket_price decimal,
primary key (id));

drop table user_events;
create table user_event
(id integer,
user_id integer,
event_id integer,
status_payment varchar(50),
primary key (id),
foreign key (user_id) references users(id),
foreign key (event_id) references event(id));


