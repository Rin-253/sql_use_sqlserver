create database banhang
use banhang
set dateformat DMY
create table KH
(		MAKH    char(4)	primary key,
		HOTEN   varchar(40),
		DCHI    varchar(50),
		SODT    varchar(20),
		NGSINH  datetime,
		NGDK    datetime,
		DOANHSO money
)
create table NV
(		MANV char(4) primary key,
		HOTEN varchar(20),
		SODT varchar(20),
		NGVL datetime
)
create table SP
(
	MASP char(4) primary key,
	TENSP varchar(20),
	DVT varchar(20),
	NUOCSX varchar(40),
	GIA money
)
create table HD
(
		SOHD int primary key,
		NGHD datetime,
		MAKH char(4) references KH(MAKH),
		MANV char(4) references NV (MANV),
		TRIGIA money
		)
create table CTHD(
		SOHD int references HD (SOHD),
		MASP char(4) references SP (MASP),
		SL int
)
alter table CTHD ALTER COLUMN SOHD INT NOT NULL
alter table CTHD ALTER COLUMN MASP CHAR(4) NOT NULL
alter table CTHD ADD CONSTRAINT PRI_KEY PRIMARY KEY(SOHD,MASP)
insert into KH values 
('KH01','Nguyen Van A','731,Tran Hung Dao, Q 5 ,Tp HCM','08823451','22/10/1960','22/10/2006',13000000),
 ('KH02','Tran Ngoc Han','23/5, Nguyen Trai, Q 5, Tp HCM','0908256478','03/04/1974','30/07/2006',280000),
 ('KH03','Tran Ngoc Linh','45, Nguyen Canh Chan, Q 1, Tp HCM','0938776266','12/06/1980','05/08/2006',3860000),
 ('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q 10, Tp HCM','0917325476','09/03/1965','02/10/2006',250000),
 ('KH05','Le Nhat Minh','34, Truong Dinh, Q 3, Tp HCM','08246108','10/03/1950','28/10/2006',21000),
('KH06','Le Hoai Thuong','227, Nguyen Van Cu, Q 5, Tp HCM','08631738','31/12/1981','24/11/2006',915000),
 ('KH07','Nguyen Van Tam','32/3, Tran Binh Trong, Q 5, Tp HCM','0916783565','06/04/1971','01/12/2006',12500),
('KH08','Phan Thi Thanh','45/2, An Duong Vuong, Q 5, Tp HCM','0938435756','10/01/1971','13/12/2006',365000),
('KH09','Le Ha Vinh','873, Le Hong Phong, Q 5, Tp HCM','08654763','03/09/1979','14/01/2007',70000),
('KH10','Ha Duy Lap','34/34B, Nguyen Trai, Q 1, Tp HCM','08768904','02/05/1983','16/01/2007',67500);
insert into NV values
('NV01','Nguyen Nhu Nhut','0927345678','13/04/2006'),
('NV02','Le Thi Phi Yen','0987567390','21/04/2006'),
('NV03','Nguyen Van B','0997047382','27/04/2006'),
('NV04','Ngo Thanh Tuan','0913758498','24/06/2006'),
('NV05','Nguyen Thi Truc Than','0918590387','20/07/2006');

