use dbPerpustakaan


CREATE procedure pr_data_anggota(@NPM char(10),
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
        	print '(Update Data) data dengan nomor(NPM):' + @npm + ' Nama Lengkap:' + @nama + ' dan jenis kelamin ' + @jenis_kelamin + ' berhasil diubah'
        	update tbMahasiswa
            	set nama = @nama,
                	jenis_kelamin = @jenis_kelamin
            	where npm = @npm
    	end
	else if @Petunjuk = 'D'
	 BEGIN
            	PRINT 'DELETE DATA...'
            	PRINT '(DELETE DATA) DATA DENGAN ' +
              	'NOMOR (NPM) : '   + @NPM +
                ', NAMA LENGKAP : '
            	SELECT NAMA          FROM tbMahasiswa WHERE NPM = @NPM
            	PRINT ', JENIS KELAMIN : '
            	SELECT JENIS_KELAMIN FROM tbMahasiswa WHERE NPM = @NPM
            	DELETE FROM tbMahasiswa
            	WHERE NPM = @NPM
            	PRINT
            	' BERHASIL DIHAPUS'
    	END
	else
	 begin
    	 print 'Select data'
             	select * from tbMahasiswa
             	where NPM = @NPM
	 end
go

EXECUTE pr_data_anggota '2125250002','Adrian Chen','L','I'
GO



CREATE PROCEDURE prJumlahMahasiswaBerdasarkanJenisKelamin(@gender CHAR(1))
as
	if @gender = 'P'
	 begin
    	 SELECT COUNT(*) FROM tbMahasiswa  where Jenis_kelamin = 'P'
	 end
	ELSE if @gender = 'L'
	 begin
    	 SELECT COUNT(*) FROM tbMahasiswa  where Jenis_kelamin = 'L'
	 end
GO

EXEC prJumlahMahasiswaBerdasarkanJenisKelamin'L'
EXEC prJumlahMahasiswaBerdasarkanJenisKelamin'P'
-- Adrian Chen

EXEC