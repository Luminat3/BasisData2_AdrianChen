--CREATE DATABASE dbPertemuan3;
--Adrian Chen--
--2125250002--
--SELECT  ASCII ('a');
--SELECT REVERSE ('Never Odd Or Even');

--Adrian Chen--
--2125250002--
/*
	CREATE TABLE Mahasiswa(
	NPM varchar(12),
    Name varchar(255),
    Birth date,
	);
*/


--Adrian Chen--
--2125250002--
--INSERT INTO Mahasiswa (NPM, Name, Birth) VALUES ('2125250002','Adrian Chen','2003-11-12');

--SELECT * FROM Mahasiswa;

--SELECT + SUBSTRING(NPM, 5, 2) FROM Mahasiswa;
--SET LANGUAGE Japanese;
--SELECT DATENAME(WEEKDAY, Birth) FROM Mahasiswa;

--Adrian Chen--
--2125250002--


SELECT DATEDIFF('YYYY-MM-DD', Birth, GETDATE()) FROM Mahasiswa;