insert into SP values
('BC01','But chi','cay','Singapore',3000),
('BC02','But chi','cay','Singapore',5000),
('BC03','But chi','cay','Viet Nam',3500),
('BC04','But chi','hop','Viet Nam',30000),
('BB01','But bi','cay','Viet Nam',5000),
('BB02','But bi','cay','Trung Quoc',7000),
('BB03','But bi','hop','Thai Lan',100000),
('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500),
('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500),
('TV03','Tap 100 giay tot','quyen','Viet Nam',3000),
('TV04','Tap 200 giay tot','quyen','Viet Nam',5500),
('TV05','Tap 100 trang','chuc','Viet Nam',23000),
('TV06','Tap 200 trang','chuc','Viet Nam',53000),
('TV07','Tap 100 trang','chuc','Trung Quoc',34000),
('ST01','So tay 500 trang','quyen','Trung Quoc',40000),
('ST02','So tay loai 1','quyen','Viet Nam',55000),
('ST03','So tay loai 2','quyen','Viet Nam',51000),
('ST04','So tay ','quyen','Thai Lan',55000),
('ST05','So tay mong','quyen','Thai Lan',20000),
('ST06','Phan viet bang','hop','Viet Nam',5000),
('ST07','Phan khong bui','hop','Viet Nam',7000),
('ST08','Bong bang','cai','Viet Nam',1000),
('ST09','But long','cay','Viet Nam',5000),
('ST10','But long','cay','Trung Quoc',7000);

insert into HD values 
(1001,'23/07/2006','KH01','NV01',320000),
 (1002,'12/08/2006','KH01','NV02',840000),
(1003,'23/08/2006','KH02','NV01',100000),
(1004,'01/09/2006','KH02','NV01',180000),
(1005,'20/10/2006','KH01','NV02',3800000),
(1006,'16/10/2006','KH01','NV03',2430000),
(1007,'28/10/2006','KH03','NV03',510000),
(1008,'28/10/2006','KH01','NV03',440000),
(1009,'28/10/2006','KH03','NV04',200000),
(1010,'01/11/2006','KH01','NV01',5200000),
(1011,'04/11/2006','KH04','NV03',250000),
(1012,'30/11/2006','KH05','NV03',21000),
(1013,'12/12/2006','KH06','NV01',5000),
(1014,'31/12/2006','KH03','NV02',3150000),
(1015,'01/01/2007','KH06','NV01',910000),
(1016,'01/01/2007','KH07','NV02',12500),
(1017,'02/01/2007','KH08','NV03',35000),
(1018,'13/01/2007','KH08','NV03',330000),
(1019,'13/01/2007','KH01','NV03',30000),
(1020,'14/01/2007','KH09','NV04',70000),
(1021,'16/01/2007','KH10','NV03',67500),
(1022,'16/01/2007',null,'NV03',7000),
(1023,'17/01/2007',null,'NV01',330000);

insert into CTHD values (1001,'TV02',10)
insert into CTHD values (1001,'ST01',5)
insert into CTHD values (1001,'BC01',5)
insert into CTHD values (1001,'BC02',10)
insert into CTHD values (1001,'ST08',10)
insert into CTHD values (1002,'BC04',20)
insert into CTHD values (1002,'BB01',20)
insert into CTHD values (1002,'BB02',20)
insert into CTHD values (1003,'BB03',10)
insert into CTHD values (1004,'TV01',20)
insert into CTHD values (1004,'TV02',20)
insert into CTHD values (1004,'TV03',20)
insert into CTHD values (1004,'TV04',20)
insert into CTHD values (1005,'TV05',50)
insert into CTHD values (1005,'TV06',50)
insert into CTHD values (1006,'TV07',20)
insert into CTHD values (1006,'ST01',30)
insert into CTHD values (1006,'ST02',10)
insert into CTHD values (1007,'ST03',10)
insert into CTHD values (1008,'ST04',8)
insert into CTHD values (1009,'ST05',10)
insert into CTHD values (1010,'TV07',50)
insert into CTHD values (1010,'ST07',50)
insert into CTHD values (1010,'ST08',100)
insert into CTHD values (1010,'ST04',50)
insert into CTHD values (1010,'TV03',100)
insert into CTHD values (1011,'ST06',50)
insert into CTHD values (1012,'ST07',3)
insert into CTHD values (1013,'ST08',5)
insert into CTHD values (1014,'BC02',80)
insert into CTHD values (1014,'BB02',100)
insert into CTHD values (1014,'BC04',60)
insert into CTHD values (1014,'BB01',50)
insert into CTHD values (1015,'BB02',30)
insert into CTHD values (1015,'BB03',7)
insert into CTHD values (1016,'TV01',5)
insert into CTHD values (1017,'TV02',1)
insert into CTHD values (1017,'TV03',1)
insert into CTHD values (1017,'TV04',5)
insert into CTHD values (1018,'ST04',6)
insert into CTHD values (1019,'ST05',1)
insert into CTHD values (1019,'ST06',2)
insert into CTHD values (1020,'ST07',10)
insert into CTHD values (1021,'ST08',5)
insert into CTHD values (1021,'TV01',7)
insert into CTHD values (1021,'TV02',10)
insert into CTHD values (1022,'ST07',1)
insert into CTHD values (1023,'ST04',6)
--------TRUY VAN
ALTER TABLE SP
ADD GHICHU VARCHAR(20)
--
ALTER TABLE KH
ADD LOAIKH TINYINT
---
ALTER TABLE SP
ALTER COLUMN GHICHU VARCHAR(100)
---
ALTER TABLE SP
DROP COLUMN GHICHU
---
ALTER TABLE KH
ALTER COLUMN LOAIKH VARCHAR(50)
---
ALTER TABLE SP
ADD CONSTRAINT DVT CHECK(DVT='CAY' OR DVT='HOP' 
OR DVT='CAI' OR DVT='QUYEN' OR DVT='CHUC')
--
ALTER TABLE SP
ADD CONSTRAINT C_GIA CHECK(GIA>500)
--
ALTER TABLE KH ADD CONSTRAINT C_NDK CHECK(NGDK>NGSINH)
ALTER TABLE CTHD ADD CONSTRAINT C_SL CHECK(SL>0)
-- NHAP DU LIEU CHO QUAN HE
--COPY SANG 1 BANG MOI
SELECT * INTO SP1 FROM SP
SELECT * INTO KH1 FROM KH
UPDATE SP1 SET GIA*=1.05 WHERE NUOCSX='Thai Lan'
update SP1 set GIA*=0.95 WHERE NUOCSX='Trung Quoc' AND GIA<=10000
UPDATE KH1 SET LOAIKH='Vip' WHERE (NGDK<'1/1/2007'AND DOANHSO>=10000000)
OR (NGDK>='1/1/2007' AND DOANHSO>=20000000)
---
SELECT MASP,TENSP FROM SP WHERE NUOCSX='Trung Quoc' 
--
SELECT MASP,TENSP FROM SP WHERE DVT IN ('cay','quyen')
--
SELECT MASP,TENSP FROM SP WHERE MASP LIKE 'B%01'
--
SELECT MASP,TENSP FROM SP WHERE NUOCSX='Trung Quoc'
AND GIA BETWEEN 30000 AND 40000
--
SELECT HD.SOHD,TRIGIA FROM HD WHERE NGHD BETWEEN '1/1/2007' AND '2/1/2007'
--
SELECT HD.SOHD,TRIGIA,NGHD FROM HD WHERE MONTH(NGHD)= 1 AND YEAR(NGHD)=2007
ORDER BY NGHD,TRIGIA DESC
--
SELECT KH.MAKH,HOTEN FROM HD JOIN KH ON HD.MAKH=KH.MAKH 
WHERE NGHD='1/1/2007'  
--
SELECT HD.SOHD,TRIGIA,NGHD FROM HD JOIN NV ON HD.MANV=NV.MANV
WHERE HOTEN='Nguyen Van B' AND NGHD='28/10/2006'
--
SELECT SP.MASP,TENSP FROM 
(HD JOIN KH ON KH.MAKH=HD.MAKH) JOIN 
(SP JOIN CTHD ON SP.MASP=CTHD.MASP) ON HD.SOHD=CTHD.SOHD
WHERE KH.HOTEN='Nguyen Van A' AND MONTH(NGHD)=10 AND YEAR(NGHD)=2006 
--
SELECT DISTINCT CTHD.SOHD FROM CTHD WHERE MASP = 'BB01'OR MASP='BB02'--IN=AND NHƯNG VẪN LẤY TRÙNG GIÁ TRỊ NÊN ĐỂ THÊM MỆNH ĐỀ DISTINCT
--
SELECT DISTINCT CTHD.SOHD 
FROM CTHD WHERE MASP = 'BB01'OR MASP='BB02' AND SL BETWEEN 10 AND 20
--
SELECT CTHD.SOHD 
FROM CTHD WHERE MASP ='BB01' AND SL BETWEEN 10 AND 20
AND EXISTS (SELECT SOHD FROM CTHD WHERE  MASP='BB02' 
AND SL BETWEEN 10 AND 20)
---
SELECT MASP , TENSP
FROM SP 
WHERE NUOCSX ='Trung Quoc'
UNION
SELECT SP.MASP , TENSP
FROM (HD JOIN CTHD ON HD.SOHD = CTHD.SOHD ) 
JOIN SP ON SP.MASP = CTHD.MASP
WHERE NGHD = '1/1/2007'
--
SELECT SP.MASP,TENSP 
FROM SP
WHERE NOT EXISTS 
(SELECT CTHD.MASP FROM CTHD WHERE CTHD.MASP=SP.MASP)
--
SELECT SP.MASP,TENSP 
FROM SP
WHERE NOT EXISTS 
(SELECT CTHD.MASP FROM HD JOIN CTHD ON HD.SOHD = CTHD.SOHD
WHERE SP.MASP=CTHD.MASP AND YEAR(NGHD)=2006)
---
SELECT SP.MASP,TENSP 
FROM SP
WHERE NUOCSX='Trung Quoc' AND NOT EXISTS 
(SELECT CTHD.MASP FROM HD JOIN CTHD ON HD.SOHD = CTHD.SOHD
WHERE SP.MASP=CTHD.MASP AND YEAR(NGHD)=2006)
--
select SOHD
from HD 
where not exists ( 
			select MASP
			from SP
			where nuocsx= 'Singapore' and not exists (
				select SOHD
				from CTHD 
				where HD.sohd=CTHD.sohd and CTHD.masp=SP.masp) )
--
select count(sohd) as slg_hdkphai_tv_dangky
from hd where makh is null
---
---
select max(trigia)as tg_caonhat,min(trigia)as tg_thapnhat from hd
---
select avg(trigia)as tg_tb 
from hd 
where year(nghd)=2006 
---
select sum(doanhso)as tong_ds_2006
from kh join hd on hd.MAKH=kh.MAKH
where year(nghd)=2006
--
select sohd from hd where year(nghd)=2006 
and TRIGIA=(select max(TRIGIA) from hd)
---
select hoten from kh join hd on hd.MAKH=kh.MAKH 
where TRIGIA=(select max(TRIGIA) from hd) and year(nghd)=2006 
--
select top 3  percent * from kh
where DOANHSO=(select max(DOANHSO) from kh)
---
