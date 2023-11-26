create database dssv
use dssv
create table sv(
msv varchar(10) primary key,
hodem varchar(20),
ten varchar(20),
ngs date,
nois varchar(50),
)
-----
create table mh(
mmh varchar(10) primary key,
tenmh varchar(10),
sodvht int,

)
create table diem(
msv varchar(10) references  sv(msv),
mmh varchar(10) references mh (mmh),
diem int
)
insert into sv values
('sv1','phan the','an','05-01-2001','ha noi'),
('sv2','luong thu','vinh','01-05-2003','hai phong'),
('sv3','giang van','phuong','08-09-2003','bac ninh'),
('sv4','dinh cong','phu','12-07-2002','can tho'),
('sv5','bui phuong','nga','02-12-2003','tp hcm');

insert into mh values
('mh1','hoa',8),
('mh2','ly',7),
('mh3','tieng anh',3),
('mh4','toan',15),
('mh5','van',11);
insert into diem values
('sv1','mh2',9,1),
('sv2','mh5',8,2),
('sv3','mh4',10,2),
('sv4','mh1',7,1),
('sv5','mh3',4,2);

delete from mh
delete from diem
-------truy xuat dl
use dssv
alter table mh
drop column hk
----
alter table diem
add hk int
update diem set hk=1 where mmh='mh4'
---c4
alter table sv
add diemdv int ,dchi varchar(50)
update sv set diemdv= 22
where msv='sv5'

---c5
alter table sv
drop column dchi

----show
select * from sv

----c6
update sv set nois='ha noi' where msv='sv4'

----c7
alter table sv
add dthoai int
update sv set dthoai='0147258369' where msv='sv5'

----c8
delete from sv where sv.diemdv<15 and sv.ngs like '%2003'

-----c9
select diem.hk,COUNT(*) as slg_mh_hk
from mh
join diem on mh.mmh=diem.mmh
group by diem.hk
order by COUNT(*) 
----c10
select diem.hk,COUNT(*) as tongso_dvht_hk
from mh
join diem on mh.mmh=diem.mmh
group by diem.hk
having (
select mh.mmh,COUNT(*)
from mh
group by mh.mmh
)
order by COUNT(*)

---c11
select sv.hodem,sv.ten,sv.diemdv
from sv
where sv.diemdv=(select max(sv.diemdv)as sv_co_diemdv_cn
					from sv )				
---c12
select mh.tenmh,mh.sodvht 
from mh where mh.sodvht=(select max(mh.sodvht)
						as sodvht_cn from mh)
-------c13
select mh.tenmh,mh.sodvht 
from mh where mh.sodvht=(select min(mh.sodvht)
						as sodvht_cn from mh)
-----c14
create procedure timmon
@sodvht int
as
select mh.tenmh from mh
where sodvht=@sodvht
exec timmon 11

----c15
create procedure nam
@nam date
as select sv.hodem,sv.ten from sv where ngs=@nam
exec nam '01-05-2003'
