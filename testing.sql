-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2020 at 05:49 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `chatid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL,
  PRIMARY KEY (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

DROP TABLE IF EXISTS `chatroom`;
CREATE TABLE IF NOT EXISTS `chatroom` (
  `chatroomid` int(11) NOT NULL AUTO_INCREMENT,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`chatroomid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(1, 'My First Chat Room', '2020-10-02 13:20:18', 'leeann', 2),
(2, 'Public Chat Room :)', '2020-10-02 13:20:51', '', 3),
(3, 'Admin Chat Room', '2020-10-02 13:21:24', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

DROP TABLE IF EXISTS `chat_member`;
CREATE TABLE IF NOT EXISTS `chat_member` (
  `chat_memberid` int(11) NOT NULL AUTO_INCREMENT,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`chat_memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_subject` text NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_subject`, `comment_text`, `comment_status`) VALUES
(1, 'Midhat', 'how are you...', 1),
(2, 'Midhat', 'Hey', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_subject`, `comment_text`, `comment_status`) VALUES
(1, 'Travel to meerut', 'anyone available?', 1),
(2, 'Midhat', 'anyone available im going to meerut?', 1),
(3, 'Midhat', 'Hey.what\'s up?', 1),
(4, 'varnika', 'hie midhat', 1),
(5, 'Midhat', 'Hello everyone', 1),
(6, 'Varnika', 'Hie Midhat', 1),
(7, 'Google', 'https://www.coursera.org/', 1),
(8, 'Amazon', 'Hiring Interns', 1),
(9, 'Midhat', 'Hello there', 1),
(10, 'Midhat', 'hie', 1),
(11, 'Midhat', 'Hie', 1),
(12, 'Midhat', 'Hie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_chat`
--

DROP TABLE IF EXISTS `comment_chat`;
CREATE TABLE IF NOT EXISTS `comment_chat` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_subject` text NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_chat`
--

INSERT INTO `comment_chat` (`comment_id`, `comment_subject`, `comment_text`, `comment_status`) VALUES
(1, 'Midhat', 'Want a travelmate!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_robo`
--

DROP TABLE IF EXISTS `comment_robo`;
CREATE TABLE IF NOT EXISTS `comment_robo` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_subject` varchar(120) NOT NULL,
  `comment_text` varchar(120) NOT NULL,
  `comment_status` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(4, 'Bill Gates', 'bill@microsoft.com', 993737, 772484884, '45, Palo Alto House, Marine Drive', 'South Carolina', 'Microsoft', 'Kurunegala', 'Active', '2018-04-30 15:14:02'),
(14, 'Steve Jobs', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Monaragala', 'Disabled', '2018-05-01 12:03:10'),
(18, 'Asitha Silva', 'asitha@gmail.com', 777987654, 0, 'No. 3, Radcliff Avenue, School Lane', 'Kalutara South', 'Kalutara', 'Kalutara', 'Active', '2018-05-02 09:52:28'),
(24, 'Sunil Perera', 'Sunil@gypsies.sound', 338393932, 413837293, '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', 'Active', '2018-05-02 10:48:37'),
(25, 'Theresa May', 'may34@uk.gov.com', 329393903, 777833737, '12, Downing Street', 'London', 'London', 'Matale', 'Active', '2018-05-03 02:28:07'),
(26, 'Sachin Tendulkar', 'sachintendulkar@icc.com', 444958303, 84792838, '789-4, Apartment 3, ', 'Cric Complex', 'New Delhi', 'Puttalam', 'Active', '2018-05-03 02:28:38'),
(38, 'Nuwan Perara', 'nuwan@yahoo.com', 839378202, 0, 'Nuwan Villa, Lower Street,', 'North Mulativu', 'Mullaitivu', 'Mullaitivu', 'Active', '2018-05-05 11:17:49'),
(39, 'Amal Silverton', 'amals452@yahoo.com', 232345676, 0, 'Amal\'s House, Amal\'s Street,', 'Amal Road', 'Ambalangoda', 'Galle', 'Active', '2018-05-05 13:27:06'),
(40, 'Andrew Symonds', 'symonds@cricket.au.com', 123, 0, '23, Oak View Avenue', 'Western Australia', 'Melbourne', 'Colombo', 'Disabled', '2018-05-13 01:20:23'),
(41, 'Mark Taylor', '', 111, 0, '111', '', '', 'Colombo', 'Active', '2018-05-13 01:24:54'),
(42, 'Nelson Mandela', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Kalutara', 'Disabled', '2018-05-13 02:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'First Bag', 0, 28, 1500, '1525670999_1.png', 'Active', ''),
(35, '2', 'School Bag', 0, 5, 500, '1525681111_661539.png', 'Active', ''),
(36, '3', 'Office Bag', 0, 5, 1300, '1525709924_office bag.jpg', 'Active', ''),
(37, '4', 'Leather Bag', 2, 6, 3409, '1525710010_leather bag.jpg', 'Active', ''),
(38, '5', 'Travel Bag', 2, 17, 1200, '1525706032_travel bag.jpg', 'Active', ''),
(39, '6', 'Gym Bag', 0, 0, 3000, '1525710463_gym bag.jpg', 'Active', ''),
(40, '7', 'Handbag', 1.5, 10, 1650, '1525713267_handbag.jpg', 'Active', ''),
(41, '8', 'Laptop Bag', 2.1, 9, 2300, '1525750683_661539.png', 'Active', ''),
(43, '10', 'Sports Bag', 1, 92, 1000, '1525756289_sports bag.jpg', 'Active', ''),
(45, '11', 'First Aid Bag', 1.5, 11, 1200, '1525787551_first aid bag.jpg', 'Active', ''),
(49, '14', 'Hiking Bag', 1.5, 6, 1200, '1526297640_hiking bag.jpg', 'Active', 'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) DEFAULT '0',
  `coption` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `is_correct`, `coption`) VALUES
(1, 1, 0, '1'),
(2, 1, 0, '2'),
(3, 1, 0, '3'),
(4, 1, 1, '4'),
(5, 2, 0, 'Ram Nath Kovind'),
(6, 2, 1, 'Narendra Modi'),
(7, 2, 0, 'Rahul Gandhi'),
(8, 2, 0, 'Yogi Aadityanath'),
(9, 3, 0, '45'),
(10, 3, 0, '34'),
(11, 4, 0, 'solid'),
(12, 4, 0, 'liquid'),
(13, 4, 0, 'gaseous'),
(14, 4, 1, 'All the above');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2018-05-24', 'First Bag', 1600, 10, 'Johnson and Johnsons Co.', 3),
(40, '2', '2018-05-18', 'First Bag', 2341, 2, 'Louise Vitton Bag', 4),
(41, '4', '2018-05-07', 'Leather Bag', 1234, 3, 'Johnson and Johnsons Co.', 3),
(42, '1', '2018-05-24', 'First Bag', 345, 12, 'Louise Vitton Bag', 4),
(43, '5', '2018-05-03', 'Travel Bag', 35, 3, 'Johnson and Johnsons Co.', 3),
(44, '5', '2018-05-16', 'Travel Bag', 3000, 2, 'ABC Company', 1),
(45, '5', '2018-05-21', 'Travel Bag', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2018-05-19', 'Leather Bag', 1200, 4, 'Johnson and Johnsons Co.', 3),
(47, '2', '2018-05-10', 'School Bag', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2018-05-12', 'Handbag', 2, 9, 'ABC Company', 1),
(50, '14', '2018-05-15', 'Hiking Bag', 1000, 5, 'Louise Vitton Bag', 4),
(51, '11', '2018-05-11', 'First Aid Bag', 1121, 1, 'ABC Company', 1),
(52, '1', '2018-05-21', 'First Bag', 1235, 2, 'Sample Vendor 222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_number` int(11) NOT NULL,
  `question_text` text NOT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`) VALUES
(1, '2+2=?'),
(2, 'Who is the prime minister of India? '),
(4, 'what are the state of matter?');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Bill Gates', 'Office Bag', '2018-05-24', 5, 2, 1300),
(2, '1', 39, 'Amal Silverton', 'First Bag', '2018-05-24', 0, 111, 1500),
(3, '4', 18, 'Asitha Silva', 'Leather Bag', '2018-05-24', 2, 1, 3409),
(4, '5', 25, 'Theresa May', 'Travel Bag', '2018-05-24', 2, 1, 1200),
(5, '6', 24, 'Sunil Perera', 'Gym Bag', '2018-05-24', 0, 1, 3000),
(6, '7', 14, 'Steve Jobs', 'Handbag', '2018-05-24', 1.5, 1, 1650),
(7, '3', 4, 'Bill Gates', 'Office Bag', '2018-05-24', 0, 3, 1300),
(8, '8', 4, 'Bill Gates', 'Laptop Bag', '2018-05-14', 2.1, 1, 2300),
(9, '6', 26, 'Sachin Tendulkar', 'Gym Bag', '2018-05-14', 0, 1, 3000),
(10, '5', 25, 'Theresa May', 'Travel Bag', '2018-05-14', 2, 9, 1200),
(11, '10', 26, 'Sachin Tendulkar', 'Sports Bag', '2018-04-05', 1, 7, 1000),
(12, '1', 14, 'Steve Jobs', 'First Bag', '2018-05-14', 0, 2, 1500),
(13, '3', 38, 'Nuwan Perara', 'Office Bag', '2018-05-24', 0, 0, 1300),
(14, '10', 39, 'Amal Silverton', 'Sports Bag', '2018-05-17', 1, 1, 1000),
(15, '14', 38, 'Nuwan Perara', 'Hiking Bag', '2018-05-24', 1.5, 1, 1200),
(16, '1', 14, 'Steve Jobs', 'First Bag', '2018-05-24', 10, 1, 1500),
(17, '4', 14, 'Steve Jobs', 'Leather Bag', '2018-05-18', 2, 1, 3409);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`aid`, `admin_username`, `admin_password`, `time_stamp`) VALUES
(1, 'admin', '_admin', '2015-05-04 14:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `voter_id` int(10) NOT NULL,
  `voted_for` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `email`, `voter_id`, `voted_for`) VALUES
(16, 'Rohita', 'varnika@gmail.com', 1234567, 'B'),
(17, 'Midhat', 'Midhatfatima711@gmail.com', 1039615, 'A'),
(18, 'Midhat', 'Midhatfatima711@gmail.com', 1039615, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `access` int(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '', 1),
(2, 'midhat', '7e0d7f8a5d96c24ffcc840f31bce72b2', 'midhat', '', 2),
(3, 'abc', 'bf70c261981e1708530982d56d2e8e01', 'abc', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`) VALUES
(1, 'shehryar', 'MTIzNDU=', '2018-05-25 06:17:14'),
(2, 'varnika', 'MTIz', '2020-09-05 14:39:04'),
(3, 'anshi', 'MTI=', '2020-09-05 14:40:58');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
