--Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

select count(*) from film
where length>(select avg(length) from film)

--Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

select count(*) from film
where rental_rate =(select max(rental_rate) from film)

--Film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.

select title, rental_rate, replacement_cost from film
where 
rental_rate = any(select min(rental_rate) from film) 
and 
replacement_cost= any(select min(replacement_cost) from film);

--Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

select first_name,last_name from customer c
inner join 
(select customer_id,count(*) from payment
group by customer_id
order by 2 desc
)p on p.customer_id=c.customer_id
order by count desc

---En fazla harcamayı yapan müşteri olarakta

select c.first_name,c.last_name,p.cum_amount from customer c
inner join (select customer_id,sum(amount) as cum_amount from payment
group by customer_id
order by 2 desc) p
on p.customer_id=c.customer_id
order by 3 desc

