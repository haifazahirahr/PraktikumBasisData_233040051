SELECT *
FROM dbo.mahasiswa
WHERE mahasiswa_id IN (

SELECT mahasiswa_id
FROM dbo.dpp_mahasiswa
WHERE status_pembayaran = 'Lunas'
);