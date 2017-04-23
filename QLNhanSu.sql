create table BaoHiem(
MaNV varchar(20),
MaSBH varchar(20)primary key,
NgayCapSo varchar(100),
NoiCapSo nvarchar(50),
GhiChu nvarchar(100)
)
create table HopDong(
MaHD varchar(20) primary key,
TenHD nvarchar(100),
NgayKiKet varchar(100),
NgayHetHan varchar(100)
)
create table Phongban(
MaPhongBan varchar(20) primary key,
TenPhongBan nvarchar(50),
SoDienThoai varchar(10)
)
create table KyLuat(
MaKl varchar(20)primary key,
HinhThucKL nvarchar(50),
LyDo nvarchar(100)
)
create table KhenThuong(
MaKT varchar(20)primary key,
HinhThucKT nvarchar(50),
LyDo nvarchar(100)
)
create table TrinhDoHocvan(
MaTDHV varchar(20)primary key,
TDHV nvarchar(50),
ChuyenNganh nvarchar(50)
)
create table ChucVu(
MaChucVu varchar(20)primary key,
TenChucVu nvarchar(50),
PhuCapCV int
)
create table LuongNhanVien(
MaSoLuong varchar(20) primary key,
SoNgayCong int,
PhuCapCV int,
SoGioLamThem int,
HeSoLuong float,
Thuong int,
TamUng int,
NgayLap varchar(100)
)
create table NguoiDung(
username nvarchar(20)primary key,
pass varchar(20)
)
create table NhanVien(
MaNV varchar(20) primary key,
HoTen nvarchar(50),
NgaySinh varchar(100),
GioiTinh bit,
DiaChi nvarchar(100),
DanToc nvarchar(10),
TonGiao nvarchar(20),
CMTND varchar(20),
TinhTrangHonNhan nvarchar(50),
SoDienThoai varchar(10),
GhiChu nvarchar(100),
MaSoLuong varchar(20) foreign key(MaSoLuong) references LuongNhanVien(MaSoLuong),
MaPhongBan varchar(20)foreign key(MaPhongBan) references PhongBan(MaPhongBan),
MaChucVu varchar(20)foreign key(MaChucVu) references ChucVu(MaChucVu),
MaTDHV varchar(20)foreign key(MaTDHV) references TrinhDoHocVan(MaTDHV),
NgoaiNgu nvarchar(30),
MaHD varchar(20)foreign key (MaHD) references HopDong(MaHD),
MaSBH varchar(20) foreign key(MaSBH) references BaoHiem(MaSBH),
MaKT varchar(20)foreign key(MaKT) references KhenThuong(MaKT),
MaKL varchar(20)foreign key(MaKL) references KyLuat(MaKL)
)
insert into BaoHiem(MaNV,MaSBH,NgayCapSo,NoiCapSo,GhiChu)
values('NV0001','BH0001','2017/5/2',N'Bệnh Viện Đa Khoa',NULL),
      ('NV0002','BH0002','2017/5/2',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0003','BH0003','2017/12/4',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0004','BH0004','2017/12/4',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0005','BH0005','2017/10/7',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0006','BH0006','2017/10/2',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0007','BH0007','2017/7/3',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0008','BH0008','2017/11/5',N'Bệnh Viện Đa Khoa',NULL),
	  ('NV0009','BH0009','2017/3/4',N'Bệnh Viện Đa Khoa',NULL)
insert into ChucVu(MaChucVu,TenChucVu,PhuCapCV)
values('CV0001',N'Nhân Viên',1000000),
      ('CV0002',N'Quản Lý',1500000),
	  ('CV0003',N'phó phòng',1800000),
	  ('CV0004',N'Trưởng phòng',2000000),
	  ('CV0005',N'phó giám đốc',2300000),
	  ('CV0006',N'Giám Đốc',2500000)
insert into HopDong(MaHD,TenHD,NgayKiKet,NgayHetHan)
values('HD0001',N'Hợp đồng lao động','2014-9-8','2017-9-8'),
      ('HD0002',N'Hợp đồng lao động','2014-11-7','2017-11-7'),
	  ('HD0003',N'Hợp đồng lao động','2014-2-3','2017-2-3'),
	  ('HD0004',N'Hợp đồng lao động','2015-1-8','2018-1-8'),
	  ('HD0005',N'Hợp đồng lao động','2015-11-2','2018-11-2'),
	  ('HD0006',N'Hợp đồng lao động','2013-3-8','2018-3-8'),
	  ('HD0007',N'Hợp đồng lao động','2016-9-1','2019-9-1'),
	  ('HD0008',N'Hợp đồng lao động','2016-10-4','2019-10-4'),
	  ('HD0009',N'Hợp đồng lao động','2016-6-6','2019-6-6'),
	  ('HD0010',N'Hợp đồng lao động','2016-11-7','2019-11-7'),
	  ('HD0011',N'Hợp đồng lao động','2016-10-4','2019-10-4')
