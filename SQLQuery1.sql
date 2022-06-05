-- 3
create database persediaan_barang_10119723;

use persediaan_barang_10119723;

create table data_barang(
ID_BARANG VARCHAR(5) PRIMARY KEY NOT NULL,
NAMA_BARANG VARCHAR(20),
JUMLAH VARCHAR(10),
TANGGAL_MASUK DATE,
TANGGAL_KELUAR DATE)

EXEC sp_columns DATA_BARANG

INSERT INTO data_barang VALUES 
('A0201', 'Tepung', '1 TON', '10-DECEMBER-2016', '15-DECEMBER-2016'),
('A0202', 'Minyak Goreng', '1000 Liter', '11-DECEMBER-2016', '20-DECEMBER-2016'), 
('F0203', 'Gula', '4 TON', '5-DECEMBER-2016', '10-DECEMBER-2016'),
('S0201', 'Mentega', '3 TON', '8-DECEMBER-2016', '10-DECEMBER-2016'), 
('D0202', 'Pewarna Makanan', '300 Liter', '10-DECEMBER-2016', '16-DECEMBER-2016') 

SELECT*FROM data_barang;

--4 
SELECT*FROM SYS.MESSAGES

SP_ADDMESSAGE 50099, 16, 
'Mohon maaf, Tanggal yang anda input lebih kecil dari tanggal masuk silahkan anda perbaiki', 
'US_ENGLISH', 'TRUE'

BEGIN TRY RAISERROR (50099, 16, 1) WITH LOG 
END TRY 
BEGIN CATCH 
SELECT ERROR_MESSAGE(), ERROR_NUMBER()
END CATCH

--5
INSERT INTO data_barang VALUES 
('A0200', 'Tepung', '1 TON', '15-DECEMBER-2016', '10-DECEMBER-2016')
 
create trigger pesan_error
on data_barang	for insert as
declare @barang_keluar date
declare @barang_masuk date
select @barang_keluar = Tanggal_Keluar from inserted 
select @barang_masuk = Tanggal_Masuk from inserted
if @barang_keluar < @barang_masuk raiserror (50099, 16, -1)

insert into data_barang values
('A0202', 'Tepung', '1 TON', '15-DECEMBER-2016', '10-DECEMBER-2016')

insert into data_barang values
('A0212', 'Tepung', '1 TON', '15-DECEMBER-2016', '10-DECEMBER-2016')