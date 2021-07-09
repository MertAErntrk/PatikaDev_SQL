--Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.

select title,length from "film" 
where title ~~* '%n'
order by length desc
limit 5;

--Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.

select title,length from "film" 
where title ~~* '%n'
order by length asc
offset 5
limit 5;

--Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

select last_name,store_id from customer
where store_id =1
order by last_name desc
limit 4;


