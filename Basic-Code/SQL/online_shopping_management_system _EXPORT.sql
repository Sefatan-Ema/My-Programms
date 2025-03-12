-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 09:30 AM
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
-- Database: `online shopping management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to`
--

CREATE TABLE `add_to` (
  `p_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_to`
--

INSERT INTO `add_to` (`p_id`, `cart_id`) VALUES
(1, 1),
(2, 3),
(3, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `passward` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `user_name`, `passward`) VALUES
(1, 'Abul_Hasan', 'w2@5678');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`c_id`, `p_id`) VALUES
(1, 1),
(1, 5),
(2, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `billing_products` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_name`, `total_price`, `billing_products`) VALUES
(1, 'Tv,Tshirt', '50200.00', '50150'),
(2, 'Rice_cooker', '2000.00', '2000'),
(3, 'Sofa_set', '50000.00', '45000');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `passward` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `db_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `user_name`, `passward`, `email_id`, `phone`, `district`, `address`, `a_id`, `db_id`) VALUES
(1, 'Ema_khan', ')!3rewwkds', 'sefatane@gmail.com', '01759341846', 'Barishal', 'Romjankathi,Babugonj,Barishal', 1, 2),
(2, 'Munni_Akter', '*9afddf55', 'munniakter@yahoo.com', '0194878398', 'Barishal', 'rupatoli,Barishal', 1, 1),
(3, 'shantaa', '&tyewui', 'shanta@gmail.com', '02389937', 'Dhaka', 'mirpur 1', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `db_id` int(11) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `db_details` varchar(100) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`db_id`, `phone`, `db_details`, `a_id`) VALUES
(1, '019450231', 'abcd', 1),
(2, '0172983746', 'mamun', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `c_id`, `a_id`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE `make` (
  `cart_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`cart_id`, `o_id`, `pay_id`) VALUES
(1, 1, 1),
(2, 5, 2),
(3, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `db_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `order_date`, `quantity`, `db_id`, `c_id`, `a_id`) VALUES
(1, '2021-04-01', '10', 1, 1, 1),
(5, '2021-04-02', '2', 2, 2, 1),
(6, '2021-04-01', '2', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_id` int(11) NOT NULL,
  `p_amounct` decimal(10,2) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `db_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_id`, `p_amounct`, `pay_date`, `db_id`, `c_id`) VALUES
(1, '50200.00', '2021-04-05', 2, 1),
(2, '2000.00', '2021-04-03', 1, 2),
(3, '50000.00', '2021-04-06', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `p_catagory` varchar(100) DEFAULT NULL,
  `p_price` decimal(10,2) DEFAULT NULL,
  `p_availablity` varchar(100) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_catagory`, `p_price`, `p_availablity`, `a_id`) VALUES
(1, 'Tv', 'medium', '50000.00', 'available', 1),
(2, 'Sofa_set', 'High', '50000.00', 'available', 1),
(3, 'Rice_cooker', 'medium', '2000.00', 'avaiable', 1),
(5, 'T_shirt', 'medium', '200.00', 'availble', 1),
(6, 'Rice_cooker', 'medium', '2000.00', 'available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `passward` varchar(100) DEFAULT NULL,
  `forgot_pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`user_id`, `user_name`, `passward`, `forgot_pass`) VALUES
(1, 'Ema_khan', ')23ew345', 'New');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to`
--
ALTER TABLE `add_to`
  ADD PRIMARY KEY (`p_id`,`cart_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`c_id`,`p_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `db_id` (`db_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`db_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`,`c_id`,`a_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`cart_id`,`o_id`,`pay_id`),
  ADD KEY `o_id` (`o_id`),
  ADD KEY `pay_id` (`pay_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `db_id` (`db_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_id`),
  ADD KEY `db_id` (`db_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to`
--
ALTER TABLE `add_to`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `db_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to`
--
ALTER TABLE `add_to`
  ADD CONSTRAINT `add_to_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`),
  ADD CONSTRAINT `add_to_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`);

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`),
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  ADD CONSTRAINT `buy_ibfk_4` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  ADD CONSTRAINT `buy_ibfk_5` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`),
  ADD CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`db_id`) REFERENCES `delivery_boy` (`db_id`),
  ADD CONSTRAINT `customers_ibfk_3` FOREIGN KEY (`db_id`) REFERENCES `delivery_boy` (`db_id`);

--
-- Constraints for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD CONSTRAINT `delivery_boy_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `website` (`user_id`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`),
  ADD CONSTRAINT `login_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`);

--
-- Constraints for table `make`
--
ALTER TABLE `make`
  ADD CONSTRAINT `make_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `make_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `order` (`o_id`),
  ADD CONSTRAINT `make_ibfk_3` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`Pay_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`db_id`) REFERENCES `delivery_boy` (`db_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`db_id`) REFERENCES `delivery_boy` (`db_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
