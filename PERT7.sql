CREATE DATABASE rumahsakit_10119723
USE rumahsakit_10119723

--4--
SELECT*FROM biodata_dokter
SELECT*FROM biodata_pasien

--5-- 
INSERT INTO biodata_pasien values(
'C0206', 'Aldiana', 'JL, KELAPA, Cibinong', '35', 'Campak'),
('C0207', 'Ivana', 'JL, Kenangam Meruya', '15', 'Demam'),
('C0208', 'Desi', 'JL, Melati, Bekasi', '50', 'Batuk & FLU')

SELECT*FROM biodata_pasien

--6--
INSERT INTO biodata_dokter values(
'A0205', 'Jaynudin', 'JL, Matraman, Jakarta', 'Penyakit Dalam'),
('A0206', 'Herman', 'JL, Bumi Indah, Jakarta', 'Penyakit dalam')

SELECT*FROM biodata_dokter

--7--
UPDATE biodata_dokter set alamat = 'JL. Bromo'
where [id dokter] = 'f0201'

SELECT*FROM biodata_dokter

--8--
CREATE TABLE Daftar_obat(
ID_OBAT VARCHAR (4),
NAMA_OBAT VARCHAR(20),
JUMLAH VARCHAR (20))

INSERT INTO Daftar_obat values(
'O012', 'Aspirin', '300 Lembar'),
('O013', 'Paracetamol', '500 Lembar'),
('O014', 'Antibiotik', '200 Botol')

SELECT*FROM Daftar_obat
EXEC sp_columns Daftar_obat