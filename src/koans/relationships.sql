-- Meditate on ONE-TO-MANY relationships
select *
from customer c
	join event e on e.customer_id = c.id
where c.id = 20001

-- Meditate on MANY-TO-ONE relationships
select e.*, b.id, b.title
from event e
	join book b on b.id = e.book_id
where b.id = 1

-- Meditate on MANY-TO-MANY relationships
select a.first_name, a.last_name, b.title
from book b
	join book_to_author_map map on b.id = map.book_id
	join author a on map.author_id = a.id
where author_id in (1, 5, 6)