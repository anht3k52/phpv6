-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 17, 2023 lúc 11:57 AM
-- Phiên bản máy phục vụ: 5.7.42-cll-lve
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tshopnladsgiares_tuanori`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backups`
--

CREATE TABLE `backups` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `backups`
--

INSERT INTO `backups` (`id`, `filename`, `time`, `thoigian`) VALUES
(4, 'test', '1614982097', '2021-03-06 05:08:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text,
  `name` text,
  `bank_name` text,
  `chi_nhanh` text,
  `logo` text,
  `ghichu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `chi_nhanh`, `logo`, `ghichu`) VALUES
(7, '259876543210', 'Vietcombank Auto', 'PHẠM HOÀNG TUẤN', 'QUẢNG NGÃI', 'https://i.imgur.com/9wOUZTv.png', 'Nhập đúng nội dung, cộng tiền ngay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `amount` int(11) DEFAULT '0',
  `cusum_balance` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `loaithe` varchar(32) NOT NULL,
  `menhgia` int(11) NOT NULL,
  `thucnhan` int(11) DEFAULT '0',
  `seri` text NOT NULL,
  `pin` text NOT NULL,
  `createdate` datetime NOT NULL,
  `status` varchar(32) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `stt` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `stt`, `title`, `display`, `img`) VALUES
(9, 1, 'BÁN TÀI KHOẢN YOUTUBE', 'SHOW', 'assets/storage/images/category_KQFLXUJ6TROM.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `nguoinhan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nguoichuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_momo`
--

CREATE TABLE `config_momo` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob,
  `gia` int(11) DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `mota` longblob,
  `display` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `mua_toi_da` int(11) DEFAULT NULL,
  `quocgia` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `mua_toi_thieu` int(11) DEFAULT '1',
  `luuy` longblob,
  `stt` int(11) NOT NULL,
  `check_live` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `username`, `dichvu`, `gia`, `loai`, `thoigian`, `mota`, `display`, `capnhat`, `mua_toi_da`, `quocgia`, `mua_toi_thieu`, `luuy`, `stt`, `check_live`) VALUES
(8, 'admin', 0x474d41494c2052414e444f4d2054c38a4e205449e1babe4e4720414e48202b4156415441522b504f50332b494d41502b4c495645373748, 500, 'GMAIL', '2021-02-18 02:30:08', 0x74657374, 'SHOW', '2021-04-07 17:12:54', 100, 'vn', 1, NULL, 0, 'GMAIL'),
(11, 'admin', 0x205669612043e1bb95205068696c6970696e204368616e67652046756c6c20584d4454, 80000, 'VIA', '2021-04-06 10:15:36', 0x46756c6c206261636b7570, 'SHOW', NULL, 100, 'ph', NULL, NULL, 0, 'VIA'),
(12, 'admin', 0x436c6f6e65205669e1bb8774203246412043616f2043e1baa570, 5000, 'CLONE', '2021-04-06 10:17:28', '', 'SHOW', NULL, 100, 'vn', NULL, NULL, 0, 'CLONE'),
(13, 'admin', 0x436c6f6e65205669e1bb877420584d4454, 10000, 'CLONE', '2021-04-06 10:18:30', '', 'SHOW', NULL, 100, 'vn', NULL, NULL, 0, 'CLONE'),
(16, 'tuanori', 0x54c38049204b484fe1baa24e2031, 10000, 'BÁN TÀI KHOẢN YOUTUBE', '2022-03-02 19:51:15', '', 'SHOW', NULL, 100, 'vn', 1, 0x4e68e1baad70206cc6b07520c3bd20686fe1bab7632068c6b0e1bb9b6e672064e1baab6e2063686f2073e1baa36e207068e1baa96d206ec3a07920287875e1baa574206869e1bb876e206b6869206d756129, 1, 'OFF');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dongtien`
--

INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `username`) VALUES
(193, 0, 2147483647, 2147483647, '2022-03-02 19:52:02', 'Admin cộng tiền ()', 'tuanori'),
(194, 2147483647, 10000, 2147473647, '2022-03-02 19:52:08', 'Thanh toán đơn hàng (#ASM81646225528)', 'tuanori');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `sotien` int(11) NOT NULL DEFAULT '0',
  `ghichu` text COLLATE utf8_vietnamese_ci,
  `capnhat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `vn` text COLLATE utf8_vietnamese_ci,
  `en` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `lang`
--

INSERT INTO `lang` (`id`, `vn`, `en`) VALUES
(1, 'Đăng Nhập', 'Login'),
(2, 'Đăng Ký', 'Register'),
(3, 'Thông Tin', 'Profile'),
(4, 'Đăng Nhập hoặc Đăng Ký', 'Login or Register'),
(5, 'Tên đăng nhập', 'Username'),
(6, 'Mật khẩu', 'Password'),
(7, 'Nhập tên đăng nhập', 'Enter your username'),
(8, 'Nhập mật khẩu', 'Enter password'),
(9, 'Đang xử lý', 'Processing'),
(10, 'Vui lòng nhập tên đăng nhập', 'Please enter your username'),
(11, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(12, 'Tên đăng nhập không tồn tại', 'Username does not exist'),
(13, 'Mật khẩu đăng nhập không chính xác', 'Login password is incorrect'),
(14, 'Tài khoản đã bị khóa', 'The account is locked'),
(15, 'Vui lòng nhập định dạng tài khoản hợp lệ', 'Please enter a valid account format'),
(16, 'Tài khoản phải từ 5 đến 64 ký tự', 'Account must be between 5 and 64 characters'),
(17, 'Tên đăng nhập đã tồn tại!', 'Username available!'),
(18, 'Vui lòng đặt mật khẩu trên 3 ký tự', 'Please set a password above 3 characters'),
(19, 'Bạn đã đạt giới hạn tạo tài khoản', 'You have reached your account creation limit'),
(20, 'Tạo tài khoản thành công', 'Account successfully created'),
(21, 'Vui lòng kiểm tra cấu hình cơ sở dữ liệu', 'Please check the database configuration'),
(22, 'Vui lòng nhập địa chỉ email', 'Please enter your email address'),
(23, 'Vui lòng nhập địa chỉ email hợp lệ', 'Please enter a valid email address'),
(24, 'Địa chỉ email không tồn tại trong hệ thống', 'Email address does not exist in the system'),
(25, 'XÁC NHẬN KHÔI PHỤC MẬT KHẨU', 'CONFIRMED PASSWORD RECOVERY'),
(26, 'Có ai đó vừa yêu cầu khôi phục lại mật khẩu bằng Email này, nếu là bạn vui lòng nhập mã xác minh phía dưới để xác minh tài khoản', 'Someone has just requested to recover password by this email, if you are, please enter the verification code below to verify the account.'),
(27, 'Chúng tôi đã gửi mã xác minh vào địa chỉ Email của bạn', 'We have sent a verification code to your Email address'),
(28, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(29, 'Vui lòng xác minh lại mật khẩu', 'Please verify your password'),
(30, 'Tổng nạp', 'Total Balance'),
(31, 'Số dư hiện tại', 'Credit Available'),
(32, 'Số tiền đã sử dụng', 'Amount used'),
(33, 'Nạp tiền ngay', 'Pay Now'),
(34, 'Lịch sử dòng tiền', 'Cash flow history'),
(35, 'THỐNG KÊ CHI TIẾT', 'DETAILED STATISTICS'),
(36, 'Lịch Sử Giao Dịch', 'Transaction history'),
(37, 'Nạp Tiền', 'Recharge'),
(38, 'THÔNG TIN', 'INFORMATION'),
(39, 'Đang hoạt động', 'Online'),
(40, 'Trạng Thái', 'Status'),
(41, 'Giảm', 'Discount'),
(42, 'GIAO DỊCH GẦN ĐÂY', 'RECENT TRANSACTIONS'),
(43, 'Trang Chủ', 'Home'),
(45, 'Số lượng', 'Amount'),
(46, 'Thanh toán', 'Pay'),
(47, 'XEM NGAY', 'VIEW NOW'),
(48, 'TẢI VỀ', 'DOWNLOAD'),
(49, 'CHỌN ĐỊNH DẠNG TẢI VỀ', 'CHOOSE DOWNLOAD FORMAT'),
(50, 'CHI TIẾT ĐƠN HÀNG', 'ORDER DETAILS'),
(51, 'Thời Gian', 'Time'),
(52, 'Loại', 'Type'),
(53, 'Mã Giao Dich', 'Transaction id'),
(54, 'LƯU Ý', 'Note'),
(55, 'Sao chép', 'Copy'),
(56, 'Tải Backup', 'Download Backup'),
(57, 'Dòng tiền', 'Cash flow'),
(58, 'Lịch sử nạp tiền', 'Deposit history'),
(59, 'Chủ tài khoản', 'Recipient\'s name'),
(60, 'Nội dung chuyển tiền', 'Money transfer content'),
(61, 'Số tài khoản', 'Payout account number'),
(62, 'Ngân hàng', 'Bank'),
(63, 'Đăng Xuất', 'Logout'),
(64, 'Thành viên', 'Member'),
(65, 'Đại lý', 'Agency'),
(66, 'Địa chỉ Email', 'Email address'),
(67, 'Số điện thoại', 'Number phone'),
(68, 'Họ và Tên', 'Full name'),
(69, 'Thời gian đăng ký', 'Registration period'),
(70, 'Mật khẩu mới', 'New password'),
(71, 'Nhập lại mật khẩu mới', 'Confirm  new password'),
(72, 'Thông tin được mã hóa khi đưa lên máy chủ của chúng tôi', 'Information is encrypted when posted on our servers'),
(73, 'LƯU THÔNG TIN', 'SAVE INFORMATION'),
(74, 'Đơn giá', 'Unit price'),
(75, 'Số tiền cần thanh toán', 'Amount to be paid'),
(76, 'Đóng', 'Close'),
(77, 'Tên sản phẩm', 'Product\'s name'),
(78, 'Hiện có', 'Available'),
(79, 'Thao tác', 'Control'),
(80, 'Lưu thành công', 'Save successfully'),
(81, 'Đang xử lý giao dịch', 'Processing the transaction'),
(82, 'Loại này đã hết hàng', 'This type is out of stock'),
(83, 'Mua Ngay', 'Buy Now'),
(84, 'Hết hàng', 'Out of stock'),
(85, 'Quốc gia', 'Countries'),
(86, 'Vui lòng đăng nhập để thực hiện giao dịch', 'Please log in to make a transaction'),
(87, 'Dịch vụ không hợp lệ', 'Invalid service'),
(88, 'Dịch vụ này không khả dụng', 'This service is not available'),
(89, 'Số lượng mua không phù hợp', 'Purchase quantity does not match'),
(90, 'Số lượng tối đa 1 lần là', 'The maximum number of times is'),
(91, 'Số lượng trong hệ thống không đủ', 'The quantity in the system is not enough'),
(92, 'Số dư không đủ vui lòng nạp thêm', 'Insufficient balance, please recharge'),
(93, 'Tài khoản của bạn đã bị chấm dứt vì sử dụng BUG', 'Your account has been terminated for using BUG'),
(94, 'Giao dịch thành công!', 'Successful transaction!'),
(95, 'Thất Bại', 'Error'),
(96, 'Thành Công', 'Success'),
(97, 'Cảnh Báo', 'Warning'),
(98, 'DANH SÁCH TÀI KHOẢN', 'LIST OF ACCOUNTS'),
(99, 'Chính sách', 'Policy'),
(100, 'LỊCH SỬ NẠP TIỀN', 'MONEY DEPOSIT HISTORY'),
(101, 'Công Cụ', 'Tool'),
(102, 'NẠP TIỀN', 'RECHARGE'),
(103, 'Số lượng tối thiểu', 'Minimum quantity'),
(104, 'Top Nạp Tiền', 'Deposit Rankings'),
(105, 'BẢNG XẾP HẠNG NẠP TIỀN', 'RANKING OF MONEY'),
(106, 'THÀNH VIÊN', 'MEMBER'),
(107, 'TỔNG TIỀN NẠP', 'TOTAL DEPOSIT'),
(108, 'XẾP HẠNG', 'RANK'),
(109, 'CÔNG CỤ LẤY MÃ 2FA', 'TOOL GET CODE 2FA'),
(110, 'Vui lòng nhập Secret Key', 'Please enter Secret Key'),
(111, 'ĐANG XỬ LÝ', 'PROCESSING'),
(112, 'CHÚNG TÔI CUNG CẤP', 'WE OFFER'),
(113, 'Có những tài khoản Facebook còn khá trẻ nếu bạn cần trong thời gian ngắn, trên trang web của chúng tôi', 'There are Facebook accounts, that are quite young if you need them for a short time, on our website'),
(114, 'TÀI KHOẢN ĐANG BÁN', 'ACCOUNT IS SELLING'),
(115, 'Công ty chúng tôi đã có một thời gian dài trên thị trường tài khoản xã hội số lượng lớn và tài khoản internet công cộng. Chúng tôi đang cung cấp cho khách hàng các tài khoản số lượng lớn an toàn trên tất cả các loại mạng và cổng thông tin công cộng', 'Our company has been for a while on the market of bulk social accounts and public internet recourses. We are offering our customers secure bulk accounts on all kinds of public networks and portals'),
(116, 'Xem thêm', 'Learn more'),
(117, 'Nhà cung cấp tài khoản marketing hàng đầu', 'Top marketing account provider'),
(118, 'Chúng tôi cung cấp những tài khoản mạng xã hội chất lượng nhất', 'We provide top quality social media accounts'),
(119, 'Sản phẩm', 'Product'),
(120, 'Trang chủ', 'Home'),
(121, 'Dịch vụ', 'Services'),
(122, 'Quên mật khẩu', 'Forgot password'),
(123, 'Nhập OTP', 'Enter OTP'),
(124, 'Nhập lại mật khẩu', 'Verify password'),
(125, 'Đổi mật khẩu', 'Change Password'),
(126, 'sản phẩm trong nhóm này', 'products in this group'),
(127, 'Đối tác của chúng tôi', 'Partner'),
(128, 'Điều khoản', 'Rules'),
(129, 'Dịch Vụ', 'Services'),
(130, 'Liên Hệ', 'Contact'),
(131, 'Đăng ký tài khoản', 'Register an account'),
(132, 'Nhập lại mật khẩu', 'Enter the password'),
(133, 'Vui lòng nhập lại mật khẩu', 'Please re-enter your password'),
(134, 'Nhập lại mật khẩu không chính xác', 'Re-enter incorrect password'),
(135, 'Nhập địa chỉ Email', 'Enter your email address'),
(136, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(137, 'Xác minh ngay', 'Verify Now'),
(138, 'Cập nhật số điện thoại', 'Update phone number'),
(139, 'Nhập số điện thoại liên hệ', 'Enter contact phone number'),
(140, 'ĐÃ BÁN', 'SOLD'),
(141, 'Cộng Tác Viên', 'Referral'),
(142, 'Giới thiệu khách hàng sử dụng dịch vụ của chúng tôi nhận ngay hoa hồng', 'Refer customers to use our services and receive commissions'),
(143, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share with your friends.'),
(144, 'ĐIỀU KIỆN', 'CONDITION'),
(145, 'Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài khoản khác sẽ không\n    được dùng để tính hoa hồng.', 'Accounts that are identified by the system as duplicate accounts of other accounts will not\n    used to calculate the commission.'),
(146, 'Hoa hồng chỉ được tính khi người dùng mua tài nguyên trên web.', 'Commissions are calculated only when the user purchases resources on the web.'),
(147, 'Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn toàn vào link giới\n    thiệu. Nếu một người dùng nhấp vào nhiều link ref khác nhau thì chỉ có link ref cuối cùng họ\n    nhấp vào trước khi tạo tài khoản là có hiệu lực.', 'Determining who a users referrer is depends entirely on the referral link\n    introduce. If a user clicks on many different ref links, only the last ref link they have\n    click before creating an account to take effect.'),
(148, 'BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'FRIENDS RECOMMENDED BY YOU'),
(149, 'TÊN ĐĂNG NHẬP', 'USERNAME'),
(150, 'THỜI GIAN THAM GIA', 'CREATEDATE'),
(151, 'HOA HỒNG BẠN NHẬN ĐƯỢC', 'PROFITS YOU GET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8_vietnamese_ci,
  `createdate` datetime DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `username`, `content`, `createdate`, `time`) VALUES
(182, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.12 Safari/537.36 IP 171.234.12.107)', '2022-03-02 19:45:29', '1646225129'),
(183, 'admin', 'Thực hiện đăng nhập (Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.12 Safari/537.36 IP 171.234.12.107)', '2022-03-02 19:47:06', '1646225226'),
(184, 'tuanori', 'Thanh toán đơn hàng #ASM81646225528', '2022-03-02 19:52:08', '1646225528');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `tranId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `partnerId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `partnerName` text CHARACTER SET utf16 COLLATE utf16_vietnamese_ci,
  `amount` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT 'xuly'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id`, `request_id`, `tranId`, `partnerId`, `partnerName`, `amount`, `comment`, `time`, `username`, `status`) VALUES
