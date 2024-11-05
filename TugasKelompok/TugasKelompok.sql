CREATE TABLE Mapel (
	IDMapel INT IDENTITY(1,1) PRIMARY KEY, 
	Nama VARCHAR(50) NOT NULL,  
)

CREATE TABLE Guru (
	GuruID INT IDENTITY(1,1) PRIMARY KEY, 
	Nama VARCHAR(255) NOT NULL,
	Mapel VARCHAR(50) NOT NULL,
	IDMapel INT
	FOREIGN KEY (IDMapel) REFERENCES Mapel(IDMapel)
	ON UPDATE CASCADE ON DELETE CASCADE 
)

CREATE TABLE Kelas (
	IDKelas INT IDENTITY(1,1) PRIMARY KEY, 
	NamaKelas VARCHAR(50) NOT NULL,
	Jurusan VARCHAR(50)NOT NULL
)

CREATE TABLE Siswa (
	IDSiswa INT IDENTITY(1,1) PRIMARY KEY, 
	Nama VARCHAR(255) NOT NULL,
	TanggalLahir DATE NOT NULL, 
	Alamat VARCHAR(255) NOT NULL,
	IDKelas INT
	FOREIGN KEY (IDKelas) REFERENCES Kelas(IDKelas)
	ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Nilai (
	IDSiswa INT 
	FOREIGN KEY (IDSiswa) REFERENCES Siswa(IDSiswa)
	ON UPDATE CASCADE ON DELETE CASCADE,
	IDMapel INT
	FOREIGN KEY (IDMapel) REFERENCES Mapel(IDMapel)
	ON UPDATE CASCADE ON DELETE CASCADE,
	Nilai DECIMAL(10,2) NOT NULL
)

INSERT INTO [dbo].[Mapel] ([Nama])
	VALUES 
	('Fisika'),
	('Kimia'),
	('Biologi'),
	('Geografi'),
	('Sosiologi'),
	('Akuntansi')

	SELECT * FROM [dbo].[Mapel]; 


	INSERT INTO [dbo].[Guru] ([Nama], [Mapel], [IDMapel])
	VALUES 
	('Sri', 'Fisika', 1),
	('Asep', 'Biologi', 3),
	('Lia', 'Kimia', 2),
	('Ine', 'Sosiologi', 5),
	('Listy', 'Geografi', 4),
	('Agus', 'Akuntansi', 6)

	SELECT * FROM [dbo].[Guru]; 

	INSERT INTO [dbo].[Kelas] ([NamaKelas], [Jurusan])
	VALUES
	('10 IPA','IPA'), 
	('10 IPS','IPS'),
	('11 IPA','IPA'),
	('11 IPS','IPS'),
	('12 IPA','IPA'),
	('12 IPS','IPS')

	SELECT * FROM [dbo].[Kelas]; 

	INSERT INTO [dbo].[Siswa] ([Nama], [TanggalLahir], [Alamat], [IDKelas])
	VALUES
	('Andi Setiawan', '2005-01-10', 'Bandung',1),
	('Budi Hartono', '2005-02-18', 'Bandung', 2),
	('Citra Dewi', '2005-05-15', 'Bandung', 3),
	('Dika Saputra', '2005-03-11', 'Bandung', 4),
	('Eko Prabowo', '2005-07-17', 'Bandung', 5),
	('Fina Nuraini', '2005-01-19', 'Bandung', 6),
	('Guntur Wijaya', '2005-09-08', 'Bandung', 1),
	('Hani Lestar', '2005-06-07', 'Bandung', 2),
	('Irfan Kurniawan', '2005-05-19', 'Bandung', 3),
	('Satria Santoso', '2005-10-20', 'Bandung', 4),
	('Kiki Permata', '2005-05-04', 'Bandung', 5),
	('Lani Indah', '2004-04-11', 'Bandung', 6),
	('Miko Setyawan', '2005-04-05', 'Bandung', 1),
	('Nia Safira', '2004-12-11', 'Bandung', 2),
	('Oka Darmawan', '2005-01-10', 'Bandung', 3),
	('Puri Ananda', '2005-01-11', 'Bandung', 4),
	('Salma Fadhila', '2005-02-10', 'Bandung', 5),
	('Eka Hartono', '2005-03-14', 'Bandung', 6),
	('Sari Melati', '2005-01-13', 'Bandung', 1),
	('Tika Rahmawati', '2005-10-10', 'Bandung', 2),
	('Aldi Supriyadi', '2005-01-01', 'Bandung', 3),
	('Vina Ramadhani', '2005-03-02', 'Bandung', 4),
	('Raden Gunawan', '2005-04-10', 'Bandung', 5),
	('Adriel Arifin ', '2005-05-12', 'Bandung', 6), 
	('Arif Setiawan', '2005-06-10', 'Bandung',1),
	('Budi Santoso', '2004-11-18', 'Bandung', 2),
	('Citra Dewi', '2004-12-15', 'Bandung', 3),
	('Dian Maha', '2005-03-11', 'Bandung', 4),
	('Eko Pratama', '2005-07-17', 'Bandung', 5),
	('Andin', '2005-05-19', 'Bandung', 6)

	SELECT * FROM [dbo].[Siswa];

	INSERT INTO [dbo].[Nilai] ([IDSiswa], [IDMapel], [Nilai])
	VALUES
	(1, 1, 95),
	(1, 2, 97),
	(1, 3, 94),
	(2, 4, 93),
	(2, 5, 96),
	(2, 6, 92),
	(3, 1, 91),
	(3, 2, 93),
	(3, 3, 96),
	(4, 4, 95),
	(4, 5, 96),
	(4, 6, 90),
	(5, 1, 90),
	(5, 2, 94),
	(5, 3, 96),
	(6,	4, 97),
	(6, 5, 93),
	(6, 6, 96),
	(7, 1, 95),
	(7, 2, 97),
	(7, 3, 96),
	(8, 4, 98),
	(8, 5, 96),
	(8, 6, 94),
	(9, 1, 97),
	(9, 2, 96),
	(9, 3, 94),
	(10, 4, 96),
	(10, 5, 97),
	(10, 6, 95),
	(11, 1, 96),
	(11, 2, 94),
	(11, 3, 98),
	(12, 4, 97),
	(12, 5, 96),
	(12, 6, 97),
	(13, 1, 97),
	(13, 2, 98),
	(13, 3, 96),
	(14, 4, 97),
	(14, 5, 96),
	(14, 6, 95),
	(15, 1, 97),
	(15, 2, 95),
	(15, 3, 94),
	(16, 4, 95),
	(16, 5, 96),
	(16, 6, 97),
	(17, 1, 98),
	(17, 2, 97),
	(17, 3, 96),
	(18, 4, 93),
	(18, 5, 96),
	(18, 6, 95),
	(19, 1, 94),
	(19, 2, 96),
	(19, 3, 97),
	(20, 4, 96),
	(20, 5, 95),
	(20, 6, 96), 
	(21, 1, 97),
	(21, 2, 94),
	(21, 3, 98), 
	(22, 4, 93),
	(22, 5, 95),
	(22, 6, 97), 
	(23, 1, 98),
	(23, 2, 94),
	(23, 3, 91),
	(24, 4, 91),
	(24, 5, 92),
	(24, 6, 96), 
	(25, 1, 95),
	(25, 2, 92),
	(25, 3, 95), 
	(26, 4, 97),
	(26, 5, 95),
	(26, 6, 92), 
	(27, 1, 95),
	(27, 2, 98),
	(27, 3, 93),
	(28, 4, 94),
	(28, 5, 90),
	(28, 6, 91), 
	(29, 1, 90),
	(29, 2, 93),
	(29, 3, 95), 
	(30, 4, 90),
	(30, 5, 90),
	(30, 6, 95)

	SELECT * FROM [dbo].[Nilai];
	SELECT * FROM [dbo].[Siswa][Jurusan]

