CREATE DATABASE dbCrosstabQuery

use dbCrosstabQuery
create table manpower
(
name varchar (50),
gender char (1)
)
 
insert into manpower values ('Henry', 'L')
insert into manpower values ('Hillary Wilson', 'P')
insert into manpower values ('Gilbert D', 'L')
insert into manpower values ('Jhonny Louis', 'L')
insert into manpower values ('Cartwright', 'P')

SELECT * FROM manpower;

--Menampilkan jumlah orang berdasarkan jenis kelamin
SELECT gender, COUNT(name) AS person from manpower GROUP BY GENDER

-- Contoh Crosstab Query
SELECT SUM(CASE gender WHEN 'L' then 1 END) AS L , SUM(CASE gender WHEN 'P' then 1 END) AS P FROM manpower

create table produksi
(
tanggal char (8),
planproduksi int,
actualproduksi int
)
insert into produksi values ('01/01/08',1000,1200)
insert into produksi values ('02/01/08',1100,975)
insert into produksi values ('03/01/08',1050,1060)
insert into produksi values ('04/01/08',1000,800)
insert into produksi values ('05/01/08',1150,1350)
 

-- 1) crosstab query untuk menampilkan data planproduksi yang semula dalam bentuk baris data menjadi field data
 select 
 sum( case substring(tanggal,1,2) when '01' then planproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then planproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then planproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then planproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then planproduksi end) as '05/01/08' 
 FROM produksi

 -- 2) crosstab query untuk menampilkan data actualproduksi yang semula dalam bentuk baris data menjadi field data

  select 
 sum( case substring(tanggal,1,2) when '01' then planproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then planproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then planproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then planproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then planproduksi end) as '05/01/08' 
 FROM produksi


 -- 3) crosstab query untuk menampilkan data jenis planproduksi dan actualproduksi yang semula dalam bentuk baris data menjadi field data
 SELECT
 sum( case substring(tanggal,1,2) when '01' then planproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then planproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then planproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then planproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then planproduksi end) as '05/01/08' 
 FROM produksi

  select 
 sum( case substring(tanggal,1,2) when '01' then planproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then planproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then planproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then planproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then planproduksi end) as '05/01/08' 
 FROM produksi

 -- 2) crosstab query untuk menampilkan data actualproduksi yang semula dalam bentuk baris data menjadi field data

  select 
 sum( case substring(tanggal,1,2) when '01' then planproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then planproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then planproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then planproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then planproduksi end) as '05/01/08' 
 FROM produksi
 UNION ALL
 -- 3) crosstab query untuk menampilkan data jenis planproduksi dan actualproduksi yang semula dalam bentuk baris data menjadi field data
 SELECT
 sum( case substring(tanggal,1,2) when '01' then actualproduksi end) as '01/01/08',
 sum( case substring(tanggal,1,2) when '02' then actualproduksi end) as '02/01/08',
 sum( case substring(tanggal,1,2) when '03' then actualproduksi end) as '03/01/08',
 sum( case substring(tanggal,1,2) when '04' then actualproduksi end) as '04/01/08',
 sum( case substring(tanggal,1,2) when '05' then actualproduksi end) as '05/01/08' 
 FROM produksi


 ALTER TABLE produksi ALTER COLUMN tanggal date;
 

SELECT * FROM produksi


  select 
 sum( case format(tanggal, 'm') when '1' then planproduksi end) as '01/01/08',
 sum( case format(tanggal, 'm') when '2' then planproduksi end) as '02/01/08',
 sum( case format(tanggal, 'm') when '3' then planproduksi end) as '03/01/08',
 sum( case format(tanggal, 'm') when '4' then planproduksi end) as '04/01/08',
 sum( case format(tanggal, 'm') when '5' then planproduksi end) as '05/01/08' 
 FROM produksi
 UNION ALL
 -- 3) crosstab query untuk menampilkan data jenis planproduksi dan actualproduksi yang semula dalam bentuk baris data menjadi field data
 SELECT
 sum( case format(tanggal, 'm') when '1' then actualproduksi end) as '01/01/08',
 sum( case format(tanggal, 'm') when '2' then actualproduksi end) as '02/01/08',
 sum( case format(tanggal, 'm') when '3' then actualproduksi end) as '03/01/08',
 sum( case format(tanggal, 'm') when '4' then actualproduksi end) as '04/01/08',
 sum( case format(tanggal, 'm') when '5' then actualproduksi end) as '05/01/08' 
 FROM produksi
