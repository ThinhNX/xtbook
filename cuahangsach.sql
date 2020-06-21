-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2017 lúc 07:01 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangsach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adm`
--

CREATE TABLE `adm` (
  `ma_adm` int(11) NOT NULL,
  `ten_dn` varchar(30) NOT NULL,
  `level` int(10) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `ho` varchar(30) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `level`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 1, 'admin', 'Trần Minh', 'Ngọc', 2),
(7, 'tungit', 2, '123456', 'hoang van', 'tung', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_dondathang`
--

CREATE TABLE `ct_dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_qua` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_qua`, `gia_ban`, `sl_dat`) VALUES
(0, '43', 191000, 1),
(0, '42', 50000, 1),
(0, '24', 50000, 1),
(0, '42', 50000, 2),
(0, '23', 80000, 1),
(0, '43', 191000, 3),
(0, '42', 50000, 2),
(0, '23', 80000, 1),
(0, '23', 80000, 1),
(0, '42', 50000, 1),
(0, '43', 191000, 5),
(0, '43', 191000, 1),
(0, '42', 50000, 2),
(0, '43', 191000, 2),
(0, '43', 191000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` int(11) NOT NULL,
  `ho_kh` varchar(30) NOT NULL,
  `ten_kh` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioi_tinh` int(11) NOT NULL DEFAULT '0',
  `ten_dn` varchar(15) NOT NULL,
  `mat_khau` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(47, 'hoang', 'trung', 1325454365, 'ưerwerwre ', 'trangdoantyck57@gmail.com', 2, 'tungit', '123456'),
(46, 'hoàng Văn', 'Quyền', 129864247, 'Khâm Thiên- Đống Đa', 'quyen123@gmail.com', 2, '123456', '123456'),
(48, 'Minh', 'Ngọc', 1666936911, 'Tp.hcm', 'tranminhngoc1808@gmail.com', 2, 'minhngoc', '123'),
(49, 'Tran', 'Ngoc', 1666936911, ' HCM', 'ngoc@gmail.com', 2, 'ngoc', '123'),
(50, 'Huỳnh', 'Như', 1666936911, ' HCM', 'nhu@gmail.com', 3, 'nhu', '123'),
(51, 'demo', 'demo', 1666936911, ' HCM', 'demo@gmail.com', 2, 'demo', '123'),
(53, 'Ngoc', 'Nhu', 1666936911, ' HCM', 'tranminhngoc1808@gmail.com', 2, 'ngocnhu', '123'),
(54, 'huynh', 'khuong', 982654578, ' hcm', 'khuong@gmail.com', 2, 'khuong', '123456'),
(55, 'test', 'test', 1666936911, ' 12 Nguyen Van Bao', 'test@gmail.com', 2, 'test', '123'),
(56, 'demo1', 'demo1', 123456789, ' HCM', 'demo1@gmail.com', 2, 'demo1', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `ma_lh` int(11) NOT NULL,
  `ten_nguoi_lh` varchar(40) NOT NULL,
  `sdt_nguoi_lh` varchar(12) NOT NULL,
  `email_nguoi_lh` varchar(50) NOT NULL,
  `gioi_nguoi_lh` int(11) NOT NULL,
  `diachi_nguoi_lh` varchar(200) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_lh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(18, 'Phạm Thi HUỳnh Như', '01666936911', 'nhu@gmail.com', 3, 'HCM', 'Chưa tạo được giao diện thân thiên nhất cho khách hàng khi đến với website để lựa chọn sản phẩm.', '2017-05-21 09:04:19'),
(17, 'Trần Minh Ngọc', '01666936911', 'moivaohoc@gmail.com', 2, 'hcm', 'cần nâng cấp thêm giao diện và giao hàng tốt hơn', '2017-04-22 04:19:52'),
(19, 'MInh Ngọc', '01666936911', 'tranminhngoc1808@gmail.com', 2, 'HCM', 'Nâng cap website', '2017-05-24 15:32:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_qua`
--

CREATE TABLE `loai_qua` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_qua`
--

INSERT INTO `loai_qua` (`ma_loai`, `ten_loai`) VALUES
(1, 'Sách Cấp I'),
(2, 'Sách Cấp II'),
(3, 'Sách Cấp III'),
(4, 'Sách Đại Học'),
(5, 'Sách Tiểu Thuyết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qua`
--

