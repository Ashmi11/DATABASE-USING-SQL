-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 11:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `accommodation_id` int(11) NOT NULL,
  `accommodation_type` varchar(100) NOT NULL,
  `accommodation_availability_id` int(11) NOT NULL,
  `accommodation_location_id` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `photographers_id` int(11) NOT NULL,
  `amenities_id` int(11) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`accommodation_id`, `accommodation_type`, `accommodation_availability_id`, `accommodation_location_id`, `host_id`, `photographers_id`, `amenities_id`, `created_date`) VALUES
(1, 'room in a hotel', 12, 1, 4, 3, 14, 1978),
(2, ' private room in apartment ', 5, 11, 8, 3, 7, 2013),
(3, ' private room in apartment ', 5, 2, 20, 14, 6, 1986),
(4, 'room in a hotel', 3, 14, 14, 18, 10, 2004),
(5, 'room in a hotel', 4, 18, 16, 19, 15, 2020),
(6, ' private room in apartment ', 20, 18, 19, 19, 2, 2017),
(7, 'room in a hotel', 10, 11, 2, 13, 13, 2015),
(8, ' private room in apartment ', 16, 18, 3, 3, 20, 1998),
(9, ' private room in apartment ', 9, 8, 2, 9, 1, 1995),
(10, 'room in a hotel', 7, 11, 15, 20, 9, 1977),
(11, 'room in a hotel', 4, 4, 7, 19, 3, 1983),
(12, ' private room in apartment ', 2, 19, 1, 20, 18, 2014),
(13, ' studio', 2, 9, 8, 3, 1, 2007),
(14, ' studio', 20, 18, 19, 3, 1, 2015),
(15, ' private room in apartment ', 18, 11, 8, 19, 20, 2022),
(16, ' studio', 9, 6, 11, 3, 6, 1990),
(17, ' studio', 19, 7, 9, 6, 6, 1986),
(18, ' studio', 11, 7, 4, 11, 6, 1976),
(19, 'room in a hotel', 2, 12, 14, 9, 15, 1988),
(20, ' private room in apartment ', 15, 9, 13, 13, 11, 1989);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_availability`
--

CREATE TABLE `accommodation_availability` (
  `accommodation_availability_id` int(11) NOT NULL,
  `days_available` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_availability`
--

