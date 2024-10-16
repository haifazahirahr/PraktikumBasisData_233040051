SELECT nama_mata_kuliah, dosen_pengajar
FROM dbo.jadwal_mata_kuliah
WHERE dosen_pengajar LIKE '%ang%'
ORDER BY nama_mata_kuliah ASC;