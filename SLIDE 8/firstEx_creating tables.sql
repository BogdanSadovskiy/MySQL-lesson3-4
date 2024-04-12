
use lesson3;
drop table if exists profiles;
drop table if exists users;


create table if not exists users(
id int primary key auto_increment,
name varchar(255),
email varchar(255)
);

create table if not exists profiles(
user_id int unique,
birthday varchar (255),
telephone varchar(255),
foreign key (user_id) references users(id) on delete cascade
);


insert into users(name, email) values
("Bogdan", "bogdan@gmail.com"),
("Zahar", "zahar@mail.com"),
("Ivan", "vania@examle.com"),
("Mikola", "mikola@gmail.com"),
("Kolian", "kolian@mail.com"),
("Ivanka", "ivanka@examle.com"),
("Bogdanka", "bogdanka@gmail.com"),
("John", "john@mail.com"),
("Ann", "Ann@examle.com");

insert into profiles(user_id, birthday, telephone) values
(1, "24.08.1992", "0934384333"),
(3, "12.12.2003", "0978932444"),
(2,"01.02.2013","0952321321"),
(4, "24.08.2012", "0934232323"),
(5, "12.12.2233", "0978932321"),
(6,"01.02.2022","0952322321"),
(9, "24.08.1232", "0323233333"),
(7, "12.12.2012", "0233233321"),
(8,"01.02.2233","0953233322");