INSERT INTO `accommodation_availability` (`accommodation_availability_id`, `days_available`, `created_date`) VALUES
(1, 15, '2011-11-10 03:40:44'),
(2, 15, '1989-04-02 20:06:51'),
(3, 74, '1977-01-14 02:53:46'),
(4, 9, '2006-02-04 15:17:10'),
(5, 27, '1981-09-15 04:17:06'),
(6, 18, '2006-06-30 04:35:22'),
(7, 24, '2004-03-26 17:18:54'),
(8, 60, '1982-06-16 19:17:54'),
(9, 13, '2001-09-25 13:47:55'),
(10, 86, '2018-10-22 08:12:32'),
(11, 29, '1980-06-28 23:09:28'),
(12, 81, '2010-11-28 08:01:46'),
(13, 24, '1998-08-07 11:12:13'),
(14, 69, '1984-05-24 21:57:04'),
(15, 93, '1982-09-19 03:48:50'),
(16, 67, '2020-04-23 15:48:34'),
(17, 45, '1993-06-25 11:21:37'),
(18, 36, '1983-02-08 20:31:49'),
(19, 1, '2001-05-27 18:02:51'),
(20, 91, '2017-03-16 03:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_location`
--

CREATE TABLE `accommodation_location` (
  `accommodation_location_id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_location`
--

INSERT INTO `accommodation_location` (`accommodation_location_id`, `country`, `city`, `state`, `zip`, `created_date`) VALUES
(1, 'Nicaragua', 'Bergstrombury', 'NewMexico', 42600, '1973-11-22 12:38:42'),
(2, 'Mozambique', 'Hirtheview', 'Colorado', 32197, '1972-05-14 20:36:06'),
(3, 'Chile', 'Stewartborough', 'Nevada', 28698, '1993-08-09 09:32:28'),
(4, 'Saint Martin', 'New Kaylahmouth', 'Kansas', 8095, '2011-07-18 01:51:22'),
(5, 'Russian Federation', 'Cummeratafurt', 'Virginia', 20961, '2016-04-26 02:03:59'),
(6, 'Isle of Man', 'Lake Lucindafort', 'Alaska', 16986, '1999-04-21 02:02:50'),
(7, 'Jersey', 'Jerelmouth', 'Idaho', 70887, '2000-02-27 20:10:04'),
(8, 'Saint Vincent and the Grenadines', 'Paulineland', 'Iowa', 86311, '1977-02-10 07:38:30'),
(9, 'Gambia', 'Altenwerthstad', 'Indiana', 3528, '2016-10-05 02:20:39'),
(10, 'Niger', 'Lillyton', 'Arkansas', 73209, '1994-07-18 17:12:14'),
(11, 'Jordan', 'Walterland', 'Pennsylvania', 16916, '1986-03-01 10:45:57'),
(12, 'Guinea-Bissau', 'South Estellaberg', 'NorthCarolina', 25181, '1991-08-10 17:51:11'),
(13, 'Somalia', 'North Madelynn', 'Kentucky', 8662, '2017-10-28 07:22:05'),
(14, 'El Salvador', 'Port Jamarcus', 'Nebraska', 93360, '1987-08-27 22:46:14'),
(15, 'Bahrain', 'New Cordiachester', 'Missouri', 50421, '1998-02-09 01:34:22'),
(16, 'Hong Kong', 'Beatricechester', 'Maine', 15857, '2011-03-31 09:35:39'),
(17, 'Saint Barthelemy', 'Lamartown', 'NewMexico', 59542, '1997-01-18 10:01:59'),
(18, 'Indonesia', 'Katherinechester', 'Oklahoma', 88486, '1991-03-19 14:44:50'),
(19, 'Jersey', 'Shieldstown', 'Pennsylvania', 80409, '2000-06-26 15:06:28'),
(20, 'Gambia', 'Koelpinton', 'Alaska', 14964, '2015-02-01 16:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `amenities_id` int(11) NOT NULL,
  `kitchen` tinyint(1) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `fridge` tinyint(1) NOT NULL,
  `pool` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`amenities_id`, `kitchen`, `tv`, `fridge`, `pool`, `created_date`) VALUES
(1, 1, 1, 0, 0, '2000-08-25 08:06:50'),
(2, 0, 0, 0, 0, '1976-05-06 09:48:43'),
(3, 0, 1, 0, 0, '1993-03-13 23:00:05'),
(4, 0, 1, 1, 1, '2013-05-25 09:55:16'),
(5, 0, 0, 0, 0, '1992-02-16 18:17:15'),
(6, 0, 0, 1, 0, '2013-04-25 16:40:51'),
(7, 1, 0, 1, 0, '1976-11-26 16:27:01'),
(8, 0, 1, 1, 0, '2018-08-21 01:58:57'),
(9, 1, 0, 0, 1, '1983-06-14 07:44:21'),
(10, 0, 1, 1, 1, '1994-01-24 09:37:51'),
(11, 1, 0, 1, 0, '1977-06-21 21:42:42'),
(12, 1, 0, 1, 0, '2014-04-06 04:25:26'),
(13, 0, 0, 0, 1, '2005-02-21 20:12:26'),
(14, 1, 1, 1, 1, '1982-03-02 13:35:42'),
(15, 1, 0, 0, 1, '1997-11-06 07:05:03'),
(16, 0, 1, 0, 0, '2017-05-02 09:00:10'),
(17, 0, 0, 1, 0, '2000-06-06 07:41:54'),
(18, 1, 1, 0, 0, '1980-12-29 01:27:02'),
(19, 1, 0, 0, 1, '2008-06-06 09:24:02'),
(20, 0, 0, 0, 1, '1981-07-01 14:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout_time` time NOT NULL,
  `checkin_day` date NOT NULL,
  `checkout_day` date NOT NULL,
  `booking_status_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `booking_feedback_id` int(11) NOT NULL,
  `customer_support_id` int(11) NOT NULL,
  `coupons_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `checkin_time`, `checkout_time`, `checkin_day`, `checkout_day`, `booking_status_id`, `guest_id`, `accommodation_id`, `booking_feedback_id`, `customer_support_id`, `coupons_id`, `service_id`, `created_date`) VALUES
(1, '00:11:01', '11:27:27', '1984-08-16', '2003-03-07', 15, 14, 18, 10, 18, 2, 18, '1972-09-11'),
(2, '19:33:51', '18:08:58', '2001-09-06', '1999-01-13', 13, 18, 17, 2, 9, 10, 3, '1977-08-31'),
(3, '15:34:09', '20:46:40', '2019-09-29', '1999-12-08', 6, 4, 6, 1, 9, 15, 16, '1982-08-02'),
(4, '15:54:39', '10:45:59', '1990-04-06', '2001-06-04', 18, 8, 6, 1, 4, 6, 14, '2018-07-09'),
(5, '00:37:56', '07:38:18', '1985-05-15', '1996-07-04', 6, 5, 15, 20, 19, 13, 9, '1982-07-11'),
(6, '02:05:20', '06:43:00', '2005-02-10', '1985-05-23', 20, 13, 12, 6, 17, 17, 6, '1989-01-09'),
(7, '09:07:03', '01:28:00', '1990-11-15', '1998-10-29', 5, 12, 1, 3, 19, 7, 4, '2005-06-06'),
(8, '17:26:27', '02:33:11', '2017-01-24', '1975-09-13', 13, 15, 19, 18, 6, 20, 1, '2004-10-16'),
(9, '15:03:50', '13:01:56', '2004-05-01', '1971-04-17', 5, 7, 4, 7, 19, 1, 14, '1972-10-01'),
(10, '21:42:27', '08:22:26', '1970-07-18', '2019-03-06', 12, 16, 18, 20, 1, 5, 7, '2000-08-21'),
(11, '05:46:03', '01:32:04', '1982-01-19', '2003-08-28', 17, 3, 20, 10, 18, 19, 8, '1985-08-06'),
(12, '14:59:50', '17:51:53', '1992-06-18', '2015-06-18', 19, 9, 15, 16, 12, 15, 5, '1978-05-13'),
(13, '18:59:51', '08:57:10', '2010-10-11', '1970-03-06', 7, 11, 3, 4, 14, 10, 13, '2007-09-07'),
(14, '15:04:53', '09:28:46', '1981-07-22', '1975-11-28', 14, 10, 10, 3, 2, 2, 16, '2009-02-25'),
(15, '21:11:56', '01:03:09', '1972-05-30', '1992-01-18', 13, 2, 17, 7, 14, 12, 5, '1996-08-27'),
(16, '23:17:14', '16:54:26', '1986-09-15', '1971-04-07', 7, 17, 15, 13, 12, 19, 13, '1976-09-27'),
(17, '18:48:55', '18:02:23', '1983-07-31', '1978-08-10', 17, 19, 15, 3, 10, 13, 8, '2015-10-23'),
(18, '05:42:25', '14:54:56', '2018-09-20', '2015-03-24', 18, 20, 2, 14, 18, 16, 16, '2014-08-06'),
(19, '20:18:18', '18:49:24', '1972-06-27', '1982-06-28', 4, 1, 6, 1, 16, 10, 12, '1976-06-17'),
(20, '22:15:20', '17:29:54', '1987-05-26', '2009-04-23', 12, 6, 3, 7, 12, 12, 10, '1979-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `booking_feedback`
--

CREATE TABLE `booking_feedback` (
  `booking_feedback_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `comment` varchar(500) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_feedback`
--

INSERT INTO `booking_feedback` (`booking_feedback_id`, `rating`, `comment`, `guest_id`, `created_date`) VALUES
(1, 6, 'Dolorum voluptatibus et reprehenderit.', 8, '1975-10-15 18:19:54'),
(2, 7, 'Adipisci omnis aut ut sit excepturi magnam velit.', 12, '2018-04-13 08:18:34'),
(3, 5, 'Mollitia sit ex aliquid itaque possimus et totam.', 13, '1979-07-03 01:21:00'),
(4, 4, 'Sit provident vitae corporis consequuntur voluptas.', 1, '2013-01-25 20:27:56'),
(5, 3, 'Optio tempore hic labore totam rerum impedit non.', 7, '1994-05-18 23:46:01'),
(6, 8, 'Aliquam inventore sint qui voluptatem perferendis occaecati.', 14, '1979-06-08 00:41:22'),
(7, 5, 'Quia fugiat cum aspernatur eveniet qui aliquid.', 17, '1970-11-27 19:35:34'),
(8, 1, 'Repellat repellendus maxime aut est magni.', 16, '1999-07-15 05:15:26'),
(9, 9, 'Voluptate possimus deserunt numquam consequatur expedita cupiditate ipsa.', 8, '2006-12-04 16:44:02'),
(10, 7, 'Id veniam dolorem veritatis aliquam corporis.', 8, '1972-10-11 20:36:30'),
(11, 2, 'Autem earum ducimus molestiae nam voluptas.', 9, '2010-02-15 13:15:24'),
(12, 1, 'Velit magni deleniti aut sunt enim qui qui quisquam.', 3, '2012-07-24 23:44:23'),
(13, 1, 'Itaque necessitatibus rerum consequatur distinctio.', 7, '1996-04-20 14:42:54'),
(14, 9, 'Eos quia consequatur voluptatem alias eius magnam sapiente.', 2, '2001-08-29 01:08:31'),
(15, 2, 'In velit quos enim similique necessitatibus nihil.', 4, '2012-04-11 07:30:07'),
(16, 4, 'Et voluptate debitis minima aspernatur iusto quis in.', 4, '1971-12-14 02:48:48'),
(17, 6, 'Aut nihil qui temporibus et.', 14, '1975-08-03 22:25:50'),
(18, 6, 'Iusto et non nihil laborum.', 15, '1990-07-05 08:24:34'),
(19, 5, 'Itaque error est sunt sed hic architecto.', 19, '2014-02-26 04:20:22'),
(20, 2, 'Molestias sed dicta vel beatae.', 14, '2001-01-28 17:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `booking_status_id` int(11) NOT NULL,
  `booking_completed` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`booking_status_id`, `booking_completed`, `created_date`) VALUES
(1, ' \'in process\'', '1981-11-18 04:27:06'),
(2, ' \'in process\'', '2012-12-03 06:47:18'),
(3, ' \'in process\'', '1999-04-08 08:38:20'),
(4, '\'completed\'', '2009-07-26 23:14:34'),
(5, ' \'not completed\'', '2006-03-19 13:16:37'),
(6, '\'completed\'', '1993-06-19 17:33:55'),
(7, '\'completed\'', '1982-06-28 01:10:37'),
(8, '\'completed\'', '1971-10-03 04:12:48'),
(9, '\'completed\'', '1975-05-20 18:49:56'),
(10, ' \'not completed\'', '2002-04-01 03:25:07'),
(11, ' \'not completed\'', '1981-09-22 21:29:21'),
(12, ' \'not completed\'', '2009-02-03 12:12:00'),
(13, ' \'not completed\'', '1996-09-20 16:38:21'),
(14, ' \'in process\'', '1989-01-05 00:17:45'),
(15, ' \'not completed\'', '2013-06-18 05:26:52'),
(16, '\'completed\'', '1975-08-19 13:48:46'),
(17, '\'completed\'', '1998-11-29 15:05:23'),
(18, '\'completed\'', '1992-04-10 11:12:58'),
(19, '\'completed\'', '1981-05-07 07:40:00'),
(20, '\'completed\'', '1979-04-02 16:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `communication`
--

CREATE TABLE `communication` (
  `communication_id` int(11) NOT NULL,
  `communication_medium` varchar(100) NOT NULL,
  `communication_feedback` varchar(500) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communication`
--

INSERT INTO `communication` (`communication_id`, `communication_medium`, `communication_feedback`, `guest_id`, `host_id`, `created_date`) VALUES
(1, 'online chat', 'Laborum ullam saepe est magni.', 4, 6, '1980-03-17 07:27:46'),
(2, 'phone', 'Quia voluptas adipisci eveniet iure pariatur perferendis.', 10, 5, '1976-03-21 07:35:02'),
(3, ' in person ', 'Occaecati et aut voluptatem.', 12, 7, '2002-12-15 05:53:19'),
(4, 'online chat', 'Quos est perferendis nesciunt.', 10, 3, '1992-01-08 16:31:40'),
(5, 'online chat', 'Odio ab fugiat nulla sit nihil necessitatibus.', 13, 16, '2001-12-08 20:21:52'),
(6, ' in person ', 'Libero et incidunt molestias aut.', 3, 12, '2001-05-01 05:34:09'),
(7, 'online chat', 'Fuga inventore in eaque.', 3, 3, '1994-02-11 21:30:53'),
(8, 'online chat', 'Magni mollitia facilis repellat voluptates nam totam.', 10, 18, '2000-09-29 14:55:04'),
(9, 'phone', 'Et totam cum animi veniam.', 3, 18, '2011-02-26 03:16:50'),
(10, 'online chat', 'Ex perferendis maxime libero quis.', 5, 20, '2005-05-10 18:49:13'),
(11, 'phone', 'Provident voluptatem aliquam enim ratione earum.', 12, 4, '2020-10-10 08:50:07'),
(12, 'phone', 'Omnis esse voluptatem laudantium reprehenderit molestiae debitis perspiciatis.', 5, 20, '2008-12-24 02:29:06'),
(13, ' in person ', 'Voluptas et optio consequatur.', 19, 15, '1991-11-21 19:18:40'),
(14, 'phone', 'Saepe repellat accusantium et necessitatibus.', 15, 12, '1975-10-10 20:57:40'),
(15, 'online chat', 'Odit debitis modi maxime.', 7, 16, '1984-03-23 05:38:58'),
(16, ' in person ', 'Vero voluptatum asperiores quis facere est recusandae.', 13, 10, '1976-09-10 13:56:47'),
(17, ' in person ', 'Et cum voluptatum vel iure.', 1, 3, '1990-05-03 08:14:05'),
(18, 'phone', 'Natus et eos doloribus saepe sunt voluptatem minima.', 14, 13, '1999-12-11 17:45:20'),
(19, ' in person ', 'Rerum et quis omnis et vitae expedita fugit et.', 9, 4, '2015-10-30 10:28:01'),
(20, 'online chat', 'Consequatur nihil veritatis necessitatibus.', 16, 1, '1992-11-30 20:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupons_id` int(11) NOT NULL,
  `expiration_date` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupons_id`, `expiration_date`, `created_date`) VALUES
(1, '1981-10-23', '1999-02-27 19:36:29'),
(2, '2020-05-20', '1990-07-22 17:11:50'),
(3, '1990-05-18', '1993-04-16 00:13:11'),
(4, '1987-01-23', '2006-01-11 21:13:09'),
(5, '1994-11-06', '1982-10-16 16:03:26'),
(6, '1976-01-03', '1971-01-26 11:41:29'),
(7, '2013-10-21', '1978-05-07 11:36:38'),
(8, '2003-02-04', '1976-06-25 01:44:32'),
(9, '1975-06-22', '1983-12-14 04:42:34'),
(10, '1976-02-09', '1985-01-10 21:58:53'),
(11, '1987-03-03', '1970-07-21 05:16:55'),
(12, '1978-07-01', '1993-09-07 17:16:46'),
(13, '1978-12-28', '1991-03-17 12:49:02'),
(14, '1988-09-10', '2019-12-30 23:15:51'),
(15, '1984-03-05', '2008-01-20 23:30:10'),
(16, '2005-07-13', '1978-04-21 21:28:26'),
(17, '2003-05-19', '2018-04-14 02:12:35'),
(18, '2006-07-25', '1989-01-18 18:48:10'),
(19, '2011-12-20', '1994-11-16 03:48:45'),
(20, '1972-02-05', '1989-05-23 00:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `customer_support`
--

CREATE TABLE `customer_support` (
  `customer_support_id` int(11) NOT NULL,
  `support_provided` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_support`
--

INSERT INTO `customer_support` (`customer_support_id`, `support_provided`, `created_date`) VALUES
(1, 'walk-in service department', '1979-11-23 18:38:34'),
(2, ' phone and email support', '1995-02-20 21:35:26'),
(3, ' phone and email support', '1985-04-07 20:41:57'),
(4, ' regular follow ups', '1995-05-19 07:33:41'),
(5, ' phone and email support', '1971-04-01 20:20:41'),
(6, ' regular follow ups', '1975-04-02 06:43:02'),
(7, ' regular follow ups', '2015-12-18 15:32:16'),
(8, ' phone and email support', '2012-08-05 14:56:47'),
(9, ' regular follow ups', '2001-05-26 14:31:46'),
(10, 'walk-in service department', '1977-03-13 22:43:15'),
(11, ' phone and email support', '2001-10-13 07:18:15'),
(12, 'walk-in service department', '2007-04-08 05:14:33'),
(13, 'walk-in service department', '1978-03-25 16:00:05'),
(14, ' phone and email support', '1988-03-30 01:20:32'),
(15, ' regular follow ups', '1983-07-25 00:16:30'),
(16, 'walk-in service department', '1984-06-15 06:27:10'),
(17, ' regular follow ups', '2008-12-03 05:10:44'),
(18, ' regular follow ups', '2019-03-13 08:36:17'),
(19, 'walk-in service department', '1993-05-19 10:25:09'),
(20, 'walk-in service department', '2022-06-20 01:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `favourites_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`favourites_id`, `accommodation_id`, `created_date`) VALUES
(1, 18, '2005-06-20 09:48:50'),
(2, 15, '2015-07-25 19:45:03'),
(3, 15, '1992-12-28 21:59:44'),
(4, 2, '2006-05-01 20:47:25'),
(5, 10, '2011-05-17 20:55:02'),
(6, 11, '1979-09-07 09:01:05'),
(7, 16, '2010-07-20 11:56:19'),
(8, 18, '2015-06-06 09:28:01'),
(9, 14, '2016-10-27 13:45:48'),
(10, 8, '1973-10-25 06:16:51'),
(11, 19, '2001-05-25 13:04:15'),
(12, 4, '2016-07-29 18:26:40'),
(13, 16, '2012-07-13 11:06:48'),
(14, 11, '1982-10-08 10:36:41'),
(15, 6, '2005-05-21 07:05:39'),
(16, 15, '1974-01-28 21:03:37'),
(17, 4, '1993-03-24 21:52:16'),
(18, 16, '2000-08-12 10:53:41'),
(19, 7, '1978-05-18 14:35:20'),
(20, 13, '1972-04-19 00:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guest_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `guest_address_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guest_id`, `first_name`, `last_name`, `email`, `phone_number`, `guest_address_id`, `payment_id`, `invoice_id`, `gender`, `created_date`) VALUES
(1, 'Tad', 'Mertz', 'fstehr@example.org', '1-215-000-0304x567', 5, 14, 20, 'M', '0000-00-00 00:00:00.000000'),
(2, 'Emilia', 'Murazik', 'tobin20@example.com', '968.923.4602', 7, 14, 12, 'M', '0000-00-00 00:00:00.000000'),
(3, 'Herbert', 'Schmitt', 'fwilderman@example.com', '1-733-859-5884', 6, 8, 17, 'D', '0000-00-00 00:00:00.000000'),
(4, 'Justice', 'Wuckert', 'wallace67@example.org', '1-446-096-7049x209', 17, 6, 6, 'M', '0000-00-00 00:00:00.000000'),
(5, 'Evans', 'Johnson', 'shields.jaycee@example.org', '1-501-266-0424x724', 12, 7, 19, 'D', '0000-00-00 00:00:00.000000'),
(6, 'Darion', 'Padberg', 'clint13@example.com', '385.613.5628', 8, 5, 8, 'P', '0000-00-00 00:00:00.000000'),
(7, 'Albertha', 'Bechtelar', 'gtorphy@example.net', '167-709-3599', 12, 11, 8, 'M', '0000-00-00 00:00:00.000000'),
(8, 'Scottie', 'Hoeger', 'keshawn.kerluke@example.com', '384.899.2058', 18, 4, 6, 'D', '0000-00-00 00:00:00.000000'),
(9, 'Lazaro', 'Muller', 'maybell17@example.com', '316-351-1177x01305', 2, 17, 16, 'M', '0000-00-00 00:00:00.000000'),
(10, 'Cathy', 'Corkery', 'weissnat.tevin@example.net', '(114)602-1940x725', 7, 19, 18, 'M', '0000-00-00 00:00:00.000000'),
(11, 'Jeffrey', 'Hessel', 'gharris@example.net', '1-251-595-6682', 7, 3, 12, 'D', '0000-00-00 00:00:00.000000'),
(12, 'Cierra', 'Kutch', 'genevieve17@example.net', '797.379.4390', 6, 9, 6, 'P', '0000-00-00 00:00:00.000000'),
(13, 'Golda', 'Dickens', 'evangeline.gorczany@example.com', '689-060-1001', 18, 15, 13, 'M', '0000-00-00 00:00:00.000000'),
(14, 'Colten', 'Lemke', 'mwill@example.net', '1-982-779-9402x8678', 14, 11, 18, 'M', '0000-00-00 00:00:00.000000'),
(15, 'Carlee', 'Skiles', 'dolly35@example.net', '(820)885-6033', 19, 2, 4, 'D', '0000-00-00 00:00:00.000000'),
(16, 'Jalyn', 'King', 'mosciski.ursula@example.org', '1-692-371-5120x8935', 17, 10, 9, 'P', '0000-00-00 00:00:00.000000'),
(17, 'Velva', 'Smitham', 'erwin48@example.org', '(321)826-5039x69691', 5, 2, 19, 'D', '0000-00-00 00:00:00.000000'),
(18, 'Leola', 'Pacocha', 'gorczany.milton@example.com', '(184)309-0608x09065', 12, 19, 2, 'D', '0000-00-00 00:00:00.000000'),
(19, 'Arturo', 'Doyle', 'monahan.gardner@example.org', '896.865.0476', 17, 20, 18, 'D', '0000-00-00 00:00:00.000000'),
(20, 'Gianni', 'West', 'albina58@example.net', '656-891-6222x1602', 12, 7, 17, 'M', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `guest_address`
--

CREATE TABLE `guest_address` (
  `guest_address_id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_address`
--

INSERT INTO `guest_address` (`guest_address_id`, `country`, `city`, `state`, `zip`, `created_date`) VALUES
(1, 'Brunei Darussalam', 'North Keely', 'Ohio', 73137, '1972-04-28 07:36:46'),
(2, 'Taiwan', 'North Greggside', 'NorthDakota', 82840, '2009-11-03 19:14:27'),
(3, 'Maldives', 'Lake Dean', 'Tennessee', 22611, '2019-02-15 04:57:09'),
(4, 'Svalbard & Jan Mayen Islands', 'Paxtonberg', 'NorthCarolina', 33957, '1974-05-03 17:27:27'),
(5, 'Honduras', 'Jenkinsville', 'Texas', 73335, '1984-07-23 14:42:36'),
(6, 'Syrian Arab Republic', 'Carliebury', 'Georgia', 80573, '1975-02-19 12:10:37'),
(7, 'Saint Lucia', 'East Leatha', 'Hawaii', 294, '1970-03-07 04:50:06'),
(8, 'Palestinian Territory', 'Lauriannechester', 'Delaware', 85532, '2003-04-05 05:25:13'),
(9, 'Svalbard & Jan Mayen Islands', 'Thompsonshire', 'Idaho', 36077, '1996-01-11 08:11:23'),
(10, 'Gibraltar', 'East Jazlynstad', 'Wyoming', 91184, '1990-12-06 19:52:46'),
(11, 'Lithuania', 'Orvillefurt', 'Vermont', 18454, '2006-08-15 06:53:51'),
(12, 'Liechtenstein', 'Gabetown', 'Delaware', 58848, '1984-09-10 18:58:32'),
(13, 'Australia', 'Kleinfort', 'Indiana', 74450, '1972-03-15 18:43:32'),
(14, 'Italy', 'Jeanbury', 'Colorado', 1995, '1997-04-09 00:58:13'),
(15, 'Romania', 'North Juniuston', 'Mississippi', 34546, '1995-11-17 21:10:59'),
(16, 'Macedonia', 'Justynbury', 'WestVirginia', 60673, '2011-06-21 04:28:22'),
(17, 'Tuvalu', 'Otiliaview', 'Hawaii', 47170, '1989-06-08 00:13:07'),
(18, 'Tonga', 'Estellaville', 'Nebraska', 47614, '2016-06-22 20:10:37'),
(19, 'Saudi Arabia', 'Beiershire', 'Montana', 21284, '1974-12-14 10:39:05'),
(20, 'Hong Kong', 'Lake Verona', 'Arkansas', 33007, '1976-07-19 13:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `host_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `picture` blob NOT NULL,
  `host_type_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`host_id`, `first_name`, `last_name`, `email`, `phone_number`, `picture`, `host_type_id`, `created_date`) VALUES
(1, 'Alvah', 'Will', 'esperanza83@example.com', '077.122.7682x0457', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 10, '1978-05-25 18:58:00'),
(2, 'Howell', 'Heller', 'elta.renner@example.net', '497.203.8195', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 13, '2020-03-30 22:07:51'),
(3, 'Weston', 'Kreiger', 'abner.spencer@example.net', '560-086-3684', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 7, '2016-03-09 00:21:50'),
(4, 'Oswaldo', 'DuBuque', 'xfadel@example.com', '1-031-216-7197x181', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 7, '2019-04-21 04:23:27'),
(5, 'Christ', 'Nicolas', 'lila.lind@example.net', '1-722-383-9748', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 18, '2000-05-29 13:35:50'),
(6, 'Pansy', 'Stroman', 'tmayer@example.org', '(530)281-3598', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 20, '1982-07-06 08:01:48'),
(7, 'Warren', 'Feeney', 'amelie.swaniawski@example.net', '+38(5)7601706197', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 13, '2014-09-30 09:48:11'),
(8, 'Stephany', 'Leannon', 'elaina15@example.com', '(023)355-7056', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 9, '2011-01-10 17:27:22'),
(9, 'Etha', 'Hessel', 'terrence72@example.org', '06000231415', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 20, '2004-08-23 18:20:19'),
(10, 'Brock', 'Watsica', 'bailey.tyrese@example.com', '998-894-7296x94271', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 3, '1992-11-28 14:07:09'),
(11, 'Olen', 'Ondricka', 'wklein@example.com', '396-965-7492x01665', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 15, '2004-02-07 23:24:46'),
(12, 'Merlin', 'Jerde', 'augustine.anderson@example.org', '304.289.6259', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 2, '2001-04-30 01:35:11'),
(13, 'Cicero', 'Trantow', 'wortiz@example.com', '1-015-261-9150x1220', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 12, '2016-09-07 20:53:51'),
(14, 'Marina', 'Kessler', 'ernser.otha@example.net', '(102)905-3217x88733', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 10, '1994-02-20 11:14:56'),
(15, 'Antone', 'Bechtelar', 'karlie21@example.com', '+25(3)9555146562', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 13, '2000-04-21 05:05:20'),
(16, 'Adan', 'Prosacco', 'fbartoletti@example.com', '818-345-9473', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 7, '1988-09-22 05:10:06'),
(17, 'Bernhard', 'Becker', 'pfannerstill.america@example.org', '951-057-2929x90731', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 16, '2009-09-16 03:08:46'),
(18, 'River', 'Gerhold', 'leuschke.coralie@example.com', '807.762.2237x88867', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 10, '2022-02-01 05:43:26'),
(19, 'Nicholas', 'Brekke', 'yundt.leilani@example.net', '(103)219-6402x3635', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 4, '1987-01-02 10:23:48'),
(20, 'Buck', 'Hauck', 'strosin.perry@example.com', '876-733-5329x08064', 0x68747470733a2f2f6c6f72656d666c69636b722e636f6d2f3634302f3438302f, 17, '1989-08-22 00:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `host_type`
--

CREATE TABLE `host_type` (
  `host_type_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `host_type`
--

INSERT INTO `host_type` (`host_type_id`, `type`, `created_date`) VALUES
(1, ' private room', '1983-04-18 06:26:26'),
(2, ' private room', '2006-02-11 08:40:17'),
(3, 'hotels', '1998-03-09 04:52:43'),
(4, ' private room', '2010-04-02 03:27:05'),
(5, ' private room', '1997-02-20 18:14:48'),
(6, ' private room', '1993-02-27 23:35:29'),
(7, ' private room', '1981-12-10 00:26:43'),
(8, ' private room', '1978-01-09 16:40:03'),
(9, 'hotels', '2021-01-10 20:09:06'),
(10, ' private room', '1989-11-25 16:36:48'),
(11, ' private room', '1992-12-11 15:26:11'),
(12, 'hotels', '2022-08-23 20:01:58'),
(13, ' private room', '1983-10-24 12:29:24'),
(14, ' private room', '1998-05-27 19:37:36'),
(15, ' private room', '2009-03-09 08:52:44'),
(16, 'hotels', '2000-12-20 13:29:06'),
(17, ' private room', '1980-06-22 11:15:08'),
(18, ' private room', '1987-01-18 11:38:54'),
(19, 'hotels', '1971-02-24 08:39:47'),
(20, 'hotels', '2001-10-11 08:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `language` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `issue_date` datetime NOT NULL,
  `invoice_status_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `price`, `language`, `currency`, `issue_date`, `invoice_status_id`, `payment_id`, `created_date`) VALUES
(1, '16', 'fr', 'FR', '1997-05-14 21:57:35', 1, 2, '2018-12-27 03:50:33'),
(2, '0', 'pt', 'GB', '1989-11-17 04:56:19', 12, 14, '2001-01-13 07:56:53'),
(3, '7747', 'fr', 'RU', '2012-08-27 11:24:16', 7, 8, '1979-11-01 12:25:55'),
(4, '6', 'fr', 'MX', '2015-07-30 09:51:28', 19, 3, '2016-08-29 02:14:51'),
(5, '219956', 'fr', 'PT', '1980-04-14 08:07:02', 1, 18, '1980-04-19 13:33:41'),
(6, '887', 'ru', 'US', '2001-09-26 06:56:10', 14, 16, '1985-04-11 15:15:45'),
(7, '5468', 'cn', 'IT', '2006-12-03 21:56:40', 10, 9, '2021-06-01 00:36:51'),
(8, '1436', 'en', 'FR', '2019-02-22 04:26:40', 10, 5, '1994-08-09 03:14:41'),
(9, '363987766', 'de', 'CA', '1975-04-28 08:58:08', 5, 9, '1993-11-14 11:27:47'),
(10, '55', 'cn', 'IE', '1996-10-23 18:53:13', 8, 7, '1978-07-04 14:39:20'),
(11, '70390582', 'de', 'IT', '2017-10-09 10:06:09', 5, 19, '2000-04-25 18:53:13'),
(12, '508973', 'de', 'PT', '2001-08-26 20:29:07', 9, 14, '1987-03-06 23:27:27'),
(13, '15459313', 'pt', 'ES', '2012-09-20 13:51:29', 19, 2, '1998-09-20 21:20:01'),
(14, '50', 'es', 'US', '1994-08-09 04:17:15', 6, 14, '1998-05-02 16:08:40'),
(15, '4465071', 'fr', 'MX', '2003-01-14 20:52:33', 12, 2, '2017-09-14 00:41:21'),
(16, '4', 'cn', 'IE', '1995-05-23 05:03:05', 6, 12, '1990-09-22 01:34:30'),
(17, '129040', 'it', 'CA', '1988-01-29 20:14:32', 3, 18, '1974-03-26 09:06:44'),
(18, '23321469', 'pt', 'GB', '1975-06-18 05:11:22', 6, 10, '2021-06-25 20:00:31'),
(19, '98703807', 'es', 'GB', '2021-03-15 05:25:44', 6, 4, '1975-12-26 11:49:07'),
(20, '1539', 'ru', 'PT', '1983-10-21 21:35:44', 13, 6, '1993-04-28 01:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_status`
--

CREATE TABLE `invoice_status` (
  `invoice_status_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_status`
--

INSERT INTO `invoice_status` (`invoice_status_id`, `status`, `created_date`) VALUES
(1, ' payment not completed', '1992-03-01 12:46:55'),
(2, 'payment completed', '2001-09-22 06:49:17'),
(3, 'payment completed', '2005-03-12 23:56:03'),
(4, ' payment not completed', '1998-02-03 03:36:03'),
(5, ' payment not completed', '2016-11-29 13:33:32'),
(6, 'payment completed', '1973-10-06 21:46:25'),
(7, ' payment not completed', '2002-06-03 01:03:59'),
(8, 'payment completed', '2002-12-09 10:21:44'),
(9, ' payment not completed', '1971-08-13 04:44:34'),
(10, 'payment completed', '2001-06-08 12:33:15'),
(11, 'payment completed', '1994-12-12 12:27:52'),
(12, 'payment completed', '1994-10-04 18:36:08'),
(13, 'payment completed', '2013-05-23 17:18:17'),
(14, ' payment not completed', '1974-08-11 19:54:56'),
(15, ' payment not completed', '2015-06-20 23:33:40'),
(16, ' payment not completed', '1979-10-19 13:04:58'),
(17, ' payment not completed', '2002-03-08 11:23:57'),
(18, 'payment completed', '2010-11-13 19:25:44'),
(19, ' payment not completed', '1992-08-17 10:04:46'),
(20, ' payment not completed', '2021-05-09 02:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `created_date`) VALUES
(1, 'American Express', '2011-04-09 04:22:07'),
(2, 'Visa', '1971-11-17 20:52:09'),
(3, 'Visa', '2021-10-02 12:18:11'),
(4, 'Visa', '2011-08-20 14:37:55'),
(5, 'MasterCard', '2006-05-09 07:24:17'),
(6, 'Visa', '1988-01-07 06:38:50'),
(7, 'Visa', '1993-02-07 12:36:10'),
(8, 'American Express', '1984-10-07 07:24:10'),
(9, 'Visa', '1991-05-08 04:48:28'),
(10, 'Visa', '2004-02-01 17:52:00'),
(11, 'Discover Card', '1974-05-27 14:49:29'),
(12, 'American Express', '1972-11-20 06:40:08'),
(13, 'MasterCard', '1994-08-02 07:25:47'),
(14, 'MasterCard', '1988-01-23 17:48:31'),
(15, 'Visa', '2002-08-29 10:50:55'),
(16, 'MasterCard', '2008-04-09 03:11:36'),
(17, 'Visa', '2014-05-08 07:37:07'),
(18, 'MasterCard', '2010-04-29 13:33:49'),
(19, 'American Express', '1988-06-08 19:37:34'),
(20, 'MasterCard', '2000-01-30 12:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `photographers`
--

CREATE TABLE `photographers` (
  `photographers_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `experience` varchar(70) NOT NULL,
  `skill_level` varchar(10) NOT NULL,
  `service_cost` float NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographers`
--

INSERT INTO `photographers` (`photographers_id`, `first_name`, `last_name`, `experience`, `skill_level`, `service_cost`, `created_date`) VALUES
(1, 'Dorothy', 'Schneider', '10 dd', '8', 70, '2020-07-14 12:14:26'),
(2, 'Harmon', 'Bruen', '77 dp', '4', 6457.9, '2003-05-22 18:31:28'),
(3, 'Lenna', 'Thompson', '18 do', '8', 1384640, '1971-04-16 00:28:57'),
(4, 'Dandre', 'Casper', '75 dz', '4', 1224.84, '1972-08-02 05:22:58'),
(5, 'Samson', 'Rohan', '39 oq', '9', 1923.87, '2002-11-19 04:24:34'),
(6, 'Jamir', 'Cassin', '77 gv', '5', 0, '1985-12-31 12:23:20'),
(7, 'Stewart', 'Hintz', '72 yy', '6', 3, '1983-02-07 20:16:57'),
(8, 'Destany', 'Koelpin', '77 cx', '1', 3.8502, '1998-11-25 12:20:43'),
(9, 'Ellsworth', 'Parisian', '80 lq', '2', 5, '2020-05-11 22:23:26'),
(10, 'Cary', 'Brakus', '63 cj', '4', 0, '1971-06-08 22:44:17'),
(11, 'Allie', 'Rau', '78 ps', '7', 978348, '2000-11-29 04:06:02'),
(12, 'Liza', 'Schoen', '66 xc', '6', 1214.68, '2007-04-14 01:46:18'),
(13, 'Dayne', 'Jacobs', '20 yr', '8', 57.1816, '1990-04-17 18:45:53'),
(14, 'Abraham', 'Hermann', '28 se', '5', 387835, '2021-08-25 13:54:26'),
(15, 'Aron', 'Marvin', '18 kq', '8', 578158000, '1983-09-16 06:03:23'),
(16, 'Lavon', 'Welch', '49 xs', '5', 70.0586, '2016-04-11 09:13:59'),
(17, 'Stephen', 'Hand', '28 vq', '7', 96495600, '2009-03-09 15:21:39'),
(18, 'Mandy', 'McKenzie', '02 we', '7', 16.4018, '2018-04-28 10:25:05'),
(19, 'Rogers', 'Gerlach', '30 lu', '6', 5002.11, '2020-06-28 23:29:23'),
(20, 'Macey', 'Dibbert', '98 hh', '8', 0, '2000-01-25 06:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `food_availability` tinyint(1) NOT NULL,
  `cleaning_service` tinyint(1) NOT NULL,
  `parking_available` tinyint(1) NOT NULL,
  `step_free_entrance` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `food_availability`, `cleaning_service`, `parking_available`, `step_free_entrance`, `created_date`) VALUES
(1, 0, 0, 1, 1, '2019-07-20 05:05:57'),
(2, 1, 1, 1, 0, '1977-05-11 17:55:14'),
(3, 1, 1, 0, 0, '2015-06-15 00:49:03'),
(4, 0, 1, 0, 0, '1988-12-02 16:27:39'),
(5, 0, 0, 0, 1, '1970-08-21 06:18:35'),
(6, 1, 1, 1, 1, '2018-05-07 09:15:12'),
(7, 1, 1, 1, 0, '1995-05-23 18:32:33'),
(8, 0, 1, 0, 1, '2006-09-25 23:49:55'),
(9, 1, 1, 0, 0, '2016-10-21 18:46:06'),
(10, 0, 0, 0, 0, '2013-08-10 14:41:46'),
(11, 0, 0, 1, 1, '2018-09-03 10:06:18'),
(12, 0, 1, 1, 0, '1987-05-29 01:48:56'),
(13, 0, 1, 0, 0, '2019-03-05 10:35:59'),
(14, 0, 1, 1, 0, '2018-07-04 17:25:32'),
(15, 0, 0, 0, 1, '1978-11-04 23:15:15'),
(16, 1, 0, 0, 1, '1995-01-13 17:17:46'),
(17, 0, 0, 1, 1, '2007-06-09 16:04:26'),
(18, 1, 1, 1, 1, '1993-05-22 10:23:03'),
(19, 1, 0, 0, 0, '1997-04-09 03:31:52'),
(20, 1, 1, 0, 1, '2009-04-28 05:30:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`accommodation_id`),
  ADD KEY `accommodation_availability_id` (`accommodation_availability_id`),
  ADD KEY `accommodation_location_id` (`accommodation_location_id`),
  ADD KEY `host_id` (`host_id`),
  ADD KEY `photographers_id` (`photographers_id`),
  ADD KEY `accommodation_ibfk_5` (`amenities_id`);

--
-- Indexes for table `accommodation_availability`
--
ALTER TABLE `accommodation_availability`
  ADD PRIMARY KEY (`accommodation_availability_id`);

--
-- Indexes for table `accommodation_location`
--
ALTER TABLE `accommodation_location`
  ADD PRIMARY KEY (`accommodation_location_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`amenities_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `guest_id_2` (`guest_id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `accommodation_id` (`accommodation_id`),
  ADD KEY `booking_status_id` (`booking_status_id`),
  ADD KEY `customer_support_id` (`customer_support_id`),
  ADD KEY `booking_feedback_id` (`booking_feedback_id`),
  ADD KEY `coupons_id` (`coupons_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `booking_feedback`
--
ALTER TABLE `booking_feedback`
  ADD PRIMARY KEY (`booking_feedback_id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`booking_status_id`);

--
-- Indexes for table `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`communication_id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `host_id` (`host_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupons_id`);

--
-- Indexes for table `customer_support`
--
ALTER TABLE `customer_support`
  ADD PRIMARY KEY (`customer_support_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`favourites_id`),
  ADD KEY `accommodation_id` (`accommodation_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guest_id`),
  ADD KEY `guest_address_id` (`guest_address_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `guest_address`
--
ALTER TABLE `guest_address`
  ADD PRIMARY KEY (`guest_address_id`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`host_id`),
  ADD KEY `host_type_id` (`host_type_id`);

--
-- Indexes for table `host_type`
--
ALTER TABLE `host_type`
  ADD PRIMARY KEY (`host_type_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoice_status_id` (`invoice_status_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `invoice_status`
--
ALTER TABLE `invoice_status`
  ADD PRIMARY KEY (`invoice_status_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `photographers`
--
ALTER TABLE `photographers`
  ADD PRIMARY KEY (`photographers_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `accommodation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `accommodation_availability`
--
ALTER TABLE `accommodation_availability`
  MODIFY `accommodation_availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `accommodation_location`
--
ALTER TABLE `accommodation_location`
  MODIFY `accommodation_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `amenities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_feedback`
--
ALTER TABLE `booking_feedback`
  MODIFY `booking_feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `booking_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `communication`
--
ALTER TABLE `communication`
  MODIFY `communication_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_support`
--
ALTER TABLE `customer_support`
  MODIFY `customer_support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `favourites_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `guest_address`
--
ALTER TABLE `guest_address`
  MODIFY `guest_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `host`
--
ALTER TABLE `host`
  MODIFY `host_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `host_type`
--
ALTER TABLE `host_type`
  MODIFY `host_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoice_status`
--
ALTER TABLE `invoice_status`
  MODIFY `invoice_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `photographers`
--
ALTER TABLE `photographers`
  MODIFY `photographers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`accommodation_availability_id`) REFERENCES `accommodation_availability` (`accommodation_availability_id`),
  ADD CONSTRAINT `accommodation_ibfk_2` FOREIGN KEY (`accommodation_location_id`) REFERENCES `accommodation_location` (`accommodation_location_id`),
  ADD CONSTRAINT `accommodation_ibfk_3` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`),
  ADD CONSTRAINT `accommodation_ibfk_4` FOREIGN KEY (`photographers_id`) REFERENCES `photographers` (`photographers_id`),
  ADD CONSTRAINT `accommodation_ibfk_5` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`amenities_id`) ON DELETE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`guest_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_status` (`booking_status_id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`customer_support_id`) REFERENCES `customer_support` (`customer_support_id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`booking_feedback_id`) REFERENCES `booking_feedback` (`booking_feedback_id`),
  ADD CONSTRAINT `booking_ibfk_6` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`coupons_id`),
  ADD CONSTRAINT `booking_ibfk_7` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);

--
-- Constraints for table `booking_feedback`
--
ALTER TABLE `booking_feedback`
  ADD CONSTRAINT `booking_feedback_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`guest_id`);

--
-- Constraints for table `communication`
--
ALTER TABLE `communication`
  ADD CONSTRAINT `communication_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`guest_id`),
  ADD CONSTRAINT `communication_ibfk_2` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`);

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`);

--
-- Constraints for table `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`guest_address_id`) REFERENCES `guest_address` (`guest_address_id`),
  ADD CONSTRAINT `guests_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `guests_ibfk_3` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`);

--
-- Constraints for table `host`
--
ALTER TABLE `host`
  ADD CONSTRAINT `host_ibfk_1` FOREIGN KEY (`host_type_id`) REFERENCES `host_type` (`host_type_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`invoice_status_id`) REFERENCES `invoice_status` (`invoice_status_id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
