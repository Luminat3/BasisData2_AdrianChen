create database tambahan
go
use tambahan
go
create table Mahasiswa
( 
 NPM char (10) primary key not null
 , kuis tinyint default 0
 , tugas tinyint default 0
 , uts tinyint default 0
 , uas tinyint default 0
)
go
--1. Buatlah rule yg berisi peraturan bhw nilai yg diizinkan antara 0 - 100. 
	CREATE RULE rule_nilai
	AS
	@range >= 0 and @range <=100;
--2. Kaitkan rule tersebut ke field kuis dan tugas.
	
	-- 2. Kaitkan rule tersebut ke field kuis dan tugas.
	exec sp_bindrule 'range_rule', 'Mahasiswa.kuis';
	exec sp_bindrule 'range_rule', 'Mahasiswa.tugas';
--3. Buatlah trigger bernama TrMahasiswa, apabila terjadi pengisian data 
--    pada tabel Mahasiswa maka munculkan tulisan 'Penambahan data baru'

	CREATE TRIGGER TrMahasiswa
	ON Mahasiswa
	AFTER INSERT 
	AS
	BEGIN
		PRINT 'Penambahan data baru'
	END;
 
--4. Ubah trigger TrMahasiswa, berikan kondisi apabila terjadi pengisian data
--    UTS dan UAS dengan nilai dibawah 0 atau diatas 100 maka batalkan 
--    eksekusi query dan munculkan suatu pesan kesalahan. 

 
 
--5. tambahkan kolom/field Nama (varchar 50) pada tabel Mahasiswa
	alter table Mahasiswa add nama varchar(50)

 
-- misal hendak diubah jadi 45 : 
 )
--6. buatlah procedure bernama kelolaMahasiswa yang berisikan parameter-parameter
-- berupa NPM, nama kuis, tugas, uts, uas dan pilihan (char).
--jika pilihan berisi 'INS' maka lakukan perintah untuk menginput data(INSERT)
--jika pilihan berisi 'UP' maka lakukan perintah untuk mengubah data(UPDATE)
-- berdasarkan NPM
--jika pilihan berisi 'DEL' maka lakukan perintah untuk menghapus data(DELETE)
--  berdasarkan NPM
--jika pilihan berisi 'S' maka penyeleksian data berdasarkan NPM

--7. Buatlah tabel virtual (view) bernama vwMahasiswa yang menampilkan data
--    mahasiswa berupa NPM, nama, kuis, tugas, uts, uas, nilaiAkhir
 
--8. Ubah tabel virtual (view) bernama vwMahasiswa yang menampilkan data
--    mahasiswa berupa NPM, nama, kuis, tugas, uts, uas, nilaiAkhir, grade
 
--9. Buatlah stored procedure yang menampilkan nilai UAS terbesar


 -- eksekusi procedure !

--10. Buatlah trigger update untuk tabel Mahasiswa, pada saat terjadi update
--   pada tabel Mahasiswa, data direkam ke dalam tabel History_Update
 
-----------
 

-- lakukan pengubahan data pada tabel Mahasiswa, 
-- lihat hasilnya pada tabel Mahasiswa dan pada tabel History_Update


