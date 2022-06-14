-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2022 lúc 10:52 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(101, 10, 1, '34890000'),
(101, 9, 2, '12990000'),
(102, 10, 1, '34890000'),
(102, 9, 2, '12990000'),
(103, 6, 1, '24190000'),
(103, 4, 2, '43490000'),
(104, 2, 2, '32390000'),
(105, 8, 1, '14490000'),
(105, 10, 2, '34890000'),
(105, 11, 1, '28090000'),
(106, 1, 2, '271920000'),
(107, 11, 1, '28090000'),
(108, 1, 9, '305910000'),
(109, 54, 5, '7690000'),
(110, 54, 2, '7690000'),
(111, 11, 2, '28090000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES
(103, 10, 'bac giang', '0989999999', 'khanhk10.195@eaut.edu.vn', 3, '111170000'),
(104, 10, 'hn', '0989999999', 'khanhk10.195@eaut.edu.vn', 2, '64780000'),
(105, 10, 'hihi', '0989999999', 'khanhk10.195@eaut.edu.vn', 4, '112360000'),
(106, 10, 'hjanowseqjgf dopsjmfgndiopws', '0989999999', 'khanhk10.195@eaut.edu.vn', 2, '2991120000'),
(107, 10, 'stQ', '0989999999', 'khanhk10.195@eaut.edu.vn', 1, '28090000'),
(108, 10, 'Tuyenquang city', '0989999999', 'khanhk10.195@eaut.edu.vn', 9, '2753190000'),
(109, 10, 'Tqcity', '0989999999', 'khanhk10.195@eaut.edu.vn', 5, '38450000'),
(110, 10, 'hab\noi', '0989999999', 'khanhk10.195@eaut.edu.vn', 2, '15380000'),
(111, 10, 'aaaa', '0989999999', 'khanhk10.195@eaut.edu.vn', 2, '56180000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://ngochieu.name.vn/img/home.png'),
(2, 'Điện thoại', 'https://ngochieu.name.vn/img/mobile.png'),
(3, 'Laptop', 'https://ngochieu.name.vn/img/laptop.png'),
(4, 'Thông tin', 'https://ngochieu.name.vn/img/info.png'),
(5, 'Liên hệ', 'https://ngochieu.name.vn/img/contact.png'),
(7, 'Đơn hàng', 'https://printgo.vn/uploads/file-logo/1/512x512.e1267ccd23435225c187a0d29782afe2.ai.1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` int(100) NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Điện thoại iPhone 13 Pro Max 128GB Xanh lá ', 33990000, 'https://cdn.tgdd.vn/Products/Images/42/274153/iphone-13-pro-max-xanh-la-090322-093249-600x600.jpg', 'Cấu hình Điện thoại iPhone 13 Pro Max 128GB Xanh lá\r\n\r\nMàn hình: OLED6.7\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 4352 mAh20 W', 1),
(2, 'Điện thoại iPhone 13 Pro Max 128GB', 32390000, 'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-xanh-1.jpg', 'Cấu hình Điện thoại iPhone 13 Pro Max 128GB\r\n\r\nMàn hình: OLED6.7\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 4352 mAh20 W', 1),
(3, 'Laptop MacBook Pro 14 M1 Pro 2021 8-core CPU/16GB/512GB/14-core GPU (MKGP3SA/A) ', 52990000, 'https://cdn.tgdd.vn/Products/Images/44/253581/apple-macbook-pro-14-m1-pro-2021-1.jpg', 'Cấu hình Laptop MacBook Pro 14 M1 Pro 2021 8-core CPU/16GB/512GB/14-core GPU\r\n\r\nCPU: Apple M1 Pro200GB/s memory bandwidth\r\nRAM: 16 GB\r\nỔ cứng: 512 GB SSD\r\nMàn hình: 14.2 inchLiquid Retina XDR display (3024 x 1964)120Hz\r\nCard màn hình: Card tích hợp14 core-GPU\r\nCổng kết nối: 3 x Thunderbolt 4 USB-CHDMIJack tai nghe 3.5 mm\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối\r\nKích thước, trọng lượng: Dài 312.6 mm - Rộng 221.2 mm - Dày 15.5 mm - Nặng 1.6 kg\r\nThời điểm ra mắt: 10/2021', 2),
(4, 'Máy tính bảng iPad Pro M1 11 inch WiFi Cellular 1TB (2021) ', 43490000, 'https://cdn.tgdd.vn/Products/Images/522/269329/ipad-pro-m1-11-inch-wifi-cellular-bac-1.jpeg', 'Cấu hình Máy tính bảng iPad Pro M1 11 inch WiFi Cellular 1TB (2021)\r\n\r\nMàn hình: 11\"Liquid Retina\r\nHệ điều hành: iPadOS 15\r\nChip:Apple M1 8 nhân\r\nRAM: 16 GB\r\nBộ nhớ trong: 1 TB\r\nKết nối: 5GNghe gọi qua FaceTime\r\nSIM: 1 Nano SIM hoặc 1 eSIM\r\nCamera sau: Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR\r\nCamera trước: 12 MP\r\nPin, Sạc: 28.65 Wh (~ 7538 mAh)20 W', 3),
(5, 'Điện thoại iPhone 13 Pro 128GB ', 28890000, 'https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1-1.jpg', 'Cấu hình Điện thoại iPhone 13 Pro 128GB\r\n\r\nMàn hình: OLED6.1\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 3095 mAh20 W', 1),
(6, 'Điện thoại iPhone 13 mini xanh lá', 24190000, 'https://cdn.tgdd.vn/Products/Images/42/274087/iphone-13-mini-xanh-xa-2.jpg', 'Cấu hình Điện thoại iPhone 13 128GB Xanh lá\r\n\r\nMàn hình: OLED6.1\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 4 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 3240 mAh20 W', 1),
(7, 'Điện thoại iPhone 12 64GB ', 18990000, 'https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-xanh-la-1-1-org.jpg', 'Cấu hình Điện thoại iPhone 12 64GB\r\n\r\nMàn hình: OLED6.1\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A14 Bionic\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 2815 mAh20 W', 1),
(8, 'Điện thoại iPhone 11 64GB', 14490000, 'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-trang-1-2-org.jpg', 'Màn hình: IPS LCD6.1\"Liquid Retina\r\nHệ điều hành: iOS 15\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A13 Bionic\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 4G\r\nPin, Sạc: 3110 mAh18 W', 1),
(9, 'Điện thoại iPhone SE 64GB (2022)', 12990000, 'https://cdn.tgdd.vn/Products/Images/42/244141/iphone-se-2022-1-1.jpg', 'Cấu hình Điện thoại iPhone SE 64GB (2022)\r\n\r\nMàn hình: IPS LCD4.7\"\r\nHệ điều hành: iOS 15\r\nCamera sau: 12 MP\r\nCamera trước: 7 MP\r\nChip: Apple A15 Bionic\r\nRAM: 3 GB\r\nBộ nhớ trong: 64 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 20 W', 1),
(10, 'Laptop Apple MacBook Pro M1 2020/16GB/256GB (Z11D000E5)', 34890000, 'https://cdn.tgdd.vn/Products/Images/44/239560/macbook-pro-m1-2020-silver-01-org.jpg', 'Cấu hình Laptop Apple MacBook Pro M1 2020/16GB/256GB\r\n\r\nCPU: Apple M1\r\nRAM: 16 GB\r\nỔ cứng: 256 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp8 nhân GPU\r\nCổng kết nối: 2 x Thunderbolt 3 (USB-C)Jack tai nghe 3.5 mm\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối\r\nKích thước, trọng lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 15.6 mm - Nặng 1.4 kg\r\nThời điểm ra mắt: 2020', 2),
(11, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', 28090000, 'https://cdn.tgdd.vn/Products/Images/44/239552/apple-macbook-air-m1-2020-z124000de-1-org.jpg', 'Cấu hình Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU\r\n\r\nCPU: Apple M1\r\nRAM: 16 GB\r\nỔ cứng: 256 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp7 nhân GPU\r\nCổng kết nối: 2 x Thunderbolt 3 (USB-C)Jack tai nghe 3.5 mm\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối\r\nKích thước, trọng lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg\r\nThời điểm ra mắt: 2020', 2),
(54, 'Samsung Galaxy S10 Plus Mỹ Mới 100% Fullbox', 7690000, 'https://product.hstatic.net/1000370129/product/galaxy-s10-plus-trang_d9261975b134452992b714d0be96ce81_master.jpg', 'Thông số kỹ thuật\r\nThân Máy\r\nKích Thước	157.6 x 74.1 x 7.8 mm (6.20 x 2.92 x 0.31 in)\r\nKhối Lượng	175 g\r\nSIM	1 SIM \r\nMàn hình\r\nCông nghệ	Dynamic AMOLED capacitive touchscreen, 16M colors\r\nĐộ phân giải	1440 x 3040 pixels, 19:9 ratio (~522 ppi density)\r\nKích thước	6.4 inches, 103.8 cm2 (~88.9% screen-to-body ratio)\r\nBảo vệ	Corning Gorilla Glass 6', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(9, 'khanh102@gmail.com', '66668888', 'khanhdz', '0986363666'),
(10, 'khanhk10.195@eaut.edu.vn', '123456', 'khanhdz1', '0989999999'),
(11, 'lamk10.199@eaut.edu.vn', '098', 'lamngu', '1234567'),
(12, '', '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
