--procedure pr_data_anggota untuk create update delete select



--Materi: pembuatan dan eksekusi procedure 
-- procedure untuk simpan update delete dan select anggota perpustakaan dengan tabel dari tabel tbMahasiswa, 
-- procedure untuk simpan update delete dan select data buku dengan tabel dari tabel tbBuku

------------- PROCEDURE ------------------------
-- bahasa pemrograman java : method void	
-- void dataAnggota (String npm, String nama, String jk ) {....statement; }
CREATE PROCEDURE pr_data_anggota(@NPM char(10),
                             	@Nama varchar(40),
                             	@Jenis_kelamin char(1),
                             	@Petunjuk char(1))
as
	if @Petunjuk = 'I'
    	begin
        	print '(Insert data)' + ' Data dengan nomor(NPM): ' + @NPM + ', Nama lengkap: ' + @Nama + ' dan Jenis Kelamin ' + @Jenis_kelamin + ' Berhasil Disimpan'
        	insert into tbMahasiswa(NPM, Nama, Jenis_kelamin)
        	values(@NPM, @Nama, @Jenis_kelamin)
    	end
	else if @Petunjuk = 'U'
    	begin
        	PRINT'(Update Data) data dengan nomor(NPM) : ' + @npm + 'Nama Lengkap : ' + @nama + 'Jenis Kelamin : ' + @Jenis_kelamin + 'Berhasil Diubah'
			UPDATE tbMahasiswa set nama = @nama, jenis_kelamin = @Jenis_kelamin WHERE NPM = @NPM;
    	end
	else if @Petunjuk = 'D'
    	begin
		PRINT'(Update Data) data dengan nomor(NPM) : ' + @npm + 'Nama Lengkap : ' + @nama + 'Jenis Kelamin : ' + @Jenis_kelamin + 'Berhasil Dihapus'
        DELETE FROM tbMahasiswa WHERE NPM = @NPM;
    	end
	else
    	begin
        	print 'Select data'
			SELECT * FROM tbMahasiswa
			WHERE NPM = @NPM;
    	end
go
 


(update data):Pengubahan data dengan NPM:12345
Menjadi Nama lengkap: Multi Data 
dan jenis kelamin P



(delete data):data dengan NPM:12345 
telah dihapus dari tabel






--Lanjutkan procedure tsb:





--1. Buatlah procedure prDataBuku untuk insert update delete select
 
--2. Tambahkan 5 record lagi (mulai dari B0008) ke tabel Buku menggunakan procedure yang dibuat
insert into tbBuku (kodeBuku, judul, penulis, hargabeli, stok)
 values('B0001', 'Android', 'Ali','30000',10)
insert into tbBuku (kodeBuku, judul, penulis, hargabeli, stok)
 values('B0002', 'Java for Beginner', 'Rosa','50000',30)
prDataBuku 'B0003', 'MySQL', 'Mirna','25500',55 , 'INS'
go
prDataBuku 'B0004', 'KBBI', 'Tim Bahasa','115500', 33, 'INS'
go
prDataBuku 'B0005', 'Matlab Programming', 'Hardi', 120000, 3, 'INS'
go
prDataBuku 'B0006', 'Basic Android', 'Hardi', 76000, 4, 'INS'
go
prDataBuku 'B0007', 'Basic iOS', 'Hardi', 80000, 4, 'INS'
go
select * from tbBuku
 
 
-- 3. Buatlah procedure yang menampilkan data mahasiswa berdasarkan jenis kelamin.
-- Terdapat satu parameter pada procedure yaitu jenis kelamin (P atau L)
 
 
--- eksekusi
prDataAnggotaBerdasarkanGender 'P'
 
-- 4. Buatlah procedure yang dapat menampilkan data mahasiswa berdasarkan nama sebagai
-- inputan pada parameter
 
--- eksekusi
prPencarianDataAnggotaBerdasarkanNama 'Ahmad'
 
-- 5. Buatlah procedure yang menampilkan total jumlah mahasiswa berdasarkan parameter jenis kelamin
 
--- eksekusi
prJumlahMahasiswaBerdasarkanJenisKelamin 'P'
prJumlahMahasiswaBerdasarkanJenisKelamin 'L'
 


 


