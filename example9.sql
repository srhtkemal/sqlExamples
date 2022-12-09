--1 city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
--2 customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
--3 customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

--1
SELECT city, country 
FROM city
INNER JOIN country ON country.country_id = city.country_id;

--2
SELECT payment.payment_id,customer.first_name,customer.last_name 
FROM customer 
INNER JOIN payment ON payment.payment.id = customer.payment.id;

--3
SELECT rental_id, first_name, last_name 
FROM customer
INNER JOIN rental ON rental.rental_id = customer.rental.id;
