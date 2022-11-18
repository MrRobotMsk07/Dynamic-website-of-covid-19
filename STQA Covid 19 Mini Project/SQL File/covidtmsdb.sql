-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 03:54 PM
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
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Test', 'test@gmail.com', 1234567890, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(1, 'Mayur', 1212121212, '2001-10-11', '', '123412341234', 'Pune', 'Maharashtra', '2022-11-16 09:06:46'),
(11, 'Aniket', 2112121255, '2022-11-17', '', '221121212121', 'Pune', 'Maharashtra', '2022-11-16 14:25:11'),
(14, 'Aniket', 1231231231, '2001-06-26', '', '696969696969', 'pune', 'Maharashtra', '2022-11-18 14:11:48'),
(15, 'Aniket', 1212211212, '2001-10-03', '', '696969696969', 'Pune', 'Maharashtra', '2022-11-18 14:51:56'),
(16, 'Mayur', 1212211211, '2001-10-11', '', '123412341234', 'Pune', 'Maharashtra', '2022-11-18 14:52:45'),
(17, 'yash', 2112121256, '2001-11-19', '', '221121212121', 'Pune', 'Maharashtra', '2022-11-18 14:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(16, 451993199, 1212211212, 'Antigen', '2022-11-18T20:21', NULL, NULL, NULL, '2022-11-18 14:51:56', NULL, NULL, NULL),
(17, 394655674, 1212211211, 'Antigen', '2022-11-18T20:22', NULL, NULL, NULL, '2022-11-18 14:52:45', NULL, NULL, NULL),
(18, 466305210, 2112121256, 'RT-PCR', '2022-11-18T20:23', NULL, NULL, NULL, '2022-11-18 14:53:42', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
