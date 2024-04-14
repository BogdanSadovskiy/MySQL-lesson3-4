

use mydb;
drop table if exists orders;
drop table if exists users;


create table if not exists users(
id int primary key auto_increment unique,
name varchar(255),
email varchar (255)
);

create table if not exists orders(
id int primary key auto_increment unique,
user_id int,
date varchar(255),
price decimal,
foreign key (user_id) references users(id)
);



INSERT INTO users (name, email) VALUES
('User 1', 'user1@example.com'),
('User 2', 'user2@example.com'),
('User 3', 'user3@example.com'),
('User 4', 'user4@example.com'),
('User 5', 'user5@example.com'),
('User 6', 'user6@example.com'),
('User 7', 'user7@example.com'),
('User 8', 'user8@example.com'),
('User 9', 'user9@example.com'),
('User 10', 'user10@example.com'),
('User 11', 'user11@example.com'),
('User 12', 'user12@example.com'),
('User 13', 'user13@example.com'),
('User 14', 'user14@example.com'),
('User 15', 'user15@example.com'),
('User 16', 'user16@example.com'),
('User 17', 'user17@example.com'),
('User 18', 'user18@example.com'),
('User 19', 'user19@example.com'),
('User 20', 'user20@example.com');

-- Insert 10 orders
INSERT INTO orders (user_id, date, price) VALUES
(1, '2024-04-14', 100.50),
(2, '2024-04-13', 75.25),
(3, '2024-04-12', 120.75),
(4, '2024-04-11', 50.00),
(5, '2024-04-10', 90.99),
(11, '2024-04-09', 60.25),
(7, '2024-04-08', 110.80),
(8, '2024-04-07', 70.00),
(9, '2024-04-06', 130.45),
(15, '2024-04-05', 85.75);



select name from users;