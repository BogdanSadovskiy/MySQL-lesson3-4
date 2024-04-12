use lesson3;

-- first ex
-- select   states.header, count(comments.id) as number_of_comments
-- from states
-- join comments 
-- on comments.state_id = states.id
-- group by states.header;


-- second ex
-- select message, comments.comment_message as comments, comments.author 
-- from comments
-- join states
-- on comments.state_id = states.id
-- where states.id = 5;


-- third ex
-- delete from comments where state_id = 20;
-- select comments.comment_message as comments, comments.author 
-- from comments
-- join states
-- on comments.state_id = states.id;