CREATE TABLE `qua` (
  `ma_qua` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_qua` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trang_thai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `qua`
--

INSERT INTO `qua` (`ma_qua`, `ma_loai`, `ten_qua`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(40, 4, 'Tiếng Anh tốc độ', 25000, 'scha.jpg', '', '2017-04-21 13:18:27', 0),
(24, 1, 'Toán Lớp 1', 50000, 'image_121494.jpg', 'Toán lớp 1 cho các em giải tập tốt', '2017-04-21 13:19:21', 0),
(23, 2, 'Sách Toán Lớp 2', 80000, 'Hồng.jpg', '', '2017-04-21 13:20:25', 1),
(22, 2, 'Giải bài tập toán lớp 6', 15000, 'image_121499.jpg', 'Giải bài tập toán lớp 6', '2017-04-21 13:21:24', 1),
(21, 3, 'Sách Vật Lý lớp 10', 50000, 'image_121494.jpg', 'Sách Vật Lý lớp 10', '2017-04-21 13:22:15', 1),
(41, 5, 'Mẹ Ghẻ Con Ghẻ', 191000, '157629_p59527mbiatruoc.jpg', 'Ba mùi không thèm nói chuyện với thằng quý, hễ nói tới thì la rầy, còn con mỹ lơn rồi, thì ép buộc nó phải vô bếp phụ với thím bài rửa chén, quyeets nhà, nói rằng tập cho nó biết nữ công mà kì thiệt là đày đọa', '2017-04-22 04:27:38', 0),
(42, 3, 'Sách Tiếng ANh Tốc ĐỘ', 50000, 'scha.jpg', '', '2017-04-21 13:17:10', 0),
(43, 1, 'Hồn Bướm Mơ Tiên', 191000, '161832_p60058mhonbuommotien.jpg', '', '2017-05-24 15:26:51', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tt` int(11) NOT NULL,
  `tieu_de` varchar(50) NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `noi_dung` varchar(10000) NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tt`, `tieu_de`, `hinh_anh`, `noi_dung`, `ngay_dang`) VALUES
(33, 'Nhà thơ Xuân Quỳnh được trao Giải thưởng Hồ Chí Mi', 'Xuan_Quynh.jpg', '<p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Chủ tịch nước đã ký quyết định tặng Giải thưởng Hồ Chí Minh cho cố thi sĩ Xuân Quỳnh sau ồn ào liên quan chuyện xét giải.</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Ngày 30/3/2017, Chủ tịch nước Trần Đại Quang đã ký quyết định số 602, chính thức tặng Giải thưởng Hồ Chí Minh cho nhà thơ Xuân Quỳnh.</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop"><br></p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Quyết định ghi rõ: Tặng Giải thưởng Hồ Chí Minh cho cố nhà thơ Nguyễn Thị Xuân Quỳnh, tác giả hai tập thơ Lời ru trên mặt đất và Bầu trời trong quả trứng – là những tác phẩm đặc biệt xuất sắc về văn học, nghệ thuật, góp phần vào sự nghiệp xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc.</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop"><br></p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Trước đó, nữ thi sĩ được đề nghị xét tặng giải thưởng Hồ Chí Minh 2016. Tuy nhiên, sau khi trải qua ba vòng xét duyệt, hồ sơ của Xuân Quỳnh bất ngờ bị loại hồi tháng 1.</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop"><br></p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Gia đình và giới văn nghệ sĩ đã đồng loạt bày tỏ sự thất vọng. Ông Phùng Huy Cẩn lý giải hồ sơ của Xuân Quỳnh thiếu giải thưởng theo quy định (giải thưởng trong các cuộc thi do Bộ Văn hóa hoặc các Hội văn học nghệ thuật Trung ương tổ chức hoặc giải thưởng quốc tế).</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop"><br></p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Tháng 2, Bộ trưởng Bộ Văn hóa, Thể thao và Du lịch Nguyễn Ngọc Thiện ký công văn đề nghị Hội đồng cấp Nhà nước xem xét lại và đưa Xuân Quỳnh cùng nhà thơ Thu Bồn vào danh sách.</p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop"><br></p><p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop">Nữ sĩ Xuân Quỳnh (1942 - 1988) nổi tiếng với các tác phẩm Thuyền và biển, Sóng, Thơ tình cuối mùa thu, Tiếng gà trưa… Bà còn là tác giả của nhiều tập thơ Hoa dọc chiến hào, Lời ru trên mặt đất, Sân ga chiều em đi, Hoa cỏ may, Tự hát…</p>', '2017-04-21 13:25:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`ma_adm`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`ma_dh`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`ma_lh`);

--
-- Chỉ mục cho bảng `loai_qua`
--
ALTER TABLE `loai_qua`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `qua`
--
ALTER TABLE `qua`
  ADD PRIMARY KEY (`ma_qua`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `adm`
--
ALTER TABLE `adm`
  MODIFY `ma_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `ma_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `ma_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `loai_qua`
--
ALTER TABLE `loai_qua`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `qua`
--
ALTER TABLE `qua`
  MODIFY `ma_qua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
