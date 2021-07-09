--Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

create table employee (
	id serial primary key,
	name varchar(50),
	birthday date,
	email varchar(100)
)

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (name, birthday, email) values ('Kathi', null, null);
insert into employee (name, birthday, email) values ('Layton', '2021/01/10', 'lsummerlad1@myspace.com');
insert into employee (name, birthday, email) values ('Ericha', '2020/08/30', 'edefrancisci2@tripadvisor.com');
insert into employee (name, birthday, email) values ('Roarke', '2020/09/08', 'rmaddock3@4shared.com');
insert into employee (name, birthday, email) values ('Ninnetta', '2020/09/16', 'ncareswell4@slideshare.net');
insert into employee (name, birthday, email) values ('Norris', '2021/04/28', 'njantot5@wp.com');
insert into employee (name, birthday, email) values ('Leontyne', '2020/07/27', 'lbaxandall6@bloglovin.com');
insert into employee (name, birthday, email) values ('Sharla', '2020/10/05', 'shexham7@newyorker.com');
insert into employee (name, birthday, email) values ('Thornie', '2021/01/16', 'tnorthey8@ft.com');
insert into employee (name, birthday, email) values ('Scotti', '2021/02/04', 'sboij9@altervista.org');
insert into employee (name, birthday, email) values ('Sanson', '2021/05/09', 'smintera@scribd.com');
insert into employee (name, birthday, email) values ('Allsun', '2020/07/26', 'akettb@scribd.com');
insert into employee (name, birthday, email) values ('Kimbell', '2021/03/11', 'khumbeyc@imgur.com');
insert into employee (name, birthday, email) values ('Davie', '2021/05/27', 'dbreetond@apple.com');
insert into employee (name, birthday, email) values ('Tami', '2021/04/30', 'tmoresidee@exblog.jp');
insert into employee (name, birthday, email) values ('Nevile', '2020/11/04', 'nfancuttf@independent.co.uk');
insert into employee (name, birthday, email) values ('Faustina', '2020/09/26', 'fyeendg@go.com');
insert into employee (name, birthday, email) values ('Vilhelmina', '2021/01/08', 'vrotchellh@bluehost.com');
insert into employee (name, birthday, email) values ('Cindie', '2020/08/30', 'cscarboroughi@unicef.org');
insert into employee (name, birthday, email) values ('Elita', '2020/08/13', 'ekenwortheyj@house.gov');
insert into employee (name, birthday, email) values ('Iseabal', '2020/12/19', 'icrippenk@miibeian.gov.cn');
insert into employee (name, birthday, email) values ('Dorie', null, null);
insert into employee (name, birthday, email) values ('Henka', '2021/05/15', 'halcaldem@ihg.com');
insert into employee (name, birthday, email) values ('Katee', '2021/02/05', 'kfaraharn@tinypic.com');
insert into employee (name, birthday, email) values ('Addy', null, null);
insert into employee (name, birthday, email) values ('Zelda', '2021/02/10', 'zsteanep@addthis.com');
insert into employee (name, birthday, email) values ('Gussie', null, null);
insert into employee (name, birthday, email) values ('Darrelle', '2021/03/24', 'druusar@buzzfeed.com');
insert into employee (name, birthday, email) values ('Eugenie', '2021/04/06', 'edillways@addthis.com');
insert into employee (name, birthday, email) values ('Dugald', '2020/09/10', 'darnoldt@issuu.com');
insert into employee (name, birthday, email) values ('Matthieu', '2020/07/19', 'msigginu@hhs.gov');
insert into employee (name, birthday, email) values ('Kym', '2021/04/29', 'knyev@mysql.com');
insert into employee (name, birthday, email) values ('Glen', '2020/09/10', 'gkeelerw@wordpress.com');
insert into employee (name, birthday, email) values ('Dalt', '2021/05/04', 'darchbellx@nba.com');
insert into employee (name, birthday, email) values ('Laverne', null, null);
insert into employee (name, birthday, email) values ('Barny', '2021/05/11', 'bmallisonz@webs.com');
insert into employee (name, birthday, email) values ('Stacy', '2020/09/23', 'scastri10@networksolutions.com');
insert into employee (name, birthday, email) values ('Tamar', '2020/08/08', 'tskellern11@xinhuanet.com');
insert into employee (name, birthday, email) values ('Huntington', '2020/12/26', 'hspeddin12@goo.ne.jp');
insert into employee (name, birthday, email) values ('Rafael', '2021/04/20', 'rbullivent13@unesco.org');
insert into employee (name, birthday, email) values ('Gwynne', '2021/02/05', 'gdesousa14@geocities.jp');
insert into employee (name, birthday, email) values ('Merrielle', '2021/02/03', 'mrickeard15@china.com.cn');
insert into employee (name, birthday, email) values ('Gabbie', '2021/04/04', 'gcoote16@si.edu');
insert into employee (name, birthday, email) values ('Roland', '2021/07/08', 'rcornelius17@huffingtonpost.com');
insert into employee (name, birthday, email) values ('Arron', '2021/07/07', 'awerrit18@clickbank.net');
insert into employee (name, birthday, email) values ('Edin', '2021/01/17', 'egreatrex19@themeforest.net');
insert into employee (name, birthday, email) values ('Analise', '2020/07/30', 'afrape1a@themeforest.net');
insert into employee (name, birthday, email) values ('Killie', '2020/09/15', 'kmoseley1b@yellowbook.com');
insert into employee (name, birthday, email) values ('Lanna', '2020/11/02', 'lparkeson1c@flickr.com');
insert into employee (name, birthday, email) values ('Chev', '2021/06/18', 'csmeeth1d@zdnet.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

update employee set birthday='2000-01-01' where name ='Kathi';
update employee set email='@gmail.com' where email is null;
update employee set name ='Other' where id between 4 and 10;
update employee set name ='Jr.'|| name where  DATE_PART('year', current_date) - DATE_PART('year', birthday)<15
update employee set name='-' where name ilike 'A%';
 
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

delete from employee where email is null;
delete from employee where email !~~ '%@%';
delete from employee where length(name)>50;
delete from employee where birthday>current_date;
delete from employee where name like '%ş%' or name like '%ğ%';
