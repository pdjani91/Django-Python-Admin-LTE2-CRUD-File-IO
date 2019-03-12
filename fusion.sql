-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 10:29 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fusion`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add desktop', 8, 'add_desktop'),
(30, 'Can change desktop', 8, 'change_desktop'),
(31, 'Can delete desktop', 8, 'delete_desktop'),
(32, 'Can view desktop', 8, 'view_desktop'),
(33, 'Can add laptop', 9, 'add_laptop'),
(34, 'Can change laptop', 9, 'change_laptop'),
(35, 'Can delete laptop', 9, 'delete_laptop'),
(36, 'Can view laptop', 9, 'view_laptop'),
(37, 'Can add mobile', 10, 'add_mobile'),
(38, 'Can change mobile', 10, 'change_mobile'),
(39, 'Can delete mobile', 10, 'delete_mobile'),
(40, 'Can view mobile', 10, 'view_mobile'),
(41, 'Can add file_csv', 11, 'add_file_csv'),
(42, 'Can change file_csv', 11, 'change_file_csv'),
(43, 'Can delete file_csv', 11, 'delete_file_csv'),
(44, 'Can view file_csv', 11, 'view_file_csv'),
(45, 'Can add file_io', 12, 'add_file_io'),
(46, 'Can change file_io', 12, 'change_file_io'),
(47, 'Can delete file_io', 12, 'delete_file_io'),
(48, 'Can view file_io', 12, 'view_file_io');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$3v93sjDq8ObV$9d5790qzVZOuGvOqX5S+j8enmSBcLzmsAFKSYtjzPnI=', '2019-03-06 10:04:04.120042', 1, 'admin', '', '', 'pdjani91@gmail.com', 1, 1, '2019-01-28 10:57:00.000000'),
(4, 'pbkdf2_sha256$120000$8FDON31LqDLH$9oYhxPUgU842NgcO3SkZw959FitL8fdXolqs0N3NAZw=', '2019-02-01 09:17:01.210002', 0, 'demo', '', '', '', 0, 1, '2019-01-28 13:24:41.611930'),
(5, 'pbkdf2_sha256$120000$htgMQqRHAkGS$5S3GqhU1EhnXDApdc6zg27wyzjfNPOsoUVoQ8vccTfo=', '2019-01-29 08:50:17.259007', 0, 'demo1', '', '', '', 0, 1, '2019-01-28 13:31:16.632524');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `desktop`
--

CREATE TABLE `desktop` (
  `id` int(11) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `issues` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desktop`
--

INSERT INTO `desktop` (`id`, `device_type`, `price`, `status`, `issues`) VALUES
(1, 'Lenovo Desktop D1', 50000, 'SOLD', 'No Issues'),
(2, 'Lenovo Desktop i3', 39000, 'AVAILABLE', 'No Issues'),
(3, 'Lenovo Desktop i5', 55000, 'RESTOCKING', 'No Issues'),
(4, 'Lenovo Desktop i7', 65000, 'RESTOCKING', 'No Issues');

-- --------------------------------------------------------

--
-- Table structure for table `django_adminlte_file_io`
--

CREATE TABLE `django_adminlte_file_io` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `csv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_adminlte_file_io`
--

