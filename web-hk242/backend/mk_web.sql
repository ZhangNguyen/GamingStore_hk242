-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 04:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

CREATE DATABASE IF NOT EXISTS mk_web CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_unicode_ci;

USE mk_web;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mk_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Bạn có thể đăng ký bảo hành trên website chính thức của MK bằng cách đăng nhập tài khoản và điền thông tin sản phẩm.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(2, 2, 2, 'Hiện tại MK chưa hỗ trợ trả góp trực tiếp, nhưng bạn có thể thanh toán qua các đối tác tài chính hỗ trợ trả góp.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(3, 3, 2, 'Thời gian giao hàng thường từ 1-3 ngày làm việc tại TP.HCM. Các khu vực khác có thể lâu hơn.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(4, 4, 2, 'Chính sách đổi trả cho phép hoàn trả trong 7 ngày nếu sản phẩm không đúng mô tả hoặc bị lỗi kỹ thuật.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(5, 5, 2, 'Hiện tại MK có trung tâm bảo hành tại Đà Nẵng tại địa chỉ 123 Trần Phú.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(6, 6, 2, 'Bạn có thể theo dõi đơn hàng bằng cách đăng nhập vào tài khoản và chọn mục “Đơn hàng của tôi”.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(7, 7, 2, 'MK có chương trình ưu đãi đặc biệt cho sinh viên trong các dịp Back to School. Vui lòng theo dõi website.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(8, 8, 2, 'Trường hợp sản phẩm khác mô tả, bạn có thể gửi yêu cầu đổi trả trong vòng 3 ngày kể từ ngày nhận.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(9, 9, 2, 'Có, khi thanh toán bạn có thể chọn mục “Yêu cầu xuất hóa đơn VAT” và điền thông tin doanh nghiệp.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(10, 10, 2, 'Vui lòng khởi động lại máy ở chế độ Safe Mode và thử gỡ bản cập nhật. Nếu không khắc phục được, hãy liên hệ trung tâm hỗ trợ.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(11, 11, 2, 'Để nâng cấp RAM, bạn cần mở nắp lưng và gắn thêm thanh RAM tương thích. Vui lòng kiểm tra loại RAM DDR4 và dung lượng tối đa hỗ trợ.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(12, 12, 2, 'Hiện tại MK hỗ trợ kỹ thuật từ 8h-20h hàng ngày (kể 2 cuối tuần). Ngoài giờ có thể gửi email để được phản hồi sau.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(13, 13, 2, 'Bạn có thể kiểm tra tình trạng bảo hành tại trang “Kiểm tra bảo hành” trên website chính thức bằng cách nhập số serial sản phẩm.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(14, 14, 2, 'MK hiện hỗ trợ thanh toán qua các ví điện tử như Momo, ZaloPay và ShopeePay. Vui lòng chọn tại bước thanh toán.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(15, 15, 2, 'Tất cả laptop MK chính hãng đều được cài sẵn Windows 11 bản quyền. Bạn không cần mua thêm.', '2025-04-26 01:11:51', '2025-04-26 01:11:51'),
(16, 16, 2, 'Đơn hàng có thể huỷ trong vòng 12 giờ kể từ khi đặt nếu chưa được xử lý. Vui lòng liên hệ tổng đài hỗ trợ để huỷ.', '2025-04-26 01:11:51', '2025-04-26 01:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `img` text NOT NULL,
  `post_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `comment_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_address`
--

CREATE TABLE `contact_address` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_email`
--

CREATE TABLE `contact_email` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_email`
--

INSERT INTO `contact_email` (`id`, `email`) VALUES
(1, 'mk_laptop123@gmail.com'),
(2, 'mk_web_hk242@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` enum('received','seen','responded') DEFAULT 'received',
  `ip_address` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `phone_number`, `content`, `status`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'khang', 'khang@gmail.com', '012345678', 'test thu api', 'responded', '::1', '2025-04-29 10:21:42', '2025-05-05 02:31:09'),
(2, 'khanh nguyễn', 'khanh@gmail.com', '01234567', 'test api thử', 'seen', '::1', '2025-04-29 16:07:51', '2025-05-05 02:30:49'),
(3, 'Nguyễn Văn A', 'anguyen@gmail.com', '0304050607', 'Liên hệ Quảng Cáo', 'seen', '::1', '2025-05-04 14:31:32', '2025-05-05 03:58:43'),
(4, 'Trần C', 'ctran@gmail.com', '0907060503', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.', 'received', '::1', '2025-05-05 01:47:15', '2025-05-05 01:47:15'),
(5, 'Phạm Văn D', 'dvanpham@gmail.com', '0708090001', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;\n', 'responded', '::1', '2025-05-05 01:48:56', '2025-05-05 02:35:14'),
(6, 'FPT', 'fpt@gmail.com', '0985421342', 'Chúng tôi có dự án muốn hợp tác với bạn.', 'received', '::1', '2025-05-08 14:12:46', '2025-05-08 14:12:46'),
(7, 'VNPT', 'vnpt@gmail.com', '0846214234', 'Chúng tôi muốn hợp tác với bạn\n', 'received', '::1', '2025-05-08 14:17:29', '2025-05-08 14:17:29'),
(10, 'Nguyễn Văn M', 'mnguyen@gmail.com', '0890928712', 'Tôi muốn hợp tác mua bán laptop với bạn.', 'received', '::1', '2025-05-08 15:40:42', '2025-05-08 15:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_phone`
--

CREATE TABLE `contact_phone` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_phone`
--

INSERT INTO `contact_phone` (`id`, `phone_number`) VALUES
(2, '0987612345'),
(1, '1900173012');

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE `home_page` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `bg_img` text DEFAULT NULL,
  `lap_img` text DEFAULT NULL,
  `title_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_page`
--

INSERT INTO `home_page` (`id`, `bg_img`, `lap_img`, `title_img`) VALUES
(1, '/images/kv-lg.jpg', '/images/kv-Crosshair-15-B12U.png', '/images/kv-Crosshair-15.png'),
(2, '/images/kv-bg-xs.jpg', '/images/kv-pd.png', '/images/kv-name.png'),
(3, '/images/kv-top-bg.jpg', '/images/kv-nb.png', '/images/kv-titan-18-hx-name.png');

-- --------------------------------------------------------

--
-- Table structure for table `intro_content`
--

CREATE TABLE `intro_content` (
  `id` int(11) NOT NULL,
  `section_key` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intro_content`
--

INSERT INTO `intro_content` (`id`, `section_key`, `title`, `content`, `image_path`, `updated_at`, `updated_by`) VALUES
(1, 'company_overview', 'Tổng quan về công ty', 'MK là công ty hàng đầu thế giới về AI PC, thiết bị chơi game, sáng tạo nội dung, kinh doanh & năng suất cũng như các giải pháp AIoT. Với động lực từ khả năng R&D tiên tiến và sự đổi mới hướng đến khách hàng, MK đã có mặt rộng khắp trên toàn cầu, trải dài trên 120 quốc gia. Dòng sản phẩm toàn diện bao gồm máy tính xách tay, card đồ họa, màn hình, bo mạch chủ, máy tính để bàn, thiết bị ngoại vi, máy chủ, IPC, thiết bị robot, hệ thống thông tin giải trí và viễn thông trên xe cũng như bộ sạc EV được đánh giá cao trên toàn thế giới. Cam kết nâng cao trải nghiệm người dùng thông qua chất lượng sản phẩm tốt nhất, giao diện người dùng trực quan và thiết kế thẩm mỹ, MK là thương hiệu hàng đầu định hình tương lai của công nghệ.', NULL, '2025-04-25 03:12:30', NULL),
(2, 'about_us', 'Về chúng tôi', 'MK là thương hiệu hàng đầu trong lĩnh vực sản phẩm chơi game và sáng tạo, không ngừng đổi mới để mang đến những trải nghiệm vượt trội cho người dùng trên toàn thế giới.', 'uploads/img/banner-about-index-aboutus.jpg', '2025-05-09 02:30:57', NULL),
(3, 'one_step_service', 'Dịch vụ MỘT CHẠM', 'Chúng tôi cung cấp hệ thống dịch vụ tùy biến, đáp ứng mọi nhu cầu của khách hàng, đảm bảo sự tiện lợi và hiệu quả tối đa trong quá trình sử dụng sản phẩm MK.', 'uploads/img/banner-about-index-one-step-service.jpg', '2025-05-09 02:31:10', NULL),
(4, 'sustainability', 'Bền vững', 'MK cam kết bảo vệ môi trường, nâng cao an toàn sức khỏe và thực hiện trách nhiệm xã hội, hướng đến sự phát triển bền vững cho cộng đồng và thế hệ tương lai.', 'updates/img/banner-about-index-sustainability.jpg', '2025-05-09 02:31:22', NULL),
(5, 'contact_us', 'Contact Us', 'Cảm ơn bạn đã ủng hộ sản phẩm MK. Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với chúng tôi qua trang Dịch vụ khách hàng trực tuyến. Chúng tôi sẽ phản hồi nhanh nhất có thể.', 'uploads/img/banner-about-index-contact-xs.jpg', '2025-05-09 02:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('ordered','shipping','delivered') DEFAULT 'ordered',
  `order_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `order_at`) VALUES
(9, 7, 'shipping', '2025-05-08 09:42:25'),
(10, 7, 'delivered', '2025-05-07 22:12:11'),
(11, 7, 'ordered', '2025-05-07 08:24:55'),
(12, 7, 'ordered', '2025-05-07 08:24:55'),
(13, 7, 'ordered', '2025-05-07 08:24:55'),
(14, 7, 'ordered', '2025-05-07 08:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` tinyint(3) UNSIGNED DEFAULT NULL,
  `price_at_order` float UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `quantity`, `price_at_order`) VALUES
(16, 9, 8, 1, 20000),
(17, 9, 6, 1, 12000),
(18, 9, 7, 1, 10000),
(19, 10, 8, 2, 20000),
(20, 10, 6, 1, 12000),
(21, 10, 7, 1, 10000),
(22, 11, 8, 1, 20000),
(23, 11, 7, 1, 10000),
(25, 13, 8, 1, 20000),
(26, 14, 8, 2, 20000),
(27, 14, 6, 1, 12000),
(28, 14, 7, 1, 10000),
(29, 14, 5, 1, 12000),
(30, 14, 4, 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `brand` text DEFAULT NULL,
  `price` float UNSIGNED DEFAULT NULL,
  `stock` tinyint(3) UNSIGNED DEFAULT NULL,
  `published` date DEFAULT NULL,
  `cpu` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `graphic_card` varchar(20) DEFAULT NULL,
  `os` varchar(30) DEFAULT NULL,
  `screen_size` float DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `brand`, `price`, `stock`, `published`, `cpu`, `storage`, `ram`, `pin`, `graphic_card`, `os`, `screen_size`, `weight`) VALUES
(4, 'Lap1', 'Samsung', 10000, 15, '0000-00-00', 'i7', 'SSD', '12MB', '12mWh', 'RTX 560', 'Window', 120, 15),
(5, 'Lap3', 'Microsoft', 12000, 12, '2025-04-30', 'i7', 'SSD', '12MB', '12mWh', 'RTX 560', 'Linux', 120, 12),
(6, 'Lap4', '', 12000, 12, '2025-04-30', 'i7', 'SSD', '12MB', '12mWh', 'RTX 580', 'MAC OS', 120, 12),
(7, 'Lap5', 'Samsung', 10000, 122, '0000-00-00', 'i7', 'SSD', '12MB', '12mWh', 'RTX 580', 'MAC OS', 120, 12),
(8, 'Lap6', 'Samsung', 20000, 123, '2025-05-07', 'i5', 'SSD', '12MB', '12mWh', 'RTX 580', 'Linux', 120, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `color_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_name`) VALUES
(4, 4, 'red'),
(5, 4, 'green'),
(6, 5, 'red'),
(7, 5, 'blue'),
(8, 5, 'green'),
(9, 6, 'red'),
(10, 6, 'green'),
(11, 6, 'brown'),
(12, 6, 'yellow'),
(13, 7, 'red'),
(14, 8, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `product_path`
--

CREATE TABLE `product_path` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `img_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_path`
--

INSERT INTO `product_path` (`id`, `product_id`, `img_path`) VALUES
(4, 4, 'http://localhost/web-hk242/backend/uploads/img/img_6817976a94a26.png'),
(5, 4, 'http://localhost/web-hk242/backend/uploads/img/img_6817976a966d5.png'),
(6, 5, 'http://localhost/web-hk242/backend/uploads/img/img_681797fdde0d0.png'),
(7, 5, 'http://localhost/web-hk242/backend/uploads/img/img_681797fde1473.png'),
(8, 6, 'http://localhost/web-hk242/backend/uploads/img/img_681798858169a.png'),
(9, 7, 'http://localhost/web-hk242/backend/uploads/img/img_681798bc04b3a.png'),
(10, 8, 'http://localhost/web-hk242/backend/uploads/img/img_681798dac2f28.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_name`) VALUES
(4, 4, 'Gaming'),
(5, 4, 'Popular'),
(6, 5, 'GAMING'),
(7, 5, 'POPULAR'),
(8, 5, 'QUALITY'),
(9, 6, 'GAMING'),
(10, 6, 'GOOD'),
(11, 6, 'TOP POPULA'),
(12, 7, 'GOOD'),
(13, 8, 'GOOD');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected','') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `content`, `email`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Làm thế nào để đăng ký bảo hành sản phẩm?', 'Tôi mới mua sản phẩm MK và muốn biết cách đăng ký bảo hành.', 'user1@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 7),
(2, 'Sản phẩm có hỗ trợ trả góp không?', 'Tôi muốn mua laptop nhưng cần trả góp. MK có hỗ trợ không?', 'user2@example.com', 'pending', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 8),
(3, 'Thời gian giao hàng trung bình là bao lâu?', 'Tôi muốn biết đơn hàng từ TP.HCM sẽ giao trong bao lâu.', 'user3@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 9),
(4, 'Chính sách đổi trả của MK thế nào?', 'Nếu tôi không hài lòng với sản phẩm thì có thể đổi trả không?', 'user1@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 10),
(5, 'MK có trung tâm bảo hành tại Đà Nẵng không?', 'Tôi ở Đà Nẵng và muốn biết có thể bảo hành ở đâu.', 'user4@example.com', 'pending', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 11),
(6, 'Tôi có thể theo dõi đơn hàng của mình ở đâu?', 'Tôi muốn kiểm tra trạng thái giao hàng của đơn.', 'user2@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 8),
(7, 'MK có chương trình giảm giá cho sinh viên không?', 'Tôi là sinh viên và muốn biết về ưu đãi.', 'user5@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 11),
(8, 'Sản phẩm không đúng mô tả thì sao?', 'Tôi nhận sản phẩm nhưng khác so với trên web.', 'user3@example.com', 'rejected', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 9),
(9, 'Có thể xuất hóa đơn đỏ khi mua hàng không?', 'Tôi cần hóa đơn đỏ cho công ty.', 'user1@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 7),
(10, 'Tôi bị lỗi phần mềm sau khi cập nhật.', 'Máy bị treo sau khi update driver.', 'user4@example.com', 'pending', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 10),
(11, 'Làm thế nào để nâng cấp RAM cho laptop MK?', 'Tôi muốn nâng cấp RAM cho dòng laptop MK X570, vui lòng hướng dẫn.', 'user2@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 8),
(12, 'MK có hỗ trợ khách hàng 24/7 không?', 'Tôi cần hỗ trợ kỹ thuật ngoài giờ hành chính.', 'user3@example.com', 'pending', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 9),
(13, 'Cách kiểm tra bảo hành sản phẩm MK?', 'Tôi muốn biết sản phẩm của mình còn thời gian bảo hành hay không.', 'user4@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 10),
(14, 'Có thể thanh toán qua ví điện tử không?', 'Tôi có thể thanh toán bằng Momo hoặc ZaloPay không?', 'user5@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 11),
(15, 'Hệ điều hành nào đi kèm laptop MK?', 'Khi mua laptop MK, có được cài sẵn Windows không?', 'user1@example.com', 'approved', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 7),
(16, 'Tôi có thể huỷ đơn hàng sau khi đặt không?', 'Tôi đã đặt hàng nhưng muốn huỷ vì chọn nhầm sản phẩm.', 'user2@example.com', 'pending', '2025-04-26 01:05:44', '2025-04-26 01:05:44', 8);

-- --------------------------------------------------------

--
-- Table structure for table `question_img`
--

CREATE TABLE `question_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `scr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `review_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `region`, `birthdate`, `phone`, `role`, `created_at`, `updated_at`) VALUES
(2, 'admin1@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'One', 'VN', '1990-01-01', '0900000001', 'admin', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(3, 'admin2@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Two', 'VN', '1988-05-12', '0900000002', 'admin', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(4, 'admin3@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Three', 'US', '1985-07-24', '0900000003', 'admin', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(5, 'admin4@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Four', 'SG', '1991-11-03', '0900000004', 'admin', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(6, 'admin5@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Five', 'UK', '1989-03-14', '0900000005', 'admin', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(7, 'user1@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'One', 'VN', '2000-02-10', '0911111111', 'user', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(8, 'user2@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Two', 'TH', '2001-06-15', '0911111112', 'user', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(9, 'user3@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Three', 'MY', '1999-09-20', '0911111113', 'user', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(10, 'user4@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Four', 'ID', '1998-04-18', '0911111114', 'user', '2025-04-26 00:45:29', '2025-04-26 00:45:29'),
(11, 'user5@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Five', 'PH', '1997-12-31', '0911111115', 'user', '2025-04-26 00:45:29', '2025-04-26 00:45:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_fk` (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `cm_fk_article` (`article_id`),
  ADD KEY `cm_fk_user` (`user_id`);

--
-- Indexes for table `contact_address`
--
ALTER TABLE `contact_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`) USING HASH;

--
-- Indexes for table `contact_email`
--
ALTER TABLE `contact_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contact_phone`
--
ALTER TABLE `contact_phone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bg_img` (`bg_img`) USING HASH,
  ADD UNIQUE KEY `lap_img` (`lap_img`) USING HASH,
  ADD UNIQUE KEY `title_img` (`title_img`) USING HASH;

--
-- Indexes for table `intro_content`
--
ALTER TABLE `intro_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_key` (`section_key`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `od_fk_user` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oi_fk_order` (`order_id`),
  ADD KEY `oi_fk_product` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_fk_product` (`product_id`);

--
-- Indexes for table `product_path`
--
ALTER TABLE `product_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path_fk_product` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_fk_product` (`product_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_fk_user` (`user_id`);

--
-- Indexes for table `question_img`
--
ALTER TABLE `question_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_fk_question` (`question_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `rv_fk_product` (`product_id`),
  ADD KEY `rv_fk_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_address`
--
ALTER TABLE `contact_address`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_email`
--
ALTER TABLE `contact_email`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_phone`
--
ALTER TABLE `contact_phone`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intro_content`
--
ALTER TABLE `intro_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_path`
--
ALTER TABLE `product_path`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `question_img`
--
ALTER TABLE `question_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `admin_fk` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `cm_fk_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cm_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `od_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `oi_fk_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oi_fk_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `color_fk_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_path`
--
ALTER TABLE `product_path`
  ADD CONSTRAINT `path_fk_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `tag_fk_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `question_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `question_img`
--
ALTER TABLE `question_img`
  ADD CONSTRAINT `img_fk_question` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `rv_fk_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rv_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
