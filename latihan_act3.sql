--2
create database latihan_act3 

use latihan_act3

--3
create table pegawai (
NIP varchar(8),
Nama varchar(20),
Alamat varchar(30));

insert into pegawai values 
('10209101', 'Mukhtar', 'Depok'),
('10209102', 'Amir', 'Jakarta'),
('10209103', 'Tino', 'Bogor'),
('10209104', 'Dina', 'Jakarta'),
('10209105', 'Arif', 'Bekasi')

--4
select*from pegawai

--5
create clustered index idx_pegawai on pegawai(Alamat)
insert into pegawai values 
('10209109', 'Wawan', 'Bogor'),
('10209107', 'Hermas', 'Tanggerang')

--6
select*from pegawai

--8
drop index pegawai.idx_pegawai