insert into KyLuat(MaKl,HinhThucKL,LyDo)
values ('KL0003',N'Trư lương',NULL),
('KL0001',N'Canh cáo',NULL),
('KL0002',N'Canh cáo',NULL)
   
insert into KhenThuong(MaKT,HinhThucKT,LyDo)
values('KT0001','Tuyên dương',NULL),
      ('KT0002','tăng lương',NULL),
	  ('KT0003','tăng chức',NULL)
insert into Phongban(MaPhongBan,TenPhongBan,SoDienThoai)
values('PB0001',N'Nhân sự','04325111'),
      ('PB0002',N'Tài chính','04325112'),
	  ('PB0003',N'ý tưởng','04325113'),
	  ('PB0004',N'maketting','04325114'),
	  ('PB0005',N'Tài vụ','04325115')
insert into TrinhDoHocvan(MaTDHV,TDHV,ChuyenNganh)
values('TD0001','Cao Đẳng',NULL),
      ('TD0002','Đại Học',NULL),
	  ('TD0003','thạc sĩ',NULL),
	  ('TD0004','Tiến sĩ',NULL)
insert into NguoiDung(username,pass)
values('ND0001','ABC0001'),
      ('ND0002','ABC0002'),
	  ('ND0003','ABC0003'),
	  ('ND0004','ABC0004'),
	  ('ND0005','ABC0005')
insert into LuongNhanVien(MaSoLuong,SoNgayCong,PhuCapCV ,SoGioLamThem,HeSoLuong,Thuong,TamUng,NgayLap)
values('SL0001',30,1000000,30,2.03,500000,1000000,'2015-9-8'),
      ('SL0002',30,1000000,40,2.03,500000,1000000,'2016-10-1'),
	  ('SL0003',28,1800000,45,2.47,400000,500000,'2015-12-8'),
	  ('SL0004',29,1000000,35,2.03,700000,1000000,'2014-12-7'),
	  ('SL0005',28,1800000,40,2.47,800000,1500000,'2015-9-8'),
	  ('SL0006',30,1000000,35,2.03,1000000,1000000,'2014-10-8'),
	  ('SL0007',29,2000000,50,3.00,1200000,1500000,'2013-4-8'),
	  ('SL0008',30,1500000,46,2.25,1200000,1500000,'2016-8-6')

insert into NhanVien(MaNV,HoTen,NgaySinh,GioiTinh,DiaChi,DanToc,TonGiao,CMTND,TinhTrangHonNhan,SoDienThoai,GhiChu,MaPhongBan,MaChucVu,MaTDHV,NgoaiNgu,MaHD,MaSBH,MaKT,MaKL)
values('NV0001',N'Nguyễn Minh Chiến','1975-2-1','1',N'hà Giang','Kinh',N'Không','111256741',NULL,'0965741002',NULL,'PB0001','CV0001','TD0002',NULL,'HD0001','BH0001',NULL,NULL),
      ('NV0002',N'Tạ Quang Thắng'   , '1978-5-10','1',N'hà nội','Kinh',N'Không','22154678',NULL,'0965324110',NULL,'PB0002','CV0001','TD0002',NULL,'HD0002','BH0002',NULL,NULL),
      ('NV0003',N'Hoàng Mạnh Hưng'  , '1975-4-10','1',N'Nam Định','Kinh',N'Không','025811475',NULL,'0984712440',NULL,'PB0001','CV0003','TD0003',NULL,'HD0003','BH0003','KT0001',NULL),
	  ('NV0004',N'Lương Cao Đại'    , '1980-10-10' ,'1',N'Đa Nẵng','Kinh',N'Không','425110641',NULL,'0165453712',NULL,'PB0003','CV0004','TD0003',NULL,'HD0004','BH0004',NULL,NULL),
      ('NV0005',N'Nguyễn Thanh Hiền', '1979-1-1' ,'0',N'Huế','Kinh',N'Không','101553428',NULL,'0124568002',NULL,'PB0004','CV0001','TD0001',NULL,'HD0005','BH0005','KT0002',NULL),
      ('NV0006', N'Đinh Hải Hưng'    , '1980-4-1' ,'1',N'Hải Phòng','Kinh',N'Không','325118940',NULL,'0965425880',NULL,'PB0004','CV0003','TD0003',NULL,'HD0006','BH0006',NULL,'KL0001'),
      ('NV0007',N'Hà Thu Trang'     , '1980-10-1' ,'0',N'Thanh Hóa','Kinh',N'Không','456892014',NULL,'0165725140',NULL,'PB0004','CV0001','TD0002',NULL,'HD0007','BH0007',NULL,NULL),
      ('NV0008',N'Hoàng Khánh Đạt'  ,'1975-1-1' ,'1',N'hà Giang','Kinh',N'Không','521487742',NULL,'0965741082',NULL,'PB0002','CV0004','TD0004',NULL,'HD0008','BH0008',NULL,'KL0003'),
      ('NV0009',N'Phan Ngọc Hoa'    ,'1975-5-1' ,'0',N'Bắc Giang','Kinh',N'Không','001256740',NULL,'0965712058',NULL,'PB0005','CV0002','TD0002',NULL,'HD0009','BH0009',NULL,NULL)

