-- Database: mk_web
CREATE DATABASE IF NOT EXISTS mk_web CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_unicode_ci;

USE mk_web;

-- Users table
CREATE TABLE
    IF NOT EXISTS users (
        id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(255) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        first_name VARCHAR(100) NOT NULL,
        last_name VARCHAR(100),
        region VARCHAR(50) NOT NULL,
        birthdate DATE NOT NULL,
        phone VARCHAR(20),
        role ENUM ('user', 'admin') DEFAULT 'user',
        avatar_url VARCHAR(255) DEFAULT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

INSERT INTO users (email, password, first_name, last_name, region, birthdate, phone, role, avatar_url)
VALUES 
-- Admins
('admin1@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'One', 'VN', '1990-01-01', '0900000001', 'admin', NULL),
('admin2@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Two', 'VN', '1988-05-12', '0900000002', 'admin', NULL),
('admin3@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Three', 'US', '1985-07-24', '0900000003', 'admin', NULL),
('admin4@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Four', 'SG', '1991-11-03', '0900000004', 'admin', NULL),
('admin5@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'Admin', 'Five', 'UK', '1989-03-14', '0900000005', 'admin', NULL),

-- Users
('user1@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'One', 'VN', '2000-02-10', '0911111111', 'user', NULL),
('user2@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Two', 'TH', '2001-06-15', '0911111112', 'user', NULL),
('user3@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Three', 'MY', '1999-09-20', '0911111113', 'user', NULL),
('user4@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Four', 'ID', '1998-04-18', '0911111114', 'user', NULL),
('user5@example.com', '$2y$10$ROP8ggyMtda9Bgy.taxiE./X7rIQCubsdbFqKPKlgMaj4j46cFUNy', 'User', 'Five', 'PH', '1997-12-31', '0911111115', 'user', NULL);

-- Intro page content table
CREATE TABLE
    IF NOT EXISTS intro_content (
        id INT AUTO_INCREMENT PRIMARY KEY,
        section_key VARCHAR(50) NOT NULL UNIQUE,
        title VARCHAR(255),
        content TEXT,
        image_path VARCHAR(255),
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        updated_by INT,
        FOREIGN KEY (updated_by) REFERENCES users (id)
    );

-- Insert default content
INSERT INTO
    intro_content (section_key, title, content, image_path)
VALUES
    (
        'company_overview',
        'Tổng quan về công ty',
        'MK là công ty hàng đầu thế giới về AI PC, thiết bị chơi game, sáng tạo nội dung, kinh doanh & năng suất cũng như các giải pháp AIoT. Với động lực từ khả năng R&D tiên tiến và sự đổi mới hướng đến khách hàng, MK đã có mặt rộng khắp trên toàn cầu, trải dài trên 120 quốc gia. Dòng sản phẩm toàn diện bao gồm máy tính xách tay, card đồ họa, màn hình, bo mạch chủ, máy tính để bàn, thiết bị ngoại vi, máy chủ, IPC, thiết bị robot, hệ thống thông tin giải trí và viễn thông trên xe cũng như bộ sạc EV được đánh giá cao trên toàn thế giới. Cam kết nâng cao trải nghiệm người dùng thông qua chất lượng sản phẩm tốt nhất, giao diện người dùng trực quan và thiết kế thẩm mỹ, MK là thương hiệu hàng đầu định hình tương lai của công nghệ.',
        NULL
    ),
    (
        'about_us',
        'Về chúng tôi',
        'MK là thương hiệu hàng đầu trong lĩnh vực sản phẩm chơi game và sáng tạo, không ngừng đổi mới để mang đến những trải nghiệm vượt trội cho người dùng trên toàn thế giới.',
        'uploads/img/banner-about-index-aboutus.jpg'
    ),
    (
        'one_step_service',
        'Dịch vụ MỘT CHẠM',
        'Chúng tôi cung cấp hệ thống dịch vụ tùy biến, đáp ứng mọi nhu cầu của khách hàng, đảm bảo sự tiện lợi và hiệu quả tối đa trong quá trình sử dụng sản phẩm MK.',
        'uploads/img/banner-about-index-one-step-service.jpg'
    ),
    (
        'sustainability',
        'Bền vững',
        'MK cam kết bảo vệ môi trường, nâng cao an toàn sức khỏe và thực hiện trách nhiệm xã hội, hướng đến sự phát triển bền vững cho cộng đồng và thế hệ tương lai.',
        'uploads/img/banner-about-index-sustainability.jpg'
    ),
    (
        'contact_us',
        'Contact Us',
        'Cảm ơn bạn đã ủng hộ sản phẩm MK. Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với chúng tôi qua trang Dịch vụ khách hàng trực tuyến. Chúng tôi sẽ phản hồi nhanh nhất có thể.',
        'uploads/img/banner-about-index-contact-xs.jpg'
    );

-- Question table
CREATE TABLE
    IF NOT EXISTS questions (
        id INT PRIMARY KEY AUTO_INCREMENT,
        user_id INT,
        title VARCHAR(255) NOT NULL,
        content TEXT NOT NULL,
        email VARCHAR(255) NOT NULL,
        status ENUM ('pending', 'approved', 'rejected') DEFAULT 'pending',
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL
    );

INSERT INTO questions (user_id, title, content, email, status) VALUES
(1, 'Làm thế nào để đăng ký bảo hành sản phẩm?', 'Tôi mới mua sản phẩm MK và muốn biết cách đăng ký bảo hành.', 'user1@example.com', 'approved'),
(2, 'Sản phẩm có hỗ trợ trả góp không?', 'Tôi muốn mua laptop nhưng cần trả góp. MK có hỗ trợ không?', 'user2@example.com', 'pending'),
(3, 'Thời gian giao hàng trung bình là bao lâu?', 'Tôi muốn biết đơn hàng từ TP.HCM sẽ giao trong bao lâu.', 'user3@example.com', 'approved'),
(1, 'Chính sách đổi trả của MK thế nào?', 'Nếu tôi không hài lòng với sản phẩm thì có thể đổi trả không?', 'user1@example.com', 'approved'),
(4, 'MK có trung tâm bảo hành tại Đà Nẵng không?', 'Tôi ở Đà Nẵng và muốn biết có thể bảo hành ở đâu.', 'user4@example.com', 'pending'),
(2, 'Tôi có thể theo dõi đơn hàng của mình ở đâu?', 'Tôi muốn kiểm tra trạng thái giao hàng của đơn.', 'user2@example.com', 'approved'),
(5, 'MK có chương trình giảm giá cho sinh viên không?', 'Tôi là sinh viên và muốn biết về ưu đãi.', 'user5@example.com', 'approved'),
(3, 'Sản phẩm không đúng mô tả thì sao?', 'Tôi nhận sản phẩm nhưng khác so với trên web.', 'user3@example.com', 'rejected'),
(1, 'Có thể xuất hóa đơn đỏ khi mua hàng không?', 'Tôi cần hóa đơn đỏ cho công ty.', 'user1@example.com', 'approved'),
(4, 'Tôi bị lỗi phần mềm sau khi cập nhật.', 'Máy bị treo sau khi update driver.', 'user4@example.com', 'pending'),
(2, 'Làm thế nào để nâng cấp RAM cho laptop MK?', 'Tôi muốn nâng cấp RAM cho dòng laptop MK X570, vui lòng hướng dẫn.', 'user2@example.com', 'approved'),
(3, 'MK có hỗ trợ khách hàng 24/7 không?', 'Tôi cần hỗ trợ kỹ thuật ngoài giờ hành chính.', 'user3@example.com', 'pending'),
(4, 'Cách kiểm tra bảo hành sản phẩm MK?', 'Tôi muốn biết sản phẩm của mình còn thời gian bảo hành hay không.', 'user4@example.com', 'approved'),
(5, 'Có thể thanh toán qua ví điện tử không?', 'Tôi có thể thanh toán bằng Momo hoặc ZaloPay không?', 'user5@example.com', 'approved'),
(1, 'Hệ điều hành nào đi kèm laptop MK?', 'Khi mua laptop MK, có được cài sẵn Windows không?', 'user1@example.com', 'approved'),
(2, 'Tôi có thể huỷ đơn hàng sau khi đặt không?', 'Tôi đã đặt hàng nhưng muốn huỷ vì chọn nhầm sản phẩm.', 'user2@example.com', 'pending'),
(1, 'MK có hỗ trợ khách hàng ngoài giờ không?', 'Tôi cần liên hệ vào buổi tối, MK có hỗ trợ không?', 'user1@example.com', 'approved'),
(2, 'Laptop MK có hỗ trợ Windows 11 không?', 'Tôi muốn biết dòng MK X570 có được cài sẵn Windows 11 không?', 'user2@example.com', 'approved'),
(3, 'MK có dịch vụ vệ sinh laptop miễn phí không?', 'Tôi nghe nói MK có vệ sinh miễn phí, điều này có đúng không?', 'user3@example.com', 'approved'),
(4, 'Làm sao để biết sản phẩm của tôi còn bảo hành?', 'Tôi muốn kiểm tra thời hạn bảo hành còn bao lâu.', 'user4@example.com', 'approved'),
(5, 'MK có giao hàng vào cuối tuần không?', 'Tôi đặt hàng thứ 6, không biết có nhận được vào thứ 7 không?', 'user5@example.com', 'approved'),
(1, 'Thời gian bảo hành tiêu chuẩn là bao lâu?', 'Bảo hành mặc định khi mua sản phẩm MK là bao nhiêu tháng?', 'user1@example.com', 'approved'),
(2, 'Có thể thay đổi địa chỉ giao hàng sau khi đặt không?', 'Tôi muốn chỉnh sửa địa chỉ nhưng đã đặt hàng rồi.', 'user2@example.com', 'approved'),
(3, 'MK có hỗ trợ nâng cấp SSD cho laptop không?', 'Tôi muốn nâng SSD lên 1TB, điều này có được không?', 'user3@example.com', 'approved'),
(5, 'Có thể đặt hàng trước khi có hàng không?', 'Tôi muốn đặt trước mẫu mới sắp ra mắt.', 'user5@example.com', 'approved');


-- Answer table
CREATE TABLE
    IF NOT EXISTS answers (
        id INT PRIMARY KEY AUTO_INCREMENT,
        question_id INT NOT NULL,
        user_id INT,
        content TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (question_id) REFERENCES questions (id) ON DELETE CASCADE,
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL
    );

INSERT INTO answers (question_id, user_id, content) VALUES
(1, 2, 'Bạn có thể đăng ký bảo hành trên website chính thức của MK bằng cách đăng nhập tài khoản và điền thông tin sản phẩm.'),
(2, 2, 'Hiện tại MK chưa hỗ trợ trả góp trực tiếp, nhưng bạn có thể thanh toán qua các đối tác tài chính hỗ trợ trả góp.'),
(3, 2, 'Thời gian giao hàng thường từ 1-3 ngày làm việc tại TP.HCM. Các khu vực khác có thể lâu hơn.'),
(4, 2, 'Chính sách đổi trả cho phép hoàn trả trong 7 ngày nếu sản phẩm không đúng mô tả hoặc bị lỗi kỹ thuật.'),
(5, 2, 'Hiện tại MK có trung tâm bảo hành tại Đà Nẵng tại địa chỉ 123 Trần Phú.'),
(6, 2, 'Bạn có thể theo dõi đơn hàng bằng cách đăng nhập vào tài khoản và chọn mục “Đơn hàng của tôi”.'),
(7, 2, 'MK có chương trình ưu đãi đặc biệt cho sinh viên trong các dịp Back to School. Vui lòng theo dõi website.'),
(8, 2, 'Trường hợp sản phẩm khác mô tả, bạn có thể gửi yêu cầu đổi trả trong vòng 3 ngày kể từ ngày nhận.'),
(9, 2, 'Có, khi thanh toán bạn có thể chọn mục “Yêu cầu xuất hóa đơn VAT” và điền thông tin doanh nghiệp.'),
(10, 2, 'Vui lòng khởi động lại máy ở chế độ Safe Mode và thử gỡ bản cập nhật. Nếu không khắc phục được, hãy liên hệ trung tâm hỗ trợ.'),
(11, 2, 'Để nâng cấp RAM, bạn cần mở nắp lưng và gắn thêm thanh RAM tương thích. Vui lòng kiểm tra loại RAM DDR4 và dung lượng tối đa hỗ trợ.'),
(12, 2, 'Hiện tại MK hỗ trợ kỹ thuật từ 8h-20h hàng ngày (kể 2 cuối tuần). Ngoài giờ có thể gửi email để được phản hồi sau.'),
(13, 2, 'Bạn có thể kiểm tra tình trạng bảo hành tại trang “Kiểm tra bảo hành” trên website chính thức bằng cách nhập số serial sản phẩm.'),
(14, 2, 'MK hiện hỗ trợ thanh toán qua các ví điện tử như Momo, ZaloPay và ShopeePay. Vui lòng chọn tại bước thanh toán.'),
(15, 2, 'Tất cả laptop MK chính hãng đều được cài sẵn Windows 11 bản quyền. Bạn không cần mua thêm.'),
(16, 2, 'Đơn hàng có thể huỷ trong vòng 12 giờ kể từ khi đặt nếu chưa được xử lý. Vui lòng liên hệ tổng đài hỗ trợ để huỷ.');

-- Table: articles
CREATE TABLE IF NOT EXISTS articles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    content TEXT,
    image_url VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO articles (title, description, image_url, content) VALUES
('The Future of AI Technology', 'Explore how AI is transforming industries across the globe.', 'https://images.unsplash.com/photo-1674027444485-cec3da58eef4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8QUl8ZW58MHx8MHx8fDA%3D',
'This article dives deep into the ways artificial intelligence is impacting sectors from healthcare to finance.'),
('Top 10 Gaming Laptops in 2025', 'A comparison of the most powerful gaming laptops this year.', 'https://plus.unsplash.com/premium_photo-1683121716061-3faddf4dc504?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpcHxlbnwwfHwwfHx8MA%3D%3D',
'We review and rank the most powerful gaming laptops based on performance, cooling, and value.'),
('Content Creators: Gear You Need', 'Best tools and tips for streamers and YouTubers.', 'https://images.unsplash.com/photo-1540829917886-91ab031b1764?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpcHxlbnwwfHwwfHx8MA%3D%3D',
'Explore microphones, cameras, lighting, and editing tools that content creators love.'),
('Why You Should Build Your Own PC', 'Pros and cons of building a desktop versus buying prebuilt.', 'https://images.unsplash.com/photo-1591238372338-22d30c883a86?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBjfGVufDB8fDB8fHww',
'Learn how building your own PC gives you more control, better performance, and possibly lower cost.'),
('AIoT in Smart Homes', 'How AI and IoT are merging to create the smart homes of the future.', 'https://plus.unsplash.com/premium_photo-1661297461253-ae1968b5d46c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c21hcnQlMjBob21lfGVufDB8fDB8fHww',
'Smart homes are evolving with AIoT integration, bringing automation and intelligence to everyday living.'),
('MSI Events Recap', 'Highlights from our latest product launch event.', 'https://images.unsplash.com/photo-1505373877841-8d25f7d46678?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZXZlbnR8ZW58MHx8MHx8fDA%3D',
'Catch up on key announcements, new product reveals, and interviews with engineers from the event.'),
('Laptop Maintenance Tips', 'Keep your laptop running like new with these simple habits.', 'https://images.unsplash.com/photo-1499914485622-a88fac536970?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bGFwdG9wfGVufDB8fDB8fHww',
'Tips include proper charging practices, dust removal, and software updates to keep your device healthy.'),
('Gaming Monitor Buying Guide', 'What to look for in a high-refresh-rate gaming display.', 'https://images.unsplash.com/photo-1591370874773-6702e8f12fd8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z2FtaW5nJTIwbW9uaXRvcnxlbnwwfHwwfHx8MA%3D%3D',
'We explain resolution, response time, refresh rate, and panel types to help you make the right purchase.');

CREATE TABLE IF NOT EXISTS article_comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    article_id INT NOT NULL,
    user_name VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (article_id) REFERENCES articles(id) ON DELETE CASCADE
);

INSERT INTO article_comments (article_id, user_name, content) VALUES
(1, 'Khanh Nguyen', 'Bài viết rất hữu ích, cảm ơn tác giả!'),
(1, 'Linh Vu', 'Mình cũng đang tìm hiểu về AI, thông tin bổ ích.'),
(2, 'Minh Tran', 'Mình đang dùng laptop trong danh sách này, rất mạnh!'),
(3, 'Hoang Le', 'Streamgear thật chất lượng.');
