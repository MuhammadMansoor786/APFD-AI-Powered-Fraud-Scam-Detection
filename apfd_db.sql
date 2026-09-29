-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 29, 2026 at 09:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apfd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `scan_history`
--

CREATE TABLE `scan_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `input_text` text NOT NULL,
  `risk_score` int(11) NOT NULL,
  `risk_level` varchar(20) NOT NULL,
  `ai_reason` text NOT NULL,
  `scanned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scan_history`
--

INSERT INTO `scan_history` (`id`, `user_id`, `input_text`, `risk_score`, `risk_level`, `ai_reason`, `scanned_at`) VALUES
(1, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'This is a classic phishing attempt using an urgent pretext (blocked bank account) and a generic greeting to coerce the user into clicking a highly suspicious, insecure link designed to steal credentials.', '2026-09-26 20:09:17'),
(2, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com\n\n', 100, 'High Risk', 'The text is a textbook phishing attempt utilizing urgent language (\'blocked\' account, \'immediately\'), a generic greeting (\'Dear user\'), and a highly suspicious, insecure URL (fake-bank-update.com) designed to steal banking credentials.', '2026-09-26 20:17:07'),
(3, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com\n\n', 100, 'High Risk', 'The message exhibits multiple classic phishing indicators, including generic addressing, artificial urgency (\'blocked\' account, \'immediately\'), and a suspicious, insecure link designed to steal banking credentials.', '2026-09-26 20:17:33'),
(4, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com\n\n', 100, 'High Risk', 'Classic phishing attempt using urgency (\'bank account blocked\'), a generic greeting, and an insecure, suspicious link (\'http://fake-bank-update.com\') designed to harvest bank credentials.', '2026-09-26 20:18:13'),
(5, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com\n\n', 100, 'High Risk', 'The text exhibits classic phishing indicators: a generic greeting, urgent and alarming language claiming a bank account is blocked, and a direct link to a highly suspicious, unsecure URL (http://fake-bank-update.com) designed to steal credentials.', '2026-09-26 20:21:37'),
(6, NULL, 'URGENT: Your Pakistan Post package tracking #PK-88392 is on hold at the sorting center due to unpaid customs fees of Rs. 250. Pay immediately to avoid package return: http://post-customs-clearance-pk.com/pay', 100, 'High Risk', 'Classic package delivery phishing scam (smishing) impersonating Pakistan Post. It uses high urgency, demands immediate payment, and directs to a suspicious, unofficial domain (http instead of the official gov.pk domain).', '2026-09-26 20:27:42'),
(7, NULL, 'Hello, I am HR from Amazon. We are urgently hiring part-time remote workers. You can easily earn 5000 to 10000 PKR daily just by liking YouTube videos. Click this link to join our WhatsApp group and claim your joining bonus: http://amazon-careers-pk.com/join', 100, 'High Risk', 'This is a classic job/task scam impersonating Amazon. It uses a deceptive, non-official domain (amazon-careers-pk.com) and promises unrealistically high earnings for simple tasks (liking YouTube videos) to lure targets into a WhatsApp group for advance-fee or task fraud.', '2026-09-26 20:33:10'),
(8, NULL, 'Congratulations! Your email has been randomly selected to win 2.5 Bitcoin (BTC) in our 2026 Crypto Giveaway. Log in to your new wallet to withdraw your funds using this secret phrase: http://crypto-free-wallet-win.com Do not share this with anyone', 100, 'High Risk', 'This is a classic cryptocurrency lottery scam. It uses bait (free Bitcoin) and a suspicious HTTP link to lure users into a phishing site designed to steal wallet credentials or secret recovery phrases.', '2026-09-26 20:35:38'),
(9, NULL, 'mubarak ho! account ********06264 mein RS12370 game inaam aa chuki hai! abhi game khalain our login karke check karein https://cut.ly/tyvxdvvb to block promotion from valtrx send unsub tp 8694880 to block all promotions, send REG to 3627', 98, 'High Risk', 'Unsolicited prize notification in Roman Urdu using a masked account number to establish false trust, directing the user to a suspicious shortened link (cut.ly) likely designed for credential phishing or financial fraud.', '2026-09-27 17:29:29'),
(10, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message uses classic phishing tactics, including a false sense of urgency (\'account is blocked\') and a call to action directing the user to an unsecured, suspicious URL designed to harvest bank credentials.', '2026-09-27 20:37:34'),
(11, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message contains classic phishing indicators: urgent and threatening language (\'account is blocked\', \'immediately\') paired with a generic greeting and a link to a highly suspicious, unsecure domain (\'http://fake-bank-update.com\') designed to steal password credentials.', '2026-09-27 20:43:04'),
(12, NULL, 'check this is this scam or not', 95, 'High Risk', 'This is a classic \'smishing\' (SMS phishing) scam template that creates artificial urgency regarding a fake high-value transaction to trick the target into calling a fraudulent helpline. Note: The specific numbers shown use the \'555\' prefix, indicating this is an educational or mock-up demonstration of a real scam technique.', '2026-09-27 20:43:49'),
(13, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'This is a classic phishing attempt. It uses an urgent, alarming pretext (blocked bank account) to induce panic, includes a generic greeting, and directs the user to an insecure, suspicious URL designed to steal credentials.', '2026-09-27 20:51:50'),
(14, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'This is a classic phishing attempt that uses high-urgency scare tactics (alleging a blocked bank account) and directs the user to a suspicious, non-secure, and clearly fraudulent URL to harvest password credentials.', '2026-09-27 20:57:57'),
(15, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 98, 'High Risk', 'The message exhibits classic phishing indicators: an urgent and alarming claim about a blocked account, a generic greeting, and a link to a highly suspicious, non-official domain designed to steal banking credentials.', '2026-09-27 20:57:58'),
(16, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message uses urgent language about a blocked bank account to create panic and directs the user to a highly suspicious, non-secure URL to harvest credentials, which is a textbook phishing attempt.', '2026-09-27 20:57:58'),
(17, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message uses urgent, threatening language about a blocked bank account to create panic and directs the user to an unofficial, highly suspicious URL designed to harvest passwords.', '2026-09-27 20:58:01'),
(18, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message exhibits classic phishing characteristics, including an urgent claim about a blocked bank account, a generic greeting, and a highly suspicious link designed to harvest user credentials.', '2026-09-27 20:58:03'),
(19, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message exhibits classic phishing indicators: high urgency regarding a blocked account, a generic greeting, and a suspicious link (\'fake-bank-update.com\') designed to steal banking credentials.', '2026-09-27 20:58:10'),
(20, NULL, 'URGENT: Your HBL account has been temporarily locked due to suspicious activity. Verify your identity immediately to restore access: [http://login-secure-hbl-update.com/auth-step1](http://login-secure-hbl-update.com/auth-step1)', 100, 'High Risk', 'This is a classic phishing attempt using urgency and fear tactics (account locked) to lure the user into clicking a suspicious, non-official link (login-secure-hbl-update.com) that impersonates HBL bank to steal credentials.', '2026-09-27 21:16:11'),
(21, NULL, 'URGENT: Your HBL account has been temporarily locked due to suspicious activity. Verify your identity immediately to restore access: [http://login-secure-hbl-update.com/auth-step1](http://login-secure-hbl-update.com/auth-step1)', 100, 'High Risk', 'This is a classic phishing attempt impersonating HBL bank. It uses urgent, coercive language (\'temporarily locked\') to induce panic and directs the user to an unofficial, insecure URL (http://login-secure-hbl-update.com) designed to steal login credentials.', '2026-09-27 21:16:31'),
(22, NULL, 'URGENT: Your HBL account has been temporarily locked due to suspicious activity. Verify your identity immediately to restore access: [http://login-secure-hbl-update.com/auth-step1](http://login-secure-hbl-update.com/auth-step1)', 100, 'High Risk', 'The message uses urgent panic-inducing language regarding an account lock and provides a link to a highly suspicious, non-secure lookalike domain (login-secure-hbl-update.com) impersonating Habib Bank Limited (HBL) to steal credentials.', '2026-09-27 21:16:38'),
(23, NULL, '\"Hello, I am HR from Amazon. We are urgently hiring part-time remote workers in Pakistan. Earn Rs. 5000 daily. Join our Telegram group now for training: [http://telegram-recruit-amazon-jobs.org/join](http://telegram-recruit-amazon-jobs.org/join)', 98, 'High Risk', 'This is a classic job scam impersonating Amazon. Legitimate employers do not recruit or conduct training via Telegram, and the link uses a highly suspicious, spoofed domain (telegram-recruit-amazon-jobs.org) instead of an official Amazon corporate domain.', '2026-09-27 21:17:29'),
(24, NULL, 'check this is this scam or not', 98, 'High Risk', 'This is a classic bank/merchant impersonation scam (vishing) designed to induce panic over a fake unauthorized transaction and trick the recipient into calling a fraudulent support number to steal personal or financial information.', '2026-09-27 21:19:42'),
(25, NULL, '\"Flash Sale! Get 90% off on all original Rolex watches. Only 2 items left in stock. Buy now before the timer ends: [http://luxury-cheap-watches-online.shop](http://luxury-cheap-watches-online.shop)\"', 98, 'High Risk', 'The text contains classic signs of a retail scam, including an unrealistic 90% discount on luxury goods (Rolex), artificial scarcity/urgency tactics (\'only 2 items left\'), and a link to an unencrypted, highly suspicious domain (\'luxury-cheap-watches-online.shop\').', '2026-09-27 21:21:39'),
(26, NULL, '\"Flash Sale! Get 90% off on all original Rolex watches. Only 2 items left in stock. Buy now before the timer ends: [http://luxury-cheap-watches-online.shop](http://luxury-cheap-watches-online.shop)\"', 98, 'High Risk', 'The message exhibits classic signs of a retail scam, including an unrealistic discount (90% off Rolex), artificial urgency (\'only 2 left\', timer), and a highly suspicious, insecure HTTP link with a non-official domain (.shop) likely selling counterfeit goods or stealing payment info.', '2026-09-27 21:22:24'),
(27, NULL, 'Flash Sale! Get 90% off on all original Rolex watches. Only 2 items left in stock. Buy now before the timer ends: [http://luxury-cheap-watches-online.shop](http://luxury-cheap-watches-online.shop)', 98, 'High Risk', 'Offers an highly unrealistic 90% discount on luxury Rolex watches using artificial scarcity/urgency tactics, and directs users to an insecure \'.shop\' domain indicative of a counterfeit or phishing scam.', '2026-09-27 21:23:04'),
(28, NULL, 'Suspicious Email: Ek email ka screenshot jisme likha ho: \"You have 1 unread voice message from HR.\" Aur neechay ek ajeeb sa \"Listen to Message\" ka button bana ho. (Yeh phishing emails hoti hain).', 95, 'High Risk', 'The text describes a classic phishing technique where a fake \'HR voice message\' notification is used to lure users into clicking a malicious link or button.', '2026-09-27 21:31:44'),
(29, NULL, '[http://telegram-recruit-amazon-jobs.org/join](http://telegram-recruit-amazon-jobs.org/join)', 98, 'High Risk', 'The URL combines two unrelated major brands (\'Amazon\' and \'Telegram\') on an insecure HTTP domain, which is a strong indicator of a recruitment scam or phishing attempt.', '2026-09-27 21:32:56'),
(30, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message uses high-urgency language claiming a blocked account and directs the user to an unofficial, suspicious link to input their password, which is a classic phishing tactic for credential harvesting.', '2026-09-28 20:49:25'),
(31, NULL, 'Dear user, your bank account is blocked. Click here to update your password immediately: http://fake-bank-update.com', 100, 'High Risk', 'The message uses classic phishing tactics, including creating false urgency about a blocked account and directing the user to an insecure, suspicious URL to harvest credentials.', '2026-09-28 21:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `username`) VALUES
(1, '', '', 'password', '2026-09-28 21:22:46', 'pro924432@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scan_history`
--
ALTER TABLE `scan_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scan_history`
--
ALTER TABLE `scan_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scan_history`
--
ALTER TABLE `scan_history`
  ADD CONSTRAINT `scan_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