select *from NhanVien
--khi cap nhat chuc vu va bac luong cua nhan vie
update NhanVien set MaChucVu='CV0001',MaSoLuong='SL0002'
where MaNV='NV0001'
--xoa du lieu nhan vien trong co so du lieu
delete from NhanVien
where MaNV='NV0009'
--thống kê số nhân viên trog mỗi phòng ban
select NhanVien.MaNV,NhanVien.HoTen,NhanVien.MaPhongBan
from PhongBan inner join NhanVien on PhongBan.MaPhongBan=NhanVien.MaPhongBan
where NhanVien.MaPhongBan='PB0001'
--tìm kiếm nhân viên có trình độ đại học
select NhanVien.MaNV,NhanVien.HoTen,NhanVien.MaTDHV
from NhanVien
where (NhanVien.MaTDHV='TD0001')or(NhanVien.MaTDHV='TD0002')
--tìm kiêm nhân viên theo ngày tháng năm sinh
select NhanVien.MaNV,NhanVien.HoTen,NhanVien.NgaySinh
from NhanVien
where ((NhanVien.NgaySinh)between '1980-4-1' and '1985-11-14')

--tính lương cho nhân viên
select NhanVien.HoTen,((luong.SoNgayCong*150000) + luong.PhuCapCV + (luong.SoGioLamThem*20000) +luong.Thuong - luong.TamUng) as
LuongThucLinh
from NhanVien,LuongNhanVien luong
where NhanVien.MaSoLuong=luong.MaSoLuong
order by NhanVien.HoTen

--tính tổng lương cả công ty
select SUM(luong.SoNgayCong*150000 + luong.PhuCapCV + luong.SoGioLamThem*20000 +luong.Thuong - luong.TamUng)
as TongLuong
from LuongNhanVien luong,NhanVien
where NhanVien.MaSoLuong=luong.MaSoLuong
--------------------------
select *from NhanVien
--cap nhat mat khau nhan vien
create proc proc_capnhatMK(@ma varchar(20),@matkhau varchar(20))
as 
begin
     update NguoiDung 
	 set pass=@matkhau where username=@ma
	 return 1
end
--hien thi danh sach nhung nguoi bi ky luat theo hinh thuc nao
select NhanVien.HoTen,KyLuat.HinhThucKL
from NhanVien,KyLuat
where NhanVien.MaKL=KyLuat.MaKl
order by NhanVien.HoTen,KyLuat.HinhThucKL
--hien thi danh sach nhung nguoi duoc khen thuong
select NhanVien.HoTen,KhenThuong.HinhThucKT
from NhanVien,KhenThuong
where NhanVien.MaKT=KhenThuong.MaKT
order by NhanVien.HoTen,KhenThuong.HinhThucKT
--thong ke nhug nhan vien da ung luong
select NhanVien.HoTen,LuongNhanVien.HeSoLuong
from NhanVien,LuongNhanVien
where NhanVien.MaSoLuong=LuongNhanVien.MaSoLuong
------------------------------------------------------------------
select *from LuongNhanVien
--nhan vien co he so luong tren 2.03
select LuongNhanVien.HeSoLuong from LuongNhanVien
where HeSoLuong>2.03
----
select NhanVien.HoTen,luong.HeSoLuong
from NhanVien,LuongNhanVien luong
where NhanVien.MaSoLuong=luong.MaSoLuong
order by luong.HeSoLuong desc

select LuongNhanVien.HeSoLuong
 from LuongNhanVien
 order by LuongNhanVien.HeSoLuong desc