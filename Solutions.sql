--Q1
select mov_title from movies.movie
where mov_id =  905 or mov_id = 907 or mov_id= 917;

--Q2
select actor.act_fname,actor.act_lname,movie_cast.role
from actor
join movie_cast on actor.act_id=movie_cast.act_id
join movie on movie_cast.mov_id=movie.mov_id and movie.mov_title='Annie Hall';

--Q3
select act_fname , act_lname ,mov_title , mov_year
from movies.movie
INNER join movies.actor
on not movies.movie.mov_year between 1999 and 2000;

--Q4
select mov_year
from movies.movie
INNER join movies.rating
on movies.rating.rev_stars = 3 or movies.rating.rev_stars = 4
ORDER BY mov_year ASC;

--Q5
select mov_id, mov_title , mov_year
from movies.movie
where mov_title like '%Boogie Nights%'
order by mov_year ASC;

--Q6
select mov_title , dir_fname , dir_lname ,rating.num_o_ratings
from movies.director
join movies.movie_direction
on movies.director.dir_id = movies.movie_direction.dir_id
join movies.movie
on movies.movie.mov_id = movie_direction.mov_id
join movies.rating
on movies.rating.num_o_ratings >0 ;

--Q7
select mov_title, mov_year, MAX(rev_stars), mov_rel_country
from movies.movie
join movies.rating;

--Q9
select mov_title
from movies.movie
join movies.rating
on movies.rating.num_o_ratings is NULL ;

--Q10
select mov_title
from movies.movie
where mov_year < 1998;
