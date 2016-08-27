-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2016 at 04:35 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `almma`
--

CREATE TABLE IF NOT EXISTS `almma` (
  `almma_id` int(10) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `year_of_join` year(4) NOT NULL,
  `year_of_pass` year(4) NOT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`almma_id`),
  UNIQUE KEY `almma_id` (`almma_id`),
  UNIQUE KEY `linkedin_link` (`linkedin_link`),
  UNIQUE KEY `fb_link` (`fb_link`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `buzzasf1_buzzabag`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `adminname`, `password`) VALUES
(1, 'Vaishali', 'Abc@79');

-- --------------------------------------------------------

--
-- Table structure for table `bag_mst`
--

CREATE TABLE IF NOT EXISTS `bag_mst` (
  `pcode` varchar(100) NOT NULL,
  `b_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `mtr` varchar(255) NOT NULL,
  `clor` varchar(255) NOT NULL,
  `clour` varchar(255) NOT NULL,
  `hard` varchar(255) NOT NULL,
  `size` varchar(10) NOT NULL,
  `oinfo` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `btype` int(11) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gold` int(11) NOT NULL,
  `silver` int(11) NOT NULL,
  `bronz` int(11) NOT NULL,
  PRIMARY KEY (`pcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bagtype_mst`
--

CREATE TABLE IF NOT EXISTS `bagtype_mst` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bt_name` varchar(255) NOT NULL,
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `brand_mst`
--

CREATE TABLE IF NOT EXISTS `brand_mst` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) NOT NULL,
  `blogo` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_mst`
--

CREATE TABLE IF NOT EXISTS `inquiry_mst` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `sdate` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member_register`
--

CREATE TABLE IF NOT EXISTS `member_register` (
  `regdate` date NOT NULL,
  `expirydate` date NOT NULL,
  `fname` varchar(50) NOT NULL,
  `membership_id` int(50) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `totbag` varchar(100) NOT NULL,
  `bagleft` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_register`
--

INSERT INTO `member_register` (`regdate`, `expirydate`, `fname`, `membership_id`, `amount`, `username`, `password`, `mobile`, `email`, `totbag`, `bagleft`) VALUES
('2015-07-01', '2016-07-01', 'Vaishali Jain', 1, '5000', 'Vaishali', 'Abc@7988', '8757564334', 'vaishallijain272@gmail.com', '50', '50');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `bleft` int(11) NOT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `membership_type`, `amount`, `bleft`) VALUES
(1, 'GOLD', '8000', 50),
(2, 'BRONZE', '6500', 45),
(3, 'SILVER', '5000', 40);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ndate` date NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_mst`
--

CREATE TABLE IF NOT EXISTS `order_mst` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `pcode` varchar(255) NOT NULL,
  `b_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `odate` date NOT NULL,
  `edate` date NOT NULL,
  `otime` varchar(100) NOT NULL,
  `etime` varchar(100) NOT NULL,
  `falgid` int(11) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `dreamzho_dreamz_holidayz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_user_id` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_user_id`, `admin_password`, `admin_type`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE IF NOT EXISTS `hotel_booking` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `tot_room` int(11) NOT NULL,
  `inq_date` date NOT NULL,
  `status` varchar(155) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE IF NOT EXISTS `hotel_gallery` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `img_name` varchar(155) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`g_id`, `hotel_id`, `img_name`) VALUES
