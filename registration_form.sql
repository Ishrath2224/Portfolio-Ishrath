-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2025 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `username`, `password`) VALUES
(2, 'kerthi', 'hey', '$2y$10$9KYLg7Bj5BTFa7fECXcsX.3gJlQC0rMWp4.UiBQZAq39oVYge8jwe'),
(3, 'Ishrath', 'ishrathmufaiza24@gmail.com', '$2y$10$YohpLmaUITtUsCMPTbYPGuZoWV6LXwXlUp7uIL2DQp52O92Oua8RW'),
(4, 'Something', 'something123@yahoo.com', 'ishrath'),
(5, 'World', 'world@outlook.com', 'helloworld'),
(6, 'Hello', 'hello@gmail.com', 'hello'),
(7, 'Mufaiza', 'mufaiza@gmail.com', 'mufaiza');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `notices_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `content`, `created_at`, `notices_status`) VALUES
(5, 'Active inactive', '2025-07-10 07:05:12', 1),
(6, 'Hello students, the new AY 25-26 will begin from August.', '2025-07-11 06:29:00', 1),
(7, 'All the updates about the school will be announced shortly.', '2025-07-11 06:35:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration_forms`
--

CREATE TABLE `registration_forms` (
  `srf_id` int(100) NOT NULL,
  `srf_first_name` varchar(50) DEFAULT NULL,
  `srf_second_name` varchar(50) NOT NULL,
  `srf_dob` varchar(15) NOT NULL,
  `srf_gender` varchar(55) NOT NULL,
  `srf_grade` varchar(55) NOT NULL,
  `languages_spoken` varchar(55) NOT NULL,
  `sibling1` varchar(100) NOT NULL,
  `sibling2` varchar(100) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `father_contact` int(55) NOT NULL,
  `father_occupation` varchar(100) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `mother_contact` int(10) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `payment_method` varchar(55) NOT NULL,
  `srf_added_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `Password` varchar(225) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_forms`
--

INSERT INTO `registration_forms` (`srf_id`, `srf_first_name`, `srf_second_name`, `srf_dob`, `srf_gender`, `srf_grade`, `languages_spoken`, `sibling1`, `sibling2`, `father_name`, `father_qualification`, `father_contact`, `father_occupation`, `mother_name`, `mother_qualification`, `mother_contact`, `mother_occupation`, `address`, `payment_method`, `srf_added_date`, `Password`, `profile_image`) VALUES
(2, 'murat', 'Mufaiza', '2025-06-25', 'Male', 'A', 'urdu', 'testing', '', 'Abdul', 'MBA', 1234567890, 'Manager', 'hayath', 'MBBS', 1234567890, 'doctor', 'testing', 'Card', '2025-06-21 14:46:22.138963', '$2y$10$p6zqeqSjcNjwE8EEc1GPt.TEWI6X9xX6MaIqC/x8RvM239B3hbsDS', '????\0JFIF\0\0?\0?\0\0??\0C\0??\0C??\0r?\"\0??\0\0\0\0\0\0\0\0\0\0\0	\n??\0?\0\0\0}\0!1AQa\"q2???'),
(3, 'adil', '', '2025-06-22', 'Male', 'A', 'hello', 'none', 'none', '', '', 0, '', '', '', 0, '', '', 'Cash', '2025-06-21 14:46:22.138963', '', NULL),
(4, 'murat', 'shah', '01052021', 'male', 'A', 'urdu,hindi', 'none', 'none', 'Abdul', 'MBA', 0, 'Manager', 'hayath', 'MBBS', 2147483647, 'doctor', 'hyderabad', 'check', '2025-06-21 14:46:22.138963', '', NULL),
(5, 'Ishrath', 'Mufaiza', '2005-09-24', 'Female', 'A', 'jxso', 'xslkxjs', 'skds', 'slkjia', 'zmnsklxi', 2147483647, 'masals', 'aksxasxa', 'djxeosxma', 123456789, 'asjixqk', 'asmwklwqkqo,aksxji', 'Check', '2025-06-21 14:46:22.138963', '$2y$10$UvDsaFcJdpQFRypYkPtwBeQ6me./FemYCxnJfXbYl5oqkT8.hbZ16', 'PHOTO.jpg'),
(6, 'Ishrath th', 'Mufaiza', '2005-09-24', 'Female', 'A', 'jxso', 'xslkxjs', 'skds', 'slkjia', 'zmnsklxi', 0, 'masals', 'aksxasxa', 'djxeosxma', 0, 'asjixqk', 'asmwklwqkqo,aksxji', 'Check', '2025-06-21 14:46:22.138963', '', NULL),
(7, 'Bharath kiran', 'RR', '2005-09-24', 'Male', 'A', 'testing', 'testing', 'testing', 'testing', 'zmnsklxi', 0, 'masals', 'aksxasxa', 'djxeosxma', 0, 'asjixqk', 'testing', 'Card', '2025-06-21 14:46:22.138963', '', NULL),
(9, 'Bharath kira', 'kiran', '2025-06-25', 'Male', 'A', 'test', 'test', 'test', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test', 'Cash', '2025-06-21 16:07:02.415146', '', NULL),
(15, '', '', '2005-06-22', 'Male', 'grade', 'english', 'kwhdwje', 'wksnwe', 'wjsnwk', 'ksjnxwiud', 0, 'sbhxyw', 'asqwubyd', 'habsxy', 0, 'shabdqwy', 'Al-Hamra Apartments, Asif Nagar, Mehdipatnam,Hyderabad', 'Cash', '2025-06-24 13:07:30.485429', '1234', NULL),
(16, '', '', '2025-06-25', 'Male', 'A', 'english', 'None', 'None', 'slkjia', 'zmnsklxi', 0, 'jwedgwet', 'aksxasxa', 'djxeosxma', 0, 'test', 'Mahindra University 62/1A,\r\nBahadurpally', 'Cash', '2025-06-25 11:01:22.788681', 'hiii', NULL),
(17, '', '', '2025-06-22', 'Male', 'A', 'english', 'none', 'sister', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test, test', 'Check', '2025-06-25 15:12:09.765359', 'hello', NULL),
(18, '', '', '2025-06-22', 'Male', 'A', 'english', 'none', 'sister', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test, test', 'Check', '2025-06-25 15:12:58.972725', 'hello', NULL),
(19, '', '', '2025-06-22', 'Male', 'A', 'english', 'none', 'sister', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test, test', 'Check', '2025-06-25 15:13:37.579341', 'hello', NULL),
(20, '', '', '2025-06-22', 'Male', 'A', 'english', 'none', 'none', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'testing', 'Check', '2025-06-25 15:29:16.018917', 'hello', NULL),
(27, '', '', '', 'Male', 'B', 'Telugu', '', '', 'Satya', 'BSC', 123456789, 'Teacher', 'Sulochana', 'Nurse', 123456789, 'Nurse', '', 'Cash', '2025-06-25 16:00:29.141258', '<br /><b>Warning</b>:  Undefined array key ', NULL),
(28, '', '', '', 'Male', 'F', 'Telugu', '', '', 'Satya', 'BSC', 123456789, 'Teacher', 'Sulochana', 'Nurse', 123456789, 'Nurse', '', 'Check', '2025-06-25 16:04:43.739928', '<br /><b>Warning</b>:  Undefined array key ', NULL),
(29, '', '', '2025-06-03', 'Male', 'A', 'Telugu', 'test', 'test', 'testv', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test', 'Cash', '2025-06-25 16:36:53.710727', 'test', NULL),
(30, 'Ishrath', 'Mufaiza', '2025-06-22', '', 'A', 'urdu', '', '', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', '', '', '2025-06-30 12:19:28.420676', '', NULL),
(31, '12345', 'Mufaiza', '2025-06-23', '', 'A', 'english', 'test\r\n', 'test\r\n', 'test', 'test', 345678921, 'test', 'test', 'djxeosxma', 234567891, 'test', '', '', '2025-06-30 12:43:23.759499', '', NULL),
(32, 'hi', 'hlo', '2025-06-23', 'Male', 'A', 'urdu', '', '', 'test', 'test', 2147483647, 'test', 'hayath', 'test', 0, 'test', '', 'Cash', '2025-06-30 12:50:45.997775', '', NULL),
(33, 'Ishrath', 'Mufaiza', '2025-06-16', 'Male', 'A', 'urdu', '', '', 'test', 'MBA', 0, 'test', 'test', 'test', 0, 'test', '', 'Cash', '2025-06-30 13:08:46.745035', '', NULL),
(35, '', '', '2025-06-01', 'Male', 'A', 'urdu', 'test', 'test', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'test', 'Cash', '2025-06-30 14:31:10.268254', '12345', NULL),
(36, '', '', '2025-06-03', 'Male', 'A', 'urdu', 'none', 'none', 'test', 'test', 0, 'test', 'test', 'Nurse', 0, 'test', 'test', 'Cash', '2025-06-30 14:48:00.162929', '123456', NULL),
(37, '', '', '2025-06-09', 'Male', 'A', 'urdu', 'none', 'none', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'Mahindra University 62/1A,\r\nBahadurpally', 'Array', '2025-06-30 15:00:58.373603', 'hello', NULL),
(38, '', '', '2025-06-09', 'Male', 'A', 'urdu', 'none', 'none', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'Mahindra University 62/1A,\r\nBahadurpally', 'Array', '2025-06-30 15:01:15.336413', 'hello', NULL),
(39, '', '', '2025-06-11', 'Female', 'A', 'urdu', 'none', 'none', '123', 'test', 0, 'test', '789', 'test', 0, 'test', 'testing', 'Array', '2025-06-30 15:08:02.339333', 'helloworld', NULL),
(40, '', '', '2025-06-04', 'Male', 'A', 'hello', 'none', 'none', 'test', 'test', 2147483647, 'test', 'test', 'hdgweg', 2147483647, 'Nurse', 'Al-Hamra Apartments, Asif Nagar, Mehdipatnam,Hyderabad', 'Array', '2025-06-30 15:11:26.250285', 'hello', NULL),
(41, 'hello', 'hi', '2025-06-05', 'Male', 'A', 'urdu,hindi', 'nine', 'none', 'test', 'test', 0, 'test', 'test', 'test', 0, 'test', 'fill this', 'Cash', '2025-06-30 15:28:30.982948', 'good', NULL),
(43, 'Ishrath', 'Mufaiza', '2025-07-03', 'Male', 'A', 'urdu,hindi', 'none', 'none', 'test', 'test', 0, 'jwedgwet', 'scuei', 'ajsdnwye', 0, 'sdnc ue', 'test', 'Cash', '2025-07-01 11:41:51.671354', 'hello', NULL),
(44, 'Ishrath', 'mufaiza', '2025-07-22', 'Male', 'grade', 'Telugu', '', '', 'hi ', 'hello', 1234567890, 'test', 'aksxasxa', 'sdfmeui', 2147483647, 'Nurse', 'test-test', 'Cash', '2025-07-01 15:40:48.638065', '$2y$10$RaTjdrGiFgFpuce7Td05.uczFUZzoTy6tZM/9U3Uu7u', '????\0JFIF\0\0?\0?\0\0??\0C\0??\0C??\0r?\"\0??\0\0\0\0\0\0\0\0\0\0\0	\n??\0?\0\0\0}\0!1AQa\"q2???'),
(46, 'hey', 'hi', '2025-07-17', 'Male', 'A', 'Telugu', 'none', 'none', 'test', 'test', 1234567890, 'test', 'test', 'test', 123456789, 'test', 'testing', 'Cash', '2025-07-03 15:36:45.377649', '$2y$10$6i6rHzbsk8VrC3A.jAo57.DSMRW.6OYp5hbfungN0sb', '1751537205_signature_page-0001.jpg'),
(47, 'Iqbal', 'Shaik', '2025-07-03', 'Male', '5', 'english', 'none', 'none', 'Abdul', 'MBA', 2147483647, 'Teacher', 'hayath', 'MBBS', 2147483647, 'housewife', 'india', 'Cash', '2025-07-11 12:09:24.136607', '$2y$10$ulq//D/nhlKrLOUdnw9QjOJSqUYXNwe86svGgntJSTET3Xo9JYCQW', '1752215963_PHOTO.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_forms`
--
ALTER TABLE `registration_forms`
  ADD PRIMARY KEY (`srf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration_forms`
--
ALTER TABLE `registration_forms`
  MODIFY `srf_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