(4, NULL, '11246744229', '0947838128', 'NGUYỄN TẤN THÀNH', '2222', 'cmsnt1', '2021-04-08 20:25:54', 'admin', 'xuly');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'TUANORI.VN'),
(2, 'mota', 'Shop tài khoản tự động chất lượng nhất thị trường'),
(3, 'tukhoa', 'shop clone, clone shop, mua clone, web bán clone giá rẻ, sellclone, clone gia re, clone viet, mua tai khoan, taikhoan fb, shop nick fb, via fb, shop via, via gia re'),
(4, 'logo', 'https://i.imgur.com/hZtJSf2.png'),
(5, 'email', ''),
(6, 'pass_email', ''),
(7, 'luuy_naptien', '<ul>\r\n	<li>Hệ thống xử lý 5s 1 thẻ.</li>\r\n	<li>Vui lòng gửi đúng mệnh giá, sai mệnh giá thực nhận mệnh giá bé nhất.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k, quý khách nạp 100k thực nhận 100k.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k quý khách nạp 50k thực nhận 50k.</li>\r\n	<li>Mệnh giá 10k, 20k, 30k tính thêm 3% phí.</li>\r\n</ul>\r\n'),
(10, 'luuy_napbank', 'test'),
(11, 'noidung_naptien', 'NAPTIEN'),
(12, 'thongbao', '<b> Thông báo cho khách hàng thay đổi trong Admin</b>'),
(13, 'anhbia', 'https://i.imgur.com/2F8fuAi.png'),
(14, 'favicon', 'https://i.imgur.com/IASsmY0.png'),
(15, 'ck_daily', '10'),
(16, 'doanhthu_daily', '11'),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<p>BẰNG VIỆC SỬ DỤNG CÁC DỊCH VỤ HOẶC MỞ MỘT TÀI KHOẢN, BẠN CHO BIẾT RẰNG BẠN CHẤP NHẬN, KHÔNG RÚT LẠI, CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY. NẾU BẠN KHÔNG ĐỒNG Ý VỚI CÁC ĐIỀU KHOẢN NÀY, VUI LÒNG KHÔNG SỬ DỤNG CÁC DỊCH VỤ CỦA CHÚNG TÔI HAY TRUY CẬP TRANG WEB. NẾU BẠN DƯỚI 18 TUỔI HOẶC \"ĐỘ TUỔI TRƯỞNG THÀNH\"PHÙ HỢP Ở NƠI BẠN SỐNG, BẠN PHẢI XIN PHÉP CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP ĐỂ MỞ MỘT TÀI KHOẢN VÀ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP PHẢI ĐỒNG Ý VỚI CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY. NẾU BẠN KHÔNG BIẾT BẠN CÓ THUỘC \"ĐỘ TUỔI TRƯỞNG THÀNH\" Ở NƠI BẠN SỐNG HAY KHÔNG, HOẶC KHÔNG HIỂU PHẦN NÀY, VUI LÒNG KHÔNG TẠO TÀI KHOẢN CHO ĐẾN KHI BẠN ĐÃ NHỜ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP CỦA BẠN GIÚP ĐỠ. NẾU BẠN LÀ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP CỦA MỘT TRẺ VỊ THÀNH NIÊN MUỐN TẠO MỘT TÀI KHOẢN, BẠN PHẢI CHẤP NHẬN CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY THAY MẶT CHO TRẺ VỊ THÀNH NIÊN ĐÓ VÀ BẠN SẼ CHỊU TRÁCH NHIỆM ĐỐI VỚI TẤT CẢ HOẠT ĐỘNG SỬ DỤNG TÀI KHOẢN HAY CÁC DỊCH VỤ, BAO GỒM CÁC GIAO DỊCH MUA HÀNG DO TRẺ VỊ THÀNH NIÊN THỰC HIỆN, CHO DÙ TÀI KHOẢN CỦA TRẺ VỊ THÀNH NIÊN ĐÓ ĐƯỢC MỞ VÀO LÚC NÀY HAY ĐƯỢC TẠO SAU NÀY VÀ CHO DÙ TRẺ VỊ THÀNH NIÊN CÓ ĐƯỢC BẠN GIÁM SÁT TRONG GIAO DỊCH MUA HÀNG ĐÓ HAY KHÔNG.</p>\r\n'),
(19, 'api_bank', NULL),
(20, 'api_momo', NULL),
(21, 'theme', 'JoBest'),
(22, 'api_card', NULL),
(23, 'ck_card', '30'),
(24, 'theme_color', '#0f0684'),
(25, 'theme_home', '0'),
(26, 'stt_giao_dich_gan_day', 'ON'),
(27, 'status_demo', 'OFF'),
(28, 'chinhsach_baohanh', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Chính sách dịch vụ CMSNT.CO</h2><div class=\"post-body\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(103, 103, 106); font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\"><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"> </h3><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách bảo hành</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></p><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi hỗ trợ fix lỗi nếu lỗi do mã nguồn gây ra ví dụ như: code bug, code không xài được v.v</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi từ chối bảo hành trường hợp quý khách tự gây ra lỗi ví dụ như: code thêm 1 số chức năng xảy ra lỗi, edit giao diện xảy ra lỗi v.v.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Không hỗ trợ và bảo hành đối với trường hợp mua mã nguồn từ bên thứ 3 hoặc sử dụng mã nguồn được share v.v</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách hỗ trợ</h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi sẽ setup cho bạn lần đầu miễn phí khi bạn mua mã nguồn của chúng tôi, chúng tôi sẽ đưa code bạn lên Hosting và cài đặt mọi thứ, bạn chỉ cần đưa vào sử dụng nó.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Nếu bạn cần chúng tôi setup lại lần 2 để đưa lên Hosting khác chúng tôi sẽ lấy phí 300k 1 lần để tránh SPAM.</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"> Chính sách mua hàng</h3></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi chỉ chấp nhận thanh toán qua: ngân hàng nội địa, ví điện tử momo, thẻ siêu rẻ, card24h...</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi sẽ lấy phí khi thanh toán qua thẻ cào, tiền ảo...</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Mua mã nguồn vui lòng thanh toán trước 100%, thuê code theo yêu cầu vui lòng thanh toán trước 50%.</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách cộng tác viên</h3></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Các CTV khi giới thiệu thành công khách hàng sử dụng dịch vụ của CMSNT sẽ được nhận 20% giá trị của giao dịch đó.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Nếu Sale A giới thiệu được 1 khách B mua mã nguồn AB với giá 1.000.000đ, bạn Sale A đó sẽ nhận được 20% của 1.000.000đ tức 200.000đ khi khách B hoàn thành quá trình thanh toán cho CMSNT.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Sau khi tìm kiếm thành công khách hàng, CTV đó vui lòng tạo nhóm liên hệ bao gồm Khách Hàng - CTV - CMSNT để cùng thực hiện trao đổi giao dịch sao cho minh bạch nhất.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Thanh toán sẽ được về tay CTV sau khi khách hàng đó thanh toán đủ giá trị đơn hàng.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">CTV chỉ áp dụng cho khách hàng từng sử dụng dịch vụ của CMSNT.</li></ul><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><br></div></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">Cảm ơn quý khách hàng tin dùng sản phẩm của CMSNT.CO, mãi là đối tác với nhau bạn nhé !</div></div>'),
(29, 'sdt_momo', '0947838128'),
(30, 'name_momo', 'NGUYEN TAN THANH'),
(31, 'tk_tsr', NULL),
(32, 'mk_tsr', NULL),
(33, 'mk2_tsr', ''),
(34, 'luuy_tsr', '<p>Nạp tiền qua thesieure.com cộng tiền ngay.</p><p>Chuyển tiền nhập đúng nội dung chuyển tiền sau đó COPY mã giao dịch tại THESIEURE.COM và nhập vào ô trên.</p>'),
(36, 'fanpage', 'https://www.facebook.com/phamhoangtuan.ytb/'),
(43, 'stt_giaodichao', 'OFF'),
(44, 'files', ''),
(45, 'btnSaveOption', ''),
(46, 'right_panel', 'ON'),
(47, '', NULL),
(48, 'TypePassword', 'md5'),
(49, 'contact', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Thông tin liên hệ thanh toán & hỗ trợ</h2><div class=\"post-body\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(103, 103, 106); font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"> <span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: x-large;\"> </span></p><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 1:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi qua <a href=\"https://zalo.me/0947838128\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: var(--link-color);\">Zalo</a> <b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">0947838128</b></span></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\"><br></span></span></div><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 2:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi qua Facebook cá nhân <a href=\"https://www.facebook.com/ntgtanetwork/\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: var(--link-color);\">https://www.facebook.com/ntgtanetwork/</a></span></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\"><br></span></span></div><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 3:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi trực tiếp qua <b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">LIVE CHAT</b> trên Website</span></span></div></div>'),
(51, 'type_buy', 'LIST'),
(52, 'time_delete', '2592000'),
(53, 'script', ''),
(54, 'check_time_cron', '0'),
(55, 'check_time_cron_bank', '0'),
(56, 'mk_bank', ''),
(57, 'stk_bank', ''),
(58, 'type_bank', 'Vietcombank'),
(59, 'recharge_min', '0'),
(60, 'display_list_login', 'ON'),
(61, 'display_sold', 'ON'),
(62, 'status_cron_momo', 'ON'),
(63, 'status_cron_bank', 'ON'),
(64, 'status_ref', 'ON'),
(65, 'ck_ref', '10'),
(66, 'status_top_nap', 'ON');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` blob,
  `soluong` int(11) DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `loai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_dichvu` int(11) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `taikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci,
  `thoigian` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `shop` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngan_hang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chu_tai_khoan` text COLLATE utf8_vietnamese_ci,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ruttien`
--

INSERT INTO `ruttien` (`id`, `username`, `ngan_hang`, `stk`, `chu_tai_khoan`, `sotien`, `thoigian`, `trangthai`, `ghichu`) VALUES
(2, 'admin', 'VIETINBANK', '12124342323', 'sgasdsad', 10000, '2021-01-24 09:21:25', 'thatbai', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `dichvu` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitiet` longtext COLLATE utf8_vietnamese_ci,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci,
  `khieunai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigianmua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesieure`
--

CREATE TABLE `thesieure` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `magiaodich` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `level` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ref_money` int(11) DEFAULT '0',
  `daily` int(11) DEFAULT '0',
  `otp` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UserAgent` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chietkhau` float DEFAULT '0',
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chitieu` int(11) NOT NULL DEFAULT '0',
  `total_money` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `used_money` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `money`, `level`, `banned`, `createdate`, `email`, `ref`, `ref_money`, `daily`, `otp`, `ip`, `UserAgent`, `device`, `chietkhau`, `time`, `chitieu`, `total_money`, `phone`, `fullname`, `used_money`) VALUES
(1, 'tuanori', '8be9afa4ac293015623c5711cccbf30f', 'eRHxFypYZAuMagtPXWhVJojGkbcnldvmzBwOsELCKSNUrDTQIfqi', 0, 'admin', 0, '2023-07-17 11:52:57', NULL, '', 0, 0, NULL, '116.110.177.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, 0, '1689569577', 0, 0, NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `config_momo`
--
ALTER TABLE `config_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thesieure`
--
ALTER TABLE `thesieure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
