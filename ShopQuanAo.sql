CREATE DATABASE QL_ShopQuanAo
use QL_ShopQuanAo

CREATE TABLE TheLoai
(
	MaTL int not null primary key,
	TenTL nvarchar(50)
)

CREATE TABLE HangHoa
(
	MaHH int not null primary key,
	TenHH nvarchar(50),
	SoLuong int,
	Anh char(20),
	Mau nvarchar(50),
	ChatLieu nvarchar(50),
	DonGia int,
	MoTa nvarchar(1000),
	MaTL int FOREIGN KEY REFERENCES TheLoai(MaTL)
)


select * from HangHoa
drop table HangHoa
--CREATE TABLE 

INSERT INTO TheLoai
VALUES ('1',N'Cổ tròn form tiêu chuẩn'),
('2',N'Cổ tròn form rộng'),
('3',N'Áo thun 3 Lỗ'),
('4',N'Áo Thun Cổ Trụ'),
('5',N'Áo Thun Sweater'),
('6',N'Áo thun Tối Giản'),
('7',N'Áo khoác Classic'),
('8',N'Áo khoác Varsity'),
('9',N'Áo khoác Bomber'),
('10',N'Áo khoác Cardigan'),
('11',N'Áo khoác Hoodie'),
('12',N'Áo khoác Lá Cổ'),
('13',N'Áo khoác Hoodie'),
('14',N'Áo sơ mi tay dài'),
('15',N'Áo sơ mi tay ngắn'),
('16',N'Áo sơ mi cổ Cuban / Danton'),
('17',N'Quần Jogger'),
('18',N'Quần Tây'),
('19',N'Quần Jean'),
('20',N'Quần Ống Rộng'),
('21',N'Quần Trouser'),
('22',N'QUẦN SHORT'),
('23',N'Nón'),
('24',N'Tất - Vớ'),
('25',N'Dây Nịt Da'),
('26',N'Ví Da'),
('27',N'Quần Lót'),
('28',N'BALO-TÚI'),
('29',N'GIÀY DÉP SANDAL')

