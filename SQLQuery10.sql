SELECT *
FROM dbo.mahasiswa
WHERE jurusan='Teknik Informatika', alamat LIKE 'Jl.Sudirman%' AND tahun_masuk BETWEEN 2019 AND 2020;