create database ERS;
use ERS;
create table User(
userid int primary key,
passwd varchar(30),
email varchar(30),
phone varchar(30));


create table Candidate(
candid int primary key,
candname varchar(30),
passwd varchar(30),
email varchar(30),
phone varchar(30),
resume BLOB ,
constraint f_id foreign key(candid) references User(userid));

create table Job(
job_id int primary key,
candid int,
job_desc varchar(30));

create table Application(
appl_id int primary key,
candid int ,
appl_date Date,
job_id int,
constraint f_c foreign key(candid) references Candidate(candid),
constraint f_j foreign key(job_id) references Job(job_id));





