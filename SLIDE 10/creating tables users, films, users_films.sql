drop database if exists ex4;
create database if not exists ex4;
use ex4;
drop table if exists users_films;
drop table if exists users;

drop table if exists films;





create table if not exists users(
id int primary key auto_increment,
name varchar(55)
);

create table if not exists films(
id int primary key auto_increment,
name varchar (255),
genre varchar(255)
);

create table if not exists users_films(
user_id int,
film_id int,
foreign key(user_id) references users(id) on delete cascade,
foreign key(film_id) references films(id) on delete cascade
);

INSERT INTO users (name) VALUES
('Alice'), ('Bob'), ('Charlie'), ('David'), ('Emma'),
('Frank'), ('Grace'), ('Henry'), ('Ivy'), ('Jack'),
('Kelly'), ('Liam'), ('Mia'), ('Noah'), ('Olivia'),
('Peter'), ('Quinn'), ('Rachel'), ('Sam'), ('Taylor');

-- Insert 30 films into the 'films' table
INSERT INTO films (name, genre) VALUES
('The Shawshank Redemption', 'Drama'),
('The Godfather', 'Crime'),
('The Dark Knight', 'Action'),
('Pulp Fiction', 'Crime'),
('Forrest Gump', 'Drama'),
('Inception', 'Sci-Fi'),
('The Matrix', 'Sci-Fi'),
('The Lord of the Rings: The Fellowship of the Ring', 'Fantasy'),
('The Silence of the Lambs', 'Thriller'),
('The Lion King', 'Animation'),
('Titanic', 'Romance'),
('Jurassic Park', 'Adventure'),
('Avatar', 'Sci-Fi'),
('Gladiator', 'Action'),
('Braveheart', 'Drama'),
('The Avengers', 'Action'),
('The Wolf of Wall Street', 'Comedy'),
('Interstellar', 'Sci-Fi'),
('Forrest Gump', 'Drama'),
('Fight Club', 'Drama'),
('The Lord of the Rings: The Return of the King', 'Fantasy'),
('The Godfather: Part II', 'Crime'),
('The Shawshank Redemption', 'Drama'),
('The Dark Knight', 'Action'),
('Pulp Fiction', 'Crime'),
('The Lord of the Rings: The Two Towers', 'Fantasy'),
('Schindler\'s List', 'Biography'),
('Saving Private Ryan', 'War'),
('The Green Mile', 'Drama'),
('The Prestige', 'Mystery');

INSERT INTO users_films (user_id, film_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5), 
(2, 2),
(3, 3), 
(4, 4), 
(5, 5),
(2, 4), 
(3, 2), 
(4, 5), 
(5, 1); 

insert into users_films values -- for exercise
(10, 1),
(10, 10);