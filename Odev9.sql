--City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

select c1.city,c2.country from city c1
inner join country c2 on c2.country_id=c1.country_id;

--Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimizINNER JOIN sorgusunu yazınız.

select c.first_name,c.last_name,p.payment_id from payment p
inner join customer c on c.customer_id=p.customer_id;

--Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimizINNER JOIN sorgusunu yazınız.

select c.first_name,c.last_name,r.rental_id from customer c
inner join rental r on r.customer_id=c.customer_id;