(1, 1, 'goa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_mst`
--

CREATE TABLE IF NOT EXISTS `hotel_mst` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(155) NOT NULL,
  `hotel_logo` varchar(155) NOT NULL,
  `hotel_address` text NOT NULL,
  `hotel_details` text NOT NULL,
  `ratings` int(11) NOT NULL,
  `room_service` text NOT NULL,
  `hotel_service` text NOT NULL,
  `hotel_type` varchar(155) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hotel_mst`
--

INSERT INTO `hotel_mst` (`hotel_id`, `hotel_name`, `hotel_logo`, `hotel_address`, `hotel_details`, `ratings`, `room_service`, `hotel_service`, `hotel_type`, `city`) VALUES
(1, 'Karnatak Hotel', 'goa.jpg', 'Goa', 'not defined', 5, 'not defined', 'not defined', 'Domestic', 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
  `inqid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob` varchar(255) NOT NULL,
  `tgroup` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `tdate` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `inqdate` date NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`inqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `package_booking`
--

CREATE TABLE IF NOT EXISTS `package_booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `idate` date NOT NULL,
  `ptype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `package_mst`
--

CREATE TABLE IF NOT EXISTS `package_mst` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `ndays` int(11) NOT NULL,
  `nnights` int(11) NOT NULL,
  `short_details` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `poverview` text NOT NULL,
  `pbudget` text NOT NULL,
  `pinclusion` text NOT NULL,
  `pterms` text NOT NULL,
  `ptype` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `package_mst`
--

INSERT INTO `package_mst` (`pid`, `pname`, `ndays`, `nnights`, `short_details`, `img`, `poverview`, `pbudget`, `pinclusion`, `pterms`, `ptype`) VALUES
(1, 'Goa', 4, 3, 'Attractive beach city, Baga - Calangute - Miramar - Dona Paula beaches, Visit ancient Church of St. Francis Xaviers,etc... (at own expense). ', 'goa.jpg', 'Tour Description:\r\n\r\nThree Fine Ethnic Goa WelcomHeritage Hotels The Panjim Inn, Panjim Pousada and Panjim. There are 3 well restored Century old Heritage Hotels in Goas Latin Quarter, Fontainhas, Panjim, Goa, India and are now part of the WelcomHeritage Group which offer 63 exclusive Heritage Hotels in India ranging from Palaces to Traditional Havelis, magnificent Forts and Old Mansions, Restored and converted into Heritage Hotels.\r\n\r\nAll rooms of the three Ethnic Goa Heritage Hotels are tastefully furnished with Antique Furniture and Contemporary Indian Art, have Character and offer a Romantic Holiday in Goa with an aura of Old World Charm , Colonial Feel and make for a Ride Down Memory Lane !\r\n\r\nThese Fontainhas Heritage Hotels are of the same genesis and are synonomous with sustainable Heritage Conservation and Preservation and extend Goa Tourism beyond the beaches to a Latin Quarter Ambience of Romance and Nostalgia. The in house Gallery Gitanjali showcases modern Art all over the three properties which together with the antique furnishings makes for an air of surreal beauty. ', 'Contact Us for rates.\r\n\r\n\r\nGST 3.09% will be charged seperately on the package cost. ', 'Your Package Tour Price Includes:\r\n\r\nWelcome drink on arrival.\r\n1.Buffet breakfast.\r\n2.Hotel accommodation.\r\n3.Welcome drink (non alcoholic) on arrival.\r\n4.03 night accommodation on twin sharing basis.\r\n5.Well appointed Air Conditioned Standard rooms with cable TV,   Electronic safe, Hair\r\n6.dryer, Tea / Coffee maker.\r\n7.Complimentary buffet breakfast in the Restaurant only.\r\n\r\n\r\nYour Package Tour Price Does Not Includes:\r\n\r\n1.Transfers and sightseeing.\r\n2.Any expenses of personal nature.\r\n3.Any item which is not mentioned in inclusions.\r\n4.09 percent taxes extra. ', ' Cancellation Policy\r\nIf You Cancel Your Holiday :\r\nYou, or any member of your party, may cancel their travel arrangements at any time. Written notification or an e-mail to that effect from the person who made the booking must be received at our offices. The applicable cancellation charges are as per the published cancellation policy below:\r\n\r\nCancellation charges per person :\r\n-Prior to 30 days or more: Booking Fee.\r\n-Between 30-20 days ahead of departure: 50 percent of tour cost\r\n-Between 20-15 days of departure: 75 percent of tour cost\r\n-15 days to date of departure: 100 percent.\r\n-In case of no show: 100 percent.\r\n\r\nIf We Change or Cancel Your Holiday :\r\nWe do plan the arrangements in advance. It is unlikely that we will have to make any changes to your travel arrangements. Occasionally, we may have to make changes and we reserve the right to do so at any time. If there are any changes, we will advise you of them at the earliest possible date. We also reserve the right in any circumstances to cancel your travel arrangements by assigning reasons to you. If we are unable to provide the booked travel arrangements, our liability in all cases shall be limited to the costs of your travel arrangements.\r\n\r\nAll the booking voucher and tickets will be provided 3 days prior to departure ', 'Domestic'),
(2, 'GOA 2', 3, 2, 'test details', 'goa.jpg', 'test details', 'test details', 'test details', 'test details', 'Domestic');

-- --------------------------------------------------------

--
-- Table structure for table `pgallery_mst`
--

CREATE TABLE IF NOT EXISTS `pgallery_mst` (
  `pgid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `img` int(11) NOT NULL,
  PRIMARY KEY (`pgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photel_mst`
--

CREATE TABLE IF NOT EXISTS `photel_mst` (
  `phid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`phid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `photel_mst`
--

INSERT INTO `photel_mst` (`phid`, `pid`, `hotel_id`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_mst`
--

CREATE TABLE IF NOT EXISTS `room_mst` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_type` varchar(155) NOT NULL,
  `tot_room` int(11) NOT NULL,
  `bal_room` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `guest_charge` decimal(10,0) NOT NULL,
  `service_tax` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `tot_price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `room_mst`
--

INSERT INTO `room_mst` (`room_id`, `hotel_id`, `room_type`, `tot_room`, `bal_room`, `price`, `guest_charge`, `service_tax`, `discount`, `tot_price`) VALUES
(1, 1, 'Single Room', 30, 30, '2000', '200', '150', '0', '2350');

-- --------------------------------------------------------

--
-- Table structure for table `slider_mst`
--

CREATE TABLE IF NOT EXISTS `slider_mst` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `gopifmhp_jksaree`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `adminname`, `password`) VALUES
(1, 'admin', 'Vaishali');

-- --------------------------------------------------------

--
-- Table structure for table `bag_mst`
--

CREATE TABLE IF NOT EXISTS `bag_mst` (
  `pcode` varchar(100) NOT NULL,
  `b_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `oinfo` text NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`pcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bag_mst`
--

INSERT INTO `bag_mst` (`pcode`, `b_id`, `pname`, `oinfo`, `img`) VALUES
('3542', 1, 'Dulhan..', '<p>perfect Set For Dulhan</p>', 'dulhan.jpg'),
('3544', 2, 'bestever', '<p>Impressive design And Color</p>', 'punjabi1.jpg'),
('7656', 3, 'Anarkali Dress', '<p>best design&nbsp;</p>', 'anarkali2.jpg'),
('7688', 4, 'silky cut', '<p>Most Impotant produnt&nbsp;</p>', 'silk1.jpg'),
('7988', 1, 'Chaniya choli', '<p>cool Item</p>', 'navrati.jpg'),
('8650', 1, 'Gungat ', '<p>Made With Pure Silk Nd Cotton.</p>', '10920-click-sarees-275x340-imae3egyj79hzz6q.jpeg'),
('8897', 4, 'Silk Sarees', '<p>good design&nbsp;</p>', 'silk.jpg'),
('8976', 3, 'Abcd-@2', '<p>Good Collection</p>', 'anarkali1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brand_mst`
--

CREATE TABLE IF NOT EXISTS `brand_mst` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `brand_mst`
--

INSERT INTO `brand_mst` (`b_id`, `bname`) VALUES
(1, 'Wedding Saree'),
(2, 'Punjabi Suit'),
(3, 'Anrkali Suit'),
(4, 'Silk Sarees');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_mst`
--

CREATE TABLE IF NOT EXISTS `inquiry_mst` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `sdate` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inquiry_mst`
--

INSERT INTO `inquiry_mst` (`indexid`, `sid`, `fname`, `mob`, `email`, `msg`, `city`, `sdate`, `status`) VALUES
(3, 2, 'vaishali jain', '9033632402', 'vashailijain@gmail.c', 'lohgfvc', 'Nimuch', '2015-07-01', 'Done'),
(4, 3, 'Silk Sarees', '8066546446', 'vashailijain@gmail.c', 'kjhgvc ', 'iuhyg', '2015-07-02', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `order_mst`
--

CREATE TABLE IF NOT EXISTS `order_mst` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `ordno` int(11) NOT NULL,
  `pcode` varchar(20) NOT NULL,
  `b_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `orddate` date NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `order_mst`
--

INSERT INTO `order_mst` (`indexid`, `ordno`, `pcode`, `b_id`, `name`, `eid`, `mob`, `address`, `img`, `orddate`, `status`) VALUES
(7, 3006396, '3544', 2, 'vaishali jain', 'vashailijain@gmail.com', '9601036276', 'good', 'punjabi1.jpg', '2015-06-30', 'Done'),
(8, 107264, '3542', 1, 'Silk Sarees', 'vashailijain@gmail.com', '9601036276', 'okkkkk\r\n', 'dulhan.jpg', '2015-07-01', 'Done'),
(9, 20731, '7656', 3, 'Silk Sarees', 'vashailijain@gmail.com', 'kjhgfgtyui', 'sadfgh', 'anarkali2.jpg', '2015-07-02', 'Done');
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(8, 'alumni', 'almma', 'img', '', '', '_', ''),
(7, 'alumni', 'almma', 'photo', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"alumni","table":"almma"},{"db":"gopifmhp_jksaree","table":"bag_mst"},{"db":"gopifmhp_jksaree","table":"order_mst"},{"db":"gopifmhp_jksaree","table":"brand_mst"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'alumni', 'almma', '{"sorted_col":"`almma`.`img` ASC"}', '2016-08-10 09:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-08-01 16:51:27', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `standf1l_standard_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_user_id` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_user_id`, `admin_password`, `admin_type`) VALUES
('admin', 'admin@123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ads_list`
--

CREATE TABLE IF NOT EXISTS `ads_list` (
  `ads_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `ad_img` varchar(255) NOT NULL,
  `ad_link` varchar(255) NOT NULL,
  PRIMARY KEY (`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ads_mst`
--

CREATE TABLE IF NOT EXISTS `ads_mst` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(255) NOT NULL,
  `ad_size` varchar(255) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ads_mst`
--

INSERT INTO `ads_mst` (`ad_id`, `ad_name`, `ad_size`) VALUES
(1, 'AD_LEFT_1', '200px X 357px'),
(2, 'AD_LEFT_2', '200px X 357px');

-- --------------------------------------------------------

--
-- Table structure for table `bus_inq`
--

CREATE TABLE IF NOT EXISTS `bus_inq` (
  `businq_id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amale` int(11) NOT NULL,
  `afemale` int(11) NOT NULL,
  `cmale` int(11) NOT NULL,
  `cfemale` int(11) NOT NULL,
  `inq_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `pnr_no` varchar(50) NOT NULL,
  PRIMARY KEY (`businq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bus_inq`
--

INSERT INTO `bus_inq` (`businq_id`, `bus_id`, `user_id`, `amale`, `afemale`, `cmale`, `cfemale`, `inq_date`, `status`, `pnr_no`) VALUES
(3, 1, 2, 1, 1, 0, 0, '2013-12-21', 'Done', '1221219');

-- --------------------------------------------------------

--
-- Table structure for table `car_booking`
--

CREATE TABLE IF NOT EXISTS `car_booking` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `inq_date` date NOT NULL,
  `car_no` varchar(155) NOT NULL,
  `g_date` date NOT NULL,
  `r_date` date NOT NULL,
  `status` varchar(155) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `company_mst`
--

CREATE TABLE IF NOT EXISTS `company_mst` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `company_details` text NOT NULL,
  `prepaid` int(11) NOT NULL,
  `postpaid` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `company_mst`
--

INSERT INTO `company_mst` (`company_id`, `company_name`, `company_logo`, `company_details`, `prepaid`, `postpaid`) VALUES
(1, 'Vodafone', 'Vodafone.jpg', 'No Details Found. no details<br>', 0, 0),
(2, 'Airtel', 'Airtel.jpg', 'no description<br>', 0, 0),
(5, 'Tata Docomo', 'Tatacdma.jpg', '<br>', 0, 0),
(6, 'Reliance', 'Relgsm.jpg', '<br>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dth_company_mst`
--

CREATE TABLE IF NOT EXISTS `dth_company_mst` (
  `dth_comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `dth_comp_name` varchar(100) NOT NULL,
  `dth_comp_logo` varchar(255) NOT NULL,
  PRIMARY KEY (`dth_comp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dth_company_mst`
--

INSERT INTO `dth_company_mst` (`dth_comp_id`, `dth_comp_name`, `dth_comp_logo`) VALUES
(1, 'Sun Direct', 'sun.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dth_recharge`
--

CREATE TABLE IF NOT EXISTS `dth_recharge` (
  `dthr_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dth_comp_id` int(11) NOT NULL,
  `sb_id` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `s_mob` varchar(20) NOT NULL,
  `m_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  PRIMARY KEY (`dthr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dth_recharge`
--

INSERT INTO `dth_recharge` (`dthr_id`, `user_id`, `dth_comp_id`, `sb_id`, `price`, `c_name`, `s_mob`, `m_date`, `status`, `tran_id`, `tran_date`) VALUES
(1, 2, 1, '12345', '29', '', '9712377268', '2013-12-23', 'Done', '4273883009', '2013-12-23 06:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `dth_schema_info`
--

CREATE TABLE IF NOT EXISTS `dth_schema_info` (
  `schema_id` int(11) NOT NULL AUTO_INCREMENT,
  `dth_comp_id` int(11) NOT NULL,
  `schema_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`schema_id`),
  KEY `dth_comp_fk` (`dth_comp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dth_schema_info`
--

INSERT INTO `dth_schema_info` (`schema_id`, `dth_comp_id`, `schema_name`, `price`) VALUES
(1, 1, 'Sun25', '29.00');

-- --------------------------------------------------------

--
-- Table structure for table `flight_booking`
--

CREATE TABLE IF NOT EXISTS `flight_booking` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source_city` varchar(255) NOT NULL,
  `destination_city` varchar(255) NOT NULL,
  `flight` varchar(100) NOT NULL,
  `fdate` date NOT NULL,
  `class` varchar(100) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `infants` int(11) NOT NULL,
  `inq_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `flight_booking`
--

INSERT INTO `flight_booking` (`f_id`, `user_id`, `source_city`, `destination_city`, `flight`, `fdate`, `class`, `adult`, `child`, `infants`, `inq_date`, `status`, `booking_id`) VALUES
(1, 2, 'surat', 'mumbai', 'Domestic', '2013-12-21', 'Economy', 1, 0, 0, '2013-12-21', 'Done', '1221240');

-- --------------------------------------------------------

--
-- Table structure for table `gasbill_recharge`
--

CREATE TABLE IF NOT EXISTS `gasbill_recharge` (
  `gas_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cust_no` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `r_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  PRIMARY KEY (`gas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `gasbill_recharge`
--

INSERT INTO `gasbill_recharge` (`gas_id`, `user_id`, `cust_no`, `price`, `r_date`, `status`, `tran_id`, `tran_date`) VALUES
(1, 2, '789814', '1000', '2013-12-05', 'Done', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE IF NOT EXISTS `hotel_booking` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room_id` int(11) NOT NULL,
  `tot_room` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `inq_date` date NOT NULL,
  `status` varchar(155) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE IF NOT EXISTS `hotel_gallery` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `img_name` varchar(155) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`g_id`, `hotel_id`, `img_name`) VALUES
(1, 1, 'HO1.jpg'),
(2, 1, 'XT1.jpg'),
(3, 1, 'XT2.jpg'),
(4, 1, 'XT3.jpg'),
(5, 1, 'XT4.jpg'),
(6, 1, 'XT5.jpg'),
(7, 1, 'XT6.jpg'),
(8, 1, 'XT7.jpg'),
(9, 1, 'XT8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_mst`
--

CREATE TABLE IF NOT EXISTS `hotel_mst` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(155) NOT NULL,
  `hotel_logo` varchar(155) NOT NULL,
  `hotel_address` text NOT NULL,
  `hotel_details` text NOT NULL,
  `ratings` int(11) NOT NULL,
  `room_service` text NOT NULL,
  `hotel_service` text NOT NULL,
  `hotel_type` varchar(155) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hotel_mst`
--

INSERT INTO `hotel_mst` (`hotel_id`, `hotel_name`, `hotel_logo`, `hotel_address`, `hotel_details`, `ratings`, `room_service`, `hotel_service`, `hotel_type`, `city`) VALUES
(1, 'Embassy Hotel', 'HO.jpg', 'Opp. Railway Station', 'Conveniently located, this 3Star hotel is just opposite the railway station and the Central Bus Stand. A total of 58 rooms and suites are available across four floors. There are interesting dining outlets, namely the Rasvatika for Gujarati thali and the Handi Restaurant for a multi cuisine vegetarian fare. The hotel has a spacious party venue that can accommodate a gathering of up to 1000 people. There is also a board room for official meetings for 50 people and the Maharaja hall for 250 people.', 2, '- Attached Bathroom\r\n- H/C running water\r\n- Air conditioning-Room\r\n- Cable/satellite TV\r\n- Direct-dial phone', '-The HANDI restaurant and RASVATIKA at the Lobby Level serve Indian, Chinese and Gujarati Thali.The hotel has several banquet and conference areas which are ideal for formal meetings and informal gatherings', 'Domestic', 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `lightbill_recharge`
--

CREATE TABLE IF NOT EXISTS `lightbill_recharge` (
  `light_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cust_no` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `r_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  PRIMARY KEY (`light_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lightbill_recharge`
--

INSERT INTO `lightbill_recharge` (`light_id`, `user_id`, `cust_no`, `price`, `r_date`, `status`, `tran_id`, `tran_date`) VALUES
(1, 2, '77', '600', '2013-12-05', 'Done', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mob_booking`
--

CREATE TABLE IF NOT EXISTS `mob_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mob_no` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `m_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `mob_book_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mob_booking`
--

INSERT INTO `mob_booking` (`booking_id`, `user_id`, `type`, `mob_no`, `price`, `c_name`, `company_id`, `m_date`, `status`, `tran_id`, `tran_date`) VALUES
(1, 2, 'Top-Up', '9712377268', '100.00', '', 1, '2013-12-04', 'Done', '1596180713', '2013-12-17 11:20 AM');

-- --------------------------------------------------------

--
-- Table structure for table `mob_post_booking`
--

CREATE TABLE IF NOT EXISTS `mob_post_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mob_no` varchar(20) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `m_date` date NOT NULL,
  `sm_cno` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mob_post_booking`
--

INSERT INTO `mob_post_booking` (`booking_id`, `user_id`, `mob_no`, `price`, `c_name`, `company_id`, `m_date`, `sm_cno`, `status`, `tran_id`, `tran_date`) VALUES
(1, 2, '9712377268', '100', '', 1, '2013-12-17', '9712377268', 'Done', '1096364766', '2013-12-17 04:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_mst`
--

CREATE TABLE IF NOT EXISTS `mobile_mst` (
  `mob_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `mob_no` varchar(20) NOT NULL,
  `mob_type` varchar(100) NOT NULL,
  PRIMARY KEY (`mob_id`),
  KEY `mob_com_fk` (`company_id`),
  KEY `mob_usr_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mobile_mst`
--

INSERT INTO `mobile_mst` (`mob_id`, `user_id`, `company_id`, `mob_no`, `mob_type`) VALUES
(1, 1, 1, '9712377268', 'Post Paid');

-- --------------------------------------------------------

--
-- Table structure for table `movie_booking`
--

CREATE TABLE IF NOT EXISTS `movie_booking` (
  `mb_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theater_id` int(11) NOT NULL,
  `show_date` varchar(100) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `class_id` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `seat` int(11) NOT NULL,
  `tot_price` decimal(10,0) NOT NULL,
  `inq_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  PRIMARY KEY (`mb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `movie_booking`
--

INSERT INTO `movie_booking` (`mb_id`, `user_id`, `movie_id`, `theater_id`, `show_date`, `screen_id`, `show_id`, `class_id`, `price`, `seat`, `tot_price`, `inq_date`, `status`, `booking_id`) VALUES
(1, 2, 1, 1, '28-12-2013,Dec', 1, 2, 'Exclusive', '100', 1, '100', '2013-12-28', 'Pending', '3784620435');

-- --------------------------------------------------------

--
-- Table structure for table `movie_mst`
--

CREATE TABLE IF NOT EXISTS `movie_mst` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) NOT NULL,
  `movie_logo` varchar(255) NOT NULL,
  `movie_video` varchar(255) NOT NULL,
  `release_status` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `release_date` varchar(255) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `director` varchar(255) NOT NULL,
  `cast_crew` text NOT NULL,
  `movie_details` text NOT NULL,
  `movie_banner` varchar(255) NOT NULL,
  `booking_up_to` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `movie_mst`
--

INSERT INTO `movie_mst` (`movie_id`, `movie_name`, `movie_logo`, `movie_video`, `release_status`, `language`, `genre`, `release_date`, `duration`, `director`, `cast_crew`, `movie_details`, `movie_banner`, `booking_up_to`) VALUES
(1, 'R... Rajkumar', '2.jpg', 'KsnHky4wv5w', 'In Theater', 'Hindi', 'Action, Romance', '2013-12-06', '02:19', 'Prabhu Deva', 'Shahid Kapoor, Sonakshi Sinha, Sonu Sood, Poonam jhawer', 'Rambo Rajkumar is an upcoming Hindi action film directed by Prabhu Deva and written by Shiraz Ahmed.Films producer is Viki Rajani and by Eros International. The main stars are Shahid Kapoor and Sonakshi Sinha.Prabhu Deva was always very keen to work with music composer Pritam. Now, he has finally managed to get him on board.The film is set to be released on December 6, 2013. The Movie has some rowdy Action Sequences performed by Sonakshi Sinha.', 'image_slider_rrajkumar.jpg', 2),
(2, 'Bullett Raja', '1.jpg', 'uYpCh3n2XXo', 'In Theater', 'Hindi', 'Action', '2013-11-29', '2hrs 18mins', 'Tigmanshu Dhulia', 'Saif Ali Khan, Sonakshi Sinha, Vidyut Jamwal, Jimmy Sheirgill, Gulshan Grover, Raj Babbar', 'Bullett Raja is an upcoming Gangster-thriller Hindi film, written and \r\ndirected by Tigmanshu Dhulia and produced by Rahul Mittra, Nitin Tej \r\nAhuja and Tigmanshu Dhulia, under the banner of BrandSmith Motion \r\nPictures and Moving Pictures. The film is presented by Fox Star Studios.\r\n The film will feature Saif Ali Khan, Sonakshi Sinha and Jimmy Shergill \r\nin leading roles, whilst Chunky Pandey, Ravi Kishan, Gulshan Grover and \r\nVidyut Jamwal will feature in pivotal roles. The film will be set \r\nagainst the backdrop of Uttar Pradesh-based mafia while dealing with the\r\n underworld.The film will be released on 29 November 2013.', 'image_slider_bulletraja.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `new_bus`
--

CREATE TABLE IF NOT EXISTS `new_bus` (
  `bus_id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_time` varchar(100) NOT NULL,
  `source_city` varchar(255) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `arrival_time` varchar(100) NOT NULL,
  `arrival_date` varchar(100) NOT NULL,
  `destination_city` varchar(255) NOT NULL,
  `bus_type` varchar(100) NOT NULL,
  `bus_category` varchar(255) NOT NULL,
  `travel_name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `cno` varchar(20) NOT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `new_bus`
--

INSERT INTO `new_bus` (`bus_id`, `depart_time`, `source_city`, `duration`, `arrival_time`, `arrival_date`, `destination_city`, `bus_type`, `bus_category`, `travel_name`, `price`, `cno`) VALUES
(1, '5:30 AM', 'Surat', '6 hr', '11:30 AM', '2013-12-21', 'Mumbai', 'seat/sleeper', 'Volvo,Express', 'Samrat Travel', '350', '');

-- --------------------------------------------------------

--
-- Table structure for table `plan_info`
--

CREATE TABLE IF NOT EXISTS `plan_info` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `validity` varchar(50) NOT NULL,
  `tot_price` decimal(10,2) NOT NULL,
  `plan_type` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `plan_details` text NOT NULL,
  PRIMARY KEY (`plan_id`),
  KEY `plan_info_fk` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `plan_info`
--

INSERT INTO `plan_info` (`plan_id`, `company_id`, `validity`, `tot_price`, `plan_type`, `state`, `plan_details`) VALUES
(2, 1, '7 days', '49.00', '3G', 'Gujarat', 'Internet Surfing and 2 mb free downloading.'),
(4, 1, '1 month', '101.00', '3G', 'Gujarat', '10 mb plan'),
(5, 6, '3', '100.00', '3G', 'Gujarat', 'ferfre');

-- --------------------------------------------------------

--
-- Table structure for table `room_mst`
--

CREATE TABLE IF NOT EXISTS `room_mst` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_type` varchar(155) NOT NULL,
  `inclusion` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `guest_charge` decimal(10,0) NOT NULL,
  `service_tax` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `tot_price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `room_mst`
--

INSERT INTO `room_mst` (`room_id`, `hotel_id`, `room_type`, `inclusion`, `price`, `guest_charge`, `service_tax`, `discount`, `tot_price`) VALUES
(1, 1, 'Deluxe Single Room', 'Breakfast', '1562', '0', '0', '0', '1562'),
(2, 1, 'DeluxeDouble Room', 'Breakfast', '1585', '0', '0', '0', '1585'),
(3, 1, 'Super Deluxe Single Room', 'Breakfast', '2232', '0', '0', '0', '2232'),
(4, 1, 'Super Deluxe Double Room', 'Breakfast', '2678', '0', '0', '0', '2678');

-- --------------------------------------------------------

--
-- Table structure for table `screen_info`
--

CREATE TABLE IF NOT EXISTS `screen_info` (
  `screen_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `theater_id` int(11) NOT NULL,
  `screen_name` varchar(100) NOT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `screen_info`
--

INSERT INTO `screen_info` (`screen_id`, `movie_id`, `theater_id`, `screen_name`) VALUES
(1, 1, 1, 'Screen 1'),
(2, 1, 1, 'Screen 2');

-- --------------------------------------------------------

--
-- Table structure for table `show_info`
--

CREATE TABLE IF NOT EXISTS `show_info` (
  `show_id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_id` int(11) NOT NULL,
  `show_time` varchar(255) NOT NULL,
  `class_a` varchar(255) NOT NULL,
  `price_a` varchar(255) NOT NULL,
  `class_b` varchar(255) NOT NULL,
  `price_b` varchar(255) NOT NULL,
  `class_c` varchar(255) NOT NULL,
  `price_c` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `show_info`
--

INSERT INTO `show_info` (`show_id`, `screen_id`, `show_time`, `class_a`, `price_a`, `class_b`, `price_b`, `class_c`, `price_c`, `status`) VALUES
(1, 1, '11:00 AM', 'Exclusive', '100', 'Upper', '150', '', '', 0),
(2, 1, '2:30 PM', 'Exclusive', '100', 'Upper ', '140', 'Lower', '80', 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `inq_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`inq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`inq_id`, `fname`, `mob`, `address`, `reg_date`, `status`) VALUES
(1, 'Minesh Mamrawala', '9712377268', 'Surat', '2013-12-03', ''),
(2, 'abc', '123456', '123hfrh', '2013-12-16', ''),
(3, 'Pinkal Paltel', '9712551335', 'U-83, Shreeji Arced,\r\nAnand Mahal Road,\r\nSurat', '2013-12-19', ''),
(4, 'Kushan Desai', '1234567890', 'fa;ldskf;sdk', '2013-12-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `taxi_mst`
--

CREATE TABLE IF NOT EXISTS `taxi_mst` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(255) NOT NULL,
  `car_logo` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `seat` int(11) NOT NULL,
  `luggage` varchar(255) NOT NULL,
  `usage` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `days` int(11) NOT NULL,
  `extra_hr` decimal(10,0) NOT NULL,
  `extra_km` decimal(10,0) NOT NULL,
  `night_price` decimal(10,0) NOT NULL,
  `toll_parking` varchar(255) NOT NULL,
  `trip_type` varchar(255) NOT NULL,
  `pickup_time` varchar(155) NOT NULL,
  `pickup_city` varchar(255) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `theater_mst`
--

CREATE TABLE IF NOT EXISTS `theater_mst` (
  `theater_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `th_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `booking_up_to` int(11) NOT NULL,
  PRIMARY KEY (`theater_id`),
  KEY `ThMoFk` (`movie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `theater_mst`
--

INSERT INTO `theater_mst` (`theater_id`, `movie_id`, `th_id`, `city`, `booking_up_to`) VALUES
(1, 1, 0, '', 4),
(2, 2, 0, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `theater_name`
--

CREATE TABLE IF NOT EXISTS `theater_name` (
  `th_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `th_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `facility` text NOT NULL,
  PRIMARY KEY (`th_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_dthbill`
--

CREATE TABLE IF NOT EXISTS `user_dthbill` (
  `dthbill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` varchar(255) NOT NULL,
  `dth_company_id` int(11) NOT NULL,
  PRIMARY KEY (`dthbill_id`),
  KEY `dth_user_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_dthbill`
--

INSERT INTO `user_dthbill` (`dthbill_id`, `user_id`, `subscriber_id`, `dth_company_id`) VALUES
(11, 2, '12345', 1),
(12, 2, '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_gasbill`
--

CREATE TABLE IF NOT EXISTS `user_gasbill` (
  `gasbill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  PRIMARY KEY (`gasbill_id`),
  KEY `gas_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_gasbill`
--

INSERT INTO `user_gasbill` (`gasbill_id`, `user_id`, `customer_id`) VALUES
(1, 2, '1234589'),
(2, 2, '789814');

-- --------------------------------------------------------

--
-- Table structure for table `user_lightbill`
--

CREATE TABLE IF NOT EXISTS `user_lightbill` (
  `lightbill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`lightbill_id`),
  KEY `uli_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_lightbill`
--

INSERT INTO `user_lightbill` (`lightbill_id`, `user_id`, `customer_id`, `company_name`) VALUES
(1, 2, '789', ''),
(4, 2, '77', ''),
(5, 1, '100', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_mst`
--

CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_date` date NOT NULL,
  `reg_no` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `off_address` text NOT NULL,
  `res_address` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mob` varchar(20) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `driving_licence` int(11) DEFAULT NULL,
  `pan_card` int(11) DEFAULT NULL,
  `votting_card` int(11) DEFAULT NULL,
  `passport_id` int(11) DEFAULT NULL,
  `any_id` int(11) DEFAULT NULL,
  `movie_ticket` int(11) DEFAULT NULL,
  `bus_ticket` int(11) DEFAULT NULL,
  `air_ticket` int(11) DEFAULT NULL,
  `login_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tot_price` decimal(30,2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_mst`
--

INSERT INTO `user_mst` (`user_id`, `reg_date`, `reg_no`, `fname`, `mname`, `lname`, `dob`, `age`, `off_address`, `res_address`, `user_email`, `user_mob`, `profession`, `comp_name`, `photo_id`, `driving_licence`, `pan_card`, `votting_card`, `passport_id`, `any_id`, `movie_ticket`, `bus_ticket`, `air_ticket`, `login_name`, `password`, `tot_price`) VALUES
(1, '2013-11-25', 123456, 'Minesh', 'Harishbhai', 'Mamrawala', '1987-01-18', 26, 'Surat', 'Surat', 'abc@gmail.com', '1234567890', 'web designer', 'meet infotech', 1, 1, 1, 1, 1, 0, 1, 0, 0, 'minesh_hm', 'minesh@138', '0.00'),
(2, '2013-11-26', 12345, 'jay', 'p', 'shah', '1970-11-10', 45, 'surat', 'surat', 'jay@gmail.com', '1234567890', 'test', 'test', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'jay1234', 'jay@1234', '0.00'),
(3, '2013-12-19', 5001, 'Pinkal', 'M', 'Patel', '1973-03-17', 40, 'adsfljlj dslkajf lj', 'asdfljlj daslfj', 'patelpinkal@ymail.com', '9712551335', 'Business', 'Alfa Incorporation', 0, 1, 1, 1, 0, 0, 1, 1, 1, '', '', '0.00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mob_booking`
--
ALTER TABLE `mob_booking`
  ADD CONSTRAINT `mob_book_fk` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `mobile_mst`
--
ALTER TABLE `mobile_mst`
  ADD CONSTRAINT `mob_com_fk` FOREIGN KEY (`company_id`) REFERENCES `company_mst` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mob_usr_fk` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_info`
--
ALTER TABLE `plan_info`
  ADD CONSTRAINT `plan_info_fk` FOREIGN KEY (`company_id`) REFERENCES `company_mst` (`company_id`) ON DELETE CASCADE;

--
-- Constraints for table `theater_mst`
--
ALTER TABLE `theater_mst`
  ADD CONSTRAINT `ThMoFk` FOREIGN KEY (`movie_id`) REFERENCES `movie_mst` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_dthbill`
--
ALTER TABLE `user_dthbill`
  ADD CONSTRAINT `dth_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_gasbill`
--
ALTER TABLE `user_gasbill`
  ADD CONSTRAINT `gas_fk` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_lightbill`
--
ALTER TABLE `user_lightbill`
  ADD CONSTRAINT `uli_fk` FOREIGN KEY (`user_id`) REFERENCES `user_mst` (`user_id`) ON DELETE CASCADE;
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
