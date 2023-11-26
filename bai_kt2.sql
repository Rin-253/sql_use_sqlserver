create database qltv
use qltv
create table sach(
ms varchar(10) primary key,
tens varchar(20),
tennxb varchar(20),
sl int
)
create table dg(
mdg varchar(10)primary key,
tendg varchar(20),
gt bit,
dc varchar(50),
ngay date,
stn float,
dt int
)
create table muons(
mdg varchar(10)references dg(mdg),
ms varchar(10)references sach(ms),
nm date
)
-----c1
alter table muons
add nt date
 
 -----c2
alter table dg
alter column dc varchar(100)
-----c3
insert into sach values
('ms1','csdl','hoa binh',11),
('ms2','c#','thong ke',23),
('ms3','lt web','kim dong',9),
('ms4','csdl','hang hai',19),
('ms5','lt android','thong ke',30);
insert into dg values
('dg1','giang',0,'ha noi','02-12-1999',45,0123456789),
('dg2','hong',0,'bac ninh','07-17-1998',78,0123789456),
('dg3','nhung',0,'hai phong','09-11-2000',56,0789456123),
('dg4','hai',0,'ha noi','12-09-2001',22,0147258369),
('dg5','nhan',0,'thai nguyen','01-11-1999',36,0369258147);
insert into muons values
('dg2','ms3','02-12-1999','12-30-1999'),
('dg1','ms2','07-11-1999','11-20-1999'),
('dg5','ms5','09-23-2000','10-10-2000'),
('dg3','ms1','07-11-2001','07-30-2001'),
('dg4','ms4','05-12-2001','05-30-2001');


----c4
select sach.tennxb, count(*) as tong_sl_sach
from sach
group by sach.tennxb

----c5
select dg.tendg,sach.tens
from ((muons
join sach on muons.ms=sach.ms)
join dg on muons.mdg=dg.mdg)
where sach.tens='csdl'
----c6
select dg.mdg,tendg,sach.ms,tens
from ((muons
join sach on muons.ms=sach.ms)
join dg on muons.mdg=dg.mdg)
where sach.tennxb='thong ke'

----c7
create procedure suastn
(@stn float, @mdg varchar(10))
as
update dg set stn=@stn where mdg=@mdg
exec suastn '74','dg2'
select * from dg
------c8
create procedure suadois
(@s int)
as
declare @h int,@m int
begin
set @h=@s/3600
set @m=@s %3600 /60
set @s=@s %3600 %60
print 'gio='+cast(@h as varchar(10))
print 'phut='+cast(@m as varchar(10))
print 'giay='+cast(@s as varchar(10))
end
exec suadois 3661
    







