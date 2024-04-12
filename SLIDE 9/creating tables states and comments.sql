use lesson3;
drop table if exists comments;
drop table if exists states;


create table if not exists states(
id int primary key auto_increment,
header varchar(255),
message text);

create table if not exists comments(
id int primary key auto_increment,
state_id int, 
comment_message text,
author varchar(255),
foreign key(state_id) references states(id) on delete cascade
);

INSERT INTO states (header, message) VALUES
('State 1 Header', 'State 1 Message'),
('State 2 Header', 'State 2 Message'),
('State 3 Header', 'State 3 Message'),
('State 4 Header', 'State 4 Message'),
('State 5 Header', 'State 5 Message'),
('State 6 Header', 'State 6 Message'),
('State 7 Header', 'State 7 Message'),
('State 8 Header', 'State 8 Message'),
('State 9 Header', 'State 9 Message'),
('State 10 Header', 'State 10 Message'),
('State 11 Header', 'State 11 Message'),
('State 12 Header', 'State 12 Message'),
('State 13 Header', 'State 13 Message'),
('State 14 Header', 'State 14 Message'),
('State 15 Header', 'State 15 Message'),
('State 16 Header', 'State 16 Message'),
('State 17 Header', 'State 17 Message'),
('State 18 Header', 'State 18 Message'),
('State 19 Header', 'State 19 Message'),
('State 20 Header', 'State 20 Message');

INSERT INTO comments (state_id, comment_message, author) VALUES
(1, 'Comment 1 for State 1', 'Author A'),
(1, 'Comment 2 for State 1', 'Author B'),
(2, 'Comment 1 for State 2', 'Author C'),
(2, 'Comment 2 for State 2', 'Author D'),
(3, 'Comment 1 for State 3', 'Author E'),
(3, 'Comment 2 for State 3', 'Author F'),
(4, 'Comment 1 for State 4', 'Author G'),
(4, 'Comment 2 for State 4', 'Author H'),
(5, 'Comment 1 for State 5', 'Author I'),
(5, 'Comment 2 for State 5', 'Author J'),
(6, 'Comment 1 for State 6', 'Author K'),
(6, 'Comment 2 for State 6', 'Author L'),
(7, 'Comment 1 for State 7', 'Author M'),
(7, 'Comment 2 for State 7', 'Author N'),
(8, 'Comment 1 for State 8', 'Author O'),
(8, 'Comment 2 for State 8', 'Author P'),
(9, 'Comment 1 for State 9', 'Author Q'),
(9, 'Comment 2 for State 9', 'Author R'),
(10, 'Comment 1 for State 10', 'Author S'),
(10, 'Comment 2 for State 10', 'Author T'),
(11, 'Comment 1 for State 11', 'Author U'),
(11, 'Comment 2 for State 11', 'Author V'),
(12, 'Comment 1 for State 12', 'Author W'),
(12, 'Comment 2 for State 12', 'Author X'),
(13, 'Comment 1 for State 13', 'Author Y'),
(13, 'Comment 2 for State 13', 'Author Z'),
(14, 'Comment 1 for State 14', 'Author AA'),
(14, 'Comment 2 for State 14', 'Author BB'),
(15, 'Comment 1 for State 15', 'Author CC'),
(15, 'Comment 2 for State 15', 'Author DD'),
(16, 'Comment 1 for State 16', 'Author EE'),
(16, 'Comment 2 for State 16', 'Author FF'),
(17, 'Comment 1 for State 17', 'Author GG'),
(17, 'Comment 2 for State 17', 'Author HH'),
(18, 'Comment 1 for State 18', 'Author II'),
(18, 'Comment 2 for State 18', 'Author JJ'),
(19, 'Comment 1 for State 19', 'Author KK'),
(19, 'Comment 2 for State 19', 'Author LL'),
(20, 'Comment 1 for State 20', 'Author MM'),
(20, 'Comment 2 for State 20', 'Author NN');