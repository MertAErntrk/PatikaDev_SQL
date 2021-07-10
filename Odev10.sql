--City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

select c1.country,c2.city from country c1
left join city c2 on c2.country_id=c1.country_id
order by 1;

--Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

select c.first_name,c.last_name,p.payment_id from customer c 
right join payment p on p.customer_id=c.customer_id

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimizFULL JOIN sorgusunu yazınız.

select rental_id,first_name,last_name from rental r 
full outer join customer c on c.customer_id=r.customer_id
