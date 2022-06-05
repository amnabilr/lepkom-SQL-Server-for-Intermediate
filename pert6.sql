--2--
create database Kampus_data_10119723

--3--
use Kampus_data_10119723

--a
create table mahasiswa (
NPM NUMERIC(10) PRIMARY KEY,
NAMA VARCHAR(20),
KELAS VARCHAR(10),
KD_MK VARCHAR(10));

--b
create table dosen (
NID NUMERIC(10) PRIMARY KEY,
NAMA VARCHAR(20),
ALAMAT VARCHAR(30),
KD_MK VARCHAR(10));

--c
create table matakuliah (
KD_MK VARCHAR(10) PRIMARY KEY,
NID NUMERIC(20),
NPM NUMERIC(10),
NM_MATKUL VARCHAR(10));

SELECT*FROM mahasiswa
SELECT*FROM dosen
SELECT*FROM matakuliah

--5--
create table nilai (
NPM NUMERIC(10) PRIMARY KEY,
NAMA VARCHAR(20),
NILAI NUMERIC(3));

EXEC sp_columnS Nilai

--6-- 
BACKUP DATABASE Kampus_data_10119723
to disk = 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.LEPKOMF4\MSSQL\Backup\backup_data_2.bak'
with format,
medianame = 'SQLServerBackups',
name = 'full_backup_kampus_data_10119723'
go

--7--
DROP TABLE matakuliah