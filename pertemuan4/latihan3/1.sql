CREATE TABLE Jurusan (
id BIGINT PRIMARY KEY,
nama_jurusan BIGINT
);

CREATE TABLE DosenWali (
id BIGINT PRIMARY KEY,
NIP BIGINT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT
);

CREATE TABLE Mahasiswa (
id BIGINT PRIMARY KEY,
NPM BIGINT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT,
FOREIGN KEY (jurusan_id) REFERENCES Jurusan(id),
FOREIGN KEY (dosenwali_id) REFERENCES DosenWali(id)
);