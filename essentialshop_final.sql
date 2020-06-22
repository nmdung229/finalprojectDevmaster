/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : essentialshop

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 22/06/2020 16:31:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `type` int(11) NULL DEFAULT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (6, 'adidas công bố đầu tư 20 triệu đô vào cộng đồng người Da Đen', 'adidas-cong-bo-dau-tu-20-trieu-do-vao-cong-dong-nguoi-da-den', 'uploads/article/1592057146_adidas-20-million-investment-black-community-university-funding-01-320x240.jpg', '<p>Cuối tuần qua, 150 nh&acirc;n vi&ecirc;n của adidas đ&atilde; cử đại diện gửi l&ecirc;n h&atilde;ng một t&agrave;i liệu d&agrave;i 32 trang, n&ecirc;u l&ecirc;n những y&ecirc;u cầu thay đổi trong ch&iacute;nh s&aacute;ch của h&atilde;ng đối với</p>', '<p><a href=\"https://i2.wp.com/statics.hnbmg.com/2020/06/10195638/adidas-20-million-investment-black-community-university-funding-01.jpg?fit=1280%2C853&amp;ssl=1\"><img alt=\"\" src=\"https://statics.hnbmg.com/2020/06/10195638/adidas-20-million-investment-black-community-university-funding-01-800x533.jpg\" style=\"height:533px; width:800px\" /></a></p>\r\n\r\n<p>Cuối tuần qua, 150 nh&acirc;n vi&ecirc;n của adidas đ&atilde; cử đại diện gửi l&ecirc;n h&atilde;ng một t&agrave;i liệu d&agrave;i 32 trang, n&ecirc;u l&ecirc;n những y&ecirc;u cầu thay đổi trong ch&iacute;nh s&aacute;ch của h&atilde;ng đối với những nh&acirc;n vi&ecirc;n cũng như cộng đồng người Da Đen. T&agrave;i liệu n&agrave;y được đặt t&ecirc;n &ldquo;<strong>Our State of Emergency</strong>&ldquo;, với trọng t&acirc;m gồm 4 mục: Đầu tư v&agrave;o những nh&acirc;n vi&ecirc;n người Da Đen; đầu tư v&agrave;o cộng đồng người Da Đen; đầu tư v&agrave;o cuộc đấu tranh b&igrave;nh đẳng chủng tộc v&agrave; thay đổi cho người Da Đen; thể hiện tinh thần tr&aacute;ch nhiệm.</p>\r\n\r\n<p>Những y&ecirc;u cầu n&agrave;y được đưa ra một c&aacute;ch cụ thể với mục ti&ecirc;u v&agrave; thời hạn r&otilde; r&agrave;ng. Một trong số đ&oacute; l&agrave; y&ecirc;u cầu adidas&nbsp;<strong>n&acirc;ng tổng số nh&acirc;n vi&ecirc;n người Da Đen v&agrave; Latin l&ecirc;n 31%</strong>, trong tất cả c&aacute;c cấp nh&acirc;n sự của tổ chức, với thời hạn l&agrave; 31/12/2021.</p>\r\n\r\n<p>Phản hồi lại điều n&agrave;y, adidas đ&atilde; c&oacute; lời nhắn gửi đến nội bộ nh&acirc;n vi&ecirc;n, thể hiện tinh thần lắng nghe v&agrave; giải quyết vấn đề. Một đoạn trong lời nhắn n&ecirc;u l&ecirc;n nội dung rằng ban l&atilde;nh đạo đang l&agrave;m việc c&ugrave;ng c&aacute;c l&atilde;nh đạo người Da Đen, cũng như c&aacute;c tổ chức nh&acirc;n sự, v&agrave; sẽ sớm đưa ra những mục ti&ecirc;u c&oacute; thể đo lường trong việc giải quyết vấn đề.</p>\r\n\r\n<p>adidas &ldquo;<em>cảm th&ocirc;ng v&agrave; t&ocirc;n trọng những cảm x&uacute;c m&agrave; mọi người đang trải qua</em>&ldquo;, v&agrave; tất cả những vị tr&iacute; l&atilde;nh đạo ở Bắc Mỹ v&agrave; Đức sẽ tham gia những buổi đ&agrave;o tạo để c&oacute; hướng dẫn dắt tốt hơn trong t&igrave;nh h&igrave;nh bức x&uacute;c hiện nay.</p>\r\n\r\n<p>Một trong những h&agrave;nh động thiết thực đầu ti&ecirc;n đến từ adidas l&agrave; quy&ecirc;n g&oacute;p gấp đ&ocirc;i số tiền những nh&acirc;n vi&ecirc;n quy&ecirc;n g&oacute;p cho c&aacute;c tổ chức chống ph&acirc;n biệt chủng tộc v&agrave; ủng hộ cộng đồng người Da Đen. Th&ocirc;ng qua nền tảng quy&ecirc;n g&oacute;p online DEED của h&atilde;ng;&nbsp;<strong>cứ 1 đồng nh&acirc;n vi&ecirc;n quy&ecirc;n g&oacute;p, adidas sẽ quy&ecirc;n g&oacute;p th&ecirc;m 2 đồng</strong>.</p>\r\n\r\n<p>Kế đến l&agrave; quyết định gần đ&acirc;y nhất &ndash;&nbsp;<strong>đầu tư 20 triệu đ&ocirc;</strong>&nbsp;v&agrave;o những chương tr&igrave;nh gi&uacute;p đỡ cộng đồng người Da Đen. Th&ecirc;m v&agrave;o đ&oacute;, h&atilde;ng sẽ t&agrave;i trợ&nbsp;<strong>50 học bổng đại học</strong>&nbsp;cho c&aacute;c nh&acirc;n vi&ecirc;n người Da Đen v&agrave; c&ocirc;ng bố kế hoạch tăng số lượng nh&acirc;n vi&ecirc;n người Da Đen v&agrave; Latin.</p>', 3, 1, NULL, 'https://hnbmg.com/adidas-cong-bo-dau-tu-20-trieu-do-vao-cong-dong-nguoi-da-den-68566.html', 1, 6, 'adidas công bố đầu tư 20 triệu đô vào cộng đồng người Da Đen', 'Cuối tuần qua, 150 nhân viên của adidas đã cử đại diện gửi lên hãng một tài liệu dài 32 trang, nêu lên những yêu cầu thay đổi trong chính sách của hãng đối với', '2020-06-13 14:05:46', '2020-06-13 14:05:46');
INSERT INTO `articles` VALUES (7, 'Nike gửi thư chống phân biệt chủng tộc trong nội bộ đến nhân viên', 'nike-gui-thu-chong-phan-biet-chung-toc-trong-noi-bo-den-nhan-vien', 'uploads/article/1592057222_Nike-NYC-650_native_1600-1160x900.jpg', '<p>CEO đương nhiệm của Nike, John Donahoe, đ&atilde; c&oacute; một bức thư gửi đến tập thể nh&acirc;n vi&ecirc;n, đề cập những nỗ lực chống ph&acirc;n biệt chủng tộc trong nội bộ c&ocirc;ng ty v&agrave; kế</p>', '<p><a href=\"https://i2.wp.com/statics.hnbmg.com/2020/06/06022000/Nike-NYC-650_native_1600.jpg?fit=1600%2C900&amp;ssl=1\"><img alt=\"\" src=\"https://statics.hnbmg.com/2020/06/06022000/Nike-NYC-650_native_1600-800x450.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CEO đương nhiệm của&nbsp;<strong>Nike</strong>,&nbsp;<strong>John Donahoe</strong>, đ&atilde; c&oacute; một bức thư gửi đến tập thể nh&acirc;n vi&ecirc;n, đề cập những nỗ lực chống ph&acirc;n biệt chủng tộc trong nội bộ c&ocirc;ng ty v&agrave; kế hoạch quy&ecirc;n g&oacute;p 40 triệu đ&ocirc;-la Mỹ trong v&ograve;ng 4 năm cho cộng đồng người Da Đen.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i2.wp.com/statics.hnbmg.com/2020/06/06021741/nike-ceo-anti-racism-letter-00.jpg?fit=762%2C1200&amp;ssl=1\" /></p>\r\n\r\n<p>H&agrave;nh động n&agrave;y đ&atilde; thể hiện tinh thần n&oacute;i được, l&agrave;m được, củng cố cho<a href=\"https://hnbmg.com/nike-footlocker-round-two-va-nhieu-doanh-nghiep-khac-phan-ung-nhu-the-nao-sau-khi-bi-hoi-cua-68293.html\">&nbsp;lời k&ecirc;u gọi cộng đồng c&ugrave;ng chung tay x&oacute;a bỏ nạn ph&acirc;n biệt chủng tộc</a>&nbsp;được đưa ra bởi Nike v&agrave;o cuối tuần trước.</p>\r\n\r\n<p>Nội dung bức thư đề cập đến kế hoạch x&acirc;y dựng sự b&igrave;nh đẳng trong nội bộ c&ocirc;ng ty, với mục ti&ecirc;u l&agrave;m tốt hơn cả những g&igrave; x&atilde; hội mong đợi. H&atilde;ng b&aacute;c bỏ sự h&agrave;i l&ograve;ng với những g&igrave; đ&atilde; đạt được, v&agrave; sẽ tiếp tục đẩy mạnh ph&aacute;t triển một văn h&oacute;a doanh nghiệp l&agrave;nh mạnh, nơi sự đa dạng chủng tộc được tồn tại, được ph&aacute;t triển v&agrave; được l&agrave; một phần trong những gi&aacute; trị của c&ocirc;ng ty. Kế hoạch chi tiết sẽ được h&atilde;ng c&ocirc;ng bố trong những tuần tiếp theo.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Nike c&ograve;n c&ocirc;ng bố về quyết định đ&oacute;ng g&oacute;p 40 triệu đ&ocirc;-la Mỹ trong v&ograve;ng 4 năm cho cộng đồng người Da Đen. Khoản quy&ecirc;n g&oacute;p n&agrave;y mang t&ecirc;n tập thể 3 thương hiệu Nike, Jordan v&agrave; Converse; v&agrave; sẽ được l&ecirc;n kế hoạch chi tiết bởi Craig Williams (chủ tịch của Jordan Brand)</p>', 1, 2, NULL, 'https://hnbmg.com/nike-gui-thu-chong-phan-biet-chung-toc-trong-noi-bo-den-nhan-vien-68483.html', 1, 6, 'Nike gửi thư chống phân biệt chủng tộc trong nội bộ đến nhân viên', 'CEO đương nhiệm của Nike, John Donahoe, đã có một bức thư gửi đến tập thể nhân viên, đề cập những nỗ lực chống phân biệt chủng tộc trong nội bộ công ty và kế', '2020-06-13 14:07:02', '2020-06-13 14:07:02');
INSERT INTO `articles` VALUES (8, 'Converse Renew tiếp tục tái chế với loạt quần áo workwear vintage từ Carhartt WIP', 'converse-renew-tiep-tuc-tai-che-voi-loat-quan-ao-workwear-vintage-tu-carhartt-wip', 'uploads/article/1592057527_carhartt-wip-converse-renew-chuck-70-release-date-price-02.jpg', '<p>Converse Renew l&agrave; dự &aacute;n &quot;thời trang bền vững&quot; với mục ti&ecirc;u giảm thiểu lượng r&aacute;c thải từ thời trang th&ocirc;ng qua việc t&aacute;i chế vật liệu - từ những sản phẩm thời</p>', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/24130720/carhartt-wip-converse-renew-chuck-70-release-date-price-03.jpg\" style=\"height:1200px; width:900px\" /></p>\r\n\r\n<p><strong>Converse Renew</strong>&nbsp;l&agrave; dự &aacute;n &ldquo;thời trang bền vững&rdquo; với mục ti&ecirc;u giảm thiểu lượng r&aacute;c thải từ thời trang th&ocirc;ng qua việc t&aacute;i chế vật liệu &ndash; từ những sản phẩm thời trang cho đến&nbsp;<a href=\"https://hnbmg.com/converse-renew-canvas-su-dung-nhua-nen-hay-khong-nen-59509.html\">cả r&aacute;c thải nhựa.</a></p>\r\n\r\n<p>Trong dự &aacute;n mới nhất, Converse Renew tag team c&ugrave;ng đối t&aacute;c trứ danh&nbsp;<strong>Carhartt WIP</strong>&nbsp;tạo n&ecirc;n một phối m&agrave;u&nbsp;<strong>Chuck &rsquo;70 High</strong>. Sử dụng những sản phẩm workwear đ&atilde; qua sử dụng của Carhartt WIP, thiết kế Chuck &rsquo;70 vốn mang cảm hứng vintage nay lại trở n&ecirc;n authentic hơn nữa bởi chất liệu Canvas đ&atilde; qua sử dụng sẽ c&oacute; vẻ ngo&agrave;i &ldquo;worn-in&rdquo; đặc trưng, độc nhất. Chỉ ri&ecirc;ng với dự &aacute;n n&agrave;y, Converse đ&atilde; hạn chế được 108,000 sản phẩm dệt may thải ra m&ocirc;i trường.</p>\r\n\r\n<p>Về phối m&agrave;u, sản phẩm mang lối phối Tri-color kh&aacute; đặc trưng cho d&ograve;ng Converse Renew. Mỗi chiếc gi&agrave;y sẽ c&oacute; sự hiện diện của 3 m&agrave;u sắc gồm Navy, N&acirc;u v&agrave; Đen. Trong đ&oacute;, mảng Navy được đặt ở ph&iacute;a ngo&agrave;i, N&acirc;u ở ph&iacute;a trong v&agrave; Đen tr&ecirc;n lưỡi g&agrave; cũng như đường backstay sau g&oacute;t.</p>\r\n\r\n<pre>\r\n<strong>Carhartt WIP x Converse Renew Chuck &#39;70 High</strong>\r\n<strong>Gi&aacute;</strong>: Chưa được c&ocirc;ng bố\r\n<strong>Thời gian</strong>: 28/05/2020\r\n<strong>Địa điểm</strong>: <a href=\"https://www.converse.com/us\">Converse.com</a> v&agrave; <a href=\"https://us.carhartt-wip.com/\">Carhartt-WIP.com</a>.</pre>', 1, 3, NULL, 'https://hnbmg.com/converse-renew-tiep-tuc-tai-che-voi-loat-quan-ao-workwear-vintage-tu-carhartt-wip-68106.html', 1, 6, 'Converse Renew tiếp tục tái chế với loạt quần áo workwear vintage từ Carhartt WIP', 'Converse Renew là dự án \"thời trang bền vững\" với mục tiêu giảm thiểu lượng rác thải từ thời trang thông qua việc tái chế vật liệu - từ những sản phẩm thời', '2020-06-13 14:12:07', '2020-06-13 14:12:07');
INSERT INTO `articles` VALUES (9, 'New Balance Tokyo Design Studio mang đến phối màu “Marbled Blue” cho RC_1300', 'new-balance-tokyo-design-studio-mang-den-phoi-mau-marbled-blue-cho-rc-1300', 'uploads/article/1592057896_new-balance-tokyo-design-studio-rc-1300-blue-release-details-01-1160x853.jpg', '<p>Ti&ecirc;u Điểm New Balance Tokyo Design Studio l&agrave; BST đặc biệt được thiết kế v&agrave; ph&aacute;t triển bởi đội ngũ tại Nhật. Kh&ocirc;ng chỉ l&agrave; phối m&agrave;u, New Balance TDS can thiệp cả</p>', '<h3><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/14142529/new-balance-tokyo-design-studio-rc-1300-blue-release-details-02-1.jpg\" style=\"height:267px; width:400px\" /><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/14142601/new-balance-tokyo-design-studio-rc-1300-blue-release-details-04.jpg\" style=\"height:267px; width:400px\" /><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/14142612/new-balance-tokyo-design-studio-rc-1300-blue-release-details-05.jpg\" style=\"height:173px; width:260px\" /><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/14142756/new-balance-tokyo-design-studio-rc-1300-blue-release-details-07.jpg\" style=\"height:173px; width:260px\" /><img alt=\"\" src=\"https://statics.hnbmg.com/2020/05/14142619/new-balance-tokyo-design-studio-rc-1300-blue-release-details-06.jpg\" style=\"height:173px; width:260px\" /></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Ti&ecirc;u Điểm</h3>\r\n\r\n<p>New Balance Tokyo Design Studio l&agrave; BST đặc biệt được thiết kế v&agrave; ph&aacute;t triển bởi đội ngũ tại Nhật. Kh&ocirc;ng chỉ l&agrave; phối m&agrave;u, New Balance TDS can thiệp cả v&agrave;o cốt l&otilde;i, biến tấu những thiết kế nguy&ecirc;n bản v&agrave; hướng ch&uacute;ng đến sự ho&agrave;n hảo theo những yếu tố trụ cột m&agrave; BST đặt ra.</p>\r\n\r\n<p>Cụ thể, mẫu RC_1300 mang đến n&acirc;ng cấp về &ldquo;d&agrave;n ch&acirc;n&rdquo; &ndash; với midsole kết hợp 2 c&ocirc;ng nghệ ENCAP REVEAL v&agrave; ABZORB; đi c&ugrave;ng outsole thiết kế cho điều kiện ngo&agrave;i trời đến từ Vibram.</p>\r\n\r\n<p>Về phối m&agrave;u, tuy mang t&ecirc;n đ&aacute; Cẩm Thạch, nhưng ngoại h&igrave;nh của &ldquo;Marbled Blue&rdquo; lại gợi nhắc nhiều hơn về chất liệu Denim &ndash; cụ thể l&agrave; Denim giặt Acid. Phần m&agrave;u &ldquo;Marbled Blue&rdquo; được xử l&yacute; tr&ecirc;n chất liệu Leather, phối c&ugrave;ng t&ocirc;ng Xanh đậm hơn tr&ecirc;n c&aacute;c mảng Mesh.</p>\r\n\r\n<p>Ngo&agrave;i ra, signature của New Balance về m&agrave;u sắc vẫn c&oacute; sự hiện diện, th&ocirc;ng qua những chi tiết Beige, X&aacute;m nhấn nh&aacute; tr&ecirc;n lưỡi g&agrave;, g&oacute;t v&agrave; branding.</p>\r\n\r\n<h3>Th&ocirc;ng Tin Ph&aacute;t H&agrave;nh</h3>\r\n\r\n<ul>\r\n	<li><strong>Gi&aacute;</strong>: Chưa c&ocirc;ng bố</li>\r\n	<li><strong>Thời gian v&agrave; địa điểm</strong>: 23/05, tại&nbsp;<a href=\"https://www.newbalance.com/\">newbalance.com</a></li>\r\n</ul>', 1, 4, NULL, 'https://hnbmg.com/new-balance-tokyo-design-studio-mang-den-phoi-mau-marbled-blue-cho-rc_1300-67753.html', 1, 6, 'New Balance Tokyo Design Studio mang đến phối màu “Marbled Blue” cho RC_1300', 'Tiêu Điểm New Balance Tokyo Design Studio là BST đặc biệt được thiết kế và phát triển bởi đội ngũ tại Nhật. Không chỉ là phối màu, New Balance TDS can thiệp cả', '2020-06-13 14:18:16', '2020-06-13 14:18:16');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` int(10) UNSIGNED NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `banners_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (12, 'Tie-Dye Take Over', 'tie-dye-take-over', 'uploads/category/1592728132_Home_TieDye_6-17_DT.jpg', 'https://www.champion.com/new.html', 1, NULL, 1, 1, 1, '2020-06-21 08:28:52', '2020-06-21 08:28:52');
INSERT INTO `banners` VALUES (13, 'Summer Play-list', 'summer-play-list', 'uploads/category/1592728157_Home_Kids_6-17_DT.jpg', 'https://www.champion.com/kids.html', 1, NULL, 1, 2, 1, '2020-06-21 08:29:17', '2020-06-21 08:29:17');

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `brands_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (16, 'Champion', 'champion', 'uploads/category/1591691453_logo-white.png', 'https://www.champion.com/', 1, 1, '2020-06-09 08:30:53', '2020-06-09 08:30:53');
INSERT INTO `brands` VALUES (17, 'Adidas', 'adidas', NULL, 'https://www.laidayrefill.com/', 2, 1, '2020-06-13 14:47:49', '2020-06-13 14:47:49');
INSERT INTO `brands` VALUES (18, 'Nike', 'nike', NULL, 'https://macone.vn/', 3, 1, '2020-06-13 14:48:05', '2020-06-13 14:48:05');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Tops', 'tops', NULL, 0, 1, 1, '2020-06-09 08:25:10', '2020-06-09 08:27:03');
INSERT INTO `categories` VALUES (2, 'Bottoms', 'bottoms', NULL, 0, 2, 1, '2020-06-09 08:25:18', '2020-06-09 08:27:00');
INSERT INTO `categories` VALUES (55, 'Basics', 'basics', NULL, 0, 3, 1, '2020-06-09 08:26:56', '2020-06-09 08:26:56');
INSERT INTO `categories` VALUES (56, 'Footwear', 'footwear', NULL, 0, 4, 1, '2020-06-09 08:27:34', '2020-06-09 08:27:34');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `value` int(11) NULL DEFAULT NULL,
  `percent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (1, 'SHOP-KM1', 1, 30, NULL, '2020-05-19 23:50:32', '2020-05-19 23:50:32');
INSERT INTO `coupons` VALUES (2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 23:52:27', '2020-05-19 23:52:27');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1);
INSERT INTO `order_detail` VALUES (11, 'Sleep Tank, C Logo', 'http://essentialshop.co/uploads/product/1592204931_38.jpg', 'CSTT7Y', 0, 16, 180, 60, 3);
INSERT INTO `order_detail` VALUES (12, 'Expedition Baselayer Crew', 'http://essentialshop.co/uploads/product/1592193846_14.jpg', 'KEW1', 0, 16, 156, 74, 2);
INSERT INTO `order_detail` VALUES (13, 'Nike Airmax 720', 'http://essentialshop.co/uploads/product/1592060457_air-max-720-shoe-NjKC7m.jpg', 'AM720', 0, 16, 142, 200, 1);

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES (1, 'Mới');
INSERT INTO `order_status` VALUES (2, 'Đang Xử Lý');
INSERT INTO `order_status` VALUES (3, 'Hoàn Thành');
INSERT INTO `order_status` VALUES (4, 'Hủy');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NULL DEFAULT 0,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `coupon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `total` int(11) NULL DEFAULT 0,
  `user_id` int(11) NULL DEFAULT 0,
  `order_status_id` int(11) NULL DEFAULT 0,
  `payment_id` int(11) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 1, 0, '2020-05-26 06:59:42', '2020-06-11 08:37:08');
INSERT INTO `orders` VALUES (16, 'DH-16-22062020', 'nguyen manh dung', 'dungnht2209@gmail.com', 'Ha Noi', NULL, '0123456789', 30, 'giay size 41', 'SHOP-KM1', 334, 0, 1, 0, '2020-06-22 09:20:00', '2020-06-22 09:20:00');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES (2, 116, 'uploads/product/1591706924_miasoya.jpg', 1, 6, 1, '2020-06-09 11:06:33', '2020-06-09 12:48:44');
INSERT INTO `product_images` VALUES (3, 116, 'uploads/product/1591700793_nhậu nhóm.jpg', 1, 6, 3, '2020-06-09 11:06:33', '2020-06-09 11:06:33');
INSERT INTO `product_images` VALUES (4, 116, 'uploads/product/1591700793_nmt_yolo.jpg', 1, 6, 5, '2020-06-09 11:06:33', '2020-06-09 11:06:33');
INSERT INTO `product_images` VALUES (6, 117, 'uploads/product/1591709404_hns_t1919g549465_navy_flat_317.jpg', 1, 6, 1, '2020-06-09 13:30:04', '2020-06-09 13:30:04');
INSERT INTO `product_images` VALUES (7, 117, 'uploads/product/1591709404_hns_t1919g549465_navy_side_314.jpg', 1, 6, 2, '2020-06-09 13:30:04', '2020-06-09 13:30:04');
INSERT INTO `product_images` VALUES (8, 117, 'uploads/product/1591709404_hns_t1919g549465_navy_back_315.jpg', 1, 6, 3, '2020-06-09 13:30:04', '2020-06-09 13:30:04');
INSERT INTO `product_images` VALUES (9, 118, 'uploads/product/1591709603_hns_gt24hy07718_hns_gt24hy07718_oxfordgrey_side.jpg', 1, 6, 1, '2020-06-09 13:33:23', '2020-06-09 13:33:23');
INSERT INTO `product_images` VALUES (10, 118, 'uploads/product/1591709603_hns_gt24hy07718_hns_gt24hy07718_oxfordgrey_back.jpg', 1, 6, 2, '2020-06-09 13:33:23', '2020-06-09 13:33:23');
INSERT INTO `product_images` VALUES (11, 119, 'uploads/product/1591709774_hns_gt23h551771_hns_gt23h551771_navy_back.jpg', 1, 6, 1, '2020-06-09 13:36:14', '2020-06-09 13:36:14');
INSERT INTO `product_images` VALUES (12, 120, 'uploads/product/1591709894_hns_gt47y07954_hns_gt47y07954_cgold_front.jpg', 1, 6, 1, '2020-06-09 13:38:14', '2020-06-09 13:38:14');
INSERT INTO `product_images` VALUES (13, 120, 'uploads/product/1591709894_hns_gt47y07954_hns_gt47y07954_cgold_side.jpg', 1, 6, 2, '2020-06-09 13:38:14', '2020-06-09 13:38:14');
INSERT INTO `product_images` VALUES (14, 120, 'uploads/product/1591709894_hns_gt47y07954_hns_gt47y07954_cgold_back.jpg', 1, 6, 3, '2020-06-09 13:38:14', '2020-06-09 13:38:14');
INSERT INTO `product_images` VALUES (15, 120, 'uploads/product/1591709894_hns_gt47y07954_hns_gt47y07954_cgold_flat.jpg', 1, 6, 4, '2020-06-09 13:38:14', '2020-06-09 13:38:14');
INSERT INTO `product_images` VALUES (16, 121, 'uploads/product/1591709977_hns_gt22hy07718_hns_gt22hy07718_citruspink_side.jpg', 1, 6, 1, '2020-06-09 13:39:37', '2020-06-09 13:39:37');
INSERT INTO `product_images` VALUES (17, 121, 'uploads/product/1591709977_hns_gt22hy07718_hns_gt22hy07718_citruspink_back.jpg', 1, 6, 2, '2020-06-09 13:39:37', '2020-06-09 13:39:37');
INSERT INTO `product_images` VALUES (18, 122, 'uploads/product/1591710425_hns_85699550753_hns_85699550753_blackoxfordgrey_detail01.jpg', 1, 6, 1, '2020-06-09 13:47:05', '2020-06-09 13:47:05');
INSERT INTO `product_images` VALUES (19, 122, 'uploads/product/1591710425_hns_85699550753_hns_85699550753_blackoxfordgrey_back.jpg', 1, 6, 2, '2020-06-09 13:47:05', '2020-06-09 13:47:05');
INSERT INTO `product_images` VALUES (20, 122, 'uploads/product/1591710425_hns_85699550753_hns_85699550753_blackoxfordgrey_side.jpg', 1, 6, 3, '2020-06-09 13:47:05', '2020-06-09 13:47:05');
INSERT INTO `product_images` VALUES (21, 123, 'uploads/product/1591710604_hns_85850_hns_85850_blackwhitegrey_side.jpg', 1, 6, 1, '2020-06-09 13:50:04', '2020-06-09 13:50:04');
INSERT INTO `product_images` VALUES (22, 123, 'uploads/product/1591710604_hns_85850_hns_85850_blackwhitegrey_front.jpg', 1, 6, 2, '2020-06-09 13:50:04', '2020-06-09 13:50:04');
INSERT INTO `product_images` VALUES (23, 124, 'uploads/product/1591710721_hns_gp08hy07234_hns_gp08hy07234_navy_side.jpg', 1, 6, 1, '2020-06-09 13:52:01', '2020-06-09 13:52:01');
INSERT INTO `product_images` VALUES (24, 124, 'uploads/product/1591710721_hns_gp08hy07234_hns_gp08hy07234_navy_back.jpg', 1, 6, 2, '2020-06-09 13:52:01', '2020-06-09 13:52:01');
INSERT INTO `product_images` VALUES (25, 125, 'uploads/product/1591710817_hns_p3700_hns_p3700_clogospacednavy_side.jpg', 1, 6, 1, '2020-06-09 13:53:37', '2020-06-09 13:53:37');
INSERT INTO `product_images` VALUES (26, 125, 'uploads/product/1591710817_hns_p3700_hns_p3700_clogospacednavy_back.jpg', 1, 6, 2, '2020-06-09 13:53:37', '2020-06-09 13:53:37');
INSERT INTO `product_images` VALUES (27, 126, 'uploads/product/1591711505_hns_gf01y06146_hns_gf01y06146_black_front.jpg', 1, 6, 1, '2020-06-09 14:05:05', '2020-06-09 14:05:05');
INSERT INTO `product_images` VALUES (28, 126, 'uploads/product/1591711505_hns_gf01y06146_hns_gf01y06146_black_side.jpg', 1, 6, 2, '2020-06-09 14:05:05', '2020-06-09 14:05:05');
INSERT INTO `product_images` VALUES (29, 126, 'uploads/product/1591711505_hns_gf01y06146_hns_gf01y06146_black_back.jpg', 1, 6, 3, '2020-06-09 14:05:05', '2020-06-09 14:05:05');
INSERT INTO `product_images` VALUES (30, 127, 'uploads/product/1591936284_logo-navi.jpg', 1, 6, 1, '2020-06-12 04:31:24', '2020-06-12 04:31:24');
INSERT INTO `product_images` VALUES (31, 127, 'uploads/product/1591936284_nhậu nhóm.jpg', 1, 6, 5, '2020-06-12 04:31:24', '2020-06-12 04:31:24');
INSERT INTO `product_images` VALUES (32, 128, 'uploads/product/1591936480_logo-navi.jpg', 1, 6, 1, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_images` VALUES (33, 128, 'uploads/product/1591936480_nhậu nhóm.jpg', 1, 6, 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_images` VALUES (34, 129, 'uploads/product/1592056865_hns_gf70y08214_hns_gf70y08214_oxfordgrey_back.jpg', 1, 6, 1, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_images` VALUES (35, 129, 'uploads/product/1592056865_hns_gf70y08214_hns_gf70y08214_oxfordgrey_side.jpg', 1, 6, 2, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_images` VALUES (36, 130, 'uploads/product/1592058119_hns_s4569551146_hns_s4569551146_oxfordgreynavyscarlet_detail01.jpg', 1, 6, 1, '2020-06-13 14:21:59', '2020-06-13 14:21:59');
INSERT INTO `product_images` VALUES (37, 130, 'uploads/product/1592058133_hns_s4569551146_hns_s4569551146_oxfordgreynavyscarlet_side.jpg', 1, 6, 2, '2020-06-13 14:22:13', '2020-06-13 14:22:13');
INSERT INTO `product_images` VALUES (38, 130, 'uploads/product/1592058143_hns_s4569551146_hns_s4569551146_oxfordgreynavyscarlet_back.jpg', 1, 6, 3, '2020-06-13 14:22:23', '2020-06-13 14:22:23');
INSERT INTO `product_images` VALUES (39, 131, 'uploads/product/1592058247_hns_gf68y08069_hns_gf68y08069_teamredscarlet_back.jpg', 1, 6, 1, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_images` VALUES (40, 131, 'uploads/product/1592058247_hns_gf68y08069_hns_gf68y08069_teamredscarlet_side.jpg', 1, 6, 2, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_images` VALUES (41, 132, 'uploads/product/1592058467_hns_4613a8_hns_4613a8_black_flat.jpg', 1, 6, 1, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_images` VALUES (42, 132, 'uploads/product/1592058467_hns_4613a8_hns_4613a8_black_back.jpg', 1, 6, 2, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_images` VALUES (43, 133, 'uploads/product/1592058533_hns_4616a9_hns_4616a9_oxfordgrey_back.jpg', 1, 6, 1, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_images` VALUES (44, 134, 'uploads/product/1592058663_hns_1602_black_side.jpg', 1, 6, 1, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_images` VALUES (45, 134, 'uploads/product/1592058663_hns_1602_black_back.jpg', 1, 6, 2, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_images` VALUES (46, 135, 'uploads/product/1592058765_c92f98487a1468285e8bfca536b1b392d3a347dc5c1407cd13989fad56ff2faf.jpeg', 1, 6, 1, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_images` VALUES (47, 135, 'uploads/product/1592058765_ee0ec49b03e59fc4852180792e207cdbe52363a1fb84f703752ad785c37e3582.jpeg', 1, 6, 2, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_images` VALUES (48, 136, 'uploads/product/1592059094_hns_wm143550985_hns_wm143550985_black_back.jpg', 1, 6, 1, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_images` VALUES (49, 136, 'uploads/product/1592059094_hns_wm143550985_hns_wm143550985_black_detail01.jpg', 1, 6, 2, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_images` VALUES (50, 136, 'uploads/product/1592059094_hns_wm143550985_hns_wm143550985_black_side.jpg', 1, 6, 3, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_images` VALUES (51, 136, 'uploads/product/1592059094_hns_wm143550985_hns_wm143550985_black_flat.jpg', 1, 6, 4, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_images` VALUES (52, 137, 'uploads/product/1592059352_hns_cp552m_hns_cp552m_black_detail01.jpg', 1, 6, 1, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_images` VALUES (53, 137, 'uploads/product/1592059352_hns_cp552m_hns_cp552m_black_detail02.jpg', 1, 6, 2, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_images` VALUES (54, 137, 'uploads/product/1592059352_hns_cp552m_hns_cp552m_black_detail03.jpg', 1, 6, 3, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_images` VALUES (55, 137, 'uploads/product/1592059352_hns_cp552m_hns_cp552m_black_detail04.jpg', 1, 6, 4, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_images` VALUES (56, 137, 'uploads/product/1592059352_hns_cp552m_hns_cp552m_black_front.jpg', 1, 6, 5, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_images` VALUES (57, 138, 'uploads/product/1592059471_Ultraboost_20_Shoes_Black_EE4393_010_hover_standard.jpg', 1, 6, 1, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_images` VALUES (58, 138, 'uploads/product/1592059471_Ultraboost_20_Shoes_Black_EE4393_04_standard.jpg', 1, 6, 2, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_images` VALUES (59, 138, 'uploads/product/1592059471_Ultraboost_20_Shoes_Black_EE4393_03_standard.jpg', 1, 6, 3, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_images` VALUES (60, 139, 'uploads/product/1592059652_af1 orange swoosh - 2.jpg', 1, 6, 1, '2020-06-13 14:47:32', '2020-06-13 14:47:32');
INSERT INTO `product_images` VALUES (61, 139, 'uploads/product/1592059652_af1 orange swoosh - 1.jpg', 1, 6, 2, '2020-06-13 14:47:32', '2020-06-13 14:47:32');
INSERT INTO `product_images` VALUES (62, 140, 'uploads/product/1592059863_160b252cf3f63bf002c119735113f19b.jfif', 1, 6, 1, '2020-06-13 14:51:03', '2020-06-13 14:51:03');
INSERT INTO `product_images` VALUES (63, 140, 'uploads/product/1592059863_1.jpg', 1, 6, 2, '2020-06-13 14:51:03', '2020-06-13 14:51:03');
INSERT INTO `product_images` VALUES (64, 140, 'uploads/product/1592059863_nike-wmns-roshe-two-844931-100-white-white-pure-platinum-4.jpg', 1, 6, 3, '2020-06-13 14:51:03', '2020-06-13 14:51:03');
INSERT INTO `product_images` VALUES (65, 140, 'uploads/product/1592059863_nike-wmns-roshe-two-844931-100-white-white-pure-platinum.jpg', 1, 6, 4, '2020-06-13 14:51:03', '2020-06-13 14:51:03');
INSERT INTO `product_images` VALUES (66, 140, 'uploads/product/1592059863_1.jpg', 1, 6, 5, '2020-06-13 14:51:03', '2020-06-13 14:51:03');
INSERT INTO `product_images` VALUES (67, 141, 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_01_standard.jpg', 1, 6, 1, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_images` VALUES (68, 141, 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_02_standard.jpg', 1, 6, 2, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_images` VALUES (69, 141, 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_03_standard.jpg', 1, 6, 3, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_images` VALUES (70, 141, 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_010_hover_standard.jpg', 1, 6, 4, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_images` VALUES (71, 141, 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_41_detail.jpg', 1, 6, 5, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_images` VALUES (72, 142, 'uploads/product/1592060457_air-max-720-shoe-NjKC7m - 2.jpg', 1, 6, 1, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_images` VALUES (73, 142, 'uploads/product/1592060457_air-max-720-shoe-NjKC7m -3.jpg', 1, 6, 2, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_images` VALUES (74, 143, 'uploads/product/1592192304_1.1.jpg', 1, 1, 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_images` VALUES (75, 143, 'uploads/product/1592192304_1.2.jpg', 1, 1, 2, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_images` VALUES (76, 144, 'uploads/product/1592192460_2.1.jpg', 1, 1, 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_images` VALUES (77, 144, 'uploads/product/1592192460_2.2.jpg', 1, 1, 2, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_images` VALUES (78, 145, 'uploads/product/1592192615_3.1.jpg', 1, 1, 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_images` VALUES (79, 145, 'uploads/product/1592192615_3.2.jpg', 1, 1, 2, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_images` VALUES (80, 146, 'uploads/product/1592192721_4.1.jpg', 1, 1, 1, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_images` VALUES (81, 146, 'uploads/product/1592192721_4.2.jpg', 1, 1, 2, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_images` VALUES (82, 147, 'uploads/product/1592192818_5.1.jpg', 1, 1, 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_images` VALUES (83, 148, 'uploads/product/1592192945_6.1.jpg', 1, 1, 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_images` VALUES (84, 149, 'uploads/product/1592193064_7.1.jpg', 1, 1, 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_images` VALUES (85, 150, 'uploads/product/1592193161_8.1.jpg', 1, 1, 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_images` VALUES (86, 151, 'uploads/product/1592193278_9.1.jpg', 1, 1, 1, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_images` VALUES (87, 151, 'uploads/product/1592193278_9.2.jpg', 1, 1, 2, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_images` VALUES (88, 152, 'uploads/product/1592193386_10.1.jpg', 1, 1, 1, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_images` VALUES (89, 152, 'uploads/product/1592193386_10.2.jpg', 1, 1, 2, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_images` VALUES (90, 153, 'uploads/product/1592193502_11.1.jpg', 1, 1, 1, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_images` VALUES (91, 153, 'uploads/product/1592193502_11.2.jpg', 1, 1, 2, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_images` VALUES (92, 154, 'uploads/product/1592193635_12.1.jpg', 1, 1, 1, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_images` VALUES (93, 154, 'uploads/product/1592193635_12.2.jpg', 1, 1, 2, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_images` VALUES (94, 154, 'uploads/product/1592193635_12.3.jpg', 1, 1, 3, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_images` VALUES (95, 155, 'uploads/product/1592193732_13.2.jpg', 1, 1, 1, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_images` VALUES (96, 155, 'uploads/product/1592193732_13.1.jpg', 1, 1, 2, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_images` VALUES (97, 157, 'uploads/product/1592194004_15.2.jpg', 1, 1, 1, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_images` VALUES (98, 157, 'uploads/product/1592194004_15.1.jpg', 1, 1, 2, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_images` VALUES (99, 158, 'uploads/product/1592194152_16.1.jpeg', 1, 1, 1, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_images` VALUES (100, 159, 'uploads/product/1592194282_17.1.jpg', 1, 1, 1, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_images` VALUES (101, 159, 'uploads/product/1592194282_17.2.jpg', 1, 1, 2, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_images` VALUES (102, 160, 'uploads/product/1592194433_18.1.jpg', 1, 1, 1, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_images` VALUES (103, 160, 'uploads/product/1592194433_18.2.jpg', 1, 1, 2, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_images` VALUES (104, 161, 'uploads/product/1592194531_19.1.jpg', 1, 1, 1, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_images` VALUES (105, 161, 'uploads/product/1592194531_19.2.jpg', 1, 1, 2, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_images` VALUES (106, 162, 'uploads/product/1592194673_20.1.jpg', 1, 1, 1, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_images` VALUES (107, 162, 'uploads/product/1592194673_20.2.jpg', 1, 1, 2, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_images` VALUES (108, 163, 'uploads/product/1592203226_21.1.jpg', 1, 1, 1, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_images` VALUES (109, 163, 'uploads/product/1592203226_21.2.jpg', 1, 1, 2, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_images` VALUES (110, 165, 'uploads/product/1592203374_23.1.jpg', 1, 1, 1, '2020-06-15 06:42:54', '2020-06-15 06:42:54');
INSERT INTO `product_images` VALUES (111, 166, 'uploads/product/1592203468_24.1.jpg', 1, 1, 1, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_images` VALUES (112, 167, 'uploads/product/1592203603_25.1.jpg', 1, 1, 1, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_images` VALUES (113, 167, 'uploads/product/1592203603_25.2.jpg', 1, 1, 2, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_images` VALUES (114, 169, 'uploads/product/1592203816_27.1.jpg', 1, 1, 1, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_images` VALUES (115, 169, 'uploads/product/1592203816_27.2.jpg', 1, 1, 2, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_images` VALUES (116, 170, 'uploads/product/1592203924_28.1.jpg', 1, 1, 1, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_images` VALUES (117, 170, 'uploads/product/1592203924_28.2.jpg', 1, 1, 2, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_images` VALUES (118, 171, 'uploads/product/1592204041_29.1.jpg', 1, 1, 1, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_images` VALUES (119, 171, 'uploads/product/1592204041_29.2.jpg', 1, 1, 2, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_images` VALUES (120, 172, 'uploads/product/1592204140_30.1.jpg', 1, 1, 1, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_images` VALUES (121, 172, 'uploads/product/1592204140_30.2.jpg', 1, 1, 2, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_images` VALUES (122, 173, 'uploads/product/1592204255_31.1.jpg', 1, 1, 1, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_images` VALUES (123, 175, 'uploads/product/1592204414_33.1.jpg', 1, 1, 1, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_images` VALUES (124, 176, 'uploads/product/1592204509_34.1.jpg', 1, 1, 1, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_images` VALUES (125, 178, 'uploads/product/1592204708_36.1.jpg', 1, 1, 1, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_images` VALUES (126, 178, 'uploads/product/1592204708_36.2.jpg', 1, 1, 2, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_images` VALUES (127, 179, 'uploads/product/1592204838_37.1.jpg', 1, 1, 1, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_images` VALUES (128, 179, 'uploads/product/1592204838_37.2.jpg', 1, 1, 2, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_images` VALUES (129, 180, 'uploads/product/1592204931_38.1.jpg', 1, 1, 1, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_images` VALUES (130, 180, 'uploads/product/1592204931_38.2.jpg', 1, 1, 2, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_images` VALUES (131, 181, 'uploads/product/1592205038_39.1.jpg', 1, 1, 1, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_images` VALUES (132, 181, 'uploads/product/1592205038_39.2.jpg', 1, 1, 2, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_images` VALUES (133, 182, 'uploads/product/1592205122_40.1.jpg', 1, 1, 1, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_images` VALUES (134, 183, 'uploads/product/1592205293_41.1.jpg', 1, 1, 1, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_images` VALUES (135, 183, 'uploads/product/1592205293_41.2.jpg', 1, 1, 2, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_images` VALUES (136, 183, 'uploads/product/1592205293_41.3.jpg', 1, 1, 3, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_images` VALUES (137, 184, 'uploads/product/1592205396_42.1.jpg', 1, 1, 1, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_images` VALUES (138, 184, 'uploads/product/1592205396_42.2.jpg', 1, 1, 2, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_images` VALUES (139, 184, 'uploads/product/1592205396_42.3.jpg', 1, 1, 3, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_images` VALUES (140, 185, 'uploads/product/1592205497_43.1.jpg', 1, 1, 1, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_images` VALUES (141, 185, 'uploads/product/1592205497_43.2.jpg', 1, 1, 2, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_images` VALUES (142, 185, 'uploads/product/1592205497_43.3.jpg', 1, 1, 3, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_images` VALUES (143, 187, 'uploads/product/1592205735_45.1.jpg', 1, 1, 1, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_images` VALUES (144, 187, 'uploads/product/1592205735_45.2.jpg', 1, 1, 2, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_images` VALUES (145, 187, 'uploads/product/1592205735_45.3.jpg', 1, 1, 3, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_images` VALUES (146, 187, 'uploads/product/1592205735_45.4.jpg', 1, 1, 4, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_images` VALUES (147, 192, 'uploads/product/1592206170_50.1.jpg', 1, 1, 1, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_images` VALUES (148, 192, 'uploads/product/1592206170_50.2.jpg', 1, 1, 2, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_images` VALUES (149, 192, 'uploads/product/1592206170_50.3.jpg', 1, 1, 3, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_images` VALUES (150, 192, 'uploads/product/1592206170_50.4.jpg', 1, 1, 4, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_images` VALUES (151, 192, 'uploads/product/1592206170_50.5.jpg', 1, 1, 5, '2020-06-15 07:29:30', '2020-06-15 07:29:30');

-- ----------------------------
-- Table structure for product_size
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_size
-- ----------------------------
INSERT INTO `product_size` VALUES (1, 'XS');
INSERT INTO `product_size` VALUES (2, 'S');
INSERT INTO `product_size` VALUES (3, 'M');
INSERT INTO `product_size` VALUES (4, 'L');
INSERT INTO `product_size` VALUES (5, 'XL');
INSERT INTO `product_size` VALUES (6, 'XXL');

-- ----------------------------
-- Table structure for product_size_qty
-- ----------------------------
DROP TABLE IF EXISTS `product_size_qty`;
CREATE TABLE `product_size_qty`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_size_qty_ibfk_1`(`product_id`) USING BTREE,
  CONSTRAINT `product_size_qty_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 496 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_size_qty
-- ----------------------------
INSERT INTO `product_size_qty` VALUES (52, 125, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (53, 125, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (54, 125, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (55, 125, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (56, 125, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (57, 125, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (58, 124, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (59, 124, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (60, 124, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (61, 124, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (62, 124, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (63, 124, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (64, 123, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (65, 123, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (66, 123, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (67, 123, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (68, 123, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (69, 123, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (70, 122, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (71, 122, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (72, 122, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (73, 122, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (74, 122, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (75, 122, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (76, 121, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (77, 121, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (78, 121, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (79, 121, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (80, 121, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (81, 121, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (82, 120, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (83, 120, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (84, 120, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (85, 120, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (86, 120, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (87, 120, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (88, 119, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (89, 119, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (90, 119, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (91, 119, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (92, 119, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (93, 119, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (94, 118, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (95, 118, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (96, 118, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (97, 118, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (98, 118, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (99, 118, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (100, 117, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (101, 117, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (102, 117, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (103, 117, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (104, 117, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (105, 117, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (106, 105, 'XS', 12, '2020-06-12 04:34:40', '2020-06-12 08:53:42');
INSERT INTO `product_size_qty` VALUES (107, 105, 'S', 123, '2020-06-12 04:34:40', '2020-06-12 08:54:46');
INSERT INTO `product_size_qty` VALUES (108, 105, 'M', 3456, '2020-06-12 04:34:40', '2020-06-12 08:55:00');
INSERT INTO `product_size_qty` VALUES (109, 105, 'L', 4, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (110, 105, 'XL', 5, '2020-06-12 04:34:40', '2020-06-12 04:34:40');
INSERT INTO `product_size_qty` VALUES (111, 105, 'XXL', 6432, '2020-06-12 04:34:40', '2020-06-12 08:56:29');
INSERT INTO `product_size_qty` VALUES (112, 129, 'XS', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (113, 129, 'S', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (114, 129, 'M', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (115, 129, 'L', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (116, 129, 'XL', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (117, 129, 'XXL', 5, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `product_size_qty` VALUES (118, 130, 'XS', 5, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (119, 130, 'S', 10, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (120, 130, 'M', 15, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (121, 130, 'L', 20, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (122, 130, 'XL', 15, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (123, 130, 'XXL', 10, '2020-06-13 14:21:19', '2020-06-13 14:21:19');
INSERT INTO `product_size_qty` VALUES (124, 131, 'XS', 10, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (125, 131, 'S', 20, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (126, 131, 'M', 30, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (127, 131, 'L', 30, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (128, 131, 'XL', 35, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (129, 131, 'XXL', 5, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `product_size_qty` VALUES (130, 132, 'XS', 0, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (131, 132, 'S', 10, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (132, 132, 'M', 15, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (133, 132, 'L', 20, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (134, 132, 'XL', 25, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (135, 132, 'XXL', 17, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `product_size_qty` VALUES (136, 133, 'XS', 0, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (137, 133, 'S', 3, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (138, 133, 'M', 4, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (139, 133, 'L', 5, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (140, 133, 'XL', 3, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (141, 133, 'XXL', 0, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `product_size_qty` VALUES (142, 134, 'XS', 0, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (143, 134, 'S', 5, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (144, 134, 'M', 5, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (145, 134, 'L', 5, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (146, 134, 'XL', 5, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (147, 134, 'XXL', 0, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `product_size_qty` VALUES (148, 135, 'XS', 0, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (149, 135, 'S', 2, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (150, 135, 'M', 3, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (151, 135, 'L', 2, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (152, 135, 'XL', 1, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (153, 135, 'XXL', 0, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `product_size_qty` VALUES (154, 136, 'XS', 1, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (155, 136, 'S', 5, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (156, 136, 'M', 10, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (157, 136, 'L', 20, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (158, 136, 'XL', 8, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (159, 136, 'XXL', 1, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `product_size_qty` VALUES (160, 137, 'XS', 0, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (161, 137, 'S', 5, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (162, 137, 'M', 5, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (163, 137, 'L', 20, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (164, 137, 'XL', 8, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (165, 137, 'XXL', 6, '2020-06-13 14:42:32', '2020-06-13 14:42:32');
INSERT INTO `product_size_qty` VALUES (166, 138, 'XS', 0, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (167, 138, 'S', 5, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (168, 138, 'M', 5, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (169, 138, 'L', 5, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (170, 138, 'XL', 5, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (171, 138, 'XXL', 5, '2020-06-13 14:44:31', '2020-06-13 14:44:31');
INSERT INTO `product_size_qty` VALUES (184, 141, 'XS', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (185, 141, 'S', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (186, 141, 'M', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (187, 141, 'L', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (188, 141, 'XL', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (189, 141, 'XXL', 20, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `product_size_qty` VALUES (190, 142, 'XS', 0, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (191, 142, 'S', 1, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (192, 142, 'M', 1, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (193, 142, 'L', 1, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (194, 142, 'XL', 1, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (195, 142, 'XXL', 0, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `product_size_qty` VALUES (196, 143, 'XS', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (197, 143, 'S', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (198, 143, 'M', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (199, 143, 'L', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (200, 143, 'XL', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (201, 143, 'XXL', 1, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `product_size_qty` VALUES (202, 144, 'XS', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (203, 144, 'S', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (204, 144, 'M', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (205, 144, 'L', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (206, 144, 'XL', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (207, 144, 'XXL', 1, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `product_size_qty` VALUES (208, 145, 'XS', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (209, 145, 'S', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (210, 145, 'M', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (211, 145, 'L', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (212, 145, 'XL', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (213, 145, 'XXL', 1, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `product_size_qty` VALUES (214, 146, 'XS', 1, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (215, 146, 'S', 1, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (216, 146, 'M', 1, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (217, 146, 'L', 1, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (218, 146, 'XL', 2, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (219, 146, 'XXL', 2, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `product_size_qty` VALUES (220, 147, 'XS', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (221, 147, 'S', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (222, 147, 'M', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (223, 147, 'L', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (224, 147, 'XL', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (225, 147, 'XXL', 1, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `product_size_qty` VALUES (226, 148, 'XS', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (227, 148, 'S', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (228, 148, 'M', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (229, 148, 'L', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (230, 148, 'XL', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (231, 148, 'XXL', 1, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `product_size_qty` VALUES (232, 149, 'XS', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (233, 149, 'S', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (234, 149, 'M', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (235, 149, 'L', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (236, 149, 'XL', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (237, 149, 'XXL', 1, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `product_size_qty` VALUES (238, 150, 'XS', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (239, 150, 'S', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (240, 150, 'M', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (241, 150, 'L', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (242, 150, 'XL', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (243, 150, 'XXL', 1, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `product_size_qty` VALUES (244, 151, 'XS', 2, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (245, 151, 'S', 5, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (246, 151, 'M', 5, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (247, 151, 'L', 4, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (248, 151, 'XL', 4, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (249, 151, 'XXL', 7, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `product_size_qty` VALUES (250, 152, 'XS', 2, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (251, 152, 'S', 4, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (252, 152, 'M', 5, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (253, 152, 'L', 5, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (254, 152, 'XL', 5, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (255, 152, 'XXL', 5, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `product_size_qty` VALUES (256, 153, 'XS', 3, '2020-06-15 03:58:21', '2020-06-15 03:58:21');
INSERT INTO `product_size_qty` VALUES (257, 153, 'S', 4, '2020-06-15 03:58:21', '2020-06-15 03:58:21');
INSERT INTO `product_size_qty` VALUES (258, 153, 'M', 4, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_size_qty` VALUES (259, 153, 'L', 3, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_size_qty` VALUES (260, 153, 'XL', 2, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_size_qty` VALUES (261, 153, 'XXL', 6, '2020-06-15 03:58:22', '2020-06-15 03:58:22');
INSERT INTO `product_size_qty` VALUES (262, 154, 'XS', 4, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (263, 154, 'S', 4, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (264, 154, 'M', 3, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (265, 154, 'L', 6, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (266, 154, 'XL', 3, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (267, 154, 'XXL', 3, '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `product_size_qty` VALUES (268, 155, 'XS', 4, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (269, 155, 'S', 4, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (270, 155, 'M', 4, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (271, 155, 'L', 3, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (272, 155, 'XL', 4, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (273, 155, 'XXL', 4, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `product_size_qty` VALUES (274, 156, 'XS', 3, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (275, 156, 'S', 5, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (276, 156, 'M', 5, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (277, 156, 'L', 5, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (278, 156, 'XL', 5, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (279, 156, 'XXL', 6, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `product_size_qty` VALUES (280, 157, 'XS', 5, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (281, 157, 'S', 5, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (282, 157, 'M', 4, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (283, 157, 'L', 5, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (284, 157, 'XL', 4, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (285, 157, 'XXL', 6, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `product_size_qty` VALUES (286, 158, 'XS', 4, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (287, 158, 'S', 5, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (288, 158, 'M', 7, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (289, 158, 'L', 5, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (290, 158, 'XL', 5, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (291, 158, 'XXL', 6, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `product_size_qty` VALUES (292, 159, 'XS', 5, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (293, 159, 'S', 5, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (294, 159, 'M', 5, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (295, 159, 'L', 4, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (296, 159, 'XL', 6, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (297, 159, 'XXL', 6, '2020-06-15 04:11:22', '2020-06-15 04:11:22');
INSERT INTO `product_size_qty` VALUES (298, 160, 'XS', 4, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (299, 160, 'S', 4, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (300, 160, 'M', 4, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (301, 160, 'L', 4, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (302, 160, 'XL', 4, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (303, 160, 'XXL', 5, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `product_size_qty` VALUES (304, 161, 'XS', 5, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (305, 161, 'S', 6, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (306, 161, 'M', 5, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (307, 161, 'L', 5, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (308, 161, 'XL', 4, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (309, 161, 'XXL', 4, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `product_size_qty` VALUES (310, 162, 'XS', 5, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (311, 162, 'S', 4, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (312, 162, 'M', 4, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (313, 162, 'L', 5, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (314, 162, 'XL', 5, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (315, 162, 'XXL', 5, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `product_size_qty` VALUES (316, 163, 'XS', 8, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (317, 163, 'S', 12, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (318, 163, 'M', 22, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (319, 163, 'L', 30, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (320, 163, 'XL', 30, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (321, 163, 'XXL', 29, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `product_size_qty` VALUES (322, 164, 'XS', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (323, 164, 'S', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (324, 164, 'M', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (325, 164, 'L', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (326, 164, 'XL', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (327, 164, 'XXL', 20, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `product_size_qty` VALUES (328, 165, 'XS', 30, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `product_size_qty` VALUES (329, 165, 'S', 32, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `product_size_qty` VALUES (330, 165, 'M', 32, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `product_size_qty` VALUES (331, 165, 'L', 32, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `product_size_qty` VALUES (332, 165, 'XL', 32, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `product_size_qty` VALUES (333, 165, 'XXL', 32, '2020-06-15 06:42:54', '2020-06-15 06:42:54');
INSERT INTO `product_size_qty` VALUES (334, 166, 'XS', 20, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (335, 166, 'S', 20, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (336, 166, 'M', 20, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (337, 166, 'L', 50, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (338, 166, 'XL', 50, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (339, 166, 'XXL', 50, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `product_size_qty` VALUES (340, 167, 'XS', 20, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (341, 167, 'S', 20, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (342, 167, 'M', 20, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (343, 167, 'L', 30, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (344, 167, 'XL', 30, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (345, 167, 'XXL', 30, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `product_size_qty` VALUES (346, 168, 'XS', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (347, 168, 'S', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (348, 168, 'M', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (349, 168, 'L', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (350, 168, 'XL', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (351, 168, 'XXL', 30, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `product_size_qty` VALUES (352, 169, 'XS', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (353, 169, 'S', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (354, 169, 'M', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (355, 169, 'L', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (356, 169, 'XL', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (357, 169, 'XXL', 40, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `product_size_qty` VALUES (358, 170, 'XS', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (359, 170, 'S', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (360, 170, 'M', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (361, 170, 'L', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (362, 170, 'XL', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (363, 170, 'XXL', 20, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `product_size_qty` VALUES (364, 171, 'XS', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (365, 171, 'S', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (366, 171, 'M', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (367, 171, 'L', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (368, 171, 'XL', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (369, 171, 'XXL', 30, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `product_size_qty` VALUES (370, 172, 'XS', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (371, 172, 'S', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (372, 172, 'M', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (373, 172, 'L', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (374, 172, 'XL', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (375, 172, 'XXL', 30, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `product_size_qty` VALUES (376, 173, 'XS', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (377, 173, 'S', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (378, 173, 'M', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (379, 173, 'L', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (380, 173, 'XL', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (381, 173, 'XXL', 30, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `product_size_qty` VALUES (382, 174, 'XS', 10, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (383, 174, 'S', 20, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (384, 174, 'M', 20, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (385, 174, 'L', 20, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (386, 174, 'XL', 20, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (387, 174, 'XXL', 20, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `product_size_qty` VALUES (388, 175, 'XS', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (389, 175, 'S', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (390, 175, 'M', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (391, 175, 'L', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (392, 175, 'XL', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (393, 175, 'XXL', 20, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `product_size_qty` VALUES (394, 176, 'XS', 20, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (395, 176, 'S', 30, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (396, 176, 'M', 30, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (397, 176, 'L', 30, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (398, 176, 'XL', 30, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (399, 176, 'XXL', 30, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `product_size_qty` VALUES (400, 177, 'XS', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (401, 177, 'S', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (402, 177, 'M', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (403, 177, 'L', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (404, 177, 'XL', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (405, 177, 'XXL', 40, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `product_size_qty` VALUES (406, 178, 'XS', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (407, 178, 'S', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (408, 178, 'M', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (409, 178, 'L', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (410, 178, 'XL', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (411, 178, 'XXL', 40, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `product_size_qty` VALUES (412, 179, 'XS', 30, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (413, 179, 'S', 30, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (414, 179, 'M', 20, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (415, 179, 'L', 40, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (416, 179, 'XL', 20, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (417, 179, 'XXL', 20, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `product_size_qty` VALUES (418, 180, 'XS', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (419, 180, 'S', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (420, 180, 'M', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (421, 180, 'L', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (422, 180, 'XL', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (423, 180, 'XXL', 20, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `product_size_qty` VALUES (424, 181, 'XS', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (425, 181, 'S', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (426, 181, 'M', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (427, 181, 'L', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (428, 181, 'XL', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (429, 181, 'XXL', 30, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `product_size_qty` VALUES (430, 182, 'XS', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (431, 182, 'S', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (432, 182, 'M', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (433, 182, 'L', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (434, 182, 'XL', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (435, 182, 'XXL', 20, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `product_size_qty` VALUES (436, 183, 'XS', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (437, 183, 'S', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (438, 183, 'M', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (439, 183, 'L', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (440, 183, 'XL', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (441, 183, 'XXL', 30, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `product_size_qty` VALUES (442, 184, 'XS', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (443, 184, 'S', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (444, 184, 'M', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (445, 184, 'L', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (446, 184, 'XL', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (447, 184, 'XXL', 20, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `product_size_qty` VALUES (448, 185, 'XS', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (449, 185, 'S', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (450, 185, 'M', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (451, 185, 'L', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (452, 185, 'XL', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (453, 185, 'XXL', 30, '2020-06-15 07:18:17', '2020-06-15 07:18:17');
INSERT INTO `product_size_qty` VALUES (454, 186, 'XS', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (455, 186, 'S', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (456, 186, 'M', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (457, 186, 'L', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (458, 186, 'XL', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (459, 186, 'XXL', 20, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `product_size_qty` VALUES (460, 187, 'XS', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (461, 187, 'S', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (462, 187, 'M', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (463, 187, 'L', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (464, 187, 'XL', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (465, 187, 'XXL', 20, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `product_size_qty` VALUES (466, 188, 'XS', 50, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (467, 188, 'S', 50, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (468, 188, 'M', 50, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (469, 188, 'L', 50, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (470, 188, 'XL', 40, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (471, 188, 'XXL', 30, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `product_size_qty` VALUES (472, 189, 'XS', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (473, 189, 'S', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (474, 189, 'M', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (475, 189, 'L', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (476, 189, 'XL', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (477, 189, 'XXL', 20, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `product_size_qty` VALUES (478, 190, 'XS', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (479, 190, 'S', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (480, 190, 'M', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (481, 190, 'L', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (482, 190, 'XL', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (483, 190, 'XXL', 30, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `product_size_qty` VALUES (484, 191, 'XS', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (485, 191, 'S', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (486, 191, 'M', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (487, 191, 'L', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (488, 191, 'XL', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (489, 191, 'XXL', 20, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `product_size_qty` VALUES (490, 192, 'XS', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_size_qty` VALUES (491, 192, 'S', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_size_qty` VALUES (492, 192, 'M', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_size_qty` VALUES (493, 192, 'L', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_size_qty` VALUES (494, 192, 'XL', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');
INSERT INTO `product_size_qty` VALUES (495, 192, 'XXL', 50, '2020-06-15 07:29:30', '2020-06-15 07:29:30');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `memory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_slug_index`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (105, 'Tee, C Applique Logo', 'tee-c-applique-logo', 'uploads/product/1591691488_hns_gt19y06820_teamredscarlet_flat_74.jpg', 10, 30, 19, 1, 1, 1, 0, 1, NULL, 'T1', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 08:31:28', '2020-06-09 08:32:27');
INSERT INTO `products` VALUES (117, 'Tee, Script Logo', 'tee-script-logo', 'uploads/product/1591709404_hns_t1919g549465_navy_front_313.jpg', 10, 35, 29, 2, 1, 1, 0, 1, 'https://www.champion.com/tee-script-logo-2.html', 'T1919G  549465', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:30:04', '2020-06-09 13:30:04');
INSERT INTO `products` VALUES (118, 'Classic Jersey Tank, Script Logo', 'classic-jersey-tank-script-logo', 'uploads/product/1591709603_hns_gt24hy07718_hns_gt24hy07718_oxfordgrey_front.jpg', 50, 20, 15, 3, 1, 0, 0, 1, 'https://www.champion.com/classic-jersey-tank-script-logo-gt24h-y07718.html', 'GT24H   Y07718', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:33:23', '2020-06-09 13:33:23');
INSERT INTO `products` VALUES (119, 'Exclusive Jersey Tee, Marathon Logo', 'exclusive-jersey-tee-marathon-logo', 'uploads/product/1591709774_hns_gt23h551771_hns_gt23h551771_navy_front.jpg', 25, 30, 30, 4, 1, 1, 0, 1, 'https://www.champion.com/gt23h-551771.html', 'GT23H   551771', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:36:14', '2020-06-09 13:36:14');
INSERT INTO `products` VALUES (120, 'Heritage Long-Sleeve Tee, Flock Script Logo', 'heritage-long-sleeve-tee-flock-script-logo', 'uploads/product/1591709894_hns_gt47y07954_hns_gt47y07954_cgold_coed.jpg', 32, 30, 30, 5, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:38:14', '2020-06-09 13:38:14');
INSERT INTO `products` VALUES (121, 'Classic Jersey Muscle Tee, Script Logo', 'classic-jersey-muscle-tee-script-logo', 'uploads/product/1591709985_hns_gt22hy07718_hns_gt22hy07718_citruspink_front.jpg', 80, 20, 15, 6, 1, 1, 0, 1, NULL, 'GT22H   Y07718', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:39:37', '2020-06-09 13:39:45');
INSERT INTO `products` VALUES (122, 'Middleweight Shorts', 'middleweight-shorts', 'uploads/product/1591710425_hns_85699550753_hns_85699550753_blackoxfordgrey_front.jpg', 20, 30, 24, 7, 1, 1, 0, 2, 'https://www.champion.com/middleweight-shorts.html', '85699   550753', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:47:05', '2020-06-09 13:47:05');
INSERT INTO `products` VALUES (123, 'Jacquard Shorts, All Over C Logo', 'jacquard-shorts-all-over-c-logo', 'uploads/product/1591710604_hns_85850_hns_85850_blackwhitegrey_coed.jpg', 10, 55, 55, 8, 1, 0, 0, 2, 'https://www.champion.com/jacquard-novelty-short.html', '85850', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:50:04', '2020-06-09 13:50:04');
INSERT INTO `products` VALUES (124, 'Classic Jersey Joggers, Script Logo', 'classic-jersey-joggers-script-logo', 'uploads/product/1591710721_hns_gp08hy07234_hns_gp08hy07234_navy_front.jpg', 5, 30, 23, 9, 1, 1, 0, 2, 'https://www.champion.com/classic-jersey-joggers-script-logo.html', 'GP08H   Y07234', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:52:01', '2020-06-09 13:52:01');
INSERT INTO `products` VALUES (125, 'Reverse Weave Joggers, All Over Logo', 'reverse-weave-joggers-all-over-logo', 'uploads/product/1591710817_hns_p3700_hns_p3700_clogospacednavy_front.jpg', 20, 60, 49, 10, 1, 0, 0, 2, NULL, 'P3700', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-09 13:53:37', '2020-06-09 13:53:37');
INSERT INTO `products` VALUES (129, 'Reverse Weave Crew, Front & Back Logos', 'reverse-weave-crew-front-back-logos', 'uploads/product/1592056865_hns_gf70y08214_hns_gf70y08214_oxfordgrey_front.jpg', 30, 55, 55, 11, 1, 0, 0, 1, 'https://www.champion.com/reverse-weave-crew-small-script.html', 'GF70    Y08214', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:01:05', '2020-06-13 14:01:05');
INSERT INTO `products` VALUES (130, 'Reverse Weave Colorblock Hoodie', 'reverse-weave-colorblock-hoodie', 'uploads/product/1592058100_hns_s4569551146_hns_s4569551146_oxfordgreynavyscarlet_front.jpg', 75, 75, 75, 12, 1, 0, 0, 1, 'https://www.champion.com/reverse-weave-colorblock-hoodie.html', 'S4569   551146', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:21:19', '2020-06-13 14:21:40');
INSERT INTO `products` VALUES (131, 'Reverse Weave Hoodie, Vintage Logo', 'reverse-weave-hoodie-vintage-logo', 'uploads/product/1592058247_hns_gf68y08069_hns_gf68y08069_teamredscarlet_front (1).jpg', 130, 65, 59, 13, 1, 1, 0, 1, 'https://www.champion.com/reverse-weave-hoodie-vintage-logo-gf68-y08069.html', 'GF68    Y08069', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:24:07', '2020-06-13 14:24:07');
INSERT INTO `products` VALUES (132, 'C Logo Knit Boxer, 1-Pair', 'c-logo-knit-boxer-1-pair', 'uploads/product/1592058467_hns_4613a8_hns_4613a8_black_front.jpg', 87, 20, 13, 14, 1, 1, 0, 55, 'https://www.champion.com/champion-life-mens-c-logo-knit-boxer-1-pair-1.html', '4613A8', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:27:47', '2020-06-13 14:27:47');
INSERT INTO `products` VALUES (133, 'C Logo Stretch Woven Boxer 1-Pair', 'c-logo-stretch-woven-boxer-1-pair', 'uploads/product/1592058533_hns_4616a9_hns_4616a9_oxfordgrey_front.jpg', 15, 20, 13, 15, 1, 0, 0, 55, 'https://www.champion.com/c-logo-stretch-woven-boxer-1-pair-4616a9.html', '4616A9', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:28:53', '2020-06-13 14:28:53');
INSERT INTO `products` VALUES (134, 'The Spot Comfort® Sports Bra', 'the-spot-comfort-sports-bra', 'uploads/product/1592058663_hns_1602_black_front.jpg', 20, 48, 36, 16, 1, 1, 0, 55, 'https://www.champion.com/the-spot-comfort-reg-sports-bra.html', '1602', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:31:03', '2020-06-13 14:31:03');
INSERT INTO `products` VALUES (135, 'The Absolute Workout Sports Bra, Script Logo', 'the-absolute-workout-sports-bra-script-logo', 'uploads/product/1592058765_0fc9e21a131086dc5470b2870e456804e804c423a5e5ee5d6c82b890d8923b4d.jpeg', 8, 25, 20, 17, 1, 0, 0, 55, 'https://www.champion.com/the-absolute-workout-sports-bra-script-logo-b1251s-y07038.html', 'B1251S  Y07038', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:32:45', '2020-06-13 14:32:45');
INSERT INTO `products` VALUES (136, 'Everyday Leggings', 'everyday-leggings', 'uploads/product/1592059094_hns_wm143550985_hns_wm143550985_black_front.jpg', 45, 40, 35, 18, 1, 1, 0, 2, 'https://www.champion.com/everyday-leggings.html', 'WM143   550985', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:38:14', '2020-06-13 14:38:14');
INSERT INTO `products` VALUES (137, 'Fringe Lo Canvas Sneakers, Black', 'fringe-lo-canvas-sneakers-black', 'uploads/product/1592059480_hns_cp552m_hns_cp552m_black_detail01.jpg', 44, 55, 50, 19, 1, 0, 0, 56, 'https://www.champion.com/champion-mens-fringe-lo-canvas-black.html', 'CP552M', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:42:32', '2020-06-13 14:44:40');
INSERT INTO `products` VALUES (138, 'Ultraboost shoes 20', 'ultraboost-shoes-20', 'uploads/product/1592059471_Ultraboost_20_Shoes_Black_EE4393_01_standard.jpg', 25, 180, 180, 20, 1, 1, 0, 56, 'https://www.adidas.com/us/ultraboost-20-shoes/EE4393.html', 'EE4393', NULL, NULL, 17, 12, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:44:31', '2020-06-13 14:48:14');
INSERT INTO `products` VALUES (141, 'Adilette Lite Slides', 'adilette-lite-slides', 'uploads/product/1592060145_Adilette_Lite_Slides_Red_FU8296_01_standard.jpg', 120, 30, 30, 23, 1, 0, 0, 56, NULL, NULL, NULL, NULL, 17, 13, NULL, NULL, NULL, NULL, 0, '2020-06-13 14:55:45', '2020-06-13 14:55:45');
INSERT INTO `products` VALUES (142, 'Nike Airmax 720', 'nike-airmax-720', 'uploads/product/1592060457_air-max-720-shoe-NjKC7m.jpg', 4, 200, 200, 24, 1, 0, 0, 56, NULL, 'AM720', NULL, NULL, 18, 13, NULL, NULL, NULL, NULL, 0, '2020-06-13 15:00:57', '2020-06-13 15:00:57');
INSERT INTO `products` VALUES (143, 'Lightweight Tee, Diagonal Logos', 'lightweight-tee-diagonal-logos', 'uploads/product/1592192304_1.jpg', 6, 35, 30, 25, 1, 0, 0, 1, 'https://www.champion.com/t0435-y08305.html', 'Y08305', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:38:24', '2020-06-15 03:38:24');
INSERT INTO `products` VALUES (144, 'Lightweight Tee, Vintage Script Logo', 'lightweight-tee-vintage-script-logo', 'uploads/product/1592192460_2.jpg', 6, 35, 30, 26, 1, 0, 0, 1, 'https://www.champion.com/t0435-y08303.html', 'Y08303', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:41:00', '2020-06-15 03:41:00');
INSERT INTO `products` VALUES (145, 'Heritage Tee, Wraparound Logo', 'heritage-tee-wraparound-logo', 'uploads/product/1592192615_3.jpg', 6, 30, 25, 27, 1, 0, 0, 1, 'https://www.champion.com/heritage-tee-wraparound-logo-t1919g-550773.html', 'T1919G  550773', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:43:35', '2020-06-15 03:43:35');
INSERT INTO `products` VALUES (146, 'Exclusive Heritage Tee, Drip Logo', 'exclusive-heritage-tee-drip-logo', 'uploads/product/1592192721_4.jpg', 8, 35, 30, 27, 1, 0, 0, 1, 'https://www.champion.com/champion-mens-heritage-s-s-tee-champion-drip-script.html', 'GT19    551598', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:45:21', '2020-06-15 03:45:21');
INSERT INTO `products` VALUES (147, 'Exclusive Jersey Tee, Negative Space C Logo', 'exclusive-jersey-tee-negative-space-c-logo', 'uploads/product/1592192818_5.jpg', 6, 20, 17, 28, 1, 0, 0, 1, 'https://www.champion.com/gt23h-551772.html', 'GT23H   551772', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:46:58', '2020-06-15 03:46:58');
INSERT INTO `products` VALUES (148, 'Exclusive Jersey Tee, Gradient Logo', 'exclusive-jersey-tee-gradient-logo', 'uploads/product/1592192945_6.jpg', 6, 20, 16, 29, 1, 0, 0, 1, 'https://www.champion.com/gt23h-551777.html', 'GT23H   551777', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:49:05', '2020-06-15 03:49:05');
INSERT INTO `products` VALUES (149, 'Exclusive Jersey Tee, Patchwork C Logo', 'exclusive-jersey-tee-patchwork-c-logo', 'uploads/product/1592193064_7.jpg', 6, 20, 17, 30, 1, 0, 0, 1, 'https://www.champion.com/gt23h-551778.html', 'GT23H   551778', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:51:04', '2020-06-15 03:51:04');
INSERT INTO `products` VALUES (150, 'Exclusive Jersey Tee, It Takes A Little More To Make A Champion', 'exclusive-jersey-tee-it-takes-a-little-more-to-make-a-champion', 'uploads/product/1592193161_8.jpg', 6, 20, 18, 31, 1, 0, 0, 1, 'https://www.champion.com/gt23h-551762.html', 'T23H   551762', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:52:41', '2020-06-15 03:52:41');
INSERT INTO `products` VALUES (151, 'Classic Long-Sleeve Tee, Script Logo', 'classic-long-sleeve-tee-script-logo', 'uploads/product/1592193278_9.jpg', 27, 35, 32, 32, 1, 0, 0, 1, NULL, 'GT78H   Y07718', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:54:38', '2020-06-15 03:54:38');
INSERT INTO `products` VALUES (152, 'Jersey 2-Fer Tee', 'jersey-2-fer-tee', 'uploads/product/1592193386_10.jpg', 26, 35, 27, 33, 1, 0, 0, 1, 'https://www.champion.com/jersey-2-fer-tee.html', 'T6302   550752', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:56:26', '2020-06-15 03:56:26');
INSERT INTO `products` VALUES (153, 'Heritage Long-Sleeve Tee, Cloud Dye', 'heritage-long-sleeve-tee-cloud-dye', 'uploads/product/1592193501_11.jpg', 22, 0, 0, 34, 1, 0, 0, 1, 'https://www.champion.com/t6523-549724.html', 'T6523   549724', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 03:58:21', '2020-06-15 03:58:21');
INSERT INTO `products` VALUES (154, 'Long-Sleeve Tee, Script Logo', 'long-sleeve-tee-script-logo', 'uploads/product/1592193634_12.jpg', 23, 40, 27, 35, 1, 0, 0, 1, 'https://www.champion.com/long-sleeve-tee-script-logo.html', 'T3822   549465', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:00:34', '2020-06-15 04:00:34');
INSERT INTO `products` VALUES (155, 'Heritage Long-Sleeve Tee, Flock Script Logo', 'heritage-long-sleeve-tee-flock-script-logo', 'uploads/product/1592193732_13.jpg', 23, 48, 40, 36, 1, 0, 0, 1, 'https://www.champion.com/heritage-long-sleeve-tee-flock-script-logo.html', 'GT47    Y07954', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:02:12', '2020-06-15 04:02:12');
INSERT INTO `products` VALUES (156, 'Expedition Baselayer Crew', 'expedition-baselayer-crew', 'uploads/product/1592193846_14.jpg', 29, 44, 37, 37, 1, 0, 0, 1, 'https://www.champion.com/expedition-baselayer-crew-1.html', 'KEW1', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:04:06', '2020-06-15 04:04:06');
INSERT INTO `products` VALUES (157, 'Heritage Tee, Flock 90s Logo', 'heritage-tee-flock-90s-logo', 'uploads/product/1592194004_15.jpg', 29, 25, 19, 38, 1, 0, 0, 1, 'https://www.champion.com/powerblend-sweats-pullover-crew.html', 'GT19    Y07954', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:06:44', '2020-06-15 04:06:44');
INSERT INTO `products` VALUES (158, 'Sportstyle Colorblock Muscle Tee', 'sportstyle-colorblock-muscle-tee', 'uploads/product/1592194152_16.jpeg', 32, 20, 17, 39, 1, 0, 0, 1, 'https://www.champion.com/sportstyle-colorblock-muscle-tee.html', 'T5710   550751', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:09:12', '2020-06-15 04:09:12');
INSERT INTO `products` VALUES (159, 'Classic Jersey Tank, Script Logo', 'classic-jersey-tank-script-logo', 'uploads/product/1592194282_17.jpg', 31, 24, 19, 40, 1, 0, 0, 1, 'https://www.champion.com/classic-jersey-tank-script-logo-gt24h-y07718.html', 'GT24H   Y07718', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:11:22', '2020-06-15 04:11:36');
INSERT INTO `products` VALUES (160, 'Powerblend® Colorblock Crew, Outline Logo', 'powerblend-colorblock-crew-outline-logo', 'uploads/product/1592194433_18.jpg', 25, 55, 40, 41, 1, 0, 0, 1, 'https://www.champion.com/powerblend-colorblock-crew-outline-logo.html', 'S4538   Y07976', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:13:53', '2020-06-15 04:13:53');
INSERT INTO `products` VALUES (161, 'Reverse Weave Pull Over Hood-City', 'reverse-weave-pull-over-hood-city', 'uploads/product/1592194531_19.jpg', 29, 45, 40, 42, 1, 0, 0, 1, 'https://www.champion.com/reverse-weave-pull-over-hood-city.html', 'GF68    Y08117', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:15:31', '2020-06-15 04:15:31');
INSERT INTO `products` VALUES (162, 'Reverse Weave Hoodie, All Over Logo', 'reverse-weave-hoodie-all-over-logo', 'uploads/product/1592194673_20.jpg', 28, 40, 37, 43, 1, 0, 0, 1, 'https://www.champion.com/reverse-weave-hoodie-all-over-logo.html', 'S2974', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 04:17:53', '2020-06-15 04:17:53');
INSERT INTO `products` VALUES (163, 'Reverse Weave Sweatpants', 'reverse-weave-sweatpants', 'uploads/product/1592203226_21.jpg', 131, 50, 40, 44, 1, 0, 0, 2, 'https://www.champion.com/reverse-weave-sweatpants.html', 'GF71    Y06146', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:40:26', '2020-06-15 06:40:26');
INSERT INTO `products` VALUES (164, 'Closed Bottom Jersey Pants', 'closed-bottom-jersey-pants', 'uploads/product/1592203291_22.jpg', 120, 40, 30, 45, 1, 0, 0, 2, 'https://www.champion.com/closed-bottom-jersey-pants.html', 'P7310   407Q88', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:41:31', '2020-06-15 06:41:31');
INSERT INTO `products` VALUES (165, 'Open Bottom Jersey Pants', 'open-bottom-jersey-pants', 'uploads/product/1592203373_23.jpg', 190, 25, 23, 46, 1, 0, 0, 2, 'https://www.champion.com/open-bottom-jersey-pants.html', 'P7309   407Q88', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:42:53', '2020-06-15 06:42:53');
INSERT INTO `products` VALUES (166, 'Powerblend Relaxed Elastic Bottom Pants', 'powerblend-relaxed-elastic-bottom-pants', 'uploads/product/1592203468_24.jpg', 210, 45, 40, 47, 1, 0, 0, 2, NULL, 'P0894   549314', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:44:28', '2020-06-15 06:44:28');
INSERT INTO `products` VALUES (167, 'Track Pants, Logo Side Taping', 'track-pants-logo-side-taping', 'uploads/product/1592203603_25.jpg', 150, 50, 43, 48, 1, 0, 0, 2, NULL, 'P3392   549314', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:46:43', '2020-06-15 06:46:43');
INSERT INTO `products` VALUES (168, 'Track Pants, Jock Tag Logo Taping', 'track-pants-jock-tag-logo-taping', 'uploads/product/1592203693_26.jpg', 180, 45, 41, 49, 1, 1, 0, 2, NULL, 'P3378   550917', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:48:13', '2020-06-15 06:48:13');
INSERT INTO `products` VALUES (169, 'Compression 3/4 Tights', 'compression-34-tights', 'uploads/product/1592203816_27.jpg', 240, 39, 30, 50, 1, 0, 0, 2, NULL, 'P0C292  407Z98', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:50:16', '2020-06-15 06:50:16');
INSERT INTO `products` VALUES (170, 'Reverse Weave Cut-Off Shorts', 'reverse-weave-cut-off-shorts', 'uploads/product/1592203924_28.jpg', 120, 37, 30, 51, 1, 0, 0, 2, NULL, '89597', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:52:04', '2020-06-15 06:52:04');
INSERT INTO `products` VALUES (171, 'Jersey Shorts, Cloud Dye', 'jersey-shorts-cloud-dye', 'uploads/product/1592204041_29.jpg', 180, 45, 41, 52, 1, 1, 0, 2, NULL, '85873', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:54:01', '2020-06-15 06:54:01');
INSERT INTO `products` VALUES (172, 'Crinkle Nylon Shorts', 'crinkle-nylon-shorts', 'uploads/product/1592204140_30.jpg', 180, 39, 35, 53, 1, 0, 0, 2, NULL, '81223G  551278', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:55:40', '2020-06-15 06:55:40');
INSERT INTO `products` VALUES (173, 'Originals Thermal Crew', 'originals-thermal-crew', 'uploads/product/1592204255_31.jpg', 180, 50, 45, 54, 1, 0, 0, 55, NULL, 'KMW1', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:57:35', '2020-06-15 06:57:35');
INSERT INTO `products` VALUES (174, 'Expedition Baselayer Crew', 'expedition-baselayer-crew', 'uploads/product/1592204324_32.jpg', 110, 35, 30, 55, 1, 0, 0, 55, NULL, 'KEW1', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 06:58:44', '2020-06-15 06:58:44');
INSERT INTO `products` VALUES (175, 'Brushed Back Baselayer Crew', 'brushed-back-baselayer-crew', 'uploads/product/1592204414_33.jpg', 120, 55, 48, 56, 1, 0, 0, 55, NULL, 'KCB1', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:00:14', '2020-06-15 07:00:14');
INSERT INTO `products` VALUES (176, 'Originals Thermal Crew', 'originals-thermal-crew', 'uploads/product/1592204509_34.jpg', 170, 34, 25, 57, 1, 1, 0, 55, 'https://www.champion.com/originals-thermal-crew-1.html', 'KMO1', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:01:49', '2020-06-15 07:01:49');
INSERT INTO `products` VALUES (177, 'Expedition Baselayer Pants', 'expedition-baselayer-pants', 'uploads/product/1592204577_35.jpg', 240, 35, 33, 57, 1, 1, 0, 55, 'https://www.champion.com/expedition-baselayer-pants-1.html', 'KEW2', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:02:57', '2020-06-15 07:02:57');
INSERT INTO `products` VALUES (178, 'Sleep Tee, C Logo', 'sleep-tee-c-logo', 'uploads/product/1592204708_36.jpg', 240, 46, 42, 58, 1, 1, 0, 55, 'https://www.champion.com/men/basics/sleepwear.html', 'CSSSNY', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:05:08', '2020-06-15 07:05:08');
INSERT INTO `products` VALUES (179, 'Sleep Tee, C Logo', 'sleep-tee-c-logo', 'uploads/product/1592204838_37.jpg', 160, 40, 38, 59, 1, 1, 0, 55, 'https://www.champion.com/csssyu.html', 'CSSSYU', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:07:18', '2020-06-15 07:07:18');
INSERT INTO `products` VALUES (180, 'Sleep Tank, C Logo', 'sleep-tank-c-logo', 'uploads/product/1592204931_38.jpg', 120, 22, 20, 60, 1, 1, 0, 55, 'https://www.champion.com/cstt7y.html', 'CSTT7Y', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:08:51', '2020-06-15 07:08:51');
INSERT INTO `products` VALUES (181, 'C Logo Knit Boxer, 1-Pair', 'c-logo-knit-boxer-1-pair', 'uploads/product/1592205038_39.jpg', 180, 15, 11, 61, 1, 0, 0, 55, 'https://www.champion.com/champion-life-mens-c-logo-knit-boxer-1-pair-1.html', '4613A8', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:10:38', '2020-06-15 07:10:38');
INSERT INTO `products` VALUES (182, 'Printed Logo Boxer Brief, 1-Pair', 'printed-logo-boxer-brief-1-pair', 'uploads/product/1592205122_40.jpg', 120, 20, 15, 62, 1, 1, 0, 55, 'https://www.champion.com/printed-logo-boxer-brief-1-pair-4606p7.html', '4606P7', NULL, NULL, 16, 0, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:12:02', '2020-06-15 07:12:02');
INSERT INTO `products` VALUES (183, 'Gem Slip-On Canvas Sneakers, Black', 'gem-slip-on-canvas-sneakers-black', 'uploads/product/1592205293_41.jpg', 180, 50, 39, 63, 1, 0, 0, 56, 'http://essentialshop.co/admin/product/', 'CP609W', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:14:53', '2020-06-15 07:14:53');
INSERT INTO `products` VALUES (184, 'Gem Lo Classic Sneakers, Ice Cake', 'gem-lo-classic-sneakers-ice-cake', 'uploads/product/1592205396_42.jpg', 120, 55, 50, 64, 1, 0, 0, 56, 'https://www.champion.com/champion-womens-gem-lo-classic-ice-cake.html', 'CP607W', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:16:36', '2020-06-15 07:16:36');
INSERT INTO `products` VALUES (185, 'Champion Women\'s Gem Lo Classic-Black', 'champion-womens-gem-lo-classic-black', 'uploads/product/1592205497_43.jpg', 180, 55, 0, 65, 1, 1, 0, 56, 'https://www.champion.com/champion-womens-gem-lo-classic-black.html', 'CP604W', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:18:17', '2020-06-15 07:20:11');
INSERT INTO `products` VALUES (186, 'Gem Hi Classic Sneakers, Ice Cake', 'gem-hi-classic-sneakers-ice-cake', 'uploads/product/1592205601_44.jpg', 120, 60, 50, 66, 1, 0, 0, 56, 'https://www.champion.com/champion-womens-gem-hi-classic-ice-cake.html', 'CP602W', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:20:01', '2020-06-15 07:20:01');
INSERT INTO `products` VALUES (187, 'RF Pro Runner Sneakers, Ice Cake', 'rf-pro-runner-sneakers-ice-cake', 'uploads/product/1592205735_45.jpg', 120, 90, 85, 67, 1, 0, 0, 56, 'https://www.champion.com/champion-womens-rf-pro-runner-ice-cake.html', 'CP398W', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:22:15', '2020-06-15 07:22:15');
INSERT INTO `products` VALUES (188, 'Ankle Socks C Logo, 6-pack', 'ankle-socks-c-logo-6-pack', 'uploads/product/1592205831_46.jpg', 270, 19, 15, 68, 1, 0, 0, 56, 'https://www.champion.com/champion-womens-logo-ankle-6-pk.html', 'CH682', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:23:51', '2020-06-15 07:23:51');
INSERT INTO `products` VALUES (189, 'Crew Script Logo, 3-pairs', 'crew-script-logo-3-pairs', 'uploads/product/1592205900_47.jpg', 120, 19, 14, 68, 1, 1, 0, 56, 'https://www.champion.com/champion-womens-crew-hollow-script-logo-3-pk.html', 'CH504', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:25:00', '2020-06-15 07:25:00');
INSERT INTO `products` VALUES (190, 'IPO Slides, Scarlet', 'ipo-slides-scarlet', 'uploads/product/1592205963_48.jpg', 180, 19, 15, 69, 1, 0, 0, 56, 'https://www.champion.com/ipo-slides-scarlet-1.html', '10314W', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:26:03', '2020-06-15 07:26:03');
INSERT INTO `products` VALUES (191, 'Performance Crew Socks, C Logo, 2-pairs', 'performance-crew-socks-c-logo-2-pairs', 'uploads/product/1592206032_49.jpg', 120, 22, 18, 70, 1, 1, 0, 56, 'https://www.champion.com/champion-mens-performance-crew-socks-c-logo-2-pack-ch167.html', 'CH167', NULL, NULL, 16, 12, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:27:12', '2020-06-15 07:27:12');
INSERT INTO `products` VALUES (192, 'Rally Future Sneakers, White/Red Flame', 'rally-future-sneakers-whitered-flame', 'uploads/product/1592206170_50.jpg', 300, 90, 85, 70, 1, 1, 0, 56, 'https://www.champion.com/champion-kids-rally-future-white-red-flame.html', 'CP426Y', NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, 0, '2020-06-15 07:29:30', '2020-06-15 07:29:30');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hotline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'Công Ty TNHH Dũng Cường .co,ltd', 'Đông Anh , Hà Nội', 'Yên Hòa , Hà Nội', 'uploads/setting/1590462650_logo.png', '0986346008', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'hometownplus.84@gmail.com', NULL, NULL, '2020-06-12 03:26:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', '$2y$10$a1nWTaKqKgM3pdiB9uiEq.evz31RTunl5OW0fENiYDNyZ/8OnhAdO', '8hNxXmR4ousiW4JOHGZsgOpPCkIYKcrQpSgzr5Uw5CfMxySvPlLSGGEqcwnn', '2020-05-19 19:32:27', '2020-05-19 19:32:27', 1, NULL, 1);
INSERT INTO `users` VALUES (6, 'Dung Nguyen', 'devergo@gmail.com', '$2y$10$wpcP/UAbOgRyZU9y7.Ek9ufiOqSSLgOIcu./ze8jlAeFLZmvw9RFm', 'Y9eqjNLG9Qcw7UbK5AykKStR79bngg7kykcq5fgQBSZnwcB41mTCKnQh3fK7', '2020-06-09 08:20:17', '2020-06-09 08:20:17', 1, 'uploads/user/1591690817_châu bùi.jpg', 1);
INSERT INTO `users` VALUES (7, 'N M Dung', 'dungnht2209@gmail.com', '$2y$10$9h60.sCZylBn9FkNwsOfxuMACtaqBLH17xFz/UE3YkoNAC38vBz1K', NULL, '2020-06-19 16:02:06', '2020-06-19 16:02:06', 2, NULL, 1);

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendors_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendors
-- ----------------------------
INSERT INTO `vendors` VALUES (12, 'Hometown84', 'hometown84', 'hometown84@gmail.com', '0123456789', 'uploads/category/1591709705_SophieCheneviere_belierskate_021.jpg', NULL, 'Vietnam', 1, 1, '2020-06-09 08:32:12', '2020-06-09 13:36:33');
INSERT INTO `vendors` VALUES (13, 'Le Cuong', 'le-cuong', 'matloc@gmail.com', '0911130699', 'uploads/category/1591709694_25188639_563076087366154_2843739599511320125_o.jpg', 'https://www.facebook.com/profile.php?id=100009913037525', 'Hung Yen', 2, 1, '2020-06-09 13:34:54', '2020-06-09 13:34:54');

SET FOREIGN_KEY_CHECKS = 1;
