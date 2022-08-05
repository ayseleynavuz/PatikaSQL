/*
Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.

1.)film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
2.)film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
3.)cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
4.)category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
5.)film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kAç tane film vardır?

*/

-- Q1
Select title from film
where title like 'K%'
Order By length desc,replacement_cost asc
LIMIT 4;

-- Q2
Select rating,COUNT(*) from film
Group by rating
Order by rating desc
Limit 1;

-- Q3
Select customer.first_name,COUNT(*) from customer
Inner Join payment ON customer.customer_id = payment.customer_id
Group By customer.first_name
Order By COUNT(*) desc
Limit 1;

-- Q4
Select name,COUNT(*) from category
Inner Join film_category ON category.category_id = film_category.category_id
Group by category.category_id 
Order by COUNT(*) desc;

-- Q5
Select COUNT(*) from film
where title ilike '%e%e%e%e%';


