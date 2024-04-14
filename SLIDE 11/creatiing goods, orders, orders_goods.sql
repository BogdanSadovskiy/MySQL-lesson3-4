
USE lesson4;
drop table if exists orders_goods;
drop table if exists orders;
drop table if exists goods;




create table if not exists orders(
id int primary key auto_increment unique,
date varchar(255),
user_id int
);

create table if not exists goods(
id int primary key auto_increment unique,
name varchar (255),
price decimal
);

create table if not exists orders_goods(
order_id int,
good_id int,
quantity int,
foreign key (order_id) references orders(id) on delete cascade,
foreign key (good_id) references goods(id)
);

-- Inserting data into the 'orders' table
INSERT INTO orders (date, user_id) VALUES
('2024-04-14', 1),
('2024-04-13', 2),
('2024-04-12', 3),
('2024-04-11', 1),
('2024-04-10', 4);

-- Inserting data into the 'goods' table
INSERT INTO goods (name, price) VALUES
('T-Shirt', 19.99),
('Jeans', 39.99),
('Sneakers', 59.99),
('Backpack', 29.99),
('Hat', 14.99),
('Hoodie', 34.99),
('Jacket', 69.99),
('Shorts', 24.99),
('Dress', 49.99),
('Sandals', 44.99),
('Watch', 99.99),
('Sunglasses', 29.99),
('Gloves', 19.99),
('Scarf', 14.99),
('Belt', 24.99),
('Umbrella', 19.99),
('Socks', 9.99),
('Sweater', 39.99),
('Boots', 79.99),
('Pants', 49.99),
('Blouse', 34.99),
('Coat', 89.99),
('Handbag', 59.99),
('Necklace', 39.99),
('Earrings', 24.99),
('Ring', 29.99),
('Bracelet', 34.99),
('Wallet', 49.99),
('Purse', 39.99);

-- Inserting data into the 'orders_goods' table
INSERT INTO orders_goods (order_id, good_id, quantity) VALUES
(1, 1, 10),
(1, 3, 1),
(2, 2, 1),
(3, 1, 1),
(3, 5, 10),
(4, 3, 2),
(4, 4, 1),
(5, 5, 32);