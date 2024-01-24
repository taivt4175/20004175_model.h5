-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 24, 2024 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `plant_disease`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `disease`
--

CREATE TABLE `disease` (
  `id_disease` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `is_danger` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `disease`
--

INSERT INTO `disease` (`id_disease`, `name`, `is_danger`, `created_at`) VALUES
(1, 1, 1, '2024-01-15 03:27:08'),
(2, 2, 0, '2024-01-24 16:30:06'),
(3, 3, 1, '2024-01-15 03:27:22'),
(4, 4, 1, '2024-01-15 03:27:28'),
(5, 5, 0, '2024-01-24 16:30:06'),
(6, 6, 0, '2024-01-15 03:27:39'),
(7, 7, 0, '2024-01-15 03:27:47'),
(8, 8, 0, '2024-01-15 03:27:53'),
(9, 9, 0, '2024-01-15 03:27:59'),
(10, 10, 0, '2024-01-15 03:28:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `id_disease` int(11) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `is_verify` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id_image`, `id_disease`, `file_name`, `path`, `description`, `is_verify`) VALUES
(1, 1, 'beetle (419).jpg', 'Test images\\beetle (419).jpg', NULL, 1),
(2, 2, 'grasshopper (449).jpg', 'Test images\\grasshopper (449).jpg', NULL, 1),
(3, 3, 'mango_hopper_51.jpg', 'Test images\\mango_hopper_51.jpg', NULL, 1),
(4, 4, 'mango_mealybug_35.jpg', 'Test images\\mango_mealybug_35.jpg', NULL, 1),
(5, 5, 'moth (180).jpg', 'Test images\\moth (180).jpg', NULL, 1),
(6, 6, 'img6.jpg', 'uploads/img6.jpg', NULL, 1),
(7, 7, 'img7.jpg', 'uploads/img7.jpg', NULL, 1),
(8, 8, 'img8.jpg', 'uploads/img8.jpg', NULL, 1),
(9, 9, 'img9.jpg', 'uploads/img9.jpg', NULL, 1),
(10, 10, 'img10.jpg', 'uploads/img10.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `first_name`, `full_name`, `email`, `password`, `permissions`) VALUES
(1, 'A', 'Nguyen Van A', 'nguyenvana@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(2, 'B', 'Nguyen Thi B', 'nguyenthib@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(3, 'C', 'Tran Van C', 'tranvanc@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(4, 'D', 'Tran Thi D', 'tranthid@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(5, 'E', 'Le Van E', 'levane@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(6, 'F', 'Le Thi F', 'lethif@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(7, 'G', 'Ly Van G', 'lyvang@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(8, 'H', 'Ly Thi H', 'lythih@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(9, 'I', 'Dinh Van I', 'dinhvani@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(10, 'J', 'Dinh Thi J', 'dinhthij@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_images`
--

CREATE TABLE `user_images` (
  `id_image` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_images`
--

INSERT INTO `user_images` (`id_image`, `id_user`, `created_at`) VALUES
(1, 1, '2024-01-15 03:38:57'),
(2, 2, '2024-01-15 03:39:05'),
(3, 3, '2024-01-15 03:39:10'),
(4, 4, '2024-01-15 03:39:15'),
(5, 5, '2024-01-15 03:39:21'),
(6, 1, '2024-01-15 03:39:29'),
(7, 2, '2024-01-15 03:39:34'),
(8, 3, '2024-01-15 03:39:40'),
(9, 4, '2024-01-15 03:39:47'),
(10, 5, '2024-01-15 03:39:53');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id_disease`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_disease` (`id_disease`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Chỉ mục cho bảng `user_images`
--
ALTER TABLE `user_images`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `user_images_ibfk_2` (`id_image`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `disease`
--
ALTER TABLE `disease`
  MODIFY `id_disease` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_disease`) REFERENCES `disease` (`id_disease`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_images`
--
ALTER TABLE `user_images`
  ADD CONSTRAINT `user_images_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_images_ibfk_2` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