INSERT INTO HangHoa
values ('1',N'Áo Thun Cổ Tròn Ngân Hà Space Ver39',30,'Ao1.jpg',N'Trắng',N'Cotton Plus','197',N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver121 Chất liệu: Cotton Plus Thành phần : 80% Cotton 20% Polyester + Họa tiết thêu','1'),
('2',N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver109',35,'Ao2.jpg',N'Xám Xanh',N'Cotton Compact 2S','227',N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver109 Chất liệu: Cotton Compact 2C Thành phần: 100% Cotton - Thân thiện - Thấm hút thoát ẩm - Mềm mạ - Kiểm soát mùi - Điều hòa nhiệt + Họa tiết thêu - HDSD: + Nên giặt chung với sản phẩm cùng màu + Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh + Nên phơi trong bóng râm để giữ sp bền màu','1'),
('3',N'Áo Thun Cổ Tròn Thần Cổ Đại Anubis Ver8',34,'Ao3.jpg',N'Trắng',N'Cotton Compact 2S','227',N'Áo Thun Cổ Tròn Thần Cổ Đại Anubis Ver8 Chất liệu: Cotton Compact 2C Thành phần: 100% Cotton - Thân thiện - Thấm hút thoát ẩm - Mềm mại - Kiểm soát mùi - Điều hòa nhiệt + Họa tiết in dẻo + in bột nổi - HDSD: + Nên giặt chung với sản phẩm cùng màu + Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh + Nên phơi trong bóng râm để giữ sp bền màu','2'),
('4',N'Áo Thun Sweater Tối Giản M21',30,'Ao4.jpg',N'Xanh Lông Công',N'Cotton Plus','387',N'Áo Thun Sweater Tối Giản M21 Chất liệu: Vải Thun Thành phần: 90% Polyester 10% Spandex + Họa tiết thêu thường','5'),
('5',N'Áo Khoác Gile Y Nguyên Bản 18- Ver62',30,'Ao5.jpg',N'Xanh Rêu',N'Acrylic','397',N'Áo Khoác Gile Y Nguyên Bản 18- Ver62 Chất liệu: Vải dệt kim Thành phần: 100% Acrylic + Logo thêu đổ chỉ + thêu đắp giống','2'),
('6',N'Áo Khoác Lá Cổ Y Nguyên Bản 18+ Ver71',35,'Ao6.jpg',N'Đỏ',N'Nylon','697',N'Áo Khoác Lá Cổ Y Nguyên Bản 18+ Ver71 Chất liệu: CRINKLE NYLON Thành phần: 100% Nylon - Độ bền - Chống tia UV - Trượt nước (*) Nước có thể thấm qua dây kéo đường may + Họa tiết thêu thường + viền gân phản quang + Lớp lót lưới bên trong + Thun co giãn cổ tay và gấu áo+ Hai túi trước có dây kéo','2'),
('7',N'Áo Khoác Lá Cổ Y Nguyên Bản 18+ Ver71',30,'Ao7.jpg',N'Đen',N'Cotton Plus','697',N'Áo Khoác Lá Cổ Y Nguyên Bản 18+ Ver71 Chất liệu: CRINKLE NYLON Thành phần: 100% Nylon - Độ bền - Chống tia UV - Trượt nước (*) Nước có thể thấm qua dây kéo đường may + Họa tiết thêu thường + viền gân phản quang + Lớp lót lưới bên trong + Thun co giãn cổ tay và gấu áo+ Hai túi trước có dây kéo','2'),
('8',N'Áo Khoác Gile Y Nguyên Bản 18- Ver62',30,'Ao8.jpg',N'Xanh Đen',N'Acrylic','397',N'Áo Khoác Gile Y Nguyên Bản 18- Ver62 Chất liệu: Vải dệt kim Thành phần: 100% Acrylic + Logo thêu đổ chỉ','1'),
('9',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14',30,'Ao9.jpg',N'Đen',N'Cotton Plus','197',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('10',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14',24,'Ao10.jpg',N'Đen',N'Cotton Compact 2S','199',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('11',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14',25,'Ao11.jpg',N'Xanh Bích',N'Cotton Compact 2S','199',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('12',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14',25,'Ao12.jpg',N'Nâu',N'Cotton Compact 2S','199',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('13',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14',25,'Ao13.jpg',N'Vàng Nghệ',N'Cotton Compact 2S','199',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('14',N'Áo Thun Cổ Tròn Tối Giản M2',20,'Ao14.jpg',N'Nâu',N'Tici 4S','199',N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','1'),
('15',N'Áo Khoác Classic Đơn Giản Y Nguyên Bản Ver39',30,'AoK1.jpg',N'Trắng',N' Poly',199,N'Áo Khoác Classic Đơn Giản Y Nguyên Bản Ver39 Chất liệu: Vài dùThành phần: 100% Polyester+ Họa tiết in dẻo + phối dây viền phản quang','2'),
('16',N'Áo Khoác Classic Tối Giản Ver6',30,'AoK2.jpg',N'Đen',N'Poly',199,N'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14 Chất liệu: Cotton Compact Thành phần: 100% Cotton - Thân thiện- Thấm hút thoát ẩm','2'),
('17',N'Áo Khoác Hoodie Zipper Đơn Giản Y Nguyên Bản Ver64',45,'AoK3.jpg',N'Nâu Cafe',N'French Terry',199,N'Áo Khoác Hoodie Zipper Đơn Giản Y Nguyên Bản Ver64 Chất liệu : French TerryThành phần :100% cottonChất liệu: French TerryThành phần: 100% Cotton- Thấm hút thoát ẩm','2'),
('18',N'Áo Khoác Hoodie Đơn Giản Y Nguyên Bản Ver63',30,'AoK4.jpg',N'Xám Chì',N'French Terry',557,N'Áo Khoác Hoodie Đơn Giản Y Nguyên Bản Ver63 Chất liệu : French TerryThành phần :100% cotton- Thấm hút thoát ẩm- Mềm mại','2'),
('19',N'Áo Khoác Lá Cổ Đơn Giản 12VAHDT ',30,'AoK5.jpg',N'Đen','Poly',455,N'Áo Khoác Lá Cổ Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc Ver3 Chất liệu: Vài DùThành phần: 100% poly- Trượt nước+ Logo Vạn Xuân Kiến Quốc ép cực quang- Viền phản quang dây kéo','2'),
('20',N'Áo Sơ Mi Tay Ngắn Sợi Poly Đơn Giản Y ',20,'AoSM1.jpg',N'Be',N'Poly','257',N'Sơ Mi Tay Ngắn Đơn Giản Y Nguyên Bản Ver27 Chất liệu : NhungThành phần: 100% Polyester- Bền bỉ- Mềm mại','3'),
('21',N'Áo Sơ Mi Tay Ngắn Sợi Poly Đơn Giản Y Nguyên Bản',30,'AoSM2.jpg',N'Đen',N'Poly','257',N'Sơ Mi Tay Ngắn Đơn Giản Y Nguyên Bản Ver27 Chất liệu : NhungThành phần: 100% Polyester- Bền bỉ- Mềm mại','3'),
('22',N'Áo Sơ Mi Tay Dài Sợi Modal Tối Giản M11',20,'AoSM3.jpg',N'Trắng',N'Poly','255',N'Chất liệu: Kate Thành phần: 12% modal và 88% superfine - Ít nhăn và dễ ủi - Nhanh khô và thoáng mát HDSD: - Áo sơ mi màu phơi trong bóng râm để tránh bạc màu phần vai áo','3'),
('23',N'Áo Sơ Mi Tay Ngắn Sợi Rayon Đơn Giản Y Nguyên Bản',10,'AoSM4.jpg',N'Trắn',N'Poly','257',N'Sơ Mi Tay Ngắn Đơn Giản Y Nguyên Bản Ver29 Chất liệu: Vải Linen Gân Thành phần: 49% Rayon 17% Nylon 34% Polyester - Mềm mại - Thấm hút','3'),
('24',N'Áo Sơ Mi Tay Ngắn Sợi Rayon Đơn Giản Y Nguyên Bản',23,'AoSM5.jpg',N'Đen',N'Modal Plus','285',N'Sơ Mi Tay Ngắn Đơn Giản Y Nguyên Bản Ver29 Chất liệu: Vải Linen Gân Thành phần: 49% Rayon 17% Nylon 34% Polyester - Mềm mại - Thấm hút','3'),
('25',N'Áo Sơ Mi Tay Dài Sợi Modal Đơn Giản M36',34,'AoSM6.jpg',N'Trắng',N'Rayyon Plus','255',N'Sơ Mi Tay Ngắn Đơn Giản Y Nguyên Bản Ver27 Chất liệu : NhungThành phần: 100% Polyester- Bền bỉ- Mềm mại','3'),
('26',N'Áo Sơ Mi Tay Dài Sợi Modal Tối Giản M01',36,'AoSM7.jpg',N'Trắng',N'Rayon Plus','457',N'Sơ Mi Tay Dài Đơn Giản M36 Chất liệu: Modal Plus Thành phần: 88% superfine 12% modal - Ít Nhăn & Dễ ủi - Nhanh Khô - Thoáng mát + Họa tiết in dẻo ','3'),
('27',N'Áo Sơ Mi Tay Dài Sợi Rayon Đơn Giản Y Nguyên Bản',21,'AoSM8.jpg',N'Lam Vàng',N'Modal Plus','325',N'Áo Sơ Mi Tay Dài Đơn Giản Y Nguyên Bản Ver32 Chất liệu: Vải Caro Thành phần : 70% Polyester 30% Rayon + Phối logo kim loại','3'),
('28',N'Quần Tây Tối Giản HG17',30,'Quan1.jpg',N'Đen',N'Modal Plus','425',N'Chất liệu: Vải Quần Tây Thành phần: 82% polyester 14% rayon 4% spandex - Mềm mại - Thoáng khí - Thân thiện với mối trường - Hút ẩm tốt ','4'),
('29',N'Quần Jean Slimfit Đơn Giản B42',34,'Quan2.jpg',N'Đen',N'Rayon Plus','285',N'Chất liệu: Jean Cotton Thành phần: 99% cotton 1% spandex - Độ bền cao - Mang đến sự thoải mái ở phần hông và đùi nhưng vẫn rất gọn gàng','4'),
('30',N'Quần Jean Straight Đơn Giản Y Nguyên Bản Ver5',30,'Quan3.jpg',N'Xanh Dương',N'Cotton','285',N'Quần Dài Jean Straight Đơn Giản Y Nguyên Bản Ver5 - Chất liệu: Jean - Thành phần: 99% cotton 1% spandex + Wash thời trang+ Thêu #y2010 túi sau','4'),
('31',N'Quần Jean Straight Đơn Giản Y Nguyên Bản Ver5',30,'Quan4.jpg',N'Xanh Đậm',N'Cotton Plus','385',N'Quần Dài Jean Straight Đơn Giản Y Nguyên Bản Ver5 - Chất liệu: Jean - Thành phần: 99% cotton 1% spandex + Wash thời trang + Thêu #y2010 túi sau','4'),
('32',N'Quần Dài Vải Đơn Giản Y Nguyên Bản Ver28',37,'Quan5.jpg',N'Đen',N'Cottonn Plus','397',N'Quần Dài Vải Đơn Giản Y Nguyên Bản Ver28 Chất liệu: Vải Kaki T-SPUN Thành phần: 100% Polyester - Hạn chế nhăn - Độ bền cao - Co giãn ','4'),
('33',N'Quần Tây Tối Giản HG11',40,'Quan6.jpg',N'Đen',N'Poly','385',N'Chất liệu: Vải Quần Tây Thành phần: 70% poly 28% rayon 2% spandex - Mềm mại, bề mặt vải trơn mịn, cảm giác mát nhẹ khi mặc. - Thiết kế quần ống đứng mang đến sự lịch lãm, tự tin và nam tính cho người mặc.','4'),
('34',N'Quần Dài Vải Đơn Giản Y Nguyên Bản Ver28',60,'Quan7.jpg',N'Nâu',N'Poly plus','397',N'Quần Dài Vải Đơn Giản Y Nguyên Bản Ver28 Chất liệu: Vải Kaki T-SPUN Thành phần: 100% Polyester - Hạn chế nhăn - Độ bền cao - Co giãn','4'),
('35',N'Quần Tây Đơn Giản Y Nguyên Bản Ver21',31,'Quan8.jpg',N'Xám Nhạt',N'Rayon Plus','427',N'Quần Tây Đơn Giản Y Nguyên Bản Ver21 Chất liệu: Quần Tây Thành phần: 87% Polyester 12% Rayon 1% Spandex + Họa tiết thêu logo #Y2010 ','4'),
('36',N'Áo Thun Cổ Tròn Thần Cổ Đại Valknut Ver5',20,'Ao15.jpg',N'Trắng',N'Rayon Plus','180',N'Áo Thun Cổ Tròn Thần Cổ Đại Valknut Ver5 Chất liệu: Cotton Compact 4C Thành phần: 92% cotton 8% spandex - Thân thiện','1'),
('37',N'Áo Thun Cổ Tròn Y Nguyên Bản 18+ Ver130',10,'Ao16.jpg',N'Trắng',N'Rayon Plus','180',N'Áo Thun Cổ Tròn Y Nguyên Bản 18+ Ver130 Chất liệu: Cotton Compact 4C Thành phần: 92% cotton 8% spandex - Thân thiện - Thấm hút thoát ẩm','1'),
('38',N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver73',30,'Ao17.jpg',N'Trắng Nâu',N'Rayon Plus','227',N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver73 Chất liệu: Cotton Compact 2C Thành phần: 100% Cotton - Thân thiện - Thấm hút thoát ẩm','1')






 






























