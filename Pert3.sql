CREATE DATABASE perusahaan_andi_10119723;

USE perusahaan_andi_10119723;

CREATE TABLE pegawai(
NIP NUMERIC(8),
Nama VARCHAR(20),
Alamat NUMERIC(30)
);

DROP TABLE pegawai
CREATE TABLE pegawai(
NIP NUMERIC(8),
Nama VARCHAR(20),
Alamat NUMERIC(30)
);


CREATE TABLE pegawai(
NIP NUMERIC(8),
Nama VARCHAR(20),
Alamat VARCHAR(30)
);

INSERT INTO pegawai VALUES
('10209101', 'Mukhtar', 'Depok'),
('10209102', 'Amir', 'Jakarta'),
('10209103', 'Tino', 'Bogor'),
('10209104', 'Dina', 'Jakarta'),
('10209105', 'Arif', 'Bekasi')


SELECT * FROM pegawai

CREATE clustered index idx_pegawai on pegawai(NIP) 

INSERT INTO pegawai VALUES
('10209109', 'Wawan', 'Bogor'),
('10209107', 'Hermas', 'Tanggerang')

SELECT * FROM pegawai

DROP INDEX PEGAWAI.IDX_PEGAWAI;