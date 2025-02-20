-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 08:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(1, 1, 'dashboard', 'User in dashboard page', '2025-02-18 20:21:13'),
(2, 1, 'user', 'User in user page', '2025-02-18 20:35:26'),
(3, 1, 'user', 'User in user page', '2025-02-18 20:35:26'),
(4, 1, 'user', 'User accessed the restore page', '2025-02-18 20:35:43'),
(5, 1, 'user', 'User accessed the restore page', '2025-02-18 20:36:04'),
(6, 1, 'laporan', 'User in laporan', '2025-02-18 20:39:24'),
(7, 1, 'user', 'User in user page', '2025-02-18 20:39:27'),
(8, 1, 'user', 'User in user page', '2025-02-18 20:41:18'),
(9, 1, 'user', 'User added a new account', '2025-02-18 20:41:31'),
(10, 1, 'user', 'User in user page', '2025-02-18 20:41:31'),
(11, 1, 'user', 'User added a new account', '2025-02-18 20:41:31'),
(12, 1, 'user', 'User in user page', '2025-02-18 20:41:32'),
(13, 1, 'user', 'User deleted a user data.', '2025-02-18 20:41:36'),
(14, 1, 'user', 'User in user page', '2025-02-18 20:41:36'),
(15, 1, 'user', 'User deleted a user data.', '2025-02-18 20:41:37'),
(16, 1, 'user', 'User in user page', '2025-02-18 20:41:37'),
(17, 1, 'user', 'User accessed the restore page', '2025-02-18 20:41:39'),
(18, 1, 'user', 'User in user page', '2025-02-18 20:41:44'),
(19, 1, 'user', 'User added a new account', '2025-02-18 20:41:52'),
(20, 1, 'user', 'User in user page', '2025-02-18 20:41:52'),
(21, 1, 'user', 'User reset a password', '2025-02-18 20:41:55'),
(22, 1, 'user', 'User in user page', '2025-02-18 20:41:55'),
(23, 1, 'user', 'User updated a user data', '2025-02-18 20:42:50'),
(24, 1, 'user', 'User in user page', '2025-02-18 20:42:50'),
(25, 1, 'user', 'User updated a user data', '2025-02-18 20:42:50'),
(26, 1, 'user', 'User in user page', '2025-02-18 20:42:50'),
(27, 1, 'logout', 'User logged out.', '2025-02-18 20:42:53'),
(28, 4, 'dashboard', 'User in dashboard page', '2025-02-18 20:42:57'),
(29, 4, 'logout', 'User logged out.', '2025-02-18 20:43:07'),
(30, 1, 'dashboard', 'User in dashboard page', '2025-02-18 20:45:09'),
(31, 1, 'user', 'User accessed the restore page', '2025-02-18 20:45:15'),
(32, 1, 'user', 'User accessed the history page', '2025-02-18 20:45:40'),
(33, 1, 'user', 'User accessed the restore page', '2025-02-18 20:45:59'),
(34, 1, 'user', 'User accessed the restore page', '2025-02-18 20:46:14'),
(35, 1, 'dashboard', 'User in dashboard page', '2025-02-18 20:47:28'),
(36, 1, 'setting', 'User in setting page', '2025-02-18 20:48:20'),
(37, 1, 'setting', 'User in setting page', '2025-02-18 20:48:38'),
(38, 1, 'setting', 'User in setting page', '2025-02-18 20:48:45'),
(39, 1, 'setting', 'User in setting page', '2025-02-18 20:48:45'),
(40, 1, 'setting', 'User in setting page', '2025-02-18 20:48:46'),
(41, 1, 'setting', 'User in setting page', '2025-02-18 20:48:46'),
(42, 1, 'setting', 'User in setting page', '2025-02-18 20:48:46'),
(43, 1, 'setting', 'User in setting page', '2025-02-18 20:48:51'),
(44, 1, 'setting', 'User in setting page', '2025-02-18 20:48:52'),
(45, 1, 'setting', 'User in setting page', '2025-02-18 20:48:52'),
(46, 1, 'setting', 'User in setting page', '2025-02-18 20:48:52'),
(47, 1, 'setting', 'User in setting page', '2025-02-18 20:48:53'),
(48, 1, 'user', 'User changed the profile company', '2025-02-18 20:49:22'),
(49, 1, 'setting', 'User in setting page', '2025-02-18 20:49:22'),
(50, 1, 'user', 'User changed the profile company', '2025-02-18 20:49:35'),
(51, 1, 'setting', 'User in setting page', '2025-02-18 20:49:36'),
(52, 1, 'user', 'User changed the profile company', '2025-02-18 20:49:36'),
(53, 1, 'setting', 'User in setting page', '2025-02-18 20:49:36'),
(54, 1, 'setting', 'User in setting page', '2025-02-18 20:49:52'),
(55, 1, 'user', 'User changed the profile company', '2025-02-18 20:50:01'),
(56, 1, 'setting', 'User in setting page', '2025-02-18 20:50:01'),
(57, 1, 'user', 'User changed the profile company', '2025-02-18 20:50:01'),
(58, 1, 'setting', 'User in setting page', '2025-02-18 20:50:01'),
(59, 1, 'user', 'User accessed the restore page', '2025-02-18 20:50:52'),
(60, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:02'),
(61, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:08'),
(62, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:39'),
(63, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:52'),
(64, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:53'),
(65, 1, 'user', 'User accessed the restore page', '2025-02-18 20:51:53'),
(66, 1, 'user', 'User accessed the restore page', '2025-02-18 20:52:04'),
(67, 1, 'user', 'User accessed the restore page', '2025-02-18 20:52:04'),
(68, 1, 'user', 'User accessed the restore page', '2025-02-18 20:52:16'),
(69, 1, 'user', 'User accessed the restore page', '2025-02-18 20:52:16'),
(70, 1, 'user', 'User accessed the restore page', '2025-02-18 20:52:17'),
(71, 1, 'laporan', 'User in laporan', '2025-02-18 20:55:25'),
(72, 1, 'laporan', 'User in laporan', '2025-02-18 20:55:36'),
(73, 1, 'logout', 'User logged out.', '2025-02-18 21:01:27'),
(74, 4, 'dashboard', 'User in dashboard page', '2025-02-18 21:01:31'),
(75, 4, 'logout', 'User logged out.', '2025-02-18 21:01:36'),
(76, 1, 'dashboard', 'User in dashboard page', '2025-02-18 21:01:38'),
(77, 1, 'laporan', 'User in laporan', '2025-02-18 21:04:06'),
(78, 1, 'user', 'User accessed the restore page', '2025-02-18 21:04:18'),
(79, 1, 'setting', 'User in setting page', '2025-02-18 21:04:20'),
(80, 1, 'list', 'User deleted a list', '2025-02-18 21:04:30'),
(81, 1, 'user', 'User accessed the restore page', '2025-02-18 21:04:32'),
(82, 1, 'restore', 'User restore a data', '2025-02-18 21:04:35'),
(83, 1, 'user', 'User accessed the restore page', '2025-02-18 21:04:35'),
(84, 1, 'user', 'User accessed the restore page', '2025-02-18 21:05:17'),
(85, 1, 'list', 'User deleted a list', '2025-02-18 21:05:23'),
(86, 1, 'user', 'User accessed the restore page', '2025-02-18 21:05:25'),
(87, 1, 'user', 'User accessed the restore page', '2025-02-18 21:05:40'),
(88, 1, 'user', 'User in user page', '2025-02-18 21:06:13'),
(89, 1, 'laporan', 'User in laporan', '2025-02-18 21:06:20'),
(90, 1, 'user', 'User in user page', '2025-02-18 21:07:23'),
(91, 1, 'user', 'User added a new account', '2025-02-18 21:07:36'),
(92, 1, 'user', 'User in user page', '2025-02-18 21:07:36'),
(93, 1, 'user', 'User accessed the restore page', '2025-02-18 21:11:59'),
(94, 1, 'restore', 'User restore a data', '2025-02-18 21:12:01'),
(95, 1, 'user', 'User accessed the restore page', '2025-02-18 21:12:01'),
(96, 1, 'user', 'User in user page', '2025-02-18 21:21:01'),
(97, 1, 'user', 'User accessed the restore page', '2025-02-18 21:21:09'),
(98, 1, 'setting', 'User in setting page', '2025-02-18 21:21:11'),
(99, 1, 'list', 'User deleted a list', '2025-02-18 21:24:14'),
(100, 1, 'list', 'User deleted a list', '2025-02-18 21:24:16'),
(101, 1, 'setting', 'User in setting page', '2025-02-18 21:26:20'),
(102, 1, 'user', 'User changed the profile company', '2025-02-18 21:26:23'),
(103, 1, 'user', 'User changed the profile company', '2025-02-18 21:26:53'),
(104, 1, 'setting', 'User in setting page', '2025-02-18 21:26:53'),
(105, 1, 'setting', 'User in setting page', '2025-02-18 21:27:34'),
(106, 1, 'user', 'User accessed the restore page', '2025-02-18 21:29:17'),
(107, 1, 'user', 'User accessed the restore page', '2025-02-18 21:30:26'),
(108, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-18 21:30:28'),
(109, 1, 'user', 'User accessed the restore page', '2025-02-18 21:30:37'),
(110, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-18 21:30:39'),
(111, 1, 'user', 'User accessed the restore page', '2025-02-18 21:30:39'),
(112, 1, 'user', 'User accessed the restore page', '2025-02-18 21:37:29'),
(113, 1, 'user', 'User accessed the restore page', '2025-02-18 21:37:59'),
(114, 1, 'user', 'User accessed the restore page', '2025-02-18 21:38:33'),
(115, 1, 'user', 'User accessed the restore page', '2025-02-18 21:38:37'),
(116, 1, 'user', 'User accessed the restore page', '2025-02-18 21:38:39'),
(117, 1, 'list', 'User deleted a list', '2025-02-18 21:39:26'),
(118, 1, 'list', 'User deleted a list', '2025-02-18 21:39:28'),
(119, 1, 'list', 'User deleted a list', '2025-02-18 21:39:30'),
(120, 1, 'user', 'User accessed the restore page', '2025-02-18 21:47:48'),
(121, 1, 'user', 'User accessed the restore page', '2025-02-18 21:49:20'),
(122, 1, 'user', 'User accessed the restore page', '2025-02-18 21:49:45'),
(123, 1, 'user', 'User accessed the restore page', '2025-02-18 21:49:58'),
(124, 1, 'user', 'User accessed the restore page', '2025-02-18 21:49:59'),
(125, 1, 'user', 'User accessed the restore page', '2025-02-18 21:50:42'),
(126, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-18 21:50:48'),
(127, 1, 'user', 'User accessed the restore page', '2025-02-18 21:50:48'),
(128, 1, 'user', 'User accessed the restore page', '2025-02-18 21:57:37'),
(129, 1, 'user', 'User accessed the restore page', '2025-02-18 21:57:54'),
(130, 1, 'restore', 'User restore a data', '2025-02-18 21:58:02'),
(131, 1, 'user', 'User accessed the restore page', '2025-02-18 21:58:02'),
(132, 1, 'restore', 'User restore a data', '2025-02-18 21:58:03'),
(133, 1, 'user', 'User accessed the restore page', '2025-02-18 21:58:03'),
(134, 1, 'logout', 'User logged out.', '2025-02-18 22:01:35'),
(135, 4, 'dashboard', 'User in dashboard page', '2025-02-18 22:01:40'),
(136, 4, 'logout', 'User logged out.', '2025-02-18 22:07:33'),
(137, 1, 'dashboard', 'User in dashboard page', '2025-02-18 22:07:35'),
(138, 1, 'user', 'User in user page', '2025-02-18 22:07:38'),
(139, 1, 'user', 'User in user page', '2025-02-18 22:08:31'),
(140, 1, 'user', 'User in user page', '2025-02-18 22:10:42'),
(141, 1, 'user', 'User updated a user data', '2025-02-18 22:10:54'),
(142, 1, 'user', 'User in user page', '2025-02-18 22:10:54'),
(143, 1, 'user', 'User reset a password', '2025-02-18 22:10:56'),
(144, 1, 'user', 'User in user page', '2025-02-18 22:10:56'),
(145, 1, 'logout', 'User logged out.', '2025-02-18 22:10:58'),
(146, 5, 'dashboard', 'User in dashboard page', '2025-02-18 22:11:06'),
(147, 5, 'logout', 'User logged out.', '2025-02-18 22:11:18'),
(148, 1, 'dashboard', 'User in dashboard page', '2025-02-18 22:11:21'),
(149, 1, 'setting', 'User in setting page', '2025-02-18 22:13:01'),
(150, 1, 'logout', 'User logged out.', '2025-02-18 22:17:17'),
(151, 1, 'dashboard', 'User in dashboard page', '2025-02-18 22:17:33'),
(152, 1, 'user', 'User in user page', '2025-02-18 22:28:16'),
(153, 1, 'user', 'User in user page', '2025-02-18 22:44:42'),
(154, 1, 'user', 'User in user page', '2025-02-18 22:51:26'),
(155, 1, 'user', 'User updated a user data', '2025-02-18 22:51:36'),
(156, 1, 'user', 'User in user page', '2025-02-18 22:51:36'),
(157, 1, 'user', 'User accessed the restore page', '2025-02-18 22:51:47'),
(158, 1, 'list', 'User deleted a list', '2025-02-18 22:51:55'),
(159, 1, 'user', 'User accessed the restore page', '2025-02-18 22:51:57'),
(160, 1, 'user', 'User accessed the restore page', '2025-02-18 22:52:57'),
(161, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-18 22:53:00'),
(162, 1, 'user', 'User accessed the restore page', '2025-02-18 22:53:00'),
(163, 1, 'list', 'User deleted a list', '2025-02-18 22:53:19'),
(164, 1, 'user', 'User accessed the restore page', '2025-02-18 22:53:27'),
(165, 1, 'user', 'User in user page', '2025-02-18 22:53:43'),
(166, 1, 'user', 'User in user page', '2025-02-19 00:30:08'),
(167, 1, 'list', 'User deleted a list', '2025-02-19 00:35:13'),
(168, 1, 'list', 'User deleted a list', '2025-02-19 00:35:16'),
(169, 1, 'list', 'User deleted a list', '2025-02-19 00:35:19'),
(170, 1, 'user', 'User accessed the restore page', '2025-02-19 00:35:22'),
(171, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-19 00:35:25'),
(172, 1, 'user', 'User accessed the restore page', '2025-02-19 00:35:25'),
(173, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-19 00:35:27'),
(174, 1, 'user', 'User accessed the restore page', '2025-02-19 00:35:27'),
(175, 1, 'list', 'User menghapus data to do data secara permanen.', '2025-02-19 00:35:44'),
(176, 1, 'user', 'User accessed the restore page', '2025-02-19 00:35:44'),
(177, 1, 'user', 'User in user page', '2025-02-19 00:35:51'),
(178, 1, 'setting', 'User in setting page', '2025-02-19 00:36:00'),
(179, 1, 'user', 'User in user page', '2025-02-19 00:37:36'),
(180, 1, 'logout', 'User logged out.', '2025-02-19 00:41:00'),
(181, 4, 'dashboard', 'User in dashboard page', '2025-02-19 00:41:03'),
(182, 4, 'logout', 'User logged out.', '2025-02-19 00:41:10'),
(183, 4, 'dashboard', 'User in dashboard page', '2025-02-19 00:41:14'),
(184, 4, 'user', 'User accessed the restore page', '2025-02-19 00:41:16'),
(185, 4, 'logout', 'User logged out.', '2025-02-19 00:41:20'),
(186, 1, 'dashboard', 'User in dashboard page', '2025-02-19 00:41:22'),
(187, 1, 'setting', 'User in setting page', '2025-02-19 00:41:24'),
(188, 1, 'user', 'User changed the profile company', '2025-02-19 00:41:51'),
(189, 1, 'setting', 'User in setting page', '2025-02-19 00:41:51'),
(190, 1, 'user', 'User accessed the restore page', '2025-02-19 00:42:35'),
(191, 1, 'dashboard', 'User in dashboard page', '2025-02-19 00:46:37'),
(192, 1, 'user', 'User in user page', '2025-02-19 00:50:26'),
(193, 1, 'user', 'User in user page', '2025-02-19 01:03:02'),
(194, 1, 'user', 'User accessed the restore page', '2025-02-19 01:03:12'),
(195, 1, 'user', 'User accessed the restore page', '2025-02-19 01:08:09'),
(196, 1, 'user', 'User in user page', '2025-02-19 01:08:13'),
(197, 1, 'user', 'User accessed the restore page', '2025-02-19 01:32:02'),
(198, 1, 'setting', 'User in setting page', '2025-02-19 01:32:04'),
(199, 1, 'logout', 'User logged out.', '2025-02-19 01:32:21'),
(200, 1, 'dashboard', 'User in dashboard page', '2025-02-19 01:32:52'),
(201, 1, 'user', 'User in user page', '2025-02-19 01:32:55'),
(202, 1, 'logout', 'User logged out.', '2025-02-19 01:34:56'),
(203, 1, 'dashboard', 'User in dashboard page', '2025-02-19 01:34:59'),
(204, 1, 'dashboard', 'User in dashboard page', '2025-02-19 01:35:04'),
(205, 1, 'user', 'User in user page', '2025-02-19 01:35:13'),
(206, 1, 'user', 'User accessed the restore page', '2025-02-19 01:35:16'),
(207, 1, 'setting', 'User in setting page', '2025-02-19 01:35:18'),
(208, 1, 'user', 'User in user page', '2025-02-19 01:35:28'),
(209, 1, 'user', 'User accessed the restore page', '2025-02-19 01:35:39'),
(210, 1, 'setting', 'User in setting page', '2025-02-19 01:35:42'),
(211, 1, 'user', 'User accessed the restore page', '2025-02-19 01:35:48'),
(212, 1, 'user', 'User accessed the restore page', '2025-02-19 01:37:30'),
(213, 1, 'user', 'User in user page', '2025-02-19 01:37:37'),
(214, 1, 'user', 'User in user page', '2025-02-19 01:37:41'),
(215, 1, 'user', 'User accessed the restore page', '2025-02-19 01:37:46'),
(216, 1, 'setting', 'User in setting page', '2025-02-19 01:37:48'),
(217, 1, 'user', 'User in user page', '2025-02-19 01:39:42'),
(218, 1, 'user', 'User accessed the restore page', '2025-02-19 01:39:50'),
(219, 1, 'setting', 'User in setting page', '2025-02-19 01:39:52'),
(220, 1, 'setting', 'User in setting page', '2025-02-19 01:40:02'),
(221, 1, 'user', 'User accessed the restore page', '2025-02-19 01:40:04'),
(222, 1, 'user', 'User accessed the restore page', '2025-02-19 01:40:15'),
(223, 1, 'setting', 'User in setting page', '2025-02-19 01:40:17'),
(224, 1, 'user', 'User in user page', '2025-02-19 01:40:41'),
(225, 1, 'user', 'User in user page', '2025-02-19 01:40:49'),
(226, 1, 'user', 'User in user page', '2025-02-19 01:40:52'),
(227, 1, 'user', 'User in user page', '2025-02-19 01:41:08'),
(228, 1, 'setting', 'User in setting page', '2025-02-19 01:41:41'),
(229, 1, 'user', 'User in user page', '2025-02-19 01:43:11'),
(230, 1, 'user', 'User in user page', '2025-02-19 01:43:41'),
(231, 1, 'user', 'User accessed the restore page', '2025-02-19 01:43:49'),
(232, 1, 'user', 'User in user page', '2025-02-19 01:45:29'),
(233, 1, 'setting', 'User in setting page', '2025-02-19 01:53:05'),
(234, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:43:15'),
(235, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:47:36'),
(236, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:49:28'),
(237, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:51:31'),
(238, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:51:35'),
(239, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:51:36'),
(240, 1, 'dashboard', 'User in dashboard page', '2025-02-19 19:52:03'),
(241, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:03:22'),
(242, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:04:07'),
(243, 1, 'user', 'User in user page', '2025-02-19 20:04:35'),
(244, 1, 'user', 'User in user page', '2025-02-19 20:04:37'),
(245, 1, 'user', 'User in user page', '2025-02-19 20:04:38'),
(246, 1, 'user', 'User in user page', '2025-02-19 20:04:39'),
(247, 1, 'user', 'User in user page', '2025-02-19 20:04:42'),
(248, 1, 'user', 'User in user page', '2025-02-19 20:04:43'),
(249, 1, 'user', 'User accessed the restore page', '2025-02-19 20:07:05'),
(250, 1, 'user', 'User in user page', '2025-02-19 20:07:10'),
(251, 1, 'user', 'User in user page', '2025-02-19 20:07:10'),
(252, 1, 'user', 'User in user page', '2025-02-19 20:08:06'),
(253, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:11:17'),
(254, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:12:14'),
(255, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:15:13'),
(256, 1, 'user', 'User accessed the restore page', '2025-02-19 20:15:15'),
(257, 1, 'user', 'User accessed the restore page', '2025-02-19 20:16:22'),
(258, 1, 'setting', 'User in setting page', '2025-02-19 20:16:25'),
(259, 1, 'user', 'User changed the profile company', '2025-02-19 20:16:29'),
(260, 1, 'setting', 'User in setting page', '2025-02-19 20:16:31'),
(261, 1, 'user', 'User changed the profile company', '2025-02-19 20:16:37'),
(262, 1, 'setting', 'User in setting page', '2025-02-19 20:16:39'),
(263, 1, 'user', 'User in user page', '2025-02-19 20:16:52'),
(264, 1, 'user', 'User added a new account', '2025-02-19 20:16:59'),
(265, 1, 'user', 'User in user page', '2025-02-19 20:16:59'),
(266, 1, 'user', 'User updated a user data', '2025-02-19 20:17:24'),
(267, 1, 'user', 'User in user page', '2025-02-19 20:17:24'),
(268, 1, 'setting', 'User in setting page', '2025-02-19 20:18:26'),
(269, 1, 'user', 'User changed the profile company', '2025-02-19 20:18:31'),
(270, 1, 'user', 'User changed the profile company', '2025-02-19 20:18:57'),
(271, 1, 'setting', 'User in setting page', '2025-02-19 20:18:58'),
(272, 1, 'logout', 'User logged out.', '2025-02-19 20:20:51'),
(273, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:21:06'),
(274, 1, 'user', 'User in user page', '2025-02-19 20:21:08'),
(275, 1, 'user', 'User deleted a user data.', '2025-02-19 20:21:09'),
(276, 1, 'user', 'User in user page', '2025-02-19 20:21:09'),
(277, 1, 'user', 'User deleted a user data.', '2025-02-19 20:21:11'),
(278, 1, 'user', 'User in user page', '2025-02-19 20:21:11'),
(279, 1, 'user', 'User deleted a user data.', '2025-02-19 20:21:14'),
(280, 1, 'user', 'User in user page', '2025-02-19 20:21:14'),
(281, 1, 'logout', 'User logged out.', '2025-02-19 20:23:43'),
(282, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:23:45'),
(283, 1, 'user', 'User in user page', '2025-02-19 20:24:19'),
(284, 1, 'user', 'User accessed the restore page', '2025-02-19 20:24:20'),
(285, 1, 'setting', 'User in setting page', '2025-02-19 20:24:23'),
(286, 1, 'setting', 'User in setting page', '2025-02-19 20:24:41'),
(287, 1, 'setting', 'User in setting page', '2025-02-19 20:32:52'),
(288, 1, 'user', 'User in user page', '2025-02-19 20:32:55'),
(289, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:35:13'),
(290, 1, 'user', 'User accessed the restore page', '2025-02-19 20:35:34'),
(291, 1, 'setting', 'User in setting page', '2025-02-19 20:35:36'),
(292, 1, 'user', 'User in user page', '2025-02-19 20:35:38'),
(293, 1, 'user', 'User in user page', '2025-02-19 20:35:57'),
(294, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:36:26'),
(295, 1, 'user', 'User in user page', '2025-02-19 20:36:31'),
(296, 1, 'user', 'User accessed the restore page', '2025-02-19 20:36:40'),
(297, 1, 'setting', 'User in setting page', '2025-02-19 20:36:41'),
(298, 1, 'user', 'User in user page', '2025-02-19 20:37:53'),
(299, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:38:00'),
(300, 1, 'user', 'User in user page', '2025-02-19 20:38:10'),
(301, 1, 'user', 'User accessed the restore page', '2025-02-19 20:38:20'),
(302, 1, 'setting', 'User in setting page', '2025-02-19 20:38:22'),
(303, 1, 'setting', 'User in setting page', '2025-02-19 20:38:25'),
(304, 1, 'user', 'User accessed the restore page', '2025-02-19 20:38:26'),
(305, 1, 'setting', 'User in setting page', '2025-02-19 20:38:28'),
(306, 1, 'user', 'User accessed the restore page', '2025-02-19 20:38:29'),
(307, 1, 'user', 'User in user page', '2025-02-19 20:38:32'),
(308, 1, 'user', 'User accessed the restore page', '2025-02-19 20:38:36'),
(309, 1, 'user', 'User accessed the restore page', '2025-02-19 20:38:37'),
(310, 1, 'setting', 'User in setting page', '2025-02-19 20:38:39'),
(311, 1, 'logout', 'User logged out.', '2025-02-19 20:39:25'),
(312, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:39:32'),
(313, 1, 'user', 'User in user page', '2025-02-19 20:39:34'),
(314, 1, 'user', 'User added a new account', '2025-02-19 20:39:45'),
(315, 1, 'user', 'User in user page', '2025-02-19 20:39:45'),
(316, 1, 'logout', 'User logged out.', '2025-02-19 20:40:06'),
(317, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:40:10'),
(318, 1, 'user', 'User in user page', '2025-02-19 20:40:14'),
(319, 1, 'user', 'User updated a user data', '2025-02-19 20:40:44'),
(320, 1, 'user', 'User in user page', '2025-02-19 20:40:44'),
(321, 1, 'logout', 'User logged out.', '2025-02-19 20:42:36'),
(322, 8, 'dashboard', 'User in dashboard page', '2025-02-19 20:43:03'),
(323, 8, 'user', 'User accessed the restore page', '2025-02-19 20:43:14'),
(324, 8, 'user', 'User accessed the restore page', '2025-02-19 20:44:26'),
(325, 8, 'logout', 'User logged out.', '2025-02-19 20:44:28'),
(326, 1, 'dashboard', 'User in dashboard page', '2025-02-19 20:44:29'),
(327, 1, 'setting', 'User in setting page', '2025-02-19 20:44:31'),
(328, 1, 'user', 'User in user page', '2025-02-19 20:44:39'),
(329, 1, 'setting', 'User in setting page', '2025-02-19 20:44:57'),
(330, 1, 'user', 'User accessed the restore page', '2025-02-19 20:45:00'),
(331, 1, 'setting', 'User in setting page', '2025-02-19 20:45:02'),
(332, 1, 'setting', 'User in setting page', '2025-02-19 20:45:05'),
(333, 1, 'setting', 'User in setting page', '2025-02-19 20:46:28'),
(334, 1, 'user', 'User in user page', '2025-02-19 20:47:53'),
(335, 1, 'user', 'User in user page', '2025-02-19 20:48:37'),
(336, 1, 'user', 'User in user page', '2025-02-19 21:03:41'),
(337, 1, 'user', 'User accessed the restore page', '2025-02-19 21:03:43'),
(338, 1, 'setting', 'User in setting page', '2025-02-19 21:03:45'),
(339, 1, 'setting', 'User in setting page', '2025-02-19 21:03:47'),
(340, 1, 'setting', 'User in setting page', '2025-02-19 21:03:49'),
(341, 1, 'setting', 'User in setting page', '2025-02-19 21:03:54'),
(342, 1, 'user', 'User accessed the restore page', '2025-02-19 21:03:56'),
(343, 1, 'setting', 'User in setting page', '2025-02-19 21:03:58'),
(344, 1, 'user', 'User in user page', '2025-02-19 21:04:02'),
(345, 1, 'setting', 'User in setting page', '2025-02-19 21:05:01'),
(346, 1, 'user', 'User accessed the restore page', '2025-02-19 21:05:08'),
(347, 1, 'user', 'User accessed the restore page', '2025-02-19 21:05:17'),
(348, 1, 'user', 'User in user page', '2025-02-19 21:05:27'),
(349, 1, 'setting', 'User in setting page', '2025-02-19 21:05:33'),
(350, 1, 'setting', 'User in setting page', '2025-02-19 21:05:35'),
(351, 1, 'dashboard', 'User in dashboard page', '2025-02-19 21:05:42'),
(352, 1, 'user', 'User accessed the restore page', '2025-02-19 21:05:44'),
(353, 1, 'setting', 'User in setting page', '2025-02-19 21:05:46'),
(354, 1, 'setting', 'User in setting page', '2025-02-19 21:08:12'),
(355, 1, 'user', 'User accessed the restore page', '2025-02-19 21:08:18'),
(356, 1, 'setting', 'User in setting page', '2025-02-19 21:12:06'),
(357, 1, 'setting', 'User in setting page', '2025-02-19 21:12:20'),
(358, 1, 'setting', 'User in setting page', '2025-02-19 21:12:21'),
(359, 1, 'setting', 'User in setting page', '2025-02-19 21:12:22'),
(360, 1, 'setting', 'User in setting page', '2025-02-19 21:12:23'),
(361, 1, 'user', 'User accessed the restore page', '2025-02-19 21:12:35'),
(362, 1, 'setting', 'User in setting page', '2025-02-19 21:12:40'),
(363, 1, 'user', 'User in user page', '2025-02-19 21:12:44'),
(364, 1, 'user', 'User accessed the restore page', '2025-02-19 21:13:33'),
(365, 1, 'setting', 'User in setting page', '2025-02-19 21:13:36'),
(366, 1, 'user', 'User in user page', '2025-02-19 21:13:49'),
(367, 1, 'user', 'User accessed the restore page', '2025-02-19 21:13:51'),
(368, 1, 'setting', 'User in setting page', '2025-02-19 21:13:53'),
(369, 1, 'setting', 'User in setting page', '2025-02-19 21:14:00'),
(370, 1, 'user', 'User in user page', '2025-02-19 21:14:10'),
(371, 1, 'setting', 'User in setting page', '2025-02-19 21:17:10'),
(372, 1, 'user', 'User accessed the restore page', '2025-02-19 21:17:12'),
(373, 1, 'user', 'User accessed the restore page', '2025-02-19 21:29:44'),
(374, 1, 'setting', 'User in setting page', '2025-02-19 21:29:46'),
(375, 1, 'user', 'User in user page', '2025-02-19 21:29:50'),
(376, 1, 'user', 'User in user page', '2025-02-19 21:30:07'),
(377, 1, 'logout', 'User logged out.', '2025-02-19 21:30:09'),
(378, 8, 'dashboard', 'User in dashboard page', '2025-02-19 21:30:15'),
(379, 8, 'user', 'User accessed the restore page', '2025-02-19 21:30:20'),
(380, 8, 'logout', 'User logged out.', '2025-02-19 21:30:22'),
(381, 1, 'dashboard', 'User in dashboard page', '2025-02-19 21:30:23'),
(382, 1, 'user', 'User accessed the restore page', '2025-02-19 21:30:25'),
(383, 1, 'user', 'User in user page', '2025-02-19 21:32:29'),
(384, 1, 'user', 'User accessed the restore page', '2025-02-19 21:36:12'),
(385, 1, 'user', 'User accessed the restore page', '2025-02-19 21:50:22'),
(386, 1, 'setting', 'User in setting page', '2025-02-19 21:50:24'),
(387, 1, 'user', 'User accessed the restore page', '2025-02-19 22:13:48'),
(388, 1, 'setting', 'User in setting page', '2025-02-19 22:17:10'),
(389, 1, 'user', 'User accessed the restore page', '2025-02-19 22:18:43'),
(390, 1, 'user', 'User accessed the restore page', '2025-02-19 22:41:58'),
(391, 1, 'user', 'User in user page', '2025-02-19 22:42:07'),
(392, 1, 'user', 'User added a new account', '2025-02-19 22:42:17'),
(393, 1, 'user', 'User in user page', '2025-02-19 22:42:17'),
(394, 1, 'user', 'User accessed the restore page', '2025-02-20 00:03:08'),
(395, 1, 'user', 'User in user page', '2025-02-20 00:03:46'),
(396, 1, 'user', 'User in user page', '2025-02-20 00:05:37'),
(397, 1, 'logout', 'User logged out.', '2025-02-20 00:06:36'),
(398, 10, 'dashboard', 'User in dashboard page', '2025-02-20 00:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id_list` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('pending','complete') DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id_list`, `id_user`, `title`, `description`, `created_at`, `status`, `deadline`, `deleted_at`) VALUES
(1, 1, 'coding coding coding', 'semangat lek', '2025-02-18 20:57:59', 'complete', '2025-02-19 09:58:00', NULL),
(2, 1, 'kerjakan ukk dengan benar', 'semoga lulus, amin. kalau lulus gw traktir kue', '2025-02-18 21:11:34', 'pending', '2025-02-19 10:12:00', '2025-02-18 22:53:19'),
(7, 1, 'beli sayur', 'beli sayur di resto uncle mutu', '2025-02-18 23:01:29', 'complete', '2025-02-20 12:10:00', NULL),
(11, 1, 'dfdsds', 'dsfdsfsdfs', '2025-02-19 20:46:43', 'pending', '2025-02-21 12:46:00', NULL),
(12, 10, 'bikin coding', 'coding php', '2025-02-20 00:07:12', 'complete', '2025-02-28 16:11:00', NULL),
(13, 10, 'aaaaa', 'aaaaaa', '2025-02-20 00:11:36', 'pending', '2025-02-26 15:13:00', NULL),
(14, 10, 'wrwe awewe', 'cfgkvkiyhiyk', '2025-02-20 00:14:03', 'pending', '2025-02-28 15:15:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `logo`) VALUES
(1, 'to do list', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pw` varchar(255) DEFAULT NULL,
  `level` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `pw`, `level`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '1'),
(7, 'bryan', '74be16979710d4c4e7c6647856088456', '2'),
(8, 'julio', 'c4ca4238a0b923820dcc509a6f75849b', '2'),
(9, 'desta', 'd41d8cd98f00b204e9800998ecf8427e', '2'),
(10, 'jess', 'c4ca4238a0b923820dcc509a6f75849b', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id_list`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
