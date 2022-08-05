/*

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1.)city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2.)customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
INNER JOIN sorgusunu yazınız.
3.)customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
INNER JOIN sorgusunu yazınız.
*/
-- Q1
SELECT city, country FROM country
INNER JOIN city ON country.country_id = city.country_id;

-- Q2
SELECT p.payment_id, c.first_name, c.last_name FROM customer AS c
INNER JOIN payment AS p ON p.customer_id = c.customer_id;

-- Q3
SELECT rental_id, first_name, last_name FROM customer AS c
INNER JOIN rental AS r ON r.customer_id = c.customer_id;
