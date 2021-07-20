-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 07:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelopedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cid` int(10) NOT NULL,
  `Cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cid`, `Cname`) VALUES
(1, 'Australia'),
(3, 'France'),
(4, 'Honkong'),
(5, 'Maldives'),
(6, 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `msg` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `firstName`, `lastName`, `email`, `phone`, `msg`) VALUES
(4, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 'hii'),
(5, '34sdfdsf', 'sdf ff', 'vedmadhu68@gmail.com', '9106847407', '');

-- --------------------------------------------------------

--
-- Table structure for table `customise_dom`
--

CREATE TABLE `customise_dom` (
  `tourName` varchar(30) NOT NULL,
  `tourPrice` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customise_dom`
--

INSERT INTO `customise_dom` (`tourName`, `tourPrice`) VALUES
('Flamingo', '10,000'),
('Hind Tours', '5234'),
('Happy Travellers', '10,403'),
('Namaste Tours', '7865'),
('World Around Travellers', '9546');

-- --------------------------------------------------------

--
-- Table structure for table `cust_destination`
--

CREATE TABLE `cust_destination` (
  `tour_id` int(10) UNSIGNED NOT NULL,
  `destination_number` int(10) UNSIGNED NOT NULL,
  `destination_name` varchar(100) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `days` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_destination`
--

INSERT INTO `cust_destination` (`tour_id`, `destination_number`, `destination_name`, `price`, `days`) VALUES
(1, 1, 'Goa', 3000, 1),
(2, 1, 'Goa', 3800, 1),
(3, 1, 'Goa', 3800, 1),
(4, 1, 'Goa', 3000, 1),
(5, 1, 'Goa', 3000, 1),
(6, 1, 'Goa', 3000, 1),
(6, 2, 'Goa', 3000, 0),
(6, 3, 'Surat', 2000, 0),
(7, 1, 'Goa', 4000, 1),
(8, 1, 'Goa', 3000, 1),
(9, 1, 'Goa', 3000, 1),
(10, 1, 'Goa', 3800, 1),
(11, 1, 'Goa', 3800, 10),
(11, 2, 'Himachal Pradesh', 2200, 10),
(11, 3, 'Goa', 3800, 10),
(15, 1, 'Goa', 38000, 10),
(127, 1, 'Maharastra', 4000, 3),
(127, 2, 'Goa', 5500, 3),
(127, 3, 'Kerala', 4200, 4),
(128, 1, 'Maharastra', 40000, 3),
(128, 2, 'Goa', 55000, 3),
(128, 3, 'Kerala', 42000, 4),
(129, 1, 'Maharastra', 310000, 30),
(129, 2, 'Goa', 460000, 30),
(129, 3, 'Kerala', 250000, 30),
(130, 1, 'Maharastra', 310000, 30),
(130, 2, 'Goa', 460000, 30),
(130, 3, 'Kerala', 250000, 30),
(131, 1, 'Maharastra', 130000, 10),
(131, 2, 'Goa', 480000, 30),
(131, 3, 'Kerala', 270000, 30),
(132, 1, 'Maharastra', 6000, 3),
(132, 2, 'Goa', 9000, 4),
(132, 3, 'Kerala', 3800, 1),
(133, 1, 'Maharastra', 6000, 3),
(133, 2, 'Goa', 9000, 4),
(133, 3, 'Kerala', 3800, 1),
(134, 1, 'Maharastra', 3000, 3),
(134, 2, 'Goa', 6000, 4),
(134, 3, 'Kerala', 800, 1),
(135, 1, 'Maharastra', 3000, 3),
(135, 2, 'Goa', 6000, 4),
(135, 3, 'Kerala', 800, 1),
(135, 4, 'Karnatak', 6000, 4),
(136, 1, 'Maharastra', 3000, 3),
(136, 2, 'Goa', 6000, 4),
(136, 3, 'Kerala', 800, 1),
(137, 1, 'Goa', 4000, 10),
(138, 1, 'Goa', 1000, 2),
(139, 1, 'Goa', 1000, 2),
(140, 1, 'Goa', 1000, 2),
(141, 1, 'Goa', 1000, 2),
(142, 1, 'Goa', 1000, 2),
(143, 1, 'Goa', 1000, 2),
(144, 1, 'Goa', 1000, 2),
(145, 1, 'Goa', 1000, 2),
(146, 1, 'Goa', 1000, 2),
(147, 1, 'Goa', 1000, 2),
(148, 1, 'Goa', 1000, 2),
(149, 1, 'Goa', 1000, 2),
(150, 1, 'Goa', 1000, 2),
(151, 1, 'Goa', 1000, 2),
(152, 1, 'Goa', 1000, 2),
(153, 1, 'Goa', 1000, 2),
(154, 1, 'Goa', 1000, 2),
(155, 1, 'Goa', 1000, 2),
(156, 1, 'Gujarat', 2000, 3),
(157, 1, 'Gujarat', 2000, 3),
(158, 1, 'Gujarat', 2000, 3),
(159, 1, 'Gujarat', 2000, 3),
(160, 1, 'Gujarat', 2000, 3),
(161, 1, 'Gujarat', 2000, 3),
(162, 1, 'Gujarat', 2000, 3),
(163, 1, 'Goa', 1000, 1),
(164, 1, 'Goa', 1000, 1),
(165, 1, 'Goa', 1000, 1),
(166, 1, 'Goa', 1000, 1),
(167, 1, 'Goa', 1000, 1),
(168, 1, 'Goa', 1000, 1),
(169, 1, 'Goa', 1000, 1),
(170, 1, 'Goa', 1000, 1),
(171, 1, 'Goa', 1200, 1),
(172, 1, 'Goa', 1200, 1),
(173, 1, 'Goa', 1200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cust_tour`
--

CREATE TABLE `cust_tour` (
  `tour_id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_address` varchar(254) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `commancing_place` varchar(100) NOT NULL,
  `commancing_date` date NOT NULL,
  `members` int(10) UNSIGNED NOT NULL,
  `number_of_children` int(11) NOT NULL DEFAULT 0,
  `number_of_double_bed_rooms` int(11) NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_tour`
--

INSERT INTO `cust_tour` (`tour_id`, `name`, `email_address`, `phone_number`, `commancing_place`, `commancing_date`, `members`, `number_of_children`, `number_of_double_bed_rooms`, `price`) VALUES
(1, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 3000),
(2, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 3800),
(3, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 3800),
(4, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 3000),
(5, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 3000),
(6, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 8000),
(7, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 0, 4000),
(8, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 3000),
(9, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 4, 2, 3000),
(10, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 3800),
(11, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 9800),
(12, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 0),
(13, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 0),
(14, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 0),
(15, 'Ved H Madhu', 'vedmadhu68@gmail.com', '9106847407', 'Goa', '2021-03-15', 4, 8, 2, 38000);

-- --------------------------------------------------------

--
-- Table structure for table `dombook`
--

CREATE TABLE `dombook` (
  `UserId` int(10) NOT NULL,
  `Pid` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adults` int(30) NOT NULL,
  `children` int(30) NOT NULL,
  `comments` varchar(150) NOT NULL,
  `confirmation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dombook`
--

INSERT INTO `dombook` (`UserId`, `Pid`, `firstName`, `lastName`, `email`, `phone`, `adults`, `children`, `comments`, `confirmation`) VALUES
(4, 5, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 13, 11, 'hii', ''),
(5, 21, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 3, 2, 'hiii', ''),
(6, 14, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 5, 3, 'hellooo', ''),
(7, 12, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 3, 2, 'hii', ''),
(8, 12, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 3, 2, 'hii', ''),
(9, 9, 'Kavish', 'Khatri', '18ituon016@ddu.ac.in', '8758851411', 5, 3, 'hii', '');

-- --------------------------------------------------------

--
-- Table structure for table `domcategory`
--

CREATE TABLE `domcategory` (
  `Cid` int(3) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `hotel_charge_double` int(10) UNSIGNED NOT NULL,
  `hotel_charge_single` int(11) NOT NULL DEFAULT 0,
  `hotel_charge_for_extra_children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domcategory`
--

INSERT INTO `domcategory` (`Cid`, `Cname`, `hotel_charge_double`, `hotel_charge_single`, `hotel_charge_for_extra_children`) VALUES
(1, 'Goa', 1500, 1000, 200),
(2, 'Gujarat', 1000, 700, 200),
(3, 'Himachal Pradesh', 700, 500, 200),
(4, 'Leh Ladakh', 1200, 800, 200),
(5, 'Maharastra', 1000, 600, 200),
(6, 'Rajasthan', 900, 600, 100),
(7, 'Palanpur', 500, 350, 100),
(17, 'Surat', 1000, 600, 100),
(18, 'Kerala', 800, 500, 100),
(20, 'Karnatak', 1500, 1000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `domcust`
--

CREATE TABLE `domcust` (
  `Dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `adults` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domcust`
--

INSERT INTO `domcust` (`Dest`, `Name`, `email`, `phone`, `days`, `adults`, `date`, `price`) VALUES
('Goa', 'Kavish Khatri', 'kborad@gmail.com', '8758851411', '3', '2', '', '47190'),
('Goa', 'Kavish Khatri', '18ituon016@ddu.ac.in', '8758851411', '3', '2', '2021-03-17', '47190'),
('Leh ladakh', 'Heena Khatri', 'b15khatri@gmail.com', '8758851411', '3', '2', '2021-03-30', '62418'),
('', 'Kavish Khatri', 'b15khatri@gmail.com', '8758851411', '1', '1', '2021-03-24', ''),
('', 'Kavish Khatri', 'kborad@gmail.com', '8758851411', '3', '2', '2021-03-31', ''),
('Goa', 'Kavish Khatri', '18ituon016@gmail.com', '8758851411', '', '', '2021-03-11', ''),
('Goa', 'Kavish Khatri', '18ituon016@gmail.com', '8758851411', '3', '2', '2021-03-11', '1234'),
('Rajasthan', 'Kavish Khatri', '18ituon016@ddu.ac.in', '8758851411', '3', '1', '2021-04-07', '9000'),
('Gujarat', 'Name ', 'something@something.com', '1234567899', '4', '5', '2021-01-05', '160000');

-- --------------------------------------------------------

--
-- Table structure for table `domdata`
--

CREATE TABLE `domdata` (
  `Id` int(10) NOT NULL,
  `ctg` int(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `preferableMonth` varchar(20) NOT NULL,
  `adults` varchar(3) NOT NULL,
  `children` varchar(3) NOT NULL,
  `package` varchar(20) NOT NULL,
  `comments` varchar(150) NOT NULL,
  `Reply` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dompackages`
--

CREATE TABLE `dompackages` (
  `Pid` int(10) NOT NULL,
  `Ctg` int(10) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `Pamt` varchar(50) NOT NULL,
  `Pdetail` varchar(50) NOT NULL,
  `PtourList1` varchar(50) NOT NULL,
  `PtourList2` varchar(50) NOT NULL,
  `PtourList3` varchar(50) NOT NULL,
  `PtourList4` varchar(50) NOT NULL,
  `PtourList5` varchar(30) NOT NULL,
  `Pimg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dompackages`
--

INSERT INTO `dompackages` (`Pid`, `Ctg`, `Pname`, `Pamt`, `Pdetail`, `PtourList1`, `PtourList2`, `PtourList3`, `PtourList4`, `PtourList5`, `Pimg`) VALUES
(1, 1, 'Flamingo Tours', ' 21,000/- ', '4 Days, 3 Nights package', 'Parasailing', 'Wakeboarding', 'Flea Market', 'Wind Surfing', '', 'goa1.jpg'),
(2, 1, 'Happy Travelers', '20,000/-', '4 Days, 3 Nights package', 'DudhSagar Falls', 'National Park', ' Sashyari Spice Farm', 'Jeep Safari', '', 'goa3.jpg'),
(3, 1, 'Hind Tours', '21,000/-', '4 Days, 3 Nights package', ' Club Cubana', 'Night Market', ' Se cathedral', 'Bom Jesus', '', 'goa4.jpg'),
(4, 1, 'Namaste Tours', '19,000/-', '4 Days, 3 Nights package', 'Calangute Beach', 'Museum', 'Candolim Beach', 'Fort Augada', '', 'goa2.jpg'),
(5, 2, 'World around travell', '25,000/-', '4 Days, 3 Nights package', 'Safari', 'Jamjir Fall', 'Museum', 'Resorts', 'Forest Exploration', 'gujarat1.jpg'),
(6, 2, 'Flamingo Tours', ' 32,000/-', '4 Days, 3 Nights package', 'Rann of Kutch', 'Dholavira', ' Mandvi Beach', 'Kutch Sanctuary', ' Prag Mahal Palace', 'gujarat3.jpg'),
(7, 2, 'Happy Travellers', ' 10,000/-', '4 Days, 3 Nights package', 'Somnath Temple', 'Surya Mandir', 'Market', ' Patan Museum', 'Lakshminarayan Temple', 'gujarat2.jpg'),
(8, 2, 'Hind tours', '21,000/-', '4 Days, 3 Nights package', ' Diu Fort', ' Nagao Beach', 'Naida Caves', 'Devka Beach', 'Sunset Point', 'gujarat4.jpg'),
(9, 3, 'Namaste Tours', '21,000/-', '5 Days, 4 Nights package', 'Solang Valley', 'Rohtang pass', 'Beas Kund Trek', 'Hidimba temple', 'Nature Park', 'manali1.jpg'),
(10, 3, 'World around', '20,000/-', '5 Days, 4 Nights package', 'Khajjiar', 'Punchpula', ' Dainkund Peak', 'Kalatop Khaijjar Sanctuary', 'Satdhara Falls', 'hp-4.jpg'),
(11, 3, 'Flamingo', '20,000/-', '5 Days, 4 Nights package', 'Kheerganga Trek', 'Parvati River', 'Kasol Trek', 'Malana', 'Sar Pass Trek', 'hp-1.jpg'),
(12, 3, 'Happy Travellers', '23,000/-', '5 Days, 4 Nights package', 'Chandratal Lake', 'Spliti Vallery Trekking', 'Kunzum Pass', 'Pin Valley Trek', 'Key Monestery', 'hp-2.jpg'),
(13, 4, 'Hind tours', '20,000/-', '4 Days, 3 Nights package', ' Magnetic Hill', 'Pangong Lake', ' Shanti Stupa', 'Leh Palace', '', 'lehladakh1.jpg'),
(14, 4, 'Namaste Tours', ' 22,000/-', '4 Days, 3 Nights package', 'Mountain Bike Ride', ' Trekking in Ladakh', 'Markets', 'Tso Moriri', '', 'lehladakh2.jpg'),
(15, 4, 'World around', ' 15,000/-', '4 Days, 3 Nights package', 'Nubra Valley', 'Diskit Moanstery', 'Camel Safari', ' Yarab tso Lake', '', 'lehladakh3.jpg'),
(16, 4, 'Flamingo Tours', '11,000/-', '4 Days, 3 Nights package', 'Hall of Fame', ' Zanskar Valley', 'SiteSeeing', 'Chadar Trek', '', 'lehladakh4.jpg'),
(17, 5, 'Happy travellers', '18,000/-', '4 Days, 3 Nights package', ' Gateway of India', ' Marine Drive', 'Chowpatty', ' Elephanta Caves', '', 'maharastra2.jpg'),
(18, 5, 'Namaste tours', '20,000/-', '4 Days, 3 Nights package', 'Tamhini Ghat', 'SightSeeing', 'Devkund WaterFall', 'Torna Fort', '', 'maharastra5.jpg'),
(19, 5, 'World around', '20,000/-', '4 Days, 3 Nights package', 'Imagica', 'Shaniwar Wada', ' Aga Khan Palace', 'Nightlife in Pune', '', 'maharastra4.jpg'),
(20, 5, 'Flamingo tours', '21,000/-', '4 Days, 3 Nights package', 'River Rafting', 'Bhira Dam', 'Plus Valley Trek', ' Ghosala Fort', '', 'maharastra3.jpg'),
(21, 6, 'Happy travellers', '21,000/-', '4 Days, 3 Nights package', 'Amer Fort', 'Jantar Mantar', 'Jal Mahal', 'Nahargarh Fort', '', 'rajasthan-1.jpg'),
(22, 6, 'Hind tours', '22,000/-', '4 Days, 3 Nights package', 'Lake Pichola', 'City Palace', 'Saheliyon-ki-bali', ' Monsoon Palace', '', 'rajasthan-2.jpg'),
(23, 6, 'Namaste tours', '21,000/-', '4 Days, 3 Nights package', 'Mehrangarh Fort', 'Umaid Bhawan Palace', 'Mandore Garden', 'Sardar Market', '', 'rajasthan-3.jpg'),
(24, 6, 'World around', '22,000/-', '4 Days, 3 Nights package', 'National Park', 'Ranthambore Fort', 'Resort', 'Trinetra Ganesh Temple', '', 'rajasthan-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `intbook`
--

CREATE TABLE `intbook` (
  `UserId` int(50) NOT NULL,
  `Pid` int(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adults` int(10) NOT NULL,
  `children` int(10) NOT NULL,
  `comments` varchar(150) NOT NULL,
  `confirmation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intbook`
--

INSERT INTO `intbook` (`UserId`, `Pid`, `firstName`, `lastName`, `email`, `phone`, `adults`, `children`, `comments`, `confirmation`) VALUES
(14, 16, 'Kavish', 'Khatri', '18ituon016@ddu.ac.in', '8758851411', 4, 5, 'helooo', ''),
(15, 13, 'Kavish', 'Khatri', 'kavishkhatri23@gmail.com', '8758851411', 5, 3, 'hii', '');

-- --------------------------------------------------------

--
-- Table structure for table `intdata`
--

CREATE TABLE `intdata` (
  `Id` int(10) NOT NULL,
  `ctg` varchar(30) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `preferableMonth` varchar(20) NOT NULL,
  `adults` int(3) NOT NULL,
  `children` int(3) NOT NULL,
  `package` varchar(30) NOT NULL,
  `comments` varchar(150) NOT NULL,
  `Reply` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intdata`
--

INSERT INTO `intdata` (`Id`, `ctg`, `firstName`, `lastName`, `email`, `phone`, `preferableMonth`, `adults`, `children`, `package`, `comments`, `Reply`) VALUES
(13, '4', 'Kavish', 'Khatri', 'kavish@gmail.com', '9877777777', 'November', 2, 0, 'Entire Package', '', 'Sent'),
(14, '1', 'Nandish', 'Thakkar', 'nandish@gmail.com', '8000000000', 'May', 2, 0, 'Entire Package', '', 'Sent');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Pid` int(10) NOT NULL,
  `Ctg` int(10) NOT NULL,
  `Pname` varchar(50) NOT NULL,
  `Pamt` varchar(10) NOT NULL,
  `Pdetail` varchar(50) NOT NULL,
  `PtourList1` varchar(100) NOT NULL,
  `PtourList2` varchar(100) NOT NULL,
  `PtourList3` varchar(100) NOT NULL,
  `PtourList4` varchar(100) NOT NULL,
  `PtourList5` varchar(30) NOT NULL,
  `Pimg` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Pid`, `Ctg`, `Pname`, `Pamt`, `Pdetail`, `PtourList1`, `PtourList2`, `PtourList3`, `PtourList4`, `PtourList5`, `Pimg`) VALUES
(1, 1, 'Flamingo Tours', '80,000', '5 Days, 4 Nights package', 'Opera House', 'Harbour Bridge', 'Bondi Beach', 'Port Jackson Bay', 'Royal Botanic Garden ', 'australia1.jpg'),
(2, 1, 'Happy Tours', '72,000', '5 Days, 4 Nights package', 'National Park', 'Remarkable rocks', 'Vivonne Bay', 'Raptor Domain', 'Sahara Adventure Center', 'australia2.jpg'),
(3, 1, 'Namaste Tours', '71,000', '5 Days, 4 Nights package', 'Esplanade fitzroy', 'Skyrail rainforest', 'Cabelway', 'Kuranda', 'Fitzroy Island', 'australia3.jpg'),
(4, 1, 'World Tours', '82,000', '5 Days,  4 Nights package', 'Great Ocean Road', 'Eureka skydeck', 'City Tour', 'Botanic Garden', 'Queen Victoria Market', 'australia8.jpg'),
(5, 2, 'Flamingo Tours', '50,000', '4 Days, 3 Nights package', 'Burj Khalifa', 'Dessert Safari', 'Burj Al Arab', 'Dubai Mall', '', 'dubai-1.jpg'),
(6, 2, 'Happy Tours', '45,000', '4 Days, 3 Nights package', 'Ferrari World', 'Grand Mosque', 'Emirates palace', 'Corniche roads', '', 'dubai-4.jpg'),
(7, 2, 'Namaste Tours', '55,000', '4 Days, 3 Nights package', 'The palm-Jumeriah', 'Beach Club', 'Al fardh', ' Aquanventure beach', '', 'dubai-9.jpg'),
(8, 2, 'World Tours', '46,000', '4 Days, 3 Nights package', 'Museum', 'Aquarium', 'Montazah Parks', ' Al manzar Beach', '', 'dubai-10.jpg'),
(9, 3, 'Flamingo Tours', '75,000', '5 Days, 4 Nights package', 'Promenade', 'Musee matisse', 'Castle of nice', 'Castle Hill', '', 'france-7.jpg'),
(10, 3, 'Happy Tours', '80,000', '5 Days, 4 Nights package', 'Eiffel Tower', 'Louvre Museum', 'Cathedrale norte-dame de paris', 'Arc de triomphe', '', 'france-1.jpg'),
(11, 3, 'Namaste Tours', '70,000', '5 Days,  4 Nights package', 'Promenad de la croisette', ' Lerins island', 'Pampelinne', 'Palasis des festivels', '', 'france0.jpg'),
(12, 3, 'World Tours', '72,000', '5 Days, 4 Nights package', 'Musee Picasso', 'Cape d\'antibes', 'Fort Carre', ' Plage de la garoupe', '', 'france-6.jpg'),
(13, 4, 'Flamingo Tours', '40,000', '4 Days, 3 Nights package', 'Asian Animals Safari', 'Thrilling Rides', 'Ocean Theatre', 'Sky Gondola', '', 'honkong6.jpg'),
(14, 4, 'Happy Tours', '41,000', '4 Days, 3 Nights package', 'City Tour', 'Inspiration lake', 'Disney Land', 'Princess castles', '', 'honkong1.jpg'),
(15, 4, 'Namaste Tours', '45,000', '4 Days,  3 Nights package', 'Star Ferry', 'Victoria Harbour', 'Avenue of stars', ' Sky observation deck', '', 'honkong3.jpg'),
(16, 4, 'World Tours.', '38,000', '4 Days, 3 Nights package', 'Big buddha', 'Nging ping 360', 'Cheung chau', ' Hall of buddhas', '', 'honkong5.jpg'),
(17, 5, 'Flamingo Tours', '90,000', '5 Days, 4 Nights package', 'Sea of stars', 'Faarrufushi', 'Ifuru', 'Private beach Resort', '', 'maldives-5.jpg'),
(18, 5, 'Happy Tours', '94,000', '5 Days, 4 Nights package', 'Underwater Diving', 'Water sports', 'Chill Resorts', 'Beach activities', '', 'maldives2.jpg'),
(19, 5, 'Namaste Tours', '91,000', '4 Days,  3 Nights package', 'Olhuveli', 'Kunahandhoo', 'Medhoo', 'Fornadhoo', '', 'maldives-4.jpg'),
(20, 5, 'World Tours', '1,00,000', '4 Days, 3 Nights package', 'Hulhule Island', 'Artificial beach', 'Male', 'Villingili beach', '', 'maldives-1.jpg'),
(21, 6, 'Flamingo Tours', '69,000', '5 Days, 4 Nights package', ' Machlear\'s Beach', 'Cape of good hope', 'Lion\'s head', 'Boulder\'s Beach', 'Table Mountain National Park', 'south africa1.jpeg'),
(22, 6, 'Happy Tours', '62,000', '5 Days, 4 Nights package', 'Kruger National Park', 'Timbavti reserve', 'Lake panic', 'Sabi sands reserve', 'Mala Mala Game Reserve', 'south africa2.jpeg'),
(23, 6, 'Namaste Tours', '66,000', '5 Days,  4 Nights package', 'Gold Reef City', 'WeOriginate', 'Montecasino', 'ApartHeid Museum', 'Craddle of humandkind', 'south africa3.jpeg'),
(24, 6, 'World Tours', '60,000', '5 Days, 4 Nights package', 'Cango Caves', 'Swartberg pass', 'Birds of eden', 'Outeniqua mountains', 'Robberg', 'south africa4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `userType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `userType`) VALUES
(1, 'Kavish14', '1411', 'admin'),
(12, 'madhu', '0000', 'staff'),
(13, 'madhu', '0000', 'staff'),
(14, 'khushi09', '1515', 'staff'),
(15, 'khushi09', '1515', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cust_destination`
--
ALTER TABLE `cust_destination`
  ADD PRIMARY KEY (`tour_id`,`destination_number`);

--
-- Indexes for table `cust_tour`
--
ALTER TABLE `cust_tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `dombook`
--
ALTER TABLE `dombook`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `domcategory`
--
ALTER TABLE `domcategory`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `domdata`
--
ALTER TABLE `domdata`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dompackages`
--
ALTER TABLE `dompackages`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `intbook`
--
ALTER TABLE `intbook`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `intdata`
--
ALTER TABLE `intdata`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cust_tour`
--
ALTER TABLE `cust_tour`
  MODIFY `tour_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dombook`
--
ALTER TABLE `dombook`
  MODIFY `UserId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `domcategory`
--
ALTER TABLE `domcategory`
  MODIFY `Cid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `domdata`
--
ALTER TABLE `domdata`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dompackages`
--
ALTER TABLE `dompackages`
  MODIFY `Pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `intbook`
--
ALTER TABLE `intbook`
  MODIFY `UserId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `intdata`
--
ALTER TABLE `intdata`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `Pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cust_destination`
--
ALTER TABLE `cust_destination`
  ADD CONSTRAINT `cust_destination_reference` FOREIGN KEY (`tour_id`) REFERENCES `cust_tour` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
