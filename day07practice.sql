
create table arac1(
id int,
marka varchar(30),
model varchar(30),
fiyat int,
kilometre int,
vites varchar(20)
)
insert into arac1 values(100, 'Citroen', 'C3', 500000, 5000, 'Otomatik' );
insert into arac1 values(101, 'Mercedes', 'C180', 900000, 10000, 'Otomatik' );
insert into arac1 values(102, 'Honda', 'Cıvıc', 400000, 15000, 'Manuel' );
insert into arac1 values(103, 'Wolkswagen', 'Golf', 350000, 20000, 'Manuel' );
insert into arac1 values(104, 'Ford', 'Mustang', 750000, 5000, 'Otomatik' );
insert into arac1 values(105, 'Porsche', 'Panamera', 850000, 5000, 'Otomatik' );
insert into arac1 values(106, 'Bugatti', 'Veyron', 950000, 5000, 'Otomatik' );
--SORU1: arac tablosundaki en yüksek fiyat'ı listele
select max(fiyat) from arac;
--SORU2: arac tablosundaki fiyatların toplamını listele
select sum(fiyat) from arac;
--SORU3: arac tablosundaki fiyat ortalamalarını listele
select avg(fiyat) from arac;
select round(avg(fiyat)) from arac;
select round(avg(fiyat),2) from arac;
--SORU4: arac tablosunda kaç tane araç oldugunu listele
select count(id) from arac;
CREATE TABLE meslekler
(
id int PRIMARY KEY,
isim VARCHAR(50),
soyisim VARCHAR(50),
meslek CHAR(9),
maas int
);
	
	
INSERT INTO meslekler VALUES(1, 'Ali', 'Can', 'Doktor', '20000' );
INSERT INTO meslekler VALUES(2, 'Veli', 'Cem', 'Mühendis', '18000');
INSERT INTO meslekler VALUES(3, 'Mine', 'Bulut', 'Avukat', '17000');
INSERT INTO meslekler VALUES(4, 'Mahmut', 'Bulut', 'Ögretmen', '15000');
INSERT INTO meslekler VALUES (5, 'Mine', 'Yasa', 'Teknisyen', '13000');
INSERT INTO meslekler VALUES (6, 'Veli', 'Yilmaz', 'Hemşire', '12000');
INSERT INTO meslekler VALUES(7, 'Ali', 'Can', 'Marangoz', '10000' );
INSERT INTO meslekler VALUES(8, 'Veli', 'Cem', 'Tekniker', '14000');
select * from meslekler;
-- SORU1: meslekler tablosunu isim'e göre sıralayarak sorgulayınız.
select * from meslekler order by isim ;
-- SORU2: meslekler tablosunda maas'i buyukten kucuge siralayiniz
select * from meslekler order by maas desc;
-- SORU3: meslekler tablosunda isim'i 'Ali' olanları,
-- maas'a göre büyükten küçüge sıralayarak sorgulayınız
select * from meslekler where isim='Ali' order by maas desc;
-- SORU4: meslekler tablosunda soyisim 'i 'Bulut' olanları,
-- maas sıralı olarak sorgulayınız.
select * from meslekler where soyisim='Bulut' order by maas;
-- SORU5: meslekler tablosunda id degeri 5 den büyük olan,
-- ilk 2 veriyi listeleyiniz
select * from meslekler where id>5 limit 2;
-- SORU6: meslekler tablosunda maası en yüksek 3 kişinin bilgilerini listeleyiniz
select * from meslekler order by maas desc limit 3;
-- SORU7: meslekler tablosunda ilk 2 veriden sonra 5 veriyi getirin
select * from meslekler offset 2 limit 5;
-- SORU8: meslekler tablosunda en yüksek maaşı alan 4. 5. 6. kişilerin bilgilerini listele
select * from meslekler order by maas desc offset 3 limit 3;

create table filmler
(film_id int,
film_name varchar(30),
category varchar(30)
);
insert into filmler values (1, 'Eyvah Eyvah', 'Komedi');
insert into filmler values (2, 'Kurtlar Vadisi', 'Aksiyon');
insert into filmler values (3, 'Eltilerin Savasi', 'Komedi');
insert into filmler values (4, 'Aile Arasinda', 'Komedi');
insert into filmler values (5, 'GORA', 'Bilim Kurgu');
insert into filmler values (6, 'Organize Isler', 'Komedi');
insert into filmler values (7, 'Babam ve Oglum', 'Dram');

create table aktorler
(id int,
actor_name varchar(30),
film_id int
);
insert into aktorler values (1, 'Ata Demirer', 1);
insert into aktorler values (2, 'Necati Sasmaz', 2);
insert into aktorler values (3, 'Gupse Ozay', 3);
insert into aktorler values (4, 'Engin Gunaydin', 4);
insert into aktorler values (5, 'Cem Yilmaz', 5);
select * from filmler;
select * from aktorler;
-- SORU1: Tüm film_name'leri, category'lerini ve filimlerde oynayan actor_name'leri listeleyiniz.
--1.YOL LEFT JOİN
select film_name, category, actor_name from filmler as A
left join aktorler as B
on A.film_id=B.film_id;
--1.YOL RİGHT JOİN
select film_name, category, actor_name from aktorler as B
right join filmler as A
on A.film_id=B.film_id;


-- SORU2: Tüm actor_name'leri ve film_name'lerini listeleyiniz.
--1.yol left join
select actor_name,film_name from  aktorler as A 
left join filmler as B 
on A.film_id=B.film_id;

--2.yol right join
select actor_name,film_name from  filmler as B
right join aktorler as A 
on A.film_id=B.film_id;

create table qa_dersler
(
ders_id int,
ders_ismi varchar(30),
ders_saati varchar(30)
);
insert into qa_dersler values (101, 'Core Java', 40);
insert into qa_dersler values (102, 'Selenium', 30);
insert into qa_dersler values (103, 'API', 15);
insert into qa_dersler values (104, 'SQL', 10);
insert into qa_dersler values (105, 'SDLC', 10);
insert into qa_dersler values (106, 'LAMDA', 12);

select * from qa_dersler

create table developer_dersler
(
ders_id int,
ders_ismi varchar(30),
ders_saati varchar(30)
);
insert into developer_dersler values (101, 'Core Java', 40);
insert into developer_dersler values (103, 'API', 15);
insert into developer_dersler values (104, 'SQL', 10);
insert into developer_dersler values (105, 'SDLC', 10);
insert into developer_dersler values (106, 'LAMDA', 12);
insert into developer_dersler values (107, 'Spring Framework', 20);
insert into developer_dersler values (108, 'Micro Services', 12);

SELECT * FROM developer_dersler

--SORU4: join kullanarak qa_dersleri ve developer_dersleri benzersiz sorgula

select A.ders_id, A.ders_ismi,A.ders_saati from qa_dersler as A
left join developer_dersler as B
on A.ders_ismi=B.ders_ismi
union
select B.ders_id, B.ders_ismi,B.ders_saati from qa_dersler as A
right join developer_dersler as B
on A.ders_ismi=B.ders_ismi;