INSERT INTO `django_adminlte_file_io` (`id`, `title`, `csv`) VALUES
(15, 'TESTING FILES', 'media/csv/TEST.csv'),
(16, 'TESTING FILES 2', 'media/csv/Book2.csv'),
(17, 'LOAD HTML FILE FUSION', 'media/csv/LOAD_HTML_FILE_FUSION.txt');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-29 11:42:29.583529', '1', 'admin', 2, '[{"changed": {"fields": ["email"]}}]', 4, 1),
(2, '2019-01-30 06:17:35.862002', '3', 'ankur', 3, '', 4, 1),
(3, '2019-01-30 06:17:35.877602', '7', 'demo3', 3, '', 4, 1),
(4, '2019-01-30 06:17:35.877602', '2', 'parth', 3, '', 4, 1),
(5, '2019-01-30 13:12:34.572760', '1', 'Employee object (1)', 2, '[]', 7, 1),
(6, '2019-01-30 13:13:40.685168', '1', 'Employee object (1)', 2, '[]', 7, 1),
(7, '2019-01-30 13:13:57.655193', '2', 'Employee object (2)', 1, '[{"added": {}}]', 7, 1),
(8, '2019-01-31 07:31:39.217833', '2', 'Ankur Trivedi', 1, '[{"added": {}}]', 7, 1),
(9, '2019-01-31 09:15:05.870755', '6', 'demo2', 3, '', 4, 1),
(10, '2019-02-02 09:44:49.399649', '2', 'Ankur Trivedi', 3, '', 7, 1),
(11, '2019-02-02 09:44:49.430849', '1', 'Parth Jani', 3, '', 7, 1),
(12, '2019-02-05 05:57:25.179841', '1', 'Device_type:Asus M1 Price:12999', 1, '[{"added": {}}]', 10, 1),
(13, '2019-02-05 06:55:52.409168', '1', 'Device_type:Lenovo G570 Price:31950', 1, '[{"added": {}}]', 9, 1),
(14, '2019-02-05 06:58:16.340382', '2', 'Device_type:ASUS ROG Price:189000', 1, '[{"added": {}}]', 9, 1),
(15, '2019-02-05 06:58:47.577437', '1', 'Device_type:Lenovo Desktop Price:45000', 1, '[{"added": {}}]', 8, 1),
(16, '2019-02-11 11:30:54.719881', '12', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(17, '2019-02-11 11:30:54.779881', '13', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(18, '2019-02-11 11:30:54.784882', '14', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(19, '2019-02-11 11:30:54.789882', '15', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(20, '2019-02-11 11:30:54.849882', '16', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(21, '2019-02-11 11:30:54.854882', '17', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(22, '2019-02-11 11:30:54.859882', '18', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(23, '2019-02-11 11:30:54.869882', '19', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(24, '2019-02-12 07:10:18.718354', '52', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(25, '2019-02-12 07:10:18.749554', '53', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(26, '2019-02-12 07:10:18.749554', '54', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(27, '2019-02-12 07:10:18.749554', '55', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(28, '2019-02-12 07:10:18.765154', '56', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(29, '2019-02-12 07:10:18.765154', '57', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(30, '2019-02-12 07:10:18.765154', '58', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(31, '2019-02-12 07:10:18.780754', '59', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(32, '2019-02-12 07:10:18.780754', '60', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(33, '2019-02-12 07:10:18.780754', '61', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(34, '2019-02-12 07:10:18.796354', '62', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(35, '2019-02-12 07:10:18.796354', '63', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(36, '2019-02-12 07:10:18.796354', '64', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(37, '2019-02-12 07:10:18.796354', '65', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(38, '2019-02-12 07:10:18.811954', '66', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(39, '2019-02-12 07:10:18.811954', '67', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(40, '2019-02-12 07:10:18.811954', '68', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(41, '2019-02-12 07:10:18.811954', '69', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(42, '2019-02-12 07:10:18.827554', '70', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(43, '2019-02-12 07:10:18.827554', '71', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(44, '2019-02-12 07:10:18.827554', '72', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(45, '2019-02-12 07:10:18.827554', '73', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(46, '2019-02-12 07:10:18.827554', '74', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(47, '2019-02-12 07:10:18.843154', '75', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(48, '2019-02-12 07:10:18.843154', '76', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(49, '2019-02-12 07:10:18.843154', '77', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(50, '2019-02-12 07:10:18.858754', '78', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(51, '2019-02-12 07:10:18.858754', '79', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(52, '2019-02-12 07:10:18.858754', '80', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(53, '2019-02-12 07:10:18.858754', '81', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(54, '2019-02-12 07:10:18.874354', '82', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(55, '2019-02-12 07:10:18.874354', '83', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(56, '2019-02-12 07:24:54.730542', '116', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(57, '2019-02-12 07:24:54.761742', '117', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(58, '2019-02-12 07:24:54.761742', '118', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(59, '2019-02-12 07:24:54.792942', '119', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(60, '2019-02-12 07:24:54.792942', '120', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(61, '2019-02-12 07:24:54.808542', '121', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(62, '2019-02-12 07:24:54.808542', '122', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(63, '2019-02-12 07:24:54.824142', '123', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(64, '2019-02-12 07:24:54.824142', '124', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(65, '2019-02-12 07:24:54.824142', '125', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(66, '2019-02-12 07:24:54.824142', '126', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(67, '2019-02-12 07:24:54.824142', '127', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(68, '2019-02-12 07:24:54.839742', '128', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(69, '2019-02-12 07:24:54.839742', '129', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(70, '2019-02-12 07:24:54.839742', '130', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(71, '2019-02-12 07:24:54.839742', '131', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(72, '2019-02-12 07:24:54.839742', '132', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(73, '2019-02-12 07:24:54.855342', '133', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(74, '2019-02-12 07:24:54.855342', '134', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(75, '2019-02-12 07:24:54.855342', '135', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(76, '2019-02-12 07:24:54.870942', '136', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(77, '2019-02-12 07:24:54.870942', '137', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(78, '2019-02-12 07:24:54.870942', '138', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(79, '2019-02-12 07:24:54.870942', '139', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(80, '2019-02-12 07:24:54.870942', '140', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(81, '2019-02-12 07:24:54.870942', '141', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 1, 'new through import_export', 10, 1),
(82, '2019-02-12 07:24:54.886542', '142', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 1, 'new through import_export', 10, 1),
(83, '2019-02-12 07:24:54.886542', '143', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 1, 'new through import_export', 10, 1),
(84, '2019-02-12 07:24:54.886542', '144', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 1, 'new through import_export', 10, 1),
(85, '2019-02-12 07:24:54.886542', '145', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 1, 'new through import_export', 10, 1),
(86, '2019-02-12 07:24:54.902142', '146', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 1, 'new through import_export', 10, 1),
(87, '2019-02-12 07:24:54.902142', '147', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 1, 'new through import_export', 10, 1),
(88, '2019-02-12 07:31:00.133984', '63', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 3, '', 10, 1),
(89, '2019-02-12 07:31:00.180784', '62', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 3, '', 10, 1),
(90, '2019-02-12 07:31:00.196384', '61', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 3, '', 10, 1),
(91, '2019-02-12 07:31:00.211984', '60', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 3, '', 10, 1),
(92, '2019-02-12 07:31:00.211984', '59', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:77990', 3, '', 10, 1),
(93, '2019-02-12 07:31:00.211984', '58', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 3, '', 10, 1),
(94, '2019-02-12 07:31:00.211984', '57', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 3, '', 10, 1),
(95, '2019-02-12 07:31:00.211984', '56', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 3, '', 10, 1),
(96, '2019-02-12 07:31:00.227584', '52', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 3, '', 10, 1),
(97, '2019-02-12 07:31:00.227584', '19', 'Device_type:Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM) Price:80000', 3, '', 10, 1),
(98, '2019-02-12 07:31:00.274384', '18', 'Device_type:Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM) Price:12999', 3, '', 10, 1),
(99, '2019-02-12 07:31:00.274384', '17', 'Device_type:Apple iPhone XR (Yellow, 256 GB) Price:99000', 3, '', 10, 1),
(100, '2019-02-12 07:31:00.305584', '16', 'Device_type:Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM) Price:28990', 3, '', 10, 1),
(101, '2019-02-12 07:31:00.305584', '15', 'Device_type:Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM) Price:16999', 3, '', 10, 1),
(102, '2019-02-12 07:31:00.305584', '14', 'Device_type:Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM) Price:14999', 3, '', 10, 1),
(103, '2019-02-12 07:31:00.305584', '13', 'Device_type:Realme C1 (Mirror Black, 16 GB)  (2 GB RAM) Price:7499', 3, '', 10, 1),
(104, '2019-02-12 07:31:00.321184', '12', 'Device_type:Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM) Price:12999', 3, '', 10, 1),
(105, '2019-02-15 11:21:23.786993', '1', 'CSV TEST', 1, '[{"added": {}}]', 11, 1),
(106, '2019-02-18 06:42:00.894436', '2', 'TEST', 1, '[{"added": {}}]', 11, 1),
(107, '2019-02-18 06:44:58.531948', '3', 'TEST 1', 1, '[{"added": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'django_adminlte', 'desktop'),
(7, 'django_adminlte', 'employee'),
(11, 'django_adminlte', 'file_csv'),
(12, 'django_adminlte', 'file_io'),
(9, 'django_adminlte', 'laptop'),
(10, 'django_adminlte', 'mobile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-28 10:56:38.383838'),
(2, 'auth', '0001_initial', '2019-01-28 10:56:40.392953'),
(3, 'admin', '0001_initial', '2019-01-28 10:56:40.738973'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-28 10:56:40.797976'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-28 10:56:40.814977'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-01-28 10:56:41.295005'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-01-28 10:56:41.549019'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-01-28 10:56:41.790033'),
(9, 'auth', '0004_alter_user_username_opts', '2019-01-28 10:56:41.842036'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-01-28 10:56:41.930041'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-01-28 10:56:41.938042'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-01-28 10:56:41.955043'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-01-28 10:56:42.297062'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-01-28 10:56:42.494073'),
(15, 'sessions', '0001_initial', '2019-01-28 10:56:42.654082'),
(16, 'django_adminlte', '0001_initial', '2019-01-30 09:34:26.101089'),
(17, 'django_adminlte', '0002_desktop_laptop_mobile', '2019-02-04 10:02:49.697507'),
(18, 'django_adminlte', '0003_deron', '2019-02-04 10:04:48.286094'),
(19, 'django_adminlte', '0004_delete_deron', '2019-02-04 10:04:48.446094'),
(20, 'django_adminlte', '0003_auto_20190204_1702', '2019-02-04 11:32:37.074113'),
(21, 'django_adminlte', '0004_file_csv', '2019-02-15 10:56:26.411880'),
(22, 'django_adminlte', '0004_file_io', '2019-02-18 19:11:14.158367');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('00o7cn3qrepu9tbhos3brxw2o3ff34ec', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-03-20 10:04:04.143043'),
('29aoa126bzcblad8eexkycemjiycdjyn', 'NzZhYjQ2NWY4NTY4MGRiNzQwOWZiMTI5ZjdjZGJjYzEwYjA1NmFlYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NWNmYTRlZmMzNTdiY2Q3NzI5MGYzYTBlMjQ1ZTU0MWU3MmQwMDNjIn0=', '2019-02-11 11:12:49.444380'),
('2ocf73dv0r6m3ljvdw8xdvkw3oegv30p', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-14 12:57:03.794266'),
('557db87ilbsinklo0rfhev9up5w2zkjl', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-15 12:20:11.325777'),
('66plprp8hp8pm3p4ga3nlz8njr5re60l', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-25 13:25:35.959718'),
('b9bxqgqjqmctf3nuhxxj17lldvtqa9q1', 'MzY4ZDU5MTYxZTgyNjY5NzVjZTk5OGM2YTBkMWU4MTg4MTM0YjQzZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OTcxYTYxMzk5MTdmZTM4Y2NmNjkzYjUzY2FmODg2ODRhNzBmZTBiIn0=', '2019-02-12 07:31:20.468778'),
('hslmll4imj0fmckdt7kruxyy9u2hjytx', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-03-12 11:19:11.821784'),
('kwr9pj21hw1hp4nnr9pncyspafohjjhg', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-18 06:24:24.853678'),
('mhc5ab9iju1h0qhbh3bpyjw9hi0gmrcz', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-03-06 12:38:12.836569'),
('n09n3unrqj29xccbfbjnktz1uxmiqqfs', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-26 07:06:55.558396'),
('nqadgo8oxhs6iqjgtnlohv0a0so6uuy4', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-03-01 05:54:02.726298'),
('sem7632jdb3384qwjms9mo5g6dcpi1d2', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-02-14 11:41:15.464772'),
('vuhmpnp7ain2rs48fvlqc076nkwp08xm', 'ZjI4OWYwZDI2OWVmMjQ4M2FiMjBhYzU1YzU3MDY3MjNmMzBlOGY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjhiODY3NTg1ZTk1YWYxMTRhZGQwZDUxOGU3OWZhZTI5ODQwODI0In0=', '2019-03-04 06:15:23.666525');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `eemail` varchar(254) NOT NULL,
  `econtact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `eid`, `ename`, `eemail`, `econtact`) VALUES
(5, '003', 'Parth Jani', 'rahul@gmail.com', '9925852525'),
(6, '004', 'Ankur Trivedi', 'ankur@gmail.com', '9879160161'),
(12, '005', 'Parth Jani', 'ankur@gmail.com', '7878787844'),
(15, '101', 'Jani Parth', 'pdjani91@gmx.us', '7777950093');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `issues` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `device_type`, `price`, `status`, `issues`) VALUES
(1, 'Lenovo G570', 32700, 'AVAILABLE', 'No Issues');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `issues` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `device_type`, `price`, `status`, `issues`) VALUES
(69, 'Realme C5 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(70, 'Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM)', 14999, 'SOLD', 'No Issues'),
(71, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(72, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(73, 'Apple iPhone XR (Yellow, 256 GB)', 99000, 'SOLD', 'No Issues'),
(74, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(75, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM)', 77990, 'RESTOCKING', 'No Issues'),
(76, 'Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(77, 'Realme C1 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(78, 'Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM)', 14999, 'SOLD', 'No Issues'),
(79, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(80, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(81, 'Apple iPhone XR (Yellow, 256 GB)', 99000, 'SOLD', 'No Issues'),
(82, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(116, 'Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(117, 'Realme C1 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(118, 'Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM)', 14999, 'SOLD', 'No Issues'),
(119, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(120, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(121, 'Apple iPhone XR (Yellow, 256 GB)', 99000, 'SOLD', 'No Issues'),
(122, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(123, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM)', 77990, 'RESTOCKING', 'No Issues'),
(124, 'Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(125, 'Realme C1 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(126, 'Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM)', 14999, 'SOLD', 'No Issues'),
(127, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(128, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(129, 'Apple iPhone XR (Yellow, 256 GB)', 99000, 'SOLD', 'No Issues'),
(130, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(131, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM)', 77990, 'RESTOCKING', 'No Issues'),
(132, 'Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(133, 'Realme C1 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(134, 'Samsung Galaxy A6 (Black, 32 GB)  (4 GB RAM)', 14999, 'SOLD', 'No Issues'),
(135, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(136, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(137, 'Apple iPhone XR (Yellow, 256 GB)', 99000, 'SOLD', 'No Issues'),
(138, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(139, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM)', 77990, 'RESTOCKING', 'No Issues'),
(140, 'Redmi Note 6 Pro (Black, 64 GB)  (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(141, 'Realme C1 (Mirror Black, 16 GB)  (2 GB RAM)', 7499, 'RESTOCKING', 'No Issues'),
(143, 'Samsung Galaxy A8 (Black, 64 GB)  (4 GB RAM)', 16999, 'AVAILABLE', 'No Issues'),
(144, 'Samsung Galaxy A8 Star (White, 64 GB)  (6 GB RAM)', 28990, 'RESTOCKING', 'No Issues'),
(145, 'Apple iPhone XR (Yellow, 256 GB)', 15000, 'SOLD', 'No Issues'),
(146, 'Asus Zenfone Max Pro M1 (Black, 64GB) (4 GB RAM)', 12999, 'AVAILABLE', 'No Issues'),
(147, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)  (8 GB RAM)', 77990, 'RESTOCKING', 'No Issues'),
(148, 'NEW TEST', 15000, 'RESTOCKING', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_adminlte_file_io`
--
ALTER TABLE `django_adminlte_file_io`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `desktop`
--
ALTER TABLE `desktop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `django_adminlte_file_io`
--
ALTER TABLE `django_adminlte_file_io`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
