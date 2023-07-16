-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 04:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspass_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9256146790, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-04-14 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(13, 'Ordinary Bus', '2022-11-10 09:00:34'),
(14, 'Express Bus', '2022-11-10 09:01:26'),
(15, 'Deluxe Bus', '2022-11-10 09:01:42'),
(16, 'AC Bus', '2022-11-10 09:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(3, 'Vinoth', 'vinoth86@gmail.com', 'How much cost is take new buss pass for deluxe bus traveling?', '2022-11-10 13:10:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>Bus Pass Management System  is committed to provide consistently high quality of services and to continuously improve the services through a process of teamwork for the utmost satisfaction of the passengers and to attain a position of pre-eminence in the Bus Transport sector.</b></span></font><br>\r\n\r\n<br>\r\n<b><u>Our values:</u></b>\r\n<br><ul><li>\r\nTo provide safe, clean, comfortable, punctual and courteous commuter service at an economic fare.</li><li>To provide employee satisfaction in financial and humanistic terms.</li><li>To strive towards financial self-reliance in regard to performance and growth.</li><li>To attain a position of reputation and respect in the society.</li></ul><ul>\r\n</ul>', NULL, NULL, '2022-11-10 08:51:31'),
(2, 'contactus', 'Contact Us', '                No:2/151, CFG Complex, Guindy, Chennai, TamilNadu - 600127.', 'buspassmgmt@gmail.com', 4654789795, '2022-11-02 08:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(7, '591313848', 'Raj', 'dacfad0ca86ac0ec30befe55e3430fde1668072370.png', 7798463870, 'kingofhell@gmail.com', 'Passport', '457633634574646', 'Ordinary Bus', 'Adambakkam', 'Chennai', '2022-11-01', '2022-12-01', '1000', '2022-11-10 09:26:10'),
(8, '250143776', 'Mithran', '51ef53bd00b2a069dd0f219ba4fde93e1668072790.jpg', 9746738920, 'Mithran1990@gmail.com', 'Adhar Card', '7568839674838', 'Express Bus', 'Nungambakkam', ' Royapettah', '2022-10-01', '2022-11-01', '2500', '2022-11-10 09:33:10'),
(9, '104277407', 'Kavin', 'fe83fafd229989cd50fc7d8c4e7a7be11668073200.jpg', 8947447430, 'crazykavin@gmail.com', 'Student Card', '674627483901', 'Deluxe Bus', ' Pammal', 'Sholinganallur', '2022-09-01', '2022-10-01', '5000', '2022-11-10 09:40:00'),
(10, '677808183', 'Yugan', '9679ccb5a92f650b83fcf29e0a6a67751668073549jpeg', 7498545749, 'kingyugan@gmail.com', 'PAN Card', '45489872345', 'AC Bus', 'Chromepet', 'T. Nagar', '2022-08-01', '2022-09-01', '7500', '2022-11-10 09:45:49'),
(11, '643579549', 'Varun', 'fed1da6da79ca8f0cba2aa0c88e14d9e1668073844.jpg', 8324360951, 'smartvarun@gmail.com', 'Voter Card', '5225474589013', 'Express Bus', 'Guindy', 'Iyyapanthangal', '2022-09-01', '2022-10-01', '2500', '2022-11-10 09:50:44'),
(12, '367048872', 'Sam', '1a18217e42ba5a0a955c074be11c216d1668074226.jpg', 9763247846, 'legendsam@gmail.com', 'Passport', '656457646456', 'AC Bus', 'Meenambakkam', 'Vadapalani', '2022-08-01', '2022-09-01', '7500', '2022-11-10 09:57:06'),
(13, '491995525', 'Pavin', 'c7588853d975607658e9c3a1aa5a0dc01668074550.jpg', 8794614890, 'prempavin@gmail.com', 'Adhar Card', '856373465487546', 'Ordinary Bus', 'K. K. Nagar', 'Mylapore', '2022-11-01', '2022-12-01', '1000', '2022-11-10 10:02:30'),
(14, '660046721', 'Aravind', 'f478e2a766d9a681f52a45cfba22189c1678892864.jpg', 6735426324, 'aravind@gmail.com', 'PAN Card', 'ERT6735EQ', 'Deluxe Bus', 'Tambaram', 'Guindy', '2023-03-15', '2023-04-15', '400', '2023-03-15 15:07:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
