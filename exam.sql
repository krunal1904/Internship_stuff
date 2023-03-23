use sakila;

show tables;

SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.actor;

create view  ACTOR_FILM as
select a.first_name,a.last_name,f.title
from actor a
join film_actor fa on a.actor_id=fa.actor_id
join film f on f.film_id=fa.film_id
having a.first_name='MATTHEW';
select * from ACTOR_FILM;

DELIMITER &&  
CREATE PROCEDURE get_count_rating()  
BEGIN  
    SELECT count(title) as Total_Cunt,rating FROM film GROUP BY rating;    
END &&  
DELIMITER ;  

CALL get_count_rating();

-- SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select count(a.film_id) as total from film as a
inner join inventory  as i on i.film_id=a.film_id
inner join store as s on s.store_id=i.store_id
group by s.store_id
order by total desc;

update film 
inner join language on film.language_id=language.language_id
set film.language_id=(select language_id from language where name='Italian')
where title='AGENT TRUMAN';

