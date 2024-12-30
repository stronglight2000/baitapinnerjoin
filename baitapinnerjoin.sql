-- Ý 1: Lấy ra tên các thành phố và tên các quốc gia tương ứng của thành phố đó
SELECT city,country
FROM country,city
WHERE country.country_id = city.country_id;
-- ý 2: Lấy ra tên các thành phố của nước Mỹ
SELECT city
FROM city,country
WHERE country.country_id = city.country_id and country = 'United States';
-- Ý 3: Lấy ra các địa chỉ của thành phố Hanoi
SELECT address
FROM address,city
WHERE address.city_id = city.city_id and city = 'Hanoi';
-- Ý 4: Lấy ra tên, mô tả, tên category của các bộ phim có rating = R
SELECT title,description,name
FROM film,category,film_category
WHERE film.film_id = film_category.film_id and category.category_id = film_category.category_id and rating = 'R';

-- Ý 5:Lấy ra thông tin của các bộ phim mà diễn viên NICK WAHLBERG tham gia
SELECT *
FROM film,actor,film_actor
WHERE actor.actor_id = film_actor.actor_id and film_actor.film_id = film.film_id and first_name = 'NICK' and last_name = 'WAHLBERG';
-- Ý 6: Tìm email của các khách hàng ở Mỹ
SELECT email
FROM customer,country,city,address
WHERE customer.address_id = address.address_id and country.country_id = city.country_id and address.city_id = city.city_id and country = 'United States';