--Film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.

select distinct(replacement_cost) from "film";

--Film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?

select count(distinct(replacement_cost)) as dist_count from "film";
--Answer:21

--Film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?

select count(*) from "film"
where title ~~ 'T%' and rating= 'G';

--Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?

select count(*) from country
where country ~~ '_____';
--or
select count(*) from country
where length(country)=5

--City tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

select count(*) from "city"
where city ~~* '%R'

