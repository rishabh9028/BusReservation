-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 04:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BusReservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bus`
--

CREATE TABLE `Bus` (
  `bus_Id` int(30) NOT NULL,
  `bus_Name` varchar(30) NOT NULL,
  `bus_Type` varchar(30) NOT NULL,
  `bus_Class` varchar(30) NOT NULL,
  `no_of_Seats` int(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `starttime` time NOT NULL,
  `cost_per_Seat` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Bus`
--

INSERT INTO `Bus` (`bus_Id`, `bus_Name`, `bus_Type`, `bus_Class`, `no_of_Seats`, `source`, `destination`, `starttime`, `cost_per_Seat`) VALUES
(1, 'Volvo', 'Sleeper', 'AC', 23, 'Pune', 'Mumbai', '10:00:00', 400),
(2, 'Volvo', 'Seater', 'Non-AC', 22, 'Pune', 'Mumbai', '11:00:00', 250),
(3, 'Volvo', 'Seater', 'Non-AC', 22, 'Mumbai', 'Bengaluru', '11:00:00', 350),
(4, 'Volvo', 'Sleeper', 'AC', 22, 'Mumbai', 'Bengaluru', '10:00:00', 500),
(6, 'Volvo', 'Sleeper', 'AC', 24, 'Bengaluru', 'Chennai', '06:30:00', 250);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_Id` int(30) NOT NULL,
  `f_Name` varchar(30) NOT NULL,
  `l_Name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_No` bigint(30) NOT NULL,
  `DOB` date NOT NULL,
  `adhar_Card_No` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_Id`, `f_Name`, `l_Name`, `username`, `password`, `email`, `phone_No`, `DOB`, `adhar_Card_No`) VALUES
(1, 'Rishabh', 'Waykole', 'rwaykole', 'Rishabh@123', 'rishabhwaykole90@gmail.com', 9762760415, '1995-06-28', 234567896575),
(2, 'Aditya', 'Verma', 'averma', 'Aditya@123', 'adi89@gmail.com', 9765489765, '1995-12-08', 234598796575);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bus`
--
ALTER TABLE `Bus`
  ADD PRIMARY KEY (`bus_Id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bus`
--
ALTER TABLE `Bus`
  MODIFY `bus_Id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
