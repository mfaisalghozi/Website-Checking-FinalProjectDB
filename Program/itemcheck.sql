-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2020 at 10:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itemcheck`
--

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `InputCode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemdetail`
--

CREATE TABLE `itemdetail` (
  `ItemID` varchar(20) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `ItemPrice` int(11) NOT NULL,
  `ItemQty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemdetail`
--

INSERT INTO `itemdetail` (`ItemID`, `ItemName`, `ItemPrice`, `ItemQty`) VALUES
('IM001', 'Air Mineral', 3000, 786),
('IM002', 'Yoghurt', 15000, 159),
('IM003', 'Cokelat', 15000, 232),
('IM004', 'Permen', 1000, 534),
('IM005', 'Buku Tulis', 5000, 212),
('IM006', 'Kotak Pensil', 10000, 233),
('IM007', 'Penghapus', 2000, 454),
('IM008', 'Pulpen', 3000, 389),
('IM009', 'Pasta Gigi', 10000, 65),
('IM010', 'Lem', 5000, 30),
('IM011', 'Kaos Kaki', 15000, 25),
('IM012', 'Celana Jeans', 50000, 30),
('IM013', 'Jaket Hoodie', 40000, 40),
('IM014', 'Sepatu', 30000, 20),
('IM015', 'Teh Kotak', 5000, 50),
('IM016', 'Masker Muka', 10000, 50),
('IM017', 'Payung', 25000, 40),
('IM018', 'Jas Hujan', 30000, 25),
('IM019', 'Baygon', 25000, 40),
('IM020', 'Ember', 15000, 40),
('IM021', 'Sapu', 15000, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`InputCode`);

--
-- Indexes for table `itemdetail`
--
ALTER TABLE `itemdetail`
  ADD PRIMARY KEY (`ItemID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
