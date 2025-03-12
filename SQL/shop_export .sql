-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:34 PM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone_N0` varchar(200) DEFAULT NULL,
  `Hire_Date` date DEFAULT NULL,
  `Job_category` varchar(200) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `Employee_id`, `Firstname`, `Lastname`, `Email`, `Phone_N0`, `Hire_Date`, `Job_category`, `salary`) VALUES
(0, 1, 'Abir', 'Hosen', 'abirhosen@gmail', '09993455', '2019-11-03', 'SE', '50000.00'),
(0, 2, 'Asad', 'Khan', 'Asadkhan@gmail', '099987655', '2017-04-03', 'Tester', '100000.00'),
(0, 3, 'Danil', 'Rahman', 'danilrahman@gmail', '09993450', '2021-03-16', 'SE', '12000.00'),
(0, 4, 'Kabir', 'Khan', ' kabirkhan@gmail', '09997450', '2021-03-16', 'Tester', '80000.00'),
(0, 5, 'Akash', 'Hosen ', 'akashhosen@gmail', '01723455 ', '0000-00-00', 'IT', '100000.00'),
(0, 6, 'Hanif', 'Ahmed', '017287655', 'hanifahmed@gmail', '2022-01-01', 'Tester', '60000.00'),
(0, 7, 'Motin', 'Rahamn', 'motinrahamn@gmail', '01727450', '2016-03-16', 'Cashier', '80000.00'),
(0, 8, 'Akash', 'Hosen ', 'akashhosen@gmail', '01723455 ', '0000-00-00', 'IT', '100000.00'),
(0, 9, 'Hanif', 'Ahmed', '017287655', 'hanifahmed@gmail', '2022-01-01', 'Tester', '60000.00'),
(0, 10, 'Motin', 'Rahamn', 'motinrahamn@gmail', '01727450', '2016-03-16', 'Cashier', '80000.00'),
(0, 11, 'Akash', 'Hosen ', 'akashhosen@gmail', '01723455 ', '2015-03-09', 'IT', '100000.00'),
(0, 12, 'Hanif', 'Ahmed', '017287655', 'hanifahmed@gmail', '2022-01-01', 'Tester', '60000.00'),
(0, 13, 'Motin', 'Rahamn', 'motinrahamn@gmail', '01727450', '2016-03-16', 'Cashier', '80000.00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(200) NOT NULL DEFAULT ' ',
  `Min_salary` decimal(6,0) DEFAULT '8000',
  `Max_salary` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;-- --------------------------------------------------------

--
--

CREATE TABLE employee (
employee_id int(200) NOT NULL AUTO_INCREMENT,first_name varchar(200) NOT NULL,last_name varchar(200) NOT NULL,Email VARCHAR(200) NOT NULL,Hire_Date Date,job_id int(20) NOT NULL,salary decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;-- --------------------------------------------------------

--
-- Table structure for table `temp_employees`
--

CREATE TABLE `temp_employees` (
  `Employee_id` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `Phone_N0` varchar(200) DEFAULT NULL,
  `Hire_Date` date DEFAULT NULL,
  `Job_category` varchar(200) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_employees`
--

INSERT INTO `temp_employees` (`Employee_id`, `Firstname`, `Lastname`, `Email`, `age`, `Phone_N0`, `Hire_Date`, `Job_category`, `salary`) VALUES
(1, 'Abir', 'Hosen', 'abirhosen@gmail', 0, '023455', '2021-03-09', 'SE', '50000.00'),
(2, 'Asad', 'Khan', 'Asadkhan@gmail', 0, '0287655', '2021-03-22', 'Tester', '100000.00'),
(3, 'Danil', 'Rahman', 'danilrahman@gmail', 0, '023450', '2021-03-16', 'SE', '12000.00'),
(4, 'Kabir', 'Khan', ' kabirkhan@gmail', 0, '027450', '2021-03-16', 'Tester', '80000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `employees_firstname_idx` (`Firstname`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `temp_employees`
--
ALTER TABLE `temp_employees`
  ADD PRIMARY KEY (`Employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `temp_employees`
--
ALTER TABLE `temp_employees`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
