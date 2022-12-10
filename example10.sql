--1 city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
--2 customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
--3 customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

--1
SELECT city.name,country.name 
FROM city 
LEFT JOIN country ON city.id=country.city_id;

--2
SELECT payment.payment_id, customer.first_name, customer.last_name 
FROM payment 
RIGHT JOIN customer ON payment.payment_id=customer.payment_id;

--3
SELECT customer.first_name,customer.last_name, rental.rental_id  
FROM customer 
FULL JOIN rental ON customer.rental_id=rental.rental_id;
