-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2026 at 12:10 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u519989786_dk`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `block_name` text NOT NULL,
  `loc_block_name` text DEFAULT NULL,
  `slug` text NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `block_name`, `loc_block_name`, `slug`, `district_id`) VALUES
(1, 'Barshi', 'बार्शी', 'barshi', 1),
(2, 'Osmanabad', 'उस्मानाबाद', 'osmanabad', 2),
(3, 'Nilanga', 'निलंगा', 'nilanga', 3),
(4, 'Ausa', 'औसा', 'ausa', 3),
(5, 'Latur Rural', 'लातूर रूरल', 'latur', 3),
(6, 'South Solapur', 'दक्षिण सोलापूर', 'south-solapur', 1),
(7, 'Solapur', 'सोलापूर', 'solapur', 1),
(8, 'Kalamb', 'कळंब', 'kalamb', 2),
(9, 'North Solapur', 'उत्तर सोलापूर', 'north-solapur', 1),
(10, 'Tuljapur', 'तुळजापूर', 'tuljapur', 2),
(12, 'Pune', 'पुणे', 'pune', 4),
(13, 'Ahmednagar', 'अहमदनगर', 'ahmednagar', 5),
(14, 'Devni', 'देवनी', 'devni', 3),
(15, 'Washi', 'वाशी ', 'washi', 2),
(16, 'Mohal', NULL, 'mohal', 1),
(17, 'Barahi', NULL, 'barahi', 1),
(18, 'Deoni', 'देवनी', 'deoni', 3),
(19, 'Lohara', NULL, 'lohara', 2),
(20, 'Renapur', '', 'renapur', 3),
(21, 'Muhra', '', 'mohara', 6),
(22, 'Atri', '', 'atari', 6),
(23, 'Ekangarsarai', '', 'ekangarsarai', 7),
(24, 'Parbalpur', '', 'parwalpur', 7),
(25, 'Nalanda', '', 'nalanda', 7),
(26, 'Gaya', '', 'gaya', 6),
(27, 'Bhum', 'भूम', 'bhum', 2),
(28, 'Paranda', 'परांडा', 'paranda', 2),
(29, 'North Solapur', 'उत्तर सोलापूर', 'north-solapur', 1),
(30, 'Umarga', 'उमरगा', 'umarga', 2),
(31, 'Latur City', 'लातूर सिटी', 'latur-city', 3),
(32, 'Chakur', 'चाकूर', 'chakur', 3),
(33, 'Shirur-Anantpal', 'शिरूर-अनन्तपाल', 'shirur-anantpal', 3),
(34, 'Loha', 'लोहा', 'loha', 10),
(35, 'Sangola', 'सांगोला', 'sangola', 1),
(36, 'Neem Chak Bathani', '', 'nimchak-bathani', 6),
(37, 'Islampur', '', 'islampur', 7),
(38, 'Ahmadpur', NULL, 'ahmadpur', 3),
(39, 'Akkalkot', NULL, 'akkalkot', 1),
(40, 'Jalkot', NULL, 'jalkot', 3),
(41, 'Karmala', NULL, 'karmala', 1),
(42, 'Madha', NULL, 'madha', 1),
(43, 'Malshiras', NULL, 'malshiras', 1),
(44, 'Mangalvedhe', NULL, 'mangalvedhe', 1),
(45, 'Pandharpur', NULL, 'pandharpur', 1),
(46, 'Udgir', NULL, 'udgir', 3),
(47, 'Kandhar', 'कंधार', 'kandhar', 10),
(48, 'Konch', '', 'konch', 6),
(49, 'Tikari', '', 'tikari', 6),
(50, 'Belaganj', '', 'belaganj', 6),
(51, 'Khizirsarai', '', 'khizirsarai', 6),
(52, 'Manpur', '', 'manpur', 6),
(53, 'Gaya Town C.D.Block', '', 'gaya town c.d.block', 6),
(54, 'Paraiya', '', 'paraiya', 6),
(55, 'Guraru', '', 'guraru', 6),
(56, 'Gurua', '', 'gurua', 6),
(57, 'Amas', '', 'amas', 6),
(58, 'Banke Bazar', '', 'banke bazar', 6),
(59, 'Imamganj', '', 'imamganj', 6),
(60, 'Dumaria', '', 'dumaria', 6),
(61, 'Sherghati', '', 'sherghati', 6),
(62, 'Dobhi', '', 'dobhi', 6),
(63, 'Bodh Gaya', '', 'bodh gaya', 6),
(64, 'Tan Kuppa', '', 'tan kuppa', 6),
(65, 'Wazirganj', '', 'wazirganj', 6),
(66, 'Fatehpur', '', 'fatehpur', 6),
(67, 'Mohanpur', '', 'mohanpur', 6),
(68, 'Barachatti', '', 'barachatti', 6),
(69, 'Karai Parsurai', '', 'karai parsurai', 7),
(70, 'Nagar Nausa', '', 'nagar nausa', 7),
(71, 'Harnaut', '', 'harnaut', 7),
(72, 'Chandi', '', 'chandi', 7),
(73, 'Rahui', '', 'rahui', 7),
(74, 'Bind', '', 'bind', 7),
(75, 'Sarmera', '', 'sarmera', 7),
(76, 'Asthawan', '', 'asthawan', 7),
(77, 'Bihar', '', 'bihar', 7),
(78, 'Noorsarai', '', 'noorsarai', 7),
(79, 'Tharthari', '', 'tharthari', 7),
(80, 'Hilsa', '', 'hilsa', 7),
(81, 'Ben', '', 'ben', 7),
(82, 'Rajgir', '', 'rajgir', 7),
(83, 'Silao', '', 'silao', 7),
(84, 'Giriak', '', 'giriak', 7),
(85, 'Katrisarai', '', 'katrisarai', 7),
(86, 'Jamkhed', 'जामखेड़', 'jamkhed', 5),
(87, 'Soegaon', 'सोईगाओं', 'soegaon', 12),
(88, 'Sillod', 'सिल्लोड़', 'sillod', 12),
(89, 'Bhokardan', '', 'bhokardan', 8),
(90, 'Jalna', '', 'jalna', 8),
(91, 'Jaoli', 'जाओली', 'jaoli', 33),
(92, 'Karad', 'कराड', 'karad', 33),
(93, 'Khandala', 'खंडाळा', 'khandala', 33),
(94, 'Khatav', 'खटाव', 'khatav', 33),
(95, 'Koregaon', 'कोरेगाव', 'koregaon', 33),
(96, 'Mahabaleshwar', 'महाबळेश्वर', 'mahabaleshwar', 33),
(97, 'Man', 'मन', 'man', 33),
(98, 'Patan', 'पाटण', 'patan', 33),
(99, 'Phaltan', 'फलटण', 'phaltan', 33),
(100, 'Satara', 'सातारा', 'satara', 33),
(101, 'Wai', 'वाई', 'wai', 33),
(102, 'Dapoli', 'दापोली ', 'dapoli', 31);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `district_name` text NOT NULL,
  `loc_district_name` text DEFAULT NULL,
  `slug` text NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_name`, `loc_district_name`, `slug`, `state_id`) VALUES
(1, 'Solapur', 'सोलापूर', 'solapur', 1),
(2, 'Osmanabad', 'उस्मानाबाद', 'osmanabad', 1),
(3, 'Latur', 'लातूर', 'latur', 1),
(4, 'Pune', 'पुणे', 'pune', 1),
(5, 'Ahmednagar', 'अहमदनगर', 'ahmednagar', 1),
(6, 'Gaya', 'गया', 'gaya', 2),
(7, 'Nalanda', 'नालंदा', 'nalanda', 2),
(8, 'Jalna', 'जालना', 'jalna', 1),
(9, 'Renapur', 'रेनापुर', 'renapur', 1),
(10, 'Nanded', 'नांदेड', 'nanded', 1),
(11, 'Parbhani', 'परभानी', 'parbhani', 1),
(12, 'Aurangabad', 'औरंगाबाद', 'aurangabad', 1),
(13, 'Akola', 'अकोला', 'akola', 1),
(14, 'Amravati', 'अमरावती', 'amravati', 1),
(15, 'Bhandara', 'भंडारा', 'bhandara', 1),
(16, 'Bid', 'बोली', 'bid', 1),
(17, 'Buldana', 'बुलडाणा', 'buldana', 1),
(18, 'Chandrapur', 'चंद्रपूर', 'chandrapur', 1),
(19, 'Dhule', 'धुळे', 'dhule', 1),
(20, 'Gadchiroli', 'गडचिरोली', 'gadchiroli', 1),
(21, 'Gondiya', 'गोंदिया', 'gondiya', 1),
(22, 'Hingoli', 'हिंगोली', 'hingoli', 1),
(23, 'Jalgaon', 'जळगाव', 'jalgaon', 1),
(24, 'Kolhapur', 'कोल्हापूर', 'kolhapur', 1),
(25, 'Mumbai', 'मुंबई', 'mumbai', 1),
(26, 'Mumbai Suburban', 'मुंबई उपनगर', 'mumbai suburban', 1),
(27, 'Nagpur', 'नागपूर', 'nagpur', 1),
(28, 'Nandurbar', 'नंदुरबार', 'nandurbar', 1),
(29, 'Nashik', 'नाशिक', 'nashik', 1),
(30, 'Raigarh', 'रायगड', 'raigarh', 1),
(31, 'Ratnagiri', 'रत्नागिरी', 'ratnagiri', 1),
(32, 'Sangli', 'सांगली', 'sangli', 1),
(33, 'Satara', 'सातारा', 'satara', 1),
(34, 'Sindhudurg', 'सिंधुदुर्ग', 'sindhudurg', 1),
(35, 'Thane', 'ठाणे', 'thane', 1),
(36, 'Wardha', 'वर्धा', 'wardha', 1),
(37, 'Washim', 'वाशिम', 'washim', 1),
(38, 'Yavatmal', 'यवतमाळ', 'yavatmal', 1),
(39, 'Bangalore', 'बैंगलोर', 'bangalore', 3),
(40, 'Mysore', 'मिसोर', 'mysore', 3),
(41, 'Mangalore', 'मंगलोर', 'mangalore', 3),
(42, 'Hubli -Dharward', 'हुबली', 'hubli_dharward', 3),
(43, 'Ahmedabad', 'अहमदाबाद', 'ahmedabad', 4),
(44, 'Vadodara', 'वडोदरा', 'vadodara', 4),
(45, 'Surat', 'सुरत', 'surat', 4),
(46, 'Rajkot', 'राजकोट', 'rajkot', 4),
(47, 'Jaipur', 'जयपुर', 'jaipur', 5),
(48, 'Udaipur', 'उदयपुर', 'udaipur', 5),
(49, 'Visakhapatnam', 'विशाखापत्तनम', 'visakhapatnam', 6),
(50, 'Guntur', 'गुंटूर', 'guntur', 6),
(51, 'Vijaywada', 'विजयवाड़ा', 'vijaywada', 6),
(52, 'Hyderabad', 'हैदराबाद', 'hyderabad', 7),
(53, 'Chennai', 'चेन्नई', 'chennai', 8),
(54, 'Coimbatore', 'कोइम्बटोर', 'coimbatore', 8),
(55, 'Trichi', 'तिरचि', 'trichi', 8),
(56, 'Tiruvananthapuram', 'तिरुवनंतपुरम', 'tiruvananthapuram', 9),
(57, 'Cochin (Kochi)', 'कोचीन', 'cochin_kochi', 9),
(58, 'Lucknow', 'लखनऊ', 'lucknow', 10),
(59, 'Kanpur', 'कानपूर', 'kanpur', 10),
(60, 'Alahabad', 'अलाहबाद', 'alahabad', 10),
(61, 'Varanasi', 'वाराणसी', 'varanasi', 10),
(62, 'Ayodhya', 'अयोध्या', 'ayodhya', 10),
(63, 'Mathura', 'मथुरा', 'mathura', 10),
(64, 'Vrindavan', 'वृन्दावन', 'vrindavan', 10),
(65, 'Haridwar', 'हरिद्वार', 'haridwar', 11),
(66, 'Derhadun', 'देहरादून', 'derhadun', 11),
(67, 'Patna', 'पटना', 'patna', 2),
(68, 'Kolkata', 'कोलकता', 'kolkata', 12),
(69, 'Burdwan', 'बर्दवान', 'burdwan', 12),
(70, 'Siliguri', 'सिलीगुड़ी', 'siliguri', 12),
(71, 'Bhopal', 'भोपाल', 'bhopal', 13),
(72, 'Indore', 'इंदौर', 'indore', 13),
(73, 'Raipur', 'रायपुर', 'raipur', 14);

-- --------------------------------------------------------

--
-- Table structure for table `dukaan_list`
--

CREATE TABLE `dukaan_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dukaan_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `dukaan_addr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `dukaandar_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `contact_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `dukaan_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `email` text NOT NULL,
  `video_name` text NOT NULL,
  `audio_name` text NOT NULL,
  `dukaan_img_id` int(11) NOT NULL,
  `shop_categories` text DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dukaan_list`
--

INSERT INTO `dukaan_list` (`id`, `user_id`, `dukaan_name`, `dukaan_addr`, `dukaandar_name`, `contact_no`, `dukaan_desc`, `email`, `video_name`, `audio_name`, `dukaan_img_id`, `shop_categories`, `paid`) VALUES
(1, 1, 'Siddhi Lakdi Ghana Oil', 'दत्त मंदिरासमोर, बरमदे हॉस्पिटल शेजारी, आदर्श कॉलोनी, औसा रोड, लातूर', 'विरभद्र नारायण उडगे', '9423348324', 'लाकडी घाण्यावर काढलेल्या तेलाला इतक महत्व का आहे? कोणत्या खास गोष्टी लाकडी घाण्यावरील तेलाला आरोग्यासाठी सर्वोत्तम बनवतात ? जाणून घ्या महत्वाची माहिती !खाद्यतेलाला खूप मोठा इतिहास आहे. चीन आणि जपान येथे इसवी सन पूर्व २००० वर्षांपूर्वी खाद्यतेल वापरायला सुरुवात झाली. सुरुवातीला भुईमुग आणि सूर्यफुलाच्या बिया भाजून –कुटून त्या उकळत्या पाण्यात टाकून त्यापासून पहिल्या वहिल्या तेलाची निर्मिती झाली. त्यानंतर पाम,नारळ यापासूनही तेल काढले जाऊ लागले.मग त्यापुढे तेलक्रांती झाल्याप्रमाणे सर्वच तेलबियांपासून तेल काढण्याची चढाओढ सुरु झाली .जशी जशी औद्योगिक क्रांती होत गेली तसतसे निरनिराळ्या तंत्राद्यानाचा वापर करून तेलाचे उत्पादन घेतले जाऊ लागले. सद्यस्थितीत खाद्यतेलाबरोबर कॉलेस्टोल सारख्या संज्ञा जोडल्या जाऊ लागल्या.', '', '', '', 681, '44,45,', 0),
(2, 9, 'सिद्धि लकड़ी Shop', 'बरमदे हॉस्पिटल शेजारी, आदर्श कॉलोनी, औसा रोड, लातूर', 'विरभद्र नारायण', '9999999999', 'शुद्ध, जैविक आणि आरोग्यपूर्ण तेलाची खात्री.घरपोच डिलिवरी । उत्तम दर्जा । रास्त भाव', '', '', '', 287, '46,,', 0),
(3, 20, 'ZoomYourTraffic Web Solutions', 'B4, Patil Garden Apts, Tejas Nagar, Kothrud, Pune', 'Amod Inamdar', '9423206577', 'Google Search and Online Business.', '', '', '', 46, '97,92,', 0),
(4, 2885, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(5, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(6, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(7, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(8, 2730, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(9, 3140, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(10, 3144, 'Aarogyaniti', 'Vill and Post : Murud, Block :Latur, Dist : Latur, Maharashtra', 'Amit Bhorkar', '9673797495', 'आयुर्वेदिक औषधे', '', '', '', 118, '50,,', 0),
(12, 2696, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(13, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(14, 272, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(17, 3121, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(18, 3121, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 12, '', 0),
(19, 1281, 'Guru Soya Products', 'Shivaji Nagar, Near Dnyaneshwar mandir, Murud. District : Latur 413510', 'Dipak Deshmukh', '8999442136', 'Producer of quality Soya products. We are the specialist manufacturer of Soya products like Soya Coffee, Soya Flour, Soya Udid Papad, SoyaTofu (paneer),Soya Roasted Namkeen ,  Soya Laddoo, Soya shrikhand, Lemon Jam and Soya groundnut chikki ,etc.', '', '', '', 26146, '107,47,106', 0),
(23, 1360, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(24, 1367, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(25, 3230, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(26, 3230, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(27, 3230, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(28, 853, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(29, 3368, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(30, 3368, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(31, 1553, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(32, 2353, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(33, 2353, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(34, 2353, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(35, 2353, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(36, 2277, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(37, 3384, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(38, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(39, 1599, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(40, 1599, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(41, 3531, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(42, 3049, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(43, 1169, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(44, 1152, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(45, 1585, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(46, 2022, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(47, 3111, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(48, 3111, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(49, 3111, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(50, 3111, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(51, 3111, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(52, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(53, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(54, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(55, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(56, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(57, 1290, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(59, 3997, 'Aaradhya Enterprises', 'Behind Sambhaji Udyan, infront of NP School No 11, Samata Nagar, Osmanabad -413501', 'Prashant Dange', '9765012888', 'We are providing support for account and taxation', '', '', '', 24, '95,95,', 0),
(60, 2094, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(61, 55, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(62, 911, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(63, 40, 'Isha tours and travels', 'Shahu nagar Osmanabad', 'Sangita Mane', '9545751155', 'Sample Shop Description', '', '', '', 36, '82,55,61', 0),
(64, 542, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(66, 828, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(67, 349, 'दिलीप गृह उपयोगी वस्तू', 'सिताराम नगर प्रमोद गॅस जवळ लातूर', 'दिलीप ढवण', '9422620263', 'Sample Shop Description', '', '', '', 52, '82,,', 0),
(68, 2913, 'Sample Shop Name. Seema. Shop', 'Sample Shop Address Osmanabad', 'Sample Shopkeeper Name. Kiran mane', '7350671418', 'Sample Shop Description', '', '', '', 1, '56,56,56', 0),
(69, 43, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(70, 27, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(71, 26, 'Kapad dukan mahalaxmi', 'At.post.ashiv taluka ausa, dist.latur', 'Alka ashok jagatap', '7083838314', 'Navnavin drees,Sadi ,lahan va motinch fanci dreeses', '', '', '', 124, '56,76,56', 0),
(72, 356, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(73, 588, 'Ashwini', 'Gulavanchi', 'Ashwini korake', '9834205014', 'फॉनसी बलाउज शिउन  भेटेल', '', '', '', 1, '55,,', 0),
(74, 52, 'Rudhra Dhaba ,Aarohi kirana', 'Shingoli District  - Osmanabad', 'Sujata Patil', '9325493015', 'Non veg , kirana', '', '', '', 1, '45,73,95', 0),
(75, 353, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(76, 2124, 'Swra dukan', 'Kanheri ta washi', 'Sachita Jagtap', '8262971682', 'Ice kek,', '', '', '', 1, '46,,', 0),
(77, 1343, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(78, 13, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(79, 30, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description साखर तेल गहू ज्वारी', '', '', '', 1, '45,,', 0),
(80, 4452, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(81, 570, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(82, 56, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(83, 3079, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(84, 739, 'Yedeshwari Bengali stores Sumit collection', 'Panchincholi Taluka Nilanga Jilla Latur', 'Priya Ram khot', '7620863690', 'Yedeshwari bangle stores Sumit collection stockist', '', '', '', 50, '56,92,58', 0),
(85, 4456, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(86, 4454, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(87, 2053, 'Sample Shop Nameमहादेव वितकर', 'Sample Shop Addressबसवंत वाडी', 'Sample Shopkeeper Nameमहादेव', '7796311609', 'Sample Shop Description', '', '', '', 1, '70,70,70', 0),
(88, 440, 'मुस्कान सखी मसाले', 'खाॅजानगर मदिना चौक गल्ली नं17', 'शाहेदा मुजावर', '9763624671', 'Attached making, Michigan maker, All marsala, kala marsala, garam masala', '', '', '', 37, '45,,', 0),
(89, 93, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(90, 773, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(91, 4463, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(92, 4467, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(93, 4462, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(94, 63, 'Sanket shop', 'Keshav Nagar, Latur', 'Dilip Kundgir', '7397992022', 'येथे शुद्ध अणि चविष्ट, पौष्टिक दूध  योग्य दरात व घरपोच मिळेल.', '', '', '', 53, '47,47,47', 0),
(95, 97, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(96, 2122, 'Sanmati food products.', 'Behind dny', 'Suhas hindane', '9823521008', 'Sample Shop Description', '', '', '', 86, '45,,', 0),
(97, 46, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(98, 4606, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(99, 2934, 'Kokane kirana shop', 'Kasar balkunda , ta.nilanga', 'नवनाथ', '8177991528', 'Trile text massage', '', '', '', 1, '45,,', 0),
(100, 4607, 'Sayali Beauty Parlour', 'Khadgoan Road, Kranti Nagar, Latur', 'Sudha Vinod Housale', '8010025209', 'Our parlour name is SAYALI beauty parlour near khadgoan Road,Kranti Nagar, Latur.The services we provide you is that the parlour course, bridal makeup,mehandi Class etc', '', '', '', 97, '54,63,', 0),
(101, 2940, 'Shinde enterprise', 'Latur', 'Sushil', '7218984975', 'Trial page', '', '', '', 65, '95,,', 0),
(102, 3212, 'Avi shop', 'Peth,latur', 'Avi pawar', '8329582063', 'Trial page', '', '', '', 67, '95,95,', 0),
(103, 2933, 'Somnath sk', 'Somwar peth latur413512', 'Somnath kavale', '7057122388', 'Test trial page', '', '', '', 66, '95,,', 0),
(104, 48, 'Nidhi Sales Service', 'Gajanan colony prakash Nagar', 'Mrs.Neha Kanhaiya M Pawar', '9097191555', 'Providing All Types of online CSC services', '', '', '', 64, '97,97,95', 0),
(105, 678, 'Eklavya photo', 'Big bazaar near, Trimurti nager latur', 'Prashant pise', '9271265167', 'Wedding  photography, pre wedding cinematic shoot, child photography, short films modeling photo etc. 9271256168 /8483915168', '', '', '', 62, '98,,', 0),
(106, 2117, 'Shabnam creative designer', 'Latur', 'Shabnam', '7499856580', 'Design banners, making invitations Card,', '', '', '', 59, '95,95,97', 0),
(107, 115, 'Fatema Enterprises', 'Sanskruti Nagar', 'Tabassum Momin', '9422928492', 'Pure ghee made from buffalo milk.', '', '', '', 1, '47,,', 0),
(108, 2948, 'om kirana janral storce', 'at po. butmugli', 'akash chavan', '8308069636', 'Sample Shop Description', '', '', '', 98, '45,66,', 0),
(109, 4804, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(110, 2853, 'Door Cartoon ', 'Village Bhut Mugli, Taluka Nilanga, Dist Latur', 'Chhaya Maruti Chowhan', '9529981988', 'Door Cartoon Shop', '', '', '', 99, '49,63,', 0),
(111, 4822, 'Wool Shop', 'Village  bhutmugali ta .nilanga. Distr. Latur', 'Shubhangi vijaykumar chavan', '7498912816', 'Best woolen product', '', '', '', 101, '95,55,55', 0),
(112, 1537, 'Rupadevi Online Entarprajes Malti Sarvise Sentr', 'Kasar Sirsi', 'Vaibhav gopinath Ponde', '9970084415', 'Online Entarprajes Malti Sarvise Sentr', '', '', '', 105, '99,101,', 0),
(113, 1272, 'Jyoti shop', 'Nilanga Latur', 'Jyoti', '9999999999', 'Woolen products', '', '', '', 106, '56,,', 0),
(114, 4920, 'वैष्णवी किराणा स्टोर', 'जवळगा  पोमादेवी', 'Yogita balbhim ekhande', '7350603447', 'किराणा दुकान', '', '', '', 1, '45,56,55', 0),
(115, 2046, 'Ganesh store', 'Village Jawalga PD, Taluka Ausa, Dist Latur, Pin 413520', 'Ganesh Babruwan Kakde', '9325209162', 'Agriculture related products', '', '', '', 107, '95,,', 0),
(116, 18, 'Laxmi Dairy', 'Village Jawalga PD, Taluka Aisa, Dist Latur, Pin 413520', 'BIBHISHAN MALI', '9657478575', 'Milk Collection, Milk freezing, Animal feed seeling,Atta Chalii, Kadba Kutti machine', '', '', '', 1, '47,86,', 0),
(117, 1021, 'एन.बी.गारमेंन्ट व शिवणकाम ट्रेनिंग सेंटर औसा शहर', 'संजीवनी हॉस्पिटल जवळ,समता नगर,औसा ता औसा जि लातूर महाराष्ट्र् 413527', 'निता बालाजी गायकवाड', '7057224255', 'महिला व मुलीना  शिवनकाम चे प्रशिक्षण  दिले जाईल.सर्व प्रकारचे ब्लाऊज,पंजाबी ड्रेस,गाऊन,परकर,व इतर सर्व  प्रकारचे  लेडीज  गारमेंट शिवुन मिळतील...', '', '', '', 109, '55,55,', 0),
(118, 4981, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(119, 5018, 'Mane Jewellery ', 'Village Washi, Taluka Washi, Dost Osmanabad', 'Archana Mane', '9307633662', 'विनकामटेलरिंगगोंडे बसविने', '', '', '', 111, '61,55,56', 0),
(120, 5015, 'Sonu Kirana Shop', 'Village - Washington, Taluka Washington, Dist Osmanabad', 'Tabassum Kazi', '9049730957', 'Pulses, Sugar, Dal, Rice, Buiscuits and lot', '', '', '', 112, '45,,', 0),
(121, 5032, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(122, 5031, 'Mauli Seva Kendra', 'Village Sarola Mandva, Talika Wash, Dist Osmanabad', 'Neeta Datta More', '8830564721', 'Marriage related products rent.', '', '', '', 115, '75,78,', 0),
(123, 1047, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(124, 5192, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(125, 2951, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(126, 5297, 'Akshada Beauty Parlour', 'Murud Bk', 'Jyoti Vishnudas Sable', '9130304670', 'All beauty parlour facilities available', '', '', '', 119, '54,56,', 0),
(127, 3132, 'Aishwarya Saree Centre', 'Shivaji agar , Murud, Latur Rural, Latur', 'Surekha rajendra bhanje', '954568754', 'All types of Sarees, Silk, Katha dar, Aula Kabhi garam, Synthetic, Maharashtrian, Surat Sarees, Artificial Jewellery etc', '', '', '', 120, '56,61,', 0),
(128, 5302, 'Maithily Beauty parlour and ladies wear', 'Siddhivinayak temple near market road murud', 'Kavita Pramod Bansode', '7276124972', 'All types of ladies Garments available. We also do beauty parlour work.', '', '', '', 121, '54,56,', 0),
(129, 5299, 'Saraswati laxmi garments ladies', 'Shiviji nager shishak qulony', 'Surekha Ramchandra Andhare', '9689287277', 'We have all type of clothes and garments of all generation .And also beautiful sarees.We have immitatin  jewwellry ,all type of purse , and everything essential for ladies.', '', '', '', 1, '54,56,61', 0),
(130, 2832, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(131, 3157, 'Saheli Stationary and Tailoring Shop', 'At the post pangri taluka barshi district solapur', 'Faruk shaikh', '9518998116', 'Number one quality,Various types of quality,Home delivery, Varieties available with reasonable price, All products are available related with home appliances,  related with your work and all machineries', '', '', '', 1, '55,61,95', 0),
(132, 217, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(133, 42, 'Sai tours', 'At: Davatpur ta. ausa dist. Latur', 'Mangesh vilas birajdar', '9822661597', 'Ertiga गाडी भाड्याने मिळेल...त्याच सोबत  घरात लागणारे साहित्य ही आपल्याकडे उपलब्ध आहेत जसे की आटा चक्की , शेवाई मशीन, पापड मशीन, मिरची कंदप,हिमालय बेबी product, सॅनिटरी नॅपकीन, सौरऊर्जा वर चालणारे बॅटरी, इत्यादी आणखीन खूप अशे साहित्य आपल्याकडे उपलब्ध आहेत . त्याच बरोबर शेतीसाठी लागणारे अवजारे ही आपल्याकडे उपलब्ध आहेत जसे की कडबा कुट्टी, चार्जिंग फवारे,  बायोगास(biogass ), सबजी कूलर, सोयाबीन कटर,मल्चिंग, कुकुटपालन, शेळीपालन शेड, आणखीन खूप अशे साहित्य आपल्याकडे उपलब्ध आहेत ....आणि हे साहित्य खात्रीनं मिळेल....', '', '', '', 248, '82,,', 0),
(134, 5537, 'Bajrang Bali papad udhyog nagarsoga', 'At. Post. Nagarsoga ta. Ausa dist. Latur', 'Dnyaneshwar kashinath raute', '8080693579', '1)  Aplyakade papad tayar Karun ,tandul papad gol, Lal mirc powder, haladi powder, purn masale, kala mirc powder, khiriche gahu ,papadachi jwari, chana dal, udit dal, mug dal,tur dal, stationery sarv product, jweallry, ....', '', '', '', 126, '69,71,62', 0),
(135, 5548, 'Omsai aqua water filter', 'At. Post. Nagarsoga ta ausa dist नमस्कार latur', 'Ganesh is masalakar', '9921787696', 'आपल्याकडे RO चे शुद्ध पाणी भेटेल घरपोच सेवा लग्नाच्या पन order स्विकारली जातील...', '', '', '', 127, '89,,', 0),
(136, 5561, 'Pranav store nagarsoga', 'At post. Nagarsoga Ta. Ausa Dist. Latur', 'Rohini Digambar Shinde', '7507791314', 'Aplaykade shilaimashine, papad mashine, shevai mashin, udit papad mashin, marshal aata chakki, himaalaya bed, dal mil, favare, himalaya all baby product, cynitery pad, kadaba kutti, etc product uplabd ahet...', '', '', '', 128, '55,93,', 0),
(137, 1631, 'Raghav hollsell retail nagarsoga', 'At. Nagarsoga ta. Ausa dist. Latur', 'Yuvraj musande', '8530338832', 'Aplakade mug Dal ,tur Dal, chana Dal, taje shwachha doodh, jaivik jwari, gavhu, kesari ambe(mango), papai,..etc vastu bhetatil', '', '', '', 129, '71,47,74', 0),
(138, 3375, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(139, 5701, 'Swaraj  milk', 'At. Ashiv ta. Ausa Dist. Latur', 'Dnyaneshwar manik  gore', '9922851105', 'आपल्याकडे  खवा, बासुंदी, तुप, सर्व  पेढे, दही, पनीर, श्रीखंड, मिठाई सर्व प्रकारचे अप्रतिम product  आपल्याकडे योग्य दरात  भेटतील आणखीन  बालुशाही, जिलेबी, फरसाण, बर्फी, जामून, कलाकंद, डिंकालाडू, मोतीचूर, बुंदी लाडू, खारा, समोसा, कचोरी, भज्जी, वडापाव, आणि वाढदिवस केक, आणि वाढदिवसाच्या order लग्नाच्या order कसल्याही कार्यक्रम चे  order योग्य दरात आपलीकडं उपलब्ध आहेत....', '', '', '', 130, '46,47,49', 0),
(140, 1288, 'Bismilaa mirchi kandap', 'At ashiv ta. Ausa', 'Bismilla allhabakshya shaikh', '9370495734', 'Aplyakade mirchi Kandap ahe...June furniture yogya darat bhetatil', '', '', '', 132, '52,,', 0),
(141, 5726, 'Mahalixmi  kapad dukan', 'At. Post.ashiv, ta.ausa, did. Latur', 'Alaka Ashok jagtap', '7083838314', 'Aaplyakade said, dress, jeans, latest design, Lahan balache  new design..', '', '', '', 131, '56,58,59', 0),
(142, 5729, 'Nikita shevai ', 'At.  Ashiv ta ausa', 'Laxmi nana jadhav', '8530979868', 'Shevai ani tandul papad tayar karun bhetatil', '', '', '', 1, '71,,', 0),
(143, 5748, 'Shri ganesh Enterprises Ausa', 'At. Ausa ta ausa', 'Jivan kadam', '9421976628', 'Netafim che drip,classic sprinkler,PVC pipe,etc...Yogya darat bhetel...', '', '', '', 133, '94,93,', 0),
(144, 1910, 'Bright Carrer Infotech', 'Khardekar Stop, Ausa Road, Latur', 'Madhukar Mahadeo Gadekar', '9766620068', 'Software Development and Training', '', '', '', 134, '99,101,95', 0),
(145, 2552, 'Girish Trading Company Latur', '10-A, Kava Road, Near Solapur Siddheshwar Bank', 'Ganesh Mukundrao Madrewar', '9421483975', 'Aplyakade jaivik aushadi uplabd ahet yogya darat...', '', '', '', 140, '85,86,', 0),
(146, 5869, 'Ramswarup mulanche hostel latur', 'At post latur', 'Dr. Chandrashekhar Ramswarup Lokhande', '9922255597', 'ट्युशन, क्लासेस,आणी महाविद्यालयाच्या अत्यंत जवळकोट,गाडी , पंख्याची सोयवीजबिल वसतिगृह मालकाकडेनळ आणि बोर ची 24 तास व्यवस्था', '', '', '', 146, '95,,', 0),
(147, 2648, 'Ds sales services', 'At latur', 'Dayanand marotirao yevate', '9834382983', 'Ro Water filter available start rate Rs. 5999/-to 22000/-  and service only Rs. 100/- in Latur City.', '', '', '', 145, '89,,', 0),
(148, 5877, 'Mokashe Arts photo studio latur', 'At post latur nandi stop,', 'Balasaheb Ganeshrao Mokashe', '9881065560', 'All types of photography videography it\'s  all products total live video setup', '', '', '', 147, '98,,', 0),
(149, 3128, 'Tofiq ladies telar', 'At.  Post.  Selu Ta. Ausa', 'Arifabi shadul shaikh', '9529735855', 'Aplyakade mahilanche sarv design blouse che Yogya darat  Shilai Karun bhetatil....Aplykade Shelia mashing, Mirchi Khandap, Himalaya all baby products, papad mashin,,', '', '', '', 148, '55,,', 0),
(150, 5933, 'Sanskurti mirchi kandap mashin', 'Ad post selu', 'Laxmi dattatre kamble', '9604986430', 'Aplya kade palambar sare kam karon bhetil...Aplyakade mirchi kandap, papadopoulos mashin, biogas, peppers machine, tadpatri, himalaya baby product, shetatil sarve avajare bhetatil, kadpakutti, etc...', '', '', '', 1, '95,,', 0),
(151, 3131, 'Iqra holsel dilar', 'Ad post yerandi', 'Heena riyaz shaikh', '9082929428', 'Aplyakade sure che save product upalbad ahet....Mirchi kandap, aatta chakki, papad mashin, shevai mashin,shetatil sarv avajare, yogya darat bhetatil.....etc vastu aplyakade  upload ahet...', '', '', '', 1, '94,93,92', 0),
(152, 858, 'Samir hollsell delar selu', 'At post. Selu', 'Shabana Mohammad shaikh', '7218199861', 'Aplyakade sarv shetatil avajar bhetatil, tasech kapad shilai mashin,papad mashin,aata chaki,tadpatri,kadapakutti,etc vastu aplyakade uplabad ahet...', '', '', '', 150, '94,94,47', 0),
(153, 2149, 'Sayali suyog seva', 'At post. yakatpur ta. Ausa', 'Radha suryakant jagadale', '8080175641', 'Aplykade lagnatil sarv bhande stage,mandap, lagnachi Sara kane Karun bheratil, tasech aplyakade stationary  che sarv vastu upalabdh aet, seasonable aal product aplyakade yogya darat bhetat...Tasech omini vhan yogya darat bhadyane bhetel...', '', '', '', 1, '59,78,', 0),
(154, 6035, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(155, 1456, 'Nandini picko foll center', 'At. Post. Yakatpur Ta. Ausa', 'Meera dattatraya sathe', '7666762947', 'Aplyakade ladies dress, blouse, picko foll, etc kame yogya darat karun bhetatil.... Tasech papad mashin, aata chhaki, himalaya baby products, kadaba kutti, nari care, sabji cooler, tadpatri, mirchi kandap, shevai mashin, biogass, etc vastu vikri kele jate. ...', '', '', '', 1, '55,,', 0),
(156, 6020, 'Aata chakki', 'At.post.yakatpur tq.ausa dist.latur', 'More Kartik Keshav', '8669587347', 'Aamchya kde sarv prakarche pith v dali kelya jatil ', '', '', '', 177, '55,72,95', 0),
(157, 6021, 'Somesh kirana stoars', 'At post Yakatpur ta.Ausa dist latur', 'Salunke Hanmant Shahajirao', '9960094217', 'Amachyakade sarv prakarche  kirana uplabad ahet...', '', '', '', 175, '45,47,97', 0),
(158, 29, 'Gokarna Handcrafts Shop', 'At post yakatpur tq. Ausa Dist Latur', 'Gokrna more', '9850013752', 'आमच्याकडे सर्व प्रकारचे भाजीपाला टमाटे बटाटे मिर्ची गाजर वांगे कुठिंबिर रताळे मिळतील त्याचप्रमाणे पापड आणि हाताने बनवलेले वस्तू विणकाम करून मिळतील', '', '', '', 2931, '73,47,125', 0),
(159, 1782, 'Jai jinendre kirana', 'At. Post. Yakatpur Ta. Ausa', 'Rohini vijaykumar bol', '9834766224', 'Aplakade kirana vastu sarv yogya daraat bhetatil, tasech himalaya baby product, aata chhaki, papaad mashin ,tadpatri, shilai mashin, mirchi kandap,kadaba kutti etc vastu yogya darat bhetatil...', '', '', '', 151, '55,45,93', 0),
(161, 71, 'इन्स्टंट खमंग चे डोखला चे पीठ', 'रेणापूर ता रेणापूर जिल्हा लातूर', 'उर्मिला आपशींगेकर', '8888912374', 'इन्स्टंट खमंग, डोखला चे पीठ तयार असलेले रेसिपी रेडी फॉर ईट करीता आपल्या ओरडर्स नुसार तयार करून मिळतील ,तसेच लग्न समारंभ ,कार्यक्रम आणि पार्टी करिता केक,खमंग आणि तयार रेडि फॉर मिक्स असलेले खमंग तयार करून मिळतील त्वरा करा जास्त मागवलायसआपणास स्वस्त मिळेल ।।', '', '', '', 153, '75,75,46', 0),
(162, 6063, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(163, 1401, 'Kiran ladies telar', 'At. Malakondaji post.  Devatala', 'Varsha bhagvat jagatap', '9021918122', 'Aplyakade mahilabche blouse ,design, picko foll karun bhetel....Tasech shetatil sarv avjar, biogass, favare, himalaya baby product etc vastu shogya darat bhetat...', '', '', '', 156, '55,,', 0),
(164, 6177, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(165, 6172, 'Jai buty parlar', 'At. Malkonadaji', 'Chhaya sachinrao kulkarni', '9284534540', 'Aplykade mahilache sarv mecup karun bhetatil, navari chi mehandi kadun bhetel , tasech shetatil sarv avajare aplyakadr yogya darat uplabd ahet...', '', '', '', 1, '54,,', 0),
(166, 378, 'Ashwini cloth center', 'Malkondji', 'Chandarani Abasaheb Kulkarni', '8788612253', 'Amachyakade  sarv vastra milatil, kapade shivun milati sarv yogy darat miltil', '', '', '', 1, '57,56,58', 0),
(167, 6183, 'Kore Kirana  and General Store Malkondji', 'Malkondji at post devtala', 'Kore  pandurang Kallappa', '9561581247', 'Kore  Kirana store  madhe kirana vastu Ani sadi, stationary swast darat milatil', '', '', '', 157, '45,56,61', 0),
(168, 1400, 'Manasvi kirana store', 'At. Malkondaji', 'Priyanaka pramod kulkarni', '9130330248', 'Aplyakade shetatil avjare bhetatil. Shetatil sarv jaivik padarth bhetatil, tasech himalaya baby product, shilai mashinen, papad mashin, etc vastu yogya darat bhetatil', '', '', '', 1, '45,,', 0),
(169, 6220, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(170, 2146, 'Shreenath yatra copany', 'Vadval nagnath  chakur', 'Dagdu bhure', '9960994239', 'अमच्याकडे  लग्नसाठी, सहलींसाठी, यात्रसाठी भांड्याने बसेस  भेट तील.', '', '', '', 158, '81,95,', 0),
(171, 2146, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(172, 892, 'Shiv shakti general store', 'At Post. Lamajana', 'Shivkumar Janak Birajdar', '9767658458', 'Aaplyakade shaleche sarv vastu uplabdh ahet, cosmetic, general store che sarv product, Xerox, patra dron, pick foll, micro Ulan etc vastu bheatatil...Tasech shetatil sarv product yogya darat bhetatil, jase ki tadpatri, kadabba kutti, aata chaki ,papad machine, shelai machine, malching, etc vastu bhetatat...', '', '', '', 160, '63,94,', 0),
(173, 6337, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(174, 901, 'Indian medical lamajna', 'At. Post. Lamajana', 'Asif Mulla', '9970424247', 'Aplyakade all medicine Vetarnary, general store yogya darat bhetatil...', '', '', '', 161, '50,,', 0),
(175, 2739, 'Rukamini papad dukhan', 'At post. Mangarul', 'Lalita vikas karale', '9823550125', 'Apluakade batata cche papad tayar karun bhetatil...Tasech shetattil sarv avjare yogya darat bhetatil... tadpatri biogass kadabakutti tasech atta chaki shilai machine mirchi kandap etc vastu aplyakade bhetatil...', '', '', '', 1, '95,,', 0),
(176, 2875, 'Shrashti papad shop', 'At post. Mangarul', 'Anita Rajendra birajdar', '9665892402', 'Aplyakade sarv papad Tatar Karun bhetatil, jwari Che papad, udit, kurdi, tandul, shabu etc papad Tayar Karun bhetatil...Tasech shetatil sarv avjare yogya darat bhetatil kadaba Kutti, tadpatri,malching,biogass , favare, jaivik aushadhe, sinitizee nipckine, ect vastu bhetatil...', '', '', '', 1, '95,45,47', 0),
(177, 6734, 'क्रांती मल्टी सर्व्हिसेस', 'डी सी सी बँके जवळ .मु पो मंगरूळ ता औसा', 'दादासाहेब रामपुरे', '9823639113', 'Sample Shop Description', '', '', '', 1, '45,101,104', 0),
(178, 2741, 'Kaleshwar kirana store', 'At. Post. Mangarol', 'Kamdhenu Atul Birajdar', '9172525035', 'Aplakade kirana sarv yogya darat bhetel tasech shetatil avajare pn uplabd ahet tadpatri, kadabakutti, biogass, hat favare, atta chakki ,papad mashin , Himalaya baby product etc vastu bhetattil...', '', '', '', 162, '45,,', 0),
(179, 6749, 'Mahalaxmi kirana store', 'At post. Mangarul', 'Minakshi mohan jadhav', '9860188339', 'Aaplyakade laganche rukavat bhetato yogya darat...Tasech shetatil sarv avajar bhetatil tadpatri, biogass, kadabakutti,  malching ,favare, etc vastu bheatatil..Atta chakki, papa d machine, shevai machine, etc vastu bhartatil...', '', '', '', 1, '45,,', 0),
(180, 382, 'यश टुर्स', 'मु पो मंगरूळ ता ओसा  जि लातूर', 'सुषमा सतिष बिराजदार', '9503195160', 'Aplakade 12 tyre chi truck uplabdh ahe.... Tasech buty parler, shilai machine, doodh vyavsayik, gass shigadi durusti, ... Etc vastu yogya darat bhetatil...', '', '', '', 163, '87,54,55', 0),
(181, 6763, 'Gaajkhoj Enterprises', 'JawalgaPO village, Ausa Taluka, Latur District, pIN 412003', 'Gaav Khoj', '9870070090', 'Varieties of cakes, milk, sweet. Biscuits', '', '', '', 164, '46,47,48', 0),
(182, 6376, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(183, 6326, 'Pranjal Aqua cool water', 'पाणी टाकी समोर खाडगाव रोड लातूर', 'प्रांजल देशमुख', '7083305050', 'आमच्याकडे थंड पाणी मिळतील. जार व बॉटल', '', '', '', 193, '95,,', 0),
(184, 376, 'Suresh kirana store', 'At post . Javali', 'Thakubai shravan nelwade', '9665462870', 'Aplyakade jwari , gahu, sarv Dali tayar karun bhetatil...Tasech shetatil sarv avjare yogya darat bhetatil, kadaba kutti, tadpatri, malching, atta chalu, papad machine, shevai machine, etc... Vastu yogya darat bhetatil', '', '', '', 1, '45,94,', 0),
(185, 6832, '।pawan kirana store', 'At post  javali', 'Sumitra bhaskar more', '9960210980', 'Aplakade sheattil sarv avjare uplabdh ahet hat favara, kadaba kutti , biogass, jabji cooler, malching, Tasech ghargut hi sahitya uplabdh ahet, atta chaki, shevai machine, papad machine, etc vastu yogya darat bhetatil...', '', '', '', 167, '45,94,', 0),
(186, 6272, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(187, 5916, 'Kasturbai vulan center', 'ताजपुर', 'कस्तुरबाई शिंदे', '7875109117', 'आमच्याकडे वुलनद्वारे दाराचे परदे सजावटीसाठी खेळणी, देवाची प्रतिमा ई. प्रकारचे वस्तू तयार करून मिळतील.', '', '', '', 169, '95,,', 0),
(188, 6841, 'Anuradha kirana store', 'At post . Javali', 'Anuradha Amol Thorat', '8855000125', 'Aplyakade shudha deshi gai che doodh yogya darat uplabdh ahe...Tasech shetatil sarv avjarae pn uplabdh ahet...Jase ki kadaba kutti, hat favare, biogass, tya sobat gharatil avashyak vastu ahet jase ki atta chakki , papad machine ,shevai machine etc vastu yogya darat bhetatil...', '', '', '', 1, '45,94,', 0),
(189, 6866, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(190, 6366, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(191, 5927, 'Mule Shore Sakhi Shop', 'होर्टी', 'ज्योती मुळे', '9370594575', 'आमच्याकडे शोअर सखी चे प्रोडक्ट योग्य दरात मिळतीलपॅड्स, हिमालया बॉडी लोशन, क्रीम ई.', '', '', '', 172, '95,,', 0),
(192, 6327, 'Yeilwad Kirana Shop', 'मु.सांगूचीवाडी, ता.कंधार,जि. नांदेड', 'कमलाबाई येईलवाड', '8308125460', 'आमच्याकडे सर्व प्रकारचे किराणा साहित्य योग्य दरात मिळेल...', '', '', '', 174, '45,45,', 0),
(193, 3645, 'Jaiwik  krushi seva kendra', 'कड दोरा तालुका उमरगा जिल्हा उस्मानाबाद', 'अमोल पाटील', '9766164898', 'हे पूर्णपणे जैविक प्रॉडक्ट आहे.यामुळे जमिनीचा सेंद्रिय कार्बन वाढतो. पांढर्‍या मुळी मोठ्या प्रमाणावर वाढतात. जमिनीमध्ये गांडुळाची निर्मिती होते. जमिन कायम सुपीक राहते. हे पावडर मधे आहे. याची पॅकिंग एक किलो मधे आहे.एक वेळ वापरुन पहा रिजल्ट खात्रीशीर आहे. हे सर्व पिकासाठी वापरता येते.', '', '', '', 232, '85,94,85', 0),
(194, 6382, 'Mohini saree center', 'पो. भेंडेगाव ता. लोहा जि. लातूर', 'मोहिनी', '8080887153', 'आमच्याकडे चांगले प्रकारचे व उत्तम डिझाईन असलेले साड्या विकले जातात.', '', '', '', 182, '56,,', 0),
(195, 5782, 'Ashabai Masalae Udyog', 'मु. खानापूर, पो. पोहरेगाव ता. रेणापूर  जि. लातूर', 'आशाबाई रेनवकर', '9767154716', 'आमच्याकडे मसाले युक्त पदार्थ विकले जातात. आणि काळी मिर्च व लाल मिरची योग्य दरात मिळतील.', '', '', '', 585, '95,,', 0),
(196, 7231, 'Patil Export Quality Kesar Mango', 'Available in Latur, Osmanabad, Solapur and other districts in Maharashtra and Karnataka. For Bulk quantity,  anywhere in India.', 'Mr. Sachin Patil', '9970085440', 'Very Good Export Quality Chemical Free Organic Kesar Mangos. These have been farming in our own farm and followed the process of Organic farming process. We sell in Wholesale as well as Retail. Buy 100% Orgainic Keshar Mango directly from our farm and enjoy your summer like never before. Please order your quantity, before it finishes for export order. Available in any part of Latur, Osmanabad,  Solapur and various places in Maharashtra and Karnataka. For bulk quantity, we can supply anywhere in India. For special rate for bulk quantity,  please contact us over phone or Whats App us on 9970085440 for placing your booking.', '', '', '', 270, '74,,', 0),
(197, 7333, 'Mahananda Tailoring', 'Jevali Tal Dist Latur', 'महानंदा ताई कांबळे', '9370483261', 'आमच्याकडे सर्व प्रकारचे ब्लाउज ,परकर,तसेच महिलेचे कपडे ,व मुलांचे लहान ड्रेस माफक दरात शिवून मिळतील पिकू, फॉल आणि अस्तर देखील मिळतील ,,,          तसेच हिमालय कंपनी चे प्रॉडक्ट ,आणि विविध शेतीपयोगी यंत्र साहित्य आपणास ऑर्डर प्रमाणे SURE चे मिळवून देण्याची सुविधा आहे ।', '', '', '', 199, '55,55,56', 0),
(198, 6195, 'Amol Floor Mill', 'Kale Galli, Latur', 'Amol Galande', '8411926055', 'आमच्याकडे गहु, ज्वारी, भगर, दाली, तांदूळ, बाजरी, हळद, मिरची इत्यादि दळून मिळेल व तसेच शेवाई बनऊन मिळतील.', '', '', '', 210, '105,97,97', 0),
(199, 6328, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(200, 6339, 'Anushka jewellery', 'सराफ मार्केट, फर्स्ट फ्लोअर बसस्टँड समोर लोहा ता. लोहा जि. नांदेड', 'अनुष्का आंबेकर', '9860866707', 'आमच्याकडे उत्तम प्रकारचे आकर्षक पद्धतीचे, वेगवेगळ्या डिझाईन चे दागिने मिळतील', '', '', '', 196, '62,,', 0),
(201, 6355, 'Sample Shop Name', 'Sample Shop Address', 'Sample Shopkeeper Name', '9999999999', 'Sample Shop Description', '', '', '', 1, '', 0),
(202, 384, 'Shubham ladies taler', 'At post. Dagarsoga', 'Rekha indrajit kavale', '9763458559', 'Aplyakade ladies sarv design blousebbche shivun bhetatat ...Aplyakade gharguti dalan dalun bhetate, turichi dal, harbhara ,mug dal, udid dal, yogya darat tayar karun bhetate...Tasech gavaran kombade bhetat, ani gavaran ande on bhetat...', '', '', '', 202, '55,70,', 0),
(203, 2061, 'Spandan buty parler and ladies telar dapegao', 'At post. Dapegao', 'Dipali ajit suryavanshi', '8308882829', 'Aplyakade mahilanche facial, vacks, cleanup,me handi, threading, etc...Yogya darat karun bhetatilNavari cha pn full makeup karun bhetel...Nantar sarv prakarche blouse and dress yogya darat shilai karun bhetatil...', '', '', '', 201, '54,55,', 0),
(204, 7533, 'Hina bangadi vyavsay', 'At post. khuntegao', 'afrin tamboli', '8080003096', 'aplyakade bangadya, ladies dress, sadya, chapal, but, genaral store sarv material, etc vastu yogya darat  bhetatil...shettil sarv avjre uplabdhahet jase ki kadab kutti, har faware, malching, soyabincutter, biogass, etc vastu bhetatil...Gharguti sadhane bhettil atta chakki, papad machine, shevai mchine, mirchi kandap, himalaya baby product yogya darat uplabdh ahet...', '', '', '', 1, '56,60,', 0),
(205, 7531, 'vishal genaral store', 'At post. Hipparsoga', 'sarita chinchole', '9145422250', 'aplykade sarv genaral store vastu uplabdh ahet tasech kirana hi yogya daratuplabdh ahe...tasech shetatil sarv avshyak vastu yogya darat bhetatil jase ki kadabakutti , malching, hatfavare, soyabin cutter, tasechgharatil vastu hi upladh ahet... atta chhaki, papad machine, shevai machine etc...', '', '', '', 1, '45,104,', 0),
(206, 7530, 'Sachin kirana Store', 'At post. Khuntegao', 'Kavita tyrambak shinde', '9011914330', 'Aplykade kirana holcell rate madhya uplabdh ahet..Tasech shetatil sarv avjaare uplabdh ahett jase ki kadabakuitti, malching,  hat favare,biogass, gharaguti hi barech product yoga darat uplabdh ahet atta chaki, shevai machine, paper machine...', '', '', '', 203, '45,,', 0),
(207, 2792, 'Sakshi doodh dairy', 'At post. khuntegao', 'Mahadevi pradip kolhe', '8263831106', 'aplyakade gai che ani mhashiche swachya taje doodh yogya darat bhetel...tasech gvaran kombade, ande uplabdh ahet...tasech shetatil sarv avjare uplabdh ahet biogass, kadabakutti, malching, atta chakki, shevimachine, papad machine, etc vastu yogya drat bhetatil', '', '', '', 1, '47,70,', 0),
(208, 1249, 'Mahima Ladies Tailor', 'At. Post. Holi.Tq. Ausa. Dist. Latur', 'Bhagyashree Holikar', '8329405620', 'आमच्याकडे विविध डिझाईनचे व सादे ब्लाऊज शिऊन मिळतील तसेच पिकोफोल करून मिळेल. त्याचबरोबर हिमालया  कंपनीचे लहान बाळासाठी साबण, शांपु, बॉडी मसाज तेल, पावडर ह्या वस्तु योग्य दरात मिळतील आणि शेती साठी लागणाऱ्या वस्तु व गृहऊपयोगी वस्तु आणि मशीन ऑर्डर प्रमाणे घेऊन मिळतील.', '', '', '', 204, '56,55,97', 0),
(209, 366, 'shruti jeans telar', 'at post khuntegao', 'suvarna ganpati kolhe', '9518377453', 'Aplyakade jeans che sarv design dress bhetatil...tasech shetati lsarv avajare uplabdh ahet...kadaba kutti, hat faware, tadpatri, soyabin cutter, biogass, ani gharguti vastu atta chakki, mirchikandap, shevai machine, papad machine, himalaya baby product etc product yogya darat bhetatil...', '', '', '', 1, '55,94,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dukaan_photos`
--

CREATE TABLE `dukaan_photos` (
  `id` int(11) NOT NULL,
  `photo_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `prod_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dukaan_photos`
--

INSERT INTO `dukaan_photos` (`id`, `photo_name`, `prod_id`) VALUES
(1, 'sample.jpg', NULL),
(2, 'shop_5.jpg', NULL),
(3, '5_1.jpg', NULL),
(4, '5_2.jpg', NULL),
(5, '5_3.jpg', NULL),
(6, '5_4.jpg', NULL),
(7, '5_5.jpg', NULL),
(8, '5_6.jpg', NULL),
(9, '5_7.jpg', NULL),
(10, '5_8.jpg', 14),
(12, 'shop_5.jpg', NULL),
(13, '5_10.jpg', NULL),
(14, '5_11.jpg', 17),
(17, 'prod_1_6_1.jpg', NULL),
(18, 'prod_2_18_1.jpg', NULL),
(19, 'shop_2_1.jpg', NULL),
(23, 'shop_59_1.jpg', NULL),
(24, 'shop_59_2.jpeg', NULL),
(25, 'prod_59_19_1.jpeg', NULL),
(26, 'prod_59_19_2.jpeg', 19),
(27, 'prod_59_20_1.jpeg', 20),
(28, 'prod_59_21_1.jpeg', 21),
(29, 'shop_3_42.png', NULL),
(30, 'prod_3_22_1.png', 22),
(31, 'prod_3_23_1.png', 23),
(32, 'prod_3_24_1.png', 24),
(33, 'shop_2_5.jpeg', NULL),
(34, 'shop_3_43.png', NULL),
(35, 'shop_63_1.jpg', NULL),
(36, 'shop_63_2.jpg', NULL),
(37, 'shop_88_1.jpg', NULL),
(38, 'prod_88_26_1.jpg', NULL),
(39, 'prod_88_26_2.jpg', 26),
(40, 'prod_63_28_1.jpg', 28),
(41, 'prod_63_29_1.jpg', 29),
(42, 'shop_3_44.png', NULL),
(43, 'shop_65_1.jpg', NULL),
(44, 'shop_65_2.jpg', NULL),
(45, 'shop_3_45.png', NULL),
(46, 'shop_3_46.png', NULL),
(47, 'shop_84_1.jpg', NULL),
(48, 'shop_84_2.jpg', NULL),
(49, 'shop__1.jpg', NULL),
(50, 'shop_84_3.jpg', NULL),
(51, 'prod_68_31_1.jpg', 31),
(52, 'shop_67_1.jpg', NULL),
(53, 'shop_94_1.jpg', NULL),
(54, 'prod_67_30_1.jpg', 30),
(55, 'shop_71_1.jpg', NULL),
(56, 'shop_96_1.jpg', NULL),
(57, 'shop_96_2.jpg', NULL),
(59, 'shop_106_1.png', NULL),
(60, 'shop_101_1.jpg', NULL),
(61, 'shop_104_1.jpg', NULL),
(62, 'shop_105_1.jpg', NULL),
(63, 'shop_103_1.jpg', NULL),
(64, 'shop_104_2.jpg', NULL),
(66, 'shop_103_2.jpg', NULL),
(67, 'shop_102_1.jpg', NULL),
(68, 'prod_104_35_1.jpg', 35),
(69, 'prod_103_38_1.jpg', 38),
(70, 'prod_106_36_1.jpg', NULL),
(71, 'prod_99_42_1.jpg', 42),
(72, 'prod_104_43_1.jpg', 43),
(73, 'prod_106_36_2.jpg', NULL),
(74, 'prod_102_37_1.jpg', 37),
(75, 'prod_106_36_3.jpg', 36),
(76, 'shop_2_6.jpeg', NULL),
(77, 'prod_2_18_2.jpeg', NULL),
(78, 'shop_2_7.jpg', NULL),
(79, 'shop_2_8.jpg', NULL),
(80, 'shop_2_9.jpg', NULL),
(81, 'prod_2_18_3.jpeg', NULL),
(82, 'prod_2_18_4.jpeg', NULL),
(83, 'prod_2_18_5.png', NULL),
(84, 'shop_2_10.jpg', NULL),
(85, 'prod_2_18_6.png', 18),
(86, 'shop_96_3.jpeg', NULL),
(87, 'prod_96_45_1.jpeg', 45),
(88, 'prod_96_46_1.jpeg', 46),
(89, 'prod_96_47_1.jpeg', 47),
(90, 'prod_96_48_1.jpeg', 48),
(91, 'prod_96_49_1.jpeg', 49),
(92, 'prod_96_32_1.jpeg', NULL),
(93, 'prod_96_32_2.jpeg', NULL),
(94, 'prod_96_32_3.jpeg', 32),
(95, 'shop__2.jpg', NULL),
(96, 'shop_65_3.jpg', NULL),
(97, 'shop_100_1.jpg', NULL),
(98, 'shop_108_1.jpg', NULL),
(99, 'shop_110_1.jpg', NULL),
(100, 'prod_100_50_1.jpg', 50),
(101, 'shop_111_1.jpg', NULL),
(102, 'prod_100_54_1.jpg', 54),
(103, 'prod_100_55_1.jpg', NULL),
(104, 'prod_100_55_2.jpg', 55),
(105, 'shop_112_1.jpg', NULL),
(106, 'shop_113_1.jpg', NULL),
(107, 'shop_115_1.jpg', NULL),
(108, 'shop_117_1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dukaan_products`
--

CREATE TABLE `dukaan_products` (
  `id` int(11) NOT NULL,
  `prod_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `prod_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci DEFAULT NULL,
  `prod_detailed_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci DEFAULT NULL,
  `prod_amt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `is_del` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dukaan_products`
--

INSERT INTO `dukaan_products` (`id`, `prod_name`, `prod_desc`, `prod_detailed_desc`, `prod_amt`, `shop_id`, `cat_id`, `quantity`, `unit`, `is_del`) VALUES
(1, 'Safflower (करडी तेल)', '5 Kg', NULL, '1580', 1, NULL, NULL, NULL, 0),
(2, 'Coconut Oil (खोबरेल तेल)', '1 Kg', NULL, '140', 1, NULL, NULL, NULL, 0),
(3, 'Prod 15', 'Prod Desc5', NULL, '1505', 1, NULL, NULL, NULL, 1),
(4, 'Prod 20', 'Prod 20 Desc', NULL, '1450', 1, NULL, NULL, NULL, 1),
(5, 'Groundnut Oil (शेंगदाणा तेल)', '1 Liter', NULL, '275', 1, NULL, NULL, NULL, 0),
(6, 'Safflower (करडी तेल)', '1 Liter', NULL, '295', 1, NULL, NULL, NULL, 0),
(7, 'Guru SoyaCafe Gold', '50g', NULL, '80', 19, NULL, 50, '1', 0),
(8, 'Guru SoyaCafe', '25g', NULL, '25', 19, NULL, 50, '1', 0),
(9, 'Guru Soya Tofu', '200g', NULL, '60', 19, NULL, NULL, NULL, 1),
(10, 'Soya Roasted Naamkeen', '50g', NULL, '30', 19, NULL, 50, '1', 0),
(12, 'Guru Soya Laddu', '100g', NULL, '60', 19, NULL, 25, '1', 0),
(13, 'Guru Soya Shrikhand', '100g', NULL, '20', 19, NULL, 10, '1', 0),
(14, 'Guru Chikki', '250g', NULL, '80', 19, NULL, 10, '1', 0),
(17, 'Guru Soya Roasted Namkeen', '100g', NULL, '60', 19, NULL, NULL, NULL, 1),
(18, 'Prod 55', 'Prod 55 Desc', NULL, '10055', 2, NULL, NULL, NULL, 1),
(19, 'Accounts', 'GST filling', NULL, '12000', 59, NULL, NULL, NULL, 0),
(23, 'Google SEO', 'Ranking and Traffic on Google', NULL, '10000', 3, NULL, NULL, NULL, 0),
(24, 'Facebook Promotion', 'Traffic and Sales via Facebook', NULL, '5000', 3, NULL, NULL, NULL, 0),
(25, 'Saries', 'Best quality', NULL, '300', 63, NULL, NULL, NULL, 1),
(26, 'Kala Masala', '500 g', NULL, '150', 88, NULL, NULL, NULL, 0),
(27, 'Lal mirch', '500 g', NULL, '100', 88, NULL, NULL, NULL, 0),
(28, 'Women\'s jwellery', 'All functions jwellery', NULL, '400', 63, NULL, NULL, NULL, 0),
(29, 'Sarries', 'Good quality', NULL, '500', 63, NULL, NULL, NULL, 0),
(30, 'Dilip', 'Dilip', NULL, '120', 67, NULL, NULL, NULL, 1),
(31, 'Sarees', 'Colourful sarees', NULL, '500', 68, NULL, NULL, NULL, 0),
(32, 'Singdana chatni', '200g', NULL, '60', 96, NULL, NULL, NULL, 0),
(33, 'abcd', 'acdb', NULL, '120.25', 2, NULL, NULL, NULL, 1),
(34, 'Chaitanya', 'Chaitanya', NULL, '200', 97, NULL, NULL, NULL, 0),
(35, 'Entrepreneurship Training', 'EDP 1', NULL, '1000', 104, NULL, NULL, NULL, 1),
(36, 'Design Classes baner, shop banners etc', 'As per your size you can got best banners', NULL, '500', 106, NULL, NULL, NULL, 0),
(37, 'Avipr', 'App', NULL, '50', 102, NULL, NULL, NULL, 0),
(38, 'Carnation page', 'MSW', NULL, '1000', 103, NULL, NULL, NULL, 0),
(39, 'Photography', 'Photo', NULL, '1000', 101, NULL, NULL, NULL, 0),
(40, 'Wedding photography', 'All types of photos during merraiage', NULL, '30000', 105, NULL, NULL, NULL, 0),
(41, 'Weeding photography', 'Karizma album', NULL, '30000', 105, NULL, NULL, NULL, 0),
(42, 'SRTMU NANDED', 'MSW first year', NULL, '5000', 99, NULL, NULL, NULL, 0),
(43, 'Ye88rur0e9', 'Yrodydii', NULL, '234', 104, NULL, NULL, NULL, 0),
(44, 'Book', 'Research', NULL, '2000', 103, NULL, NULL, NULL, 0),
(45, 'Prod 1', 'Prod 1', NULL, '1000', 96, NULL, NULL, NULL, 0),
(46, 'Prod 2', 'Prod 2', NULL, '1000', 96, NULL, NULL, NULL, 0),
(47, 'Prod 3', 'Prod 3', NULL, '1000', 96, NULL, NULL, NULL, 0),
(48, 'Prod 4', 'Prod 4', NULL, '1000', 96, NULL, NULL, NULL, 0),
(49, 'Prod 5', 'Prod 5', NULL, '1000', 96, NULL, NULL, NULL, 0),
(50, 'Beauty Parlour course', 'In this parlour course  you will from basic to advanced course related to parlour.', NULL, '10000', 100, NULL, NULL, NULL, 0),
(51, 'Sweet Products', 'Made from Sugar', NULL, '200', 110, NULL, NULL, NULL, 0),
(52, 'Tonner', 'Printer tonner', NULL, '300', 109, NULL, NULL, NULL, 0),
(53, 'Door Cartoon', 'Pardah', NULL, '300', 110, NULL, NULL, NULL, 0),
(54, 'Beauty and skin products are available', 'Accordingly to your skin type,skin problems we provide you 100% natural and ayurvedic beauty products with 100% results.', NULL, '50', 100, NULL, NULL, NULL, 0),
(55, 'Makeup order,Mehandi order', 'Bridal makeup package(10000 Rs) marathi, south indian,western ,dandiya makeup etc based on makeup and hairstyles prices are decided', NULL, '10000', 100, NULL, NULL, NULL, 0),
(56, 'Ryuiit', 'Eyuiyr', NULL, '100', 111, NULL, NULL, NULL, 1),
(57, 'Er Uru', 'ryuuu', NULL, '200', 110, NULL, NULL, NULL, 0),
(59, 'Woolen bag', 'Hand bag', NULL, '300', 113, NULL, NULL, NULL, 0),
(60, 'Door Mat', 'Woolen', NULL, '100', 113, NULL, NULL, NULL, 0),
(61, 'Hand bag', 'Shoulder hanging', NULL, '300', 113, NULL, NULL, NULL, 0),
(62, 'Farming equipment', 'Ausa taluka', NULL, '2000', 115, NULL, NULL, NULL, 0),
(63, 'ब्लाऊज', 'कटोरी ब्लाऊज', NULL, '150', 117, NULL, NULL, NULL, 0),
(64, 'पडदा', 'विवीध डीझाईन', NULL, '250', 119, NULL, NULL, NULL, 0),
(66, 'Marriage products rent', '1 piect', NULL, '500', 122, NULL, NULL, NULL, 0),
(67, 'Silk Saree', 'China', NULL, '700', 127, NULL, NULL, NULL, 0),
(68, 'दंतमंजन', 'सर्व दातांच्या समस्या', NULL, '50', 10, NULL, NULL, NULL, 0),
(69, 'Top- Western', 'Kurti Rion cotton', NULL, '400', 128, NULL, NULL, NULL, 0),
(70, 'Ertiga service', 'Per km', NULL, '11', 133, NULL, NULL, NULL, 0),
(71, 'Polytechinc and Engineering Classess', 'Computer, IT, CIvil, Mechanical, Electrical, Electronics', NULL, '3000', 144, NULL, NULL, NULL, 0),
(72, 'Online Polytechnic and Engineering Classes', 'Computer, IT, Civil, Mechanical, Electrical, Electronics', NULL, '2000', 144, NULL, NULL, NULL, 0),
(73, 'Certificate Courses', 'C, C  , Java, Dot Net, Python, PHP, Android, Web Design, Graphics Design, Tally, DTP,', NULL, '3000', 144, NULL, NULL, NULL, 0),
(74, 'SagarKing Watermelon Seeds', '50 gram', NULL, '1500', 145, NULL, NULL, NULL, 0),
(75, 'CAD Courses', 'AUTOCAD, 3DS MAX , REVIT, SKETCHUP, CATIA, CREO,', NULL, '3000', 144, NULL, NULL, NULL, 0),
(76, 'Online CAD Courses', 'AUTOCAD, 3DS MAX , REVIT, SKETCHUP, CATIA, CREO,', NULL, '3000', 144, NULL, NULL, NULL, 0),
(77, 'Free Courses', 'रोपवाटीका प्रशिक्षण , Data Entry Operator', NULL, '', 144, NULL, NULL, NULL, 0),
(78, 'Pure touch RO water filter', '1 picse', NULL, '14000', 147, NULL, NULL, NULL, 0),
(79, 'Aqua fresh RO water filter', '1', NULL, '5999', 147, NULL, NULL, NULL, 0),
(80, 'Healthy aqua', 'Ro uv uf tds minerals  Cooper', NULL, '17500', 147, NULL, NULL, NULL, 0),
(81, 'विद्यार्थी', '1 month', NULL, '2000', 146, NULL, NULL, NULL, 0),
(82, 'Prewedding ', 'Starting to up...', NULL, '30000', 148, NULL, NULL, NULL, 0),
(83, 'Design blouse', '1', NULL, '250', 149, NULL, NULL, NULL, 0),
(84, 'Blouse', '1 pisce', NULL, '80', 149, NULL, NULL, NULL, 0),
(85, 'Fancy blouse deaign', '1', NULL, '250', 149, NULL, NULL, NULL, 0),
(86, 'Shetatil panyache gahu', '100', NULL, '2400', 149, NULL, NULL, NULL, 0),
(87, 'Jarman dabba', '2', NULL, '500', 149, NULL, NULL, NULL, 0),
(88, 'Omini vhan', '1 day rent', NULL, '800', 153, NULL, NULL, NULL, 0),
(89, 'Blouse', 'Design blouse picse', NULL, '200', 155, NULL, NULL, NULL, 0),
(90, 'Kirti oil dabba', '15 kg', NULL, '2160', 159, NULL, NULL, NULL, 0),
(91, 'jeans', 'mufti', NULL, '799', 154, NULL, NULL, NULL, 0),
(92, 'Milk pouch', 'Filtered saturated milk', NULL, '35', 94, NULL, NULL, NULL, 0),
(93, 'SuRE Dahi', 'Mixtured filtered curd (Dahi)', NULL, '40', 94, NULL, NULL, NULL, 0),
(94, 'खमंग डोखला पीठ फॉर 1 किलो', 'इन्स्टंट खमंग, डोखला चे पीठ तयार असलेले', NULL, '140', 161, NULL, NULL, NULL, 0),
(95, 'अर्धा किलो मध्ये देखील उपलब्ध', 'इन्स्टंट खमंग चे डोखला चे पीठ', NULL, '70', 161, NULL, NULL, NULL, 0),
(96, 'Design blouse', '1', NULL, '200', 163, NULL, NULL, NULL, 0),
(97, 'Kirti oil dabba', '15 kg', NULL, '2200', 167, NULL, NULL, NULL, 0),
(98, 'Mo note 9 pro', '1 picse', NULL, '19000', 166, NULL, NULL, NULL, 0),
(99, 'Transport', 'लातूर तें पंढपूर', NULL, '800', 170, NULL, NULL, NULL, 0),
(100, 'Pen', '1 pen', NULL, '5', 172, NULL, NULL, NULL, 0),
(101, 'Calciun', 'Himcal  5 ltr', NULL, '650', 174, NULL, NULL, NULL, 0),
(102, 'Pastry Cake', '500 gm', NULL, '240', 181, NULL, NULL, NULL, 0),
(103, 'Milk Product', '1 Ltr', NULL, '46', 181, NULL, NULL, NULL, 0),
(104, 'Noets', 'All nootes', NULL, '457', 103, NULL, NULL, NULL, 0),
(105, 'बकर', '1', NULL, '8000', 185, NULL, NULL, NULL, 0),
(106, 'वुलन, हार, पर्दे, ई.', 'आमच्याकडे वुलन पासून हार, पर्दे, खेळणी या वस्तू बनविले जातात.', NULL, '200', 187, NULL, NULL, NULL, 0),
(107, 'पॅड्स', 'आमच्याकडे शोअर सखी शॉप प्रॉडक्ट्स जसे, पॅड्स ई', NULL, '32', 191, NULL, NULL, NULL, 0),
(108, 'Pond\'s पावडर', 'छोटा Ponds पावडर डबा', NULL, '10', 192, NULL, NULL, NULL, 0),
(109, 'Coconut oil', 'Coconut oil', NULL, '89', 157, NULL, NULL, NULL, 0),
(110, 'डिजाईन ब्लाउज', 'शिवणकाम केले जाईल', NULL, '150', 156, NULL, NULL, NULL, 0),
(111, 'मसाले पदार्थ', 'आमच्याकडे मसाले पदार्थ भेटतील', NULL, '800 for 2 kg', 195, NULL, NULL, NULL, 0),
(112, 'साडी', 'सिल्क, कॉटन', NULL, '300', 194, NULL, NULL, NULL, 0),
(113, 'Kesar Mango', 'Chemical Free - per kg rate', NULL, '80', 196, NULL, 500, '1', 0),
(114, 'Kesar Mango', 'Chemical Free - per kg rate', NULL, '80', 196, NULL, 500, '1', 0),
(115, 'Whole Sale', 'In Bulk Quantity - per kg rate. Please call for special rate', NULL, '80', 196, NULL, 500, '1', 0),
(116, 'Pranjal Aqua cool water', 'आमच्याकडे थंड व साध पाणी जार व बॉटल मध्ये भेटतील', NULL, '25', 183, NULL, NULL, NULL, 1),
(117, 'Pranjal Aqua cool water', 'आमच्याकडे थंड व साध पाणी जार आणि क्यांड मध्ये भेटतील', NULL, '15', 183, NULL, NULL, NULL, 0),
(118, 'अनुष्का ज्वेलरी', 'आमच्याकडे आकर्षक पद्धतीच्या दागिने भेटतील', NULL, '200', 200, NULL, NULL, NULL, 0),
(119, 'शूअर सखी', 'सर्व प्रकारचे  शेतीपयोगी आणि दैनंदिन वरील सर्व साहित्य माफक दरात मिळेल', NULL, '180-15000', 197, NULL, NULL, NULL, 0),
(120, 'शिवणकाम प्रशिक्षण', 'सर्व प्रकारचे fency आणि साधे', NULL, '5000', 197, NULL, NULL, NULL, 0),
(121, 'Gavran kombda', '1', NULL, '1000', 202, NULL, NULL, NULL, 0),
(122, 'Nutrigo butter sckoch', '500 ml', NULL, '120', 206, NULL, NULL, NULL, 0),
(123, 'sari', '1', NULL, '250', 209, NULL, NULL, NULL, 0),
(124, 'ब्लाऊज', 'विविध डिझाईनचे ब्लाऊज', NULL, '80', 208, NULL, NULL, NULL, 0),
(125, 'ब्लाऊज', 'सादे ब्लाऊज विनय अस्तरचे', NULL, '40', 208, NULL, NULL, NULL, 1),
(126, 'ब्लाऊज', 'सादे ब्लाऊज विना अस्तरचे', NULL, '40', 208, NULL, NULL, NULL, 0),
(127, 'ब्लाऊज', 'असतर सहित', NULL, '60', 208, NULL, NULL, NULL, 0),
(128, 'Himalya Baby  Product', 'साबण, शॅम्पू, बॉडी मसाज तेल,पावडर', NULL, '336', 208, NULL, NULL, NULL, 0),
(129, 'कोल्हापुरी चप्पल', 'चामडी चप्पल', NULL, '280', 211, NULL, NULL, NULL, 0),
(130, 'साधी चप्पल', 'लेदर चप्पल', NULL, '280', 211, NULL, NULL, NULL, 0),
(131, 'डिजाईन चे चप्पल', 'ऑर्डरप्रमाणे डिजाईन करून मिळेल', NULL, '300', 211, NULL, NULL, NULL, 0),
(132, 'पिठाची गिरणी', 'ज्वारी, गहू, बाजरी, तांदुळ, भंगार, हळद दळण', NULL, '5', 198, NULL, NULL, NULL, 0),
(133, 'फशेनेबल चप्पल', 'पाहिजे तसे आपणस डिजाईन प्रमाणे बनवून मिळेल', NULL, '350', 211, NULL, NULL, NULL, 0),
(134, 'मिरची कांडप', 'मिरची', NULL, '40', 198, NULL, NULL, NULL, 0),
(135, 'शेवई मशीन', 'शेवई बनऊन देणे', NULL, '20', 198, NULL, NULL, NULL, 0),
(136, 'बेबी केक', 'बेबी केक बाहुली केक', NULL, '300', 212, NULL, NULL, NULL, 0),
(137, 'साधे केक', 'तयार असलेलं किंवा ऑर्डरप्रमाणे', NULL, '200', 212, NULL, NULL, NULL, 0),
(138, 'डिजाईन केक', 'डिजाईन तयार करुन मिळतील', NULL, '300', 212, NULL, NULL, NULL, 0),
(139, 'केक साधा', 'चॉकलेट केक', NULL, '350', 212, NULL, NULL, NULL, 0),
(140, 'ब्लाउज तसेच स्टेशनरी साहित्य', 'सर्व प्रकारचे साहित्य मिळेल', NULL, '100', 212, NULL, NULL, NULL, 0),
(141, 'शिवणकाम करून मिळेल', 'सर्व प्रकारचे ब्लाउज शिवून मिळतील', NULL, '200', 212, NULL, NULL, NULL, 0),
(142, 'Ponds cream', 'Apply on your face', NULL, '10', 210, NULL, NULL, NULL, 1),
(143, 'Ponds powder', 'Apply on your face', NULL, '10', 210, NULL, NULL, NULL, 0),
(144, 'Stage decoration', 'Tabagdi mandap 60×100', NULL, '99999', 217, NULL, NULL, NULL, 0),
(145, 'Mandap', 'Mediam', NULL, '50000', 217, NULL, NULL, NULL, 0),
(146, 'Ertiga', 'Per kilometer', NULL, '12', 218, NULL, NULL, NULL, 0),
(147, 'Multiplier', '1kg', NULL, '800', 193, NULL, NULL, NULL, 0),
(148, 'Multiplier, Allculer, naraynastra, Spray plus ', '1kg', NULL, '800', 193, NULL, NULL, NULL, 0),
(149, 'मल्टि प्लायर, ऑल क्लिअर,', 'सेंद्रिय कार्बन वाढतो जमीन सुपीक बनते ते किलो अणि लिटर मधे उपलब्ध आहे ', NULL, '850प्रती किलो', 193, NULL, NULL, NULL, 0),
(150, 'मल्टी प्लायर नारायण अस्त्र, ऑल क्लिअर, स्प्रे प्लस', 'हे सेंद्रिय खत वापरल्यामुळे आपल्याला झिरो बजेट शेती करता येते', NULL, '८५0 प्रती किलो', 193, NULL, NULL, NULL, 0),
(151, 'मल्टि प्लायर, ऑल क्लिअर, नारायण अस्त्र,स्प्रे प्लस', 'हे पूर्णपणे जैविक प्रॉडक्ट आहेत तेरा वर्षे  अभ्यास करुन आपल्यासाठी उपलब्ध केला आहे', NULL, 'हे किट :१६६०', 193, NULL, NULL, NULL, 0),
(152, 'मल्टि प्लायर, ऑल क्लिअर, नारायण अस्त्र, सप्रे प्लस', 'कृषी छेत्रात अभुतपूर्ण क्रांति केली आहे, ', NULL, '१६६०', 193, NULL, NULL, NULL, 0),
(153, 'मल्टि प्लायर, ऑल क्लिअर, नारायण अस्त्र,', 'वरील खत वापरल्यामुळे डाळिंब बाग  एकदम जबरदस्त आली आहे', NULL, 'प्रति किलो८५०', 193, NULL, NULL, NULL, 0),
(154, 'मल्टि प्लायर, ऑल क्लिअर, नारायण अस्त्र, स्प्रे प्लस,', 'वरिल सर्व प्रॉडक्ट वापरल्यामुळे कांदा पिकाची मुळी, वाढ एकदम जोमाने झाली आहे,', NULL, 'एक किट१६६०', 193, NULL, NULL, NULL, 0),
(155, 'मल्टि प्लायर, ऑल क्लिअर, नारायण अस्त्र, स्प्रे प्लस', 'पपई साठी वरील खत औषध वापरल्यामुळे वाढ, कळोखी, पांढरी मुळी एकदम जबरदस्त काम करते', NULL, 'किट१६६०', 193, NULL, NULL, NULL, 0),
(156, 'मल्टि प्लायर', 'वाढ, मुळी, जमीन सुपीक', NULL, 'प्रति किलो ८५०', 193, NULL, NULL, NULL, 0),
(157, 'इअरकल', '9 वारी', NULL, '1200', 220, NULL, NULL, NULL, 1),
(158, 'Need sticks', 'Good for healthy teeth', NULL, '65', 214, NULL, NULL, NULL, 1),
(159, 'चिवडा', 'स्वादिष्ट', NULL, '100', 214, NULL, 1, '1', 0),
(161, 'Sadi', '1 piace', NULL, '1200', 223, NULL, NULL, NULL, 0),
(162, 'Sadi', '1 piace', NULL, '2100', 223, NULL, NULL, NULL, 0),
(163, 'Sadi', '1', NULL, '1100', 223, NULL, NULL, NULL, 0),
(164, 'Prod 2', 'Prod 2 Description', NULL, '100.50', 2, NULL, NULL, NULL, 1),
(165, 'Masoor Daal', '1 Kg', NULL, '100', 225, NULL, NULL, NULL, 0),
(166, 'Product 2', 'Product 2 desc', NULL, '100', 225, NULL, NULL, NULL, 0),
(167, 'चिवडा', 'Tasty', NULL, '150', 214, NULL, 1, '1', 0),
(168, 'ज्वारी', 'चांगल्या  क्वाॕलेटिचे जैवीक उत्पादने आपणांस घरपोच मिळतील. किंमती साठी संपर्क करा.', NULL, '00', 228, NULL, NULL, NULL, 0),
(169, 'डाळ', 'चांगल्या क्वाॕलेटीचे जैवीक उत्पादने आपणांस घरपोच मिळतील. किंमती साठी संपर्क करा', NULL, '00', 228, NULL, NULL, NULL, 0),
(170, 'गहु', 'चांगल्या क्वाॕलेटीचे जैवीक उत्पादने घरपोच मिळण्यासाठी संपर्क करा', NULL, '00', 228, NULL, NULL, NULL, 0),
(171, 'LEDIES SUIT', 'VERY GOOD', NULL, '370', 229, NULL, NULL, NULL, 0),
(172, 'Cooming Soon', 'Coming soon', NULL, '100', 24821, NULL, NULL, NULL, 1),
(173, 'abc', 'abc', NULL, '15', 20, NULL, NULL, NULL, 0),
(174, 'New Product ', 'Coming soon', NULL, '1000', 24821, NULL, NULL, NULL, 1),
(175, 'prod 1', 'desc 1', NULL, '121', 2, NULL, NULL, NULL, 1),
(176, 'prod 6', 'desc 2', NULL, '332', 2, NULL, NULL, NULL, 0),
(177, 'New product 1', 'Prod desc xyz', NULL, '100', 2, NULL, NULL, NULL, 0),
(178, 'Prod 3', 'Desc 444', NULL, '554', 2, NULL, NULL, NULL, 0),
(179, 'Test page 2', 'Test page 2', NULL, '5000', 24821, NULL, NULL, NULL, 1),
(180, 'Urvara Kit', 'Quality increase', NULL, '1650', 24821, NULL, NULL, NULL, 1),
(181, 'Udid Papad', 'Papad made from Udid dal', NULL, '50', 24826, NULL, NULL, NULL, 0),
(182, 'Idli plate', '3 pieces', NULL, '25', 24827, NULL, NULL, NULL, 0),
(183, 'Chaka Dal', 'Retail ', NULL, '85', 24828, NULL, NULL, NULL, 0),
(184, 'Mansur dal', 'Dal per kg', NULL, '80', 24829, NULL, NULL, NULL, 0),
(185, 'Bride makeup', 'Fjgkvb tuiigj', NULL, '2000', 24821, NULL, NULL, NULL, 1),
(186, 'Gjdudjdjdj', 'Xjrkridh', NULL, '500', 24821, NULL, NULL, NULL, 1),
(187, 'Eteirndnd didhdh', 'Dieurjd jdkshdb', NULL, '2500', 24821, NULL, NULL, NULL, 1),
(188, 'अंडी', 'गावरान कोंबडी अंडी', NULL, '10', 24830, NULL, NULL, NULL, 0),
(189, 'चिकन्', '200=1kg', NULL, '200', 24830, NULL, NULL, NULL, 0),
(190, 'शेळी', 'शेळी', NULL, '9999', 24830, NULL, NULL, NULL, 0),
(191, 'electric product', 'बल्ब', NULL, '99', 24830, NULL, NULL, NULL, 0),
(192, 'fan', 'fan', NULL, '1999', 24830, NULL, NULL, NULL, 0),
(193, 'shoes', 'boy  shoes', NULL, '299', 24830, NULL, NULL, NULL, 0),
(194, 'मोबाईल', 'mobile', NULL, '15555', 24830, NULL, NULL, NULL, 0),
(195, 'फ्रीज', 'फ्रीज', NULL, '29999', 24830, NULL, NULL, NULL, 0),
(196, 'टेबल', 'table', NULL, '599', 24830, NULL, NULL, NULL, 0),
(197, 'Bhajipala', 'Bhajipala', NULL, '300', 24848, NULL, NULL, NULL, 0),
(198, 'Methi', 'Methi', NULL, '100', 24848, NULL, NULL, NULL, 0),
(199, 'Vangi', 'Vangi', NULL, '100', 24848, NULL, NULL, NULL, 0),
(200, 'ब्लाऊज', 'डिझाईन ब्लाऊज', NULL, '300', 24846, NULL, NULL, NULL, 0),
(201, 'Shepu', 'Shepu', NULL, '100', 24848, NULL, NULL, NULL, 0),
(202, 'लहान मुलीचे तयार साडी', 'ब्राह्मणी साडी, गोल साडी, काष्टा साडी', NULL, '500', 24846, NULL, NULL, NULL, 0),
(203, 'Bhendi', 'Bhendi', NULL, '100', 24848, NULL, NULL, NULL, 0),
(204, 'कापडी बॅग', 'टिफिन बॅग, प्रवासी बॅग, पर्स', NULL, '250', 24846, NULL, NULL, NULL, 0),
(205, 'Jwlari  shop', 'Khubsurat  dijhaen', NULL, '300', 24874, NULL, NULL, NULL, 0),
(206, 'Electik materiyl', 'All kampnij avilebal', NULL, '800', 24866, NULL, NULL, NULL, 0),
(207, 'Birth cake', 'Chocklate flavor', NULL, '200', 24821, NULL, NULL, NULL, 1),
(208, 'Gkhjjj', 'Yiufjj', NULL, '199', 24821, NULL, NULL, NULL, 1),
(209, 'चॉकलेट केक', 'कैडबेरी सैश के साथ बनाया गया', NULL, '200', 24821, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `measure_unit`
--

CREATE TABLE `measure_unit` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `loc_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `measure_unit`
--

INSERT INTO `measure_unit` (`id`, `name`, `loc_name`, `order`) VALUES
(1, 'Piece', 'यूनिट', 1),
(2, 'Kg', 'किलो', 2),
(3, 'Quintle', 'क्विंन्टल', 3),
(4, 'Ton', '', 4),
(5, 'Litre', 'लीटर', 5),
(6, 'Meter', 'मीटर', 6),
(7, 'Others', 'अन्य', 7);

-- --------------------------------------------------------

--
-- Table structure for table `new_reg_form_list`
--

CREATE TABLE `new_reg_form_list` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` text NOT NULL,
  `name_of_business` varchar(100) NOT NULL,
  `photo_name` text NOT NULL,
  `state_id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `blk_id` int(11) NOT NULL,
  `vill_id` int(11) NOT NULL,
  `pincode` text NOT NULL,
  `email` text NOT NULL,
  `business_desc` text NOT NULL,
  `cat_1` int(11) NOT NULL,
  `cat_2` int(11) NOT NULL,
  `cat_3` int(11) NOT NULL,
  `whatsapp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `new_reg_form_list`
--

INSERT INTO `new_reg_form_list` (`id`, `date`, `name`, `name_of_business`, `photo_name`, `state_id`, `dist_id`, `blk_id`, `vill_id`, `pincode`, `email`, `business_desc`, `cat_1`, `cat_2`, `cat_3`, `whatsapp`) VALUES
(1, '2024-01-10 20:09:06', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(2, '2024-01-10 20:25:08', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(3, '2024-01-10 20:33:28', '', '', 'Job_3.pdf', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(4, '2024-01-10 20:36:46', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(5, '2024-01-10 20:37:11', 'anshi', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(6, '2024-01-10 20:39:20', 'asds', 'asd f fgg gfg', 'dummy.jpg', 1, 37, 0, 0, '555555', '0', 'acfsedvfdbdf dbhdhn ftghnfj yjnyt jytjyt', 4, 0, 0, ''),
(7, '2024-01-10 20:42:00', 'ascas', 'ccascc', 'dummy.jpg', 1, 0, 0, 0, '333333', '0', 'dvsgrevfvvfv ', 112, 0, 0, ''),
(8, '2024-01-10 20:45:54', 'aza', 'aqws', 'dummy.jpg', 1, 0, 0, 0, '444444', '0', 'sdacce sdv fd', 83, 0, 0, ''),
(9, '2024-01-10 21:41:48', 'Qazsd', 'ZAQwsdfc vdsvs', 'dummy.jpg', 1, 0, 0, 0, '777777', '0', 'zaDXs vrv vr btgh gr efg er werfwe ', 54, 0, 0, ''),
(10, '2024-01-11 20:23:29', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(11, '2024-01-11 20:24:32', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(12, '2024-01-12 22:26:53', 'Anshi 1', 'Anshi Buss', 'dummy.jpg', 1, 12, 88, 7428, '249401', '0', 'Buss Desc', 3, 4, 0, ''),
(13, '2024-01-12 22:34:45', 'Anshaa', 'aasaa', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(14, '2024-01-12 22:37:25', 'anshu', 'ahsuyxkl ', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(15, '2024-01-12 22:39:25', 'abcdf', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(16, '2024-01-12 23:00:06', 'anshi pr', 'psser', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(17, '2024-01-12 23:11:58', 'asxsa', 'ascasc', 'dummy.jpg', 1, 5, 0, 0, '249401', '0', 'ascac', 86, 0, 0, ''),
(18, '2024-01-12 23:13:16', 'fsdvv', 'feferv', 'dummy.jpg', 1, 12, 0, 0, '249401', '0', '4tgfrevfvf', 86, 0, 0, ''),
(19, '2024-01-12 23:25:53', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(20, '2024-01-12 23:31:53', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(21, '2024-01-12 23:38:09', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(22, '2024-01-12 23:42:05', 'qad', 'cwcv', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(23, '2024-01-12 23:51:30', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(24, '2024-01-12 23:52:01', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(25, '2024-01-12 23:52:01', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(26, '2024-01-12 23:54:20', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(27, '2024-01-13 00:01:16', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(28, '2024-01-13 00:04:51', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(29, '2024-01-13 00:07:29', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(30, '2024-01-13 00:10:02', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(31, '2024-01-13 00:13:59', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(32, '2024-01-13 00:15:03', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(33, '2024-01-13 00:24:08', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(34, '2024-01-13 00:25:34', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(35, '2024-01-13 12:53:36', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(36, '2024-01-13 12:55:19', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(37, '2024-01-13 12:57:20', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(38, '2024-01-13 12:58:57', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(39, '2024-01-13 13:00:21', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(40, '2024-01-13 13:02:43', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(41, '2024-01-13 13:06:19', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(42, '2024-01-13 13:07:40', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(43, '2024-01-13 13:08:01', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(44, '2024-01-13 13:08:42', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(45, '2024-01-13 13:09:49', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(46, '2024-01-13 13:12:36', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(47, '2024-01-13 13:13:44', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(48, '2024-01-13 13:14:43', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(49, '2024-01-13 13:19:13', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(50, '2024-01-13 13:19:34', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(51, '2024-01-13 13:19:59', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(52, '2024-01-13 13:20:28', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(53, '2024-01-13 13:23:40', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(54, '2024-01-13 13:24:43', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(55, '2024-01-13 14:21:24', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(56, '2024-01-13 14:22:11', 'linkedIn', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(57, '2024-01-13 14:26:19', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(58, '2024-01-13 14:33:03', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(59, '2024-01-13 14:33:32', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(60, '2024-01-13 14:35:53', '', '', 'Shop_60.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(61, '2024-01-13 14:52:06', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(62, '2024-01-13 14:53:43', 'abc', 'abc busne', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(63, '2024-01-13 22:11:32', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(64, '2024-01-13 22:12:57', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(65, '2024-01-13 22:14:38', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(66, '2024-01-13 22:18:34', 'Anshul Sharma', 'Anshul\'s Business', 'Shop_66.png', 1, 12, 88, 7428, '411028', '0', 'Anshul\'s Business Description', 54, 4, 0, ''),
(67, '2024-01-13 22:35:43', 'Anshi', 'Bussi', 'Shop_67.jpg', 1, 12, 88, 7428, '411028', '0', '', 46, 0, 0, ''),
(68, '2024-01-13 22:36:42', 'Anshi', 'Bussi', 'Shop_68.jpg', 1, 12, 88, 7428, '411028', '0', '', 46, 0, 0, ''),
(69, '2024-01-13 22:38:21', 'Anshi', 'Bussi', 'Shop_69.jpg', 1, 12, 88, 7428, '411028', '0', '', 46, 0, 0, ''),
(70, '2024-01-13 22:41:21', 'Anshi', 'Bussi', 'Shop_70.jpg', 1, 12, 88, 7428, '411028', '0', '', 46, 0, 0, ''),
(71, '2024-01-13 22:45:10', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(72, '2024-01-13 22:51:58', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(73, '2024-01-13 22:57:51', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(74, '2024-01-13 23:02:03', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(75, '2024-01-13 23:02:51', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(76, '2024-01-13 23:04:49', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(77, '2024-01-13 23:17:51', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(78, '2024-01-13 23:20:07', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(79, '2024-01-13 23:25:18', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(80, '2024-01-13 23:27:13', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(81, '2024-01-13 23:47:57', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(82, '2024-01-13 23:51:14', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(83, '2024-01-13 23:52:50', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(84, '2024-01-13 23:55:20', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(85, '2024-01-14 00:01:58', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(86, '2024-01-14 00:07:13', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(87, '2024-01-14 00:09:45', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(88, '2024-01-14 00:10:42', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(89, '2024-01-14 00:15:01', 'Deskhoj', 'DK Buss', 'Shop_89.png', 1, 5, 13, 194, '249205', '0', 'Desc', 86, 0, 0, ''),
(90, '2024-01-14 01:28:08', '', '', 'dummy.jpg', 0, 0, 0, 0, '', '0', '', 0, 0, 0, ''),
(91, '2024-01-14 01:40:46', 'Anshhul', 'u,gmhtety', 'Shop_91.png', 1, 0, 0, 0, '', '0', 'saccvcdvd', 4, 0, 0, ''),
(92, '2024-01-17 19:11:44', 'a', 'v', 'dummy.jpg', 0, 0, 0, 0, '', '', 'sdf', 0, 0, 0, ''),
(93, '2024-02-18 20:40:21', 'abc', 'bus', 'Shop_93.jpg', 1, 8, 89, 7568, '222222', 'anshulsharma633@gmail.com', 'csdcsd', 131, 0, 0, '8888888888');

-- --------------------------------------------------------

--
-- Table structure for table `new_reg_job_cv`
--

CREATE TABLE `new_reg_job_cv` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cv_upload` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `new_reg_job_cv`
--

INSERT INTO `new_reg_job_cv` (`id`, `date`, `name`, `email`, `mobile`, `cv_upload`) VALUES
(1, '2024-02-09 18:34:41', 'anshi', 'anshulsharma633@gmail.com', '8888888889', 'dummy.jpg'),
(2, '2024-02-09 18:45:38', 'anshi2', 'anshulsharma633@gmail.com', '2222222222', 'dummy.jpg'),
(3, '2024-02-09 19:00:59', 'anshi3', 'anshulsharma633@gmail.com', '3333333333', 'dummy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `new_reg_prod_list`
--

CREATE TABLE `new_reg_prod_list` (
  `id` int(11) NOT NULL,
  `prod_name` text NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_amt` text NOT NULL,
  `prod_photo` text NOT NULL,
  `shop_reg_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `new_reg_prod_list`
--

INSERT INTO `new_reg_prod_list` (`id`, `prod_name`, `prod_desc`, `prod_amt`, `prod_photo`, `shop_reg_id`) VALUES
(1, 'prod 1', '12', '1122', 'dummy.jpg', '3'),
(2, '', '', '', 'dummy.jpg', '3'),
(3, 'dsc', 'd3', '23', 'dummy.jpg', '3'),
(4, '', '', '', 'dummy.jpg', '63'),
(5, '', '', '', 'dummy.jpg', '64'),
(6, '', '', '', 'Prod_65_6.jpg', '65'),
(7, 'Anshul\'s Prod 1', '10 Kg', '1000', 'dummy.jpg', '66'),
(8, 'Anshul\'s Prod 2', '50 Kg', '10020', 'dummy.jpg', '66'),
(9, 'Prod 3', '60 Kg', '', 'dummy.jpg', '66'),
(10, 'p 1', '1', '12', 'Prod_67_10.png', '67'),
(11, 'p 1', '1', '12', 'Prod_68_11.jpg', '68'),
(12, 'p3', '23', '2', 'Prod_68_12.jpg', '68'),
(13, 'p 1', '1', '12', 'Prod_69_13.jpg', '69'),
(14, 'p3', '23', '2', 'Prod_69_14.jpg', '69'),
(15, 'p3', '23', '2', 'Prod_70_15.png', '70'),
(16, 'p 1', '1', '12', 'Prod_70_16.png', '70'),
(17, 'p[[3', '', '', 'Prod_70_17.png', '70'),
(18, 'p3', '', '', 'dummy.jpg', '71'),
(19, 'pp2', '', '', 'dummy.jpg', '71'),
(20, 'ppp1', '', '', 'dummy.jpg', '71'),
(21, '232', 'eqw', '23e21', 'dummy.jpg', '72'),
(22, '1q23w', '1212', '3132', 'dummy.jpg', '72'),
(23, 'p1 ', '1123', '132', 'dummy.jpg', '72'),
(24, 'prod 1', '123', '', 'Prod_73_24.png', '73'),
(25, 'p 2', '', '', 'Prod_73_25.png', '73'),
(26, 'p 3', '', '', 'Prod_73_26.png', '73'),
(27, 'p2', '', '', 'dummy.jpg', '74'),
(28, '', '', '', 'dummy.jpg', '74'),
(29, 'p1', '', '', 'dummy.jpg', '74'),
(30, 'p2', '', '', 'Prod_75_30.png', '75'),
(31, 'p4', '', '', 'Prod_75_31.png', '75'),
(32, 'p1', '', '', 'Prod_76_32.png', '76'),
(33, 'p2', '', '', 'Prod_76_33.png', '76'),
(34, 'pq1', '', '', 'Prod_77_34.png', '77'),
(35, 'p32', '', '', 'Prod_77_35.png', '77'),
(36, 'p2', '', '', 'Prod_78_36.png', '78'),
(37, 'p1', '', '', 'Prod_78_37.png', '78'),
(38, 'p4', '', '', 'Prod_79_38.jpg', '79'),
(39, 'p2', '', '', 'Prod_79_39.jpg', '79'),
(40, 'p2', '', '', 'Prod_80_40.png', '80'),
(41, 'p1', '', '', 'Prod_80_41.png', '80'),
(42, 'p1', '12', '34', 'dummy.jpg', '81'),
(43, 'p2', '23', '45', 'dummy.jpg', '81'),
(44, 'q1', '1w', '23', 'Prod_82_44.png', '82'),
(45, 'p1', '12', '21', 'Prod_82_45.png', '82'),
(46, 'qw12', 'w122', '212', 'Prod_83_46.png', '83'),
(47, 'p2', '', '', 'Prod_83_47.png', '83'),
(48, 'pw1', '', '', 'Prod_84_48.png', '84'),
(49, 'po2', '', '', 'Prod_84_49.png', '84'),
(50, 'q1', '', '', 'Prod_85_50.png', '85'),
(51, 'w1', '', '', 'Prod_85_51.png', '85'),
(52, 'p3', '', '', 'Prod_86_52.jpg', '86'),
(53, 'p1', '', '', 'Prod_86_53.jpg', '86'),
(54, 'lo32', '', '', 'Prod_87_54.png', '87'),
(55, 'po1', '', '', 'Prod_87_55.png', '87'),
(56, 'po3', '', '', 'Prod_88_56.png', '88'),
(57, 're3', '', '', 'Prod_88_57.png', '88'),
(58, 'p1', '1', 'ca', 'dummy.jpg', '89'),
(59, 'p2', '', '', 'Prod_89_59.jpg', '89'),
(60, 'p34', '', '', 'Prod_89_60.png', '89'),
(61, '', '', '', 'dummy.jpg', '90'),
(62, 'axxc', '', '', 'Prod_91_62.png', '91'),
(63, '', '', '', 'dummy.jpg', '92'),
(64, '', '', '', 'dummy.jpg', '93');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `loc_category_name` text NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `is_sure` int(11) DEFAULT NULL,
  `photo_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `loc_category_name`, `ordering`, `is_sure`, `photo_name`) VALUES
(1, 'Dhanya', 'धान्य', NULL, NULL, NULL),
(2, 'Kaddhanya', 'कडधान्य', NULL, NULL, NULL),
(3, 'Bhajipala', 'भाजीपाला', NULL, NULL, NULL),
(4, 'Biyane', 'बियाणे', NULL, NULL, NULL),
(5, 'Dali', 'डाळी', NULL, NULL, NULL),
(6, 'Jaivik Khat', 'जैविक खत', NULL, NULL, NULL),
(7, 'Jaivik Aushadh', 'जैविक औषध', NULL, NULL, NULL),
(8, 'Vinkam vastu', 'विणकाम वस्तू', NULL, NULL, NULL),
(9, 'Hastkala Vastu', 'हस्तकला वस्तू', NULL, NULL, NULL),
(10, 'Unhali Sahitya', 'उन्हाळी साहित्य', NULL, NULL, NULL),
(11, 'Vahtuk Sadhan', 'वाहतुक साधन', NULL, NULL, NULL),
(12, 'Shetisathi', 'शेतीसाठी लागणारे अवजार', NULL, NULL, NULL),
(13, 'Itar Kahi Vyavsaye', 'ईतर काही व्यवसाय', NULL, NULL, NULL),
(14, 'LED Bulb', 'एल-इ-डी बल्ब', NULL, NULL, NULL),
(15, 'Sanitary Napkin', 'सेनेटरी नैपकिन', 2, 1, NULL),
(16, 'Solar Lamp-Dlight', 'डीलाईट', 7, 1, NULL),
(17, 'Vermicompost Bed', 'वर्मी बेड / गांडूळ खाड / केंचुआ खाद बेड', 4, 1, NULL),
(18, 'Tarpaulin -Tarplus', 'तिरपाल तडपत्री टार्प्लस', 3, 1, NULL),
(19, 'Himalaya Baby Care', 'हिमालया बेबी प्रोडक्ट्स', 5, 1, NULL),
(20, 'Shampoo- FaceWash', 'फेस वॉश -शॅम्पो', 6, 1, NULL),
(21, 'Spray Pump', 'स्प्रे पंप', 8, 1, NULL),
(22, 'Water Purifier', 'वॉटर प्युरिफायर', 22, 1, NULL),
(23, 'Solar Lamp-Agni Solar', 'अग्नी सोलर', 15, 1, NULL),
(24, 'Jalkumbh sheet', 'जलकुंभ शीट', 21, 1, NULL),
(25, 'Bio Gas', 'बायो - गोबर गॅस', 9, 1, NULL),
(26, 'Subjee Cooler', 'साबजी कूलर', 11, 1, NULL),
(27, 'Treadle Pump', 'ट्रेडल पंप', 20, 1, NULL),
(28, 'Urvara Kit', 'उर्वरा किट', 16, 1, NULL),
(29, 'Heatwrap - Kneestrap', 'हीटरॅप- नीरॅप', 24, 1, NULL),
(30, 'Lucky Shakti Leaf', 'लाकी शक्ती लीफ', 23, 1, NULL),
(31, 'Atta Chakki - Flour Mill', 'आटा चक्की', 1, 1, NULL),
(32, 'Solar Water Heater', 'सोलार वॉटर हीटर', 19, 1, NULL),
(33, 'Chicken Shed', 'कुक्कुट पालन', 14, 1, NULL),
(34, 'Papad Machine', 'पापड मशीन', 13, 1, NULL),
(35, 'Bhujal App', 'भूजल अँप', 18, 1, NULL),
(36, 'Soyabean Cutter', 'सोयाबीन कटर ', 10, 1, NULL),
(37, '', 'मिर्ची कंदप', 12, NULL, NULL),
(38, 'Kadba Kutti', 'कडबा कुट्टी', 17, 1, NULL),
(39, 'Jaivik Khaad', 'जैविक खाद', NULL, NULL, NULL),
(40, 'Sewing Machine', 'सिलाई मशीन', 25, NULL, NULL),
(41, 'Sugam mini Computer', 'कम्प्यूटर', 25, 0, NULL),
(42, '', 'सियौर शॉप', 0, 1, NULL),
(43, 'Grossary', 'किराना दुकान', NULL, 1, NULL),
(44, 'Edible Oil', 'खाद्य तैल', 0, 0, NULL),
(45, 'Grocery', 'किराणा/भुसार', 0, 0, NULL),
(46, 'Bakery/Cake Shop', 'बेकरी/केक शॉप', 0, 0, NULL),
(47, 'Dairy', 'डेअरी', 0, 0, NULL),
(48, 'Oil', 'खाद्य तेल', 0, 0, NULL),
(49, 'Sweet Shop', 'मिठाईवाले', 0, 0, NULL),
(50, 'Chemist', 'मेडिकल स्टोर/फार्मसी', 0, 0, NULL),
(51, 'Utensil Stores', 'बर्तन/भांड्याचे शॉप', 0, 0, NULL),
(52, 'Furniture Store', 'फर्निचर शॉप', 0, 0, NULL),
(53, 'Saloon', 'सलून', 0, 0, NULL),
(54, 'Beauty Parlour', 'ब्युटी पार्लर', 0, 0, NULL),
(55, 'Tailoring', 'सिलाई/शिवणकाम', 0, 0, NULL),
(56, 'Garments (Ladies)', 'वस्त्र (महिला)', 0, 0, NULL),
(57, 'Garments (Mens)', 'वस्त्र (पुरुष)', 0, 0, NULL),
(58, 'Garments (Kids)', 'वस्त्र (बालक)', 0, 0, NULL),
(59, 'Hosiery', 'होजियरी', 0, 0, NULL),
(60, 'Shoes', 'जूता/पादत्राणे', 0, 0, NULL),
(61, 'Jewellery (Imitation)', 'इमीटेशन गहने', 0, 0, NULL),
(62, 'Jewellery (Gold/Silver)', 'सोने/चांदी गहने', 0, 0, NULL),
(63, 'Cosmetics Shop', 'सौंदर्य प्रसाधन', 0, 0, NULL),
(64, 'Electronics', 'इलेकट्रॉनिक सामान', 0, 0, NULL),
(65, 'Mobile Shoppee', 'मोबाईल शॉप', 0, 0, NULL),
(66, 'Electrical Shop', 'इलेकट्रिकल सामान', 0, 0, NULL),
(67, 'Hardware Shop', 'हार्डवियर सामान', 0, 0, NULL),
(68, 'Toy Shop', 'खिलोने/बालक सामान', 0, 0, NULL),
(69, 'Stationery', 'लेखन-सामग्री/स्टेशनरी', 0, 0, NULL),
(70, 'Poultry/Fishery', 'पोल्ट्री/ चिकन सेंटर/ मछली', 0, 0, NULL),
(71, 'Organic Products', 'जैविक दाल/सबजी', 0, 0, NULL),
(72, 'Pulses & Grains', 'डाळी व धान्य', 0, 0, NULL),
(73, 'Vegetables', 'सबजी, भाजीपाला', 0, 0, 'vegetables.png'),
(74, 'Fruits', 'फल', 0, 0, 'fruits.png'),
(75, 'Catering Services', 'भोजन सेवा', 0, 0, NULL),
(76, 'Restaurant/Bar', 'होटल', 0, 0, NULL),
(77, 'Pet Food Shop', 'जानवर खाद्य शॉप', 0, 0, NULL),
(78, 'Marriage Services', 'शादी/समारोह सेवा', 0, 0, NULL),
(79, 'Sound System', 'मुज़िक/ध्वनी सेवा', 0, 0, NULL),
(80, 'Marriage Hall', 'मंडप/शादी हॉल', 0, 0, NULL),
(81, 'Transportation', 'ट्रांसपोर्ट/परिवहन सेवा', 0, 0, NULL),
(82, 'Taxi Services', 'टॅक्सी सेवा', 0, 0, NULL),
(83, 'Auto Parts Shop', 'ऑटो पार्ट/गॅरेज शॉप', 0, 0, NULL),
(84, 'Vehicle Dealer', 'गाडी शोरुम', 0, 0, NULL),
(85, 'Seed/Fertilizer/Pesticide', 'बी/बियाणे/खत/किटकनाशक', 0, 0, NULL),
(86, 'Agri Machinery', 'कृषि उपकरण', 0, 0, NULL),
(87, 'Tractor Service', 'ट्रॅक्टर सेवा', 0, 0, NULL),
(88, 'Storage/Godown', 'गोदाम', 0, 0, NULL),
(89, 'Water Tanker Service', 'पानी टॅंकर सेवा', 0, 0, NULL),
(90, 'Fabrication', 'फॅब्रिकेशन / मेटल सेवा', 0, 0, NULL),
(91, 'Traders', 'ट्रेडींग', 0, 0, NULL),
(92, 'Stockist', 'स्टॉकिस्ट', 0, 0, NULL),
(93, 'Wholesaler', 'होलसेलर', 0, 0, NULL),
(94, 'Dealer', 'डिलर', 0, 0, NULL),
(95, 'Other/Not In List', 'अतिरिक्त/उपलब्ध नही', 200, 0, NULL),
(96, 'Construction Materials', 'बांधकामाचे मटेरियल', 0, 0, NULL),
(97, 'Services', 'सेवाएं', 0, 0, NULL),
(98, 'Photo Studio', 'फोटो स्टूडियो', 0, 0, NULL),
(99, 'Computer Repair Shop', 'कंप्यूटर मरम्मत की दुकान', 0, 0, NULL),
(100, 'Printing', 'मुद्रण', 0, 0, NULL),
(101, 'CSC Center', 'फसीएससी केंद्र', 0, 0, NULL),
(102, 'Computer', 'कंप्यूटर', 0, 0, NULL),
(103, 'Book store', 'बुक स्टोर', 0, 0, NULL),
(104, 'General & Stationary store', 'जनरल और स्टेशनरी की दुकान', 0, 0, NULL),
(105, 'Spices', '', 0, 0, NULL),
(106, 'Processed Foods', '', 0, 0, NULL),
(107, 'Tea Coffee Beverages', '', 0, 0, NULL),
(108, 'Soyabin', 'सोयाबीन', 0, 0, 'soyabean.png'),
(109, 'Tuor', 'तूर', 0, 0, 'tuor.jpg'),
(110, 'Udid', 'उडीद', 0, 0, 'udid.jpg'),
(111, 'Moong', 'मुंग', 0, 0, 'mung.png'),
(112, 'Bengal gram', 'हरभरा, चना', 0, 0, 'chana_dal.png'),
(113, 'Groundnut', 'भुईमुंग, मूंगफली ', 0, 0, 'groundnut.png'),
(114, 'Sorghum', 'ज्वारी', 0, 0, 'jawari.png'),
(115, 'Wheat', 'गहू', 0, 0, 'wheat.png'),
(116, 'Rice', 'चावल', 0, 0, 'rice.png'),
(117, 'Vermicompost', 'गांडूळ आणि गांडूळ खत,  केचोया खाद', 0, 0, 'vermicompost.png'),
(118, 'Pressure Cooker', 'प्रेशर कूकर', 0, 1, NULL),
(119, 'Mixer Grinder', 'मिक्सर ग्राइंडर', NULL, 1, NULL),
(120, 'Induction Cooktop', 'इंडक्शन कोकटोप', NULL, 1, NULL),
(121, 'Induction Tava', 'इंडक्शन तवा', NULL, 1, NULL),
(122, 'Pickles', 'अचार / लोणचे', 0, 0, NULL),
(123, 'Papad', 'पापड़', 0, 0, NULL),
(124, 'Flax Seed', 'जवस', 0, 0, NULL),
(125, 'Handcraft', 'हस्तशिल्प', 0, 0, NULL),
(126, 'Mehandi Designers', 'मेहंदी डिजाइनर', 0, 0, NULL),
(127, 'Goat Farming', 'शेळीपालन', 0, 0, NULL),
(128, 'Flour Mill', 'आटा चक्की ', 0, 0, NULL),
(129, 'Tea Stall', 'चाय की दुकान', 0, 0, NULL),
(130, 'Paan Shop', 'पान दुकान', 0, 0, NULL),
(131, 'Coaching, Teaching & Learning', 'कोचिंग, टीचिंग और लर्निंग', 0, 0, NULL),
(132, 'NGO & Social Services', 'एनजीओ और सामाजिक सेवाएं', 0, 0, NULL),
(133, 'Resort / Vacation / Home Stay', 'रिज़ॉर्ट / वेकेशन / होम स्टे', 0, 0, NULL),
(134, 'Turmeric', 'हल्दी', 0, 0, NULL),
(135, 'Sure Products', 'सियोर प्रोडक्ट्स ', 0, 1, NULL),
(136, 'Billing Machine', '', 0, 0, NULL),
(137, 'Software Services', '', 0, 0, NULL),
(138, 'Software POS', '', 0, 0, NULL),
(139, 'Brooms', 'झाड़ु / खराटे ', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `loc_state_name` varchar(255) DEFAULT NULL,
  `state_abbr` text NOT NULL,
  `slug` text NOT NULL,
  `country_abbr` text NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `loc_state_name`, `state_abbr`, `slug`, `country_abbr`, `country_id`) VALUES
(1, 'Maharashtra', 'महाराष्ट्र', 'MH', 'maharshtra', 'IND', 1),
(2, 'Bihar', 'बिहार', 'BIHAR', 'bihar', 'ÍND', 1),
(3, 'Karnataka', 'कर्नाटका', 'KR', 'karnataka', 'IND', 1),
(4, 'Gujarat', 'गुजरात', 'GJ', 'gujrat', 'IND', 1),
(5, 'Rajasthan', 'राजस्थान', 'RJ', 'rajasthan', 'IND', 1),
(6, 'Andhra Pradesh', 'आंध्र प्रदेश', 'AP', 'andhra_pradesh', 'IND', 1),
(7, 'Telengana', 'तेलंगाना', 'TG', 'telangana', 'IND', 1),
(8, 'Tamil Nadu', 'तमिल नाड़ु', 'TN', 'tamil_nadu', 'IND', 1),
(9, 'Kerala', 'केरला', 'KL', 'kerala', 'IND', 1),
(10, 'Uttar Pradesh', 'उत्तर प्रदेश', 'UP', 'uttar_pradesh', 'IND', 1),
(11, 'Uttarakhand', 'उत्तराखण्ड', 'UK', 'uttarakhand', 'IND', 1),
(12, 'West Bengal', 'वेस्ट बंगाल', 'WB', 'west_bengal', 'IND', 1),
(13, 'Madhyapradesh', 'मध्यप्रदेश', 'MP', 'madhyapradesh', 'IND', 1),
(14, 'Chhatishgadh', 'छत्तीसगढ़', 'CG', 'chhattisgarh', 'IND', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `mobile` text NOT NULL,
  `state_id` int(11) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `village_id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `user_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `date`, `name`, `mobile`, `state_id`, `taluka_id`, `block_id`, `village_id`, `agent_id`, `user_type`) VALUES
(26, '2021-01-16 15:22:01', 'Yogita jivan jagtap', '9373298953', 1, 3, 4, 10, 25, '2'),
(27, '2021-01-16 16:03:52', 'Ajit dhanure', '9890218789', 1, 3, 14, -1, 135, '2'),
(28, '2021-01-16 16:05:20', 'Kalpana dhanure ', '9834615014', 1, 3, 4, 197, 48, '1'),
(29, '2021-01-16 16:06:58', 'Gokrana vilas More', '9850013752', 1, 3, 4, 16, 25, '2'),
(30, '2021-01-16 16:08:37', 'Vijaya Annarao Salunke', '9325756241', 1, 3, 4, 17, 25, '2'),
(31, '2021-01-16 16:09:12', 'sambhaji   amrutraut', '9552155722', 1, 3, 4, 8, 206, '1'),
(32, '2021-01-16 16:10:17', 'Surekha vinyak munjal', '9960826432', 1, 3, 4, 942, 25, '1'),
(33, '2021-01-16 16:13:29', 'Revati balaji pawar', '9552892211', 1, 3, 4, 902, 26, '1'),
(34, '2021-01-16 19:30:08', 'Rohini Santosh birajdar', '7769012712', 1, 3, 4, 897, 198, '3'),
(35, '2021-01-16 20:00:27', 'Savita jadhav', '7387127420', 1, 3, 4, 14, 25, '1'),
(36, '2021-01-16 22:55:50', 'Abc', '9999912345', 1, 4, 12, 292, 0, '2'),
(37, '2021-01-17 07:49:59', 'Satish jadhav', '7558777300', 1, 2, 2, 713, 0, '1'),
(38, '2021-01-17 12:36:33', 'Kaka Adsule', '9881421243', 1, 1, 7, 295, 1290, '5'),
(39, '2021-01-17 16:04:12', 'Prashant Prakashrao Dange ', '9765012888', 1, 2, 2, 44, 180, '5'),
(40, '2021-01-17 16:04:28', 'Kiran Mane', '9545751155', 1, 2, 2, 349, 279, '2'),
(41, '2021-01-17 16:05:45', '', '9422615704', 1, 2, 2, 490, 35, '1'),
(42, '2021-01-17 16:07:14', 'Sai kirana store', '9822661597', 1, 3, 4, 573, 17, '2'),
(43, '2021-01-17 16:09:13', 'Sumitra jadhav', '9665437272', 1, 3, 4, 197, 26, '2'),
(44, '2021-01-17 16:15:13', 'Virbhadra narayan udage ', '9423348324', 1, 3, 31, 966, 1523, '2'),
(45, '2021-01-17 16:16:29', 'Mohan Ambure', '9921628631', 1, 3, 4, 1504, 17, '2'),
(46, '2021-01-17 16:16:34', 'Chaitanya shete', '7249532323', 1, 3, 31, 966, -1, '5'),
(47, '2021-01-17 16:28:33', 'Satish', '7030881508', 1, 3, 5, 966, 16, '1'),
(48, '2021-01-17 16:30:17', 'Kanhaiya M Pawar', '9097191555', 1, 3, 31, 966, 521, '2'),
(49, '2021-01-17 16:34:27', 'Abcd', '9823047944', 1, 3, 5, 19, 17, '2'),
(50, '2021-01-17 16:43:47', 'Dipali Thodsare', '8275272859', 1, 2, 2, 44, 20, '1'),
(51, '2021-01-17 16:50:49', 'Rohit sharadrao', '8308307665', 1, 3, 5, 143, 0, '1'),
(52, '2021-01-17 16:51:02', 'Sujata Patil ', '9689655892', 1, 2, 2, 2916, 42, '2'),
(53, '2021-01-17 16:52:27', 'Palas Chatterjee ', '7520149980', 1, 4, 12, 292, 0, '1'),
(54, '2021-01-17 16:52:36', 'Datta More', '7709471078', 1, 2, 2, 44, 0, '1'),
(55, '2021-01-17 16:53:20', 'Anjali Zadke', '9422028795', 1, 2, 2, 44, 279, '2'),
(56, '2021-01-17 16:53:43', 'Anjana sable', '9970992427', 1, 3, 5, 126, 16, '2'),
(57, '2021-01-17 16:54:08', 'Rangnath Warale', '9604980610', 1, 2, 2, 2929, 184, '1'),
(59, '2021-01-17 17:09:53', 'Sunita Dilip Patil', '7875553407', 1, 3, 5, 38, 56, '1'),
(60, '2021-01-17 17:50:31', 'Shila bhojne ', '8975399718', 1, 2, 10, 550, 44, '1'),
(61, '2021-01-17 22:44:50', 'Shrikant Patil', '8087406994', 1, 3, 5, 38, 0, '1'),
(62, '2021-01-17 22:57:54', 'Shamal Gurav', '8805846601', 1, 1, 6, 0, 29, '1'),
(63, '2021-01-18 10:16:51', 'Dilip Ankush Kundgir', '7397992022', 1, 3, 31, 966, 2205, '2'),
(64, '2021-01-18 10:29:47', 'Pradnya Dattatray kate', '9082372594', 1, 2, 2, 0, 0, '1'),
(66, '2021-01-18 15:19:18', 'Raj', '8700335547', 2, 6, 22, -1, 0, '1'),
(67, '2021-01-18 17:23:02', 'Jyotsana dhyaneshwar polkar ', '9529046755', 1, 3, 18, 232, 27, '3'),
(68, '2021-01-19 01:26:26', 'Amod', '9822587776', 1, 3, 4, 17, 0, '4'),
(69, '2021-01-19 01:30:34', 'Vijay Temp Store', '9552525548', 1, 2, 2, 101, 0, '2'),
(70, '2021-01-19 11:07:51', '', '6201787473', 2, 6, 22, 407, 0, '1'),
(71, '2021-01-19 11:29:36', 'Urmila Rajkumar Apsingekar ', '8888912374', 1, 3, 31, 966, 0, '1'),
(72, '2021-01-19 11:30:58', 'Akash Lashkare', '7020017649', 1, 2, 2, 0, 15, '1'),
(73, '2021-01-19 11:31:33', 'Akash Dede', '8177953423', 1, 2, 27, 530, 0, '1'),
(74, '2021-01-19 11:40:33', 'Amar Shrimal', '9420546806', 1, 1, 7, 295, 0, '1'),
(75, '2021-01-19 11:51:24', 'Ganesh Waghmare', '9765541884', 1, 3, 5, 38, 22, '1'),
(76, '2021-01-19 13:39:24', 'Sandip Mane', '9673478411', 1, 3, 5, 38, 59, '1'),
(77, '2021-01-19 14:09:11', 'Baban shamrao birajdar', '8805727328', 1, 3, 3, 43, 37, '1'),
(79, '2021-01-19 14:44:15', 'vimal ', ' 919370101', 1, 2, 15, 904, 0, '1'),
(80, '2021-01-19 15:54:06', 'Rohini  Bappa Khade ', ' 191876723', 1, 2, 15, 888, 0, '1'),
(81, '2021-01-19 16:17:31', 'Instadata', '8796021176', 1, 4, 12, 292, 0, '2'),
(82, '2021-01-19 16:57:15', 'Joyti Sachin pandagale', '9763339181', 1, 2, 10, 358, 3927, '5'),
(83, '2021-01-19 18:23:59', 'Supriya vikas sonwane', '7499323772', 1, 2, 8, 605, 286, '1'),
(84, '2021-01-19 19:33:29', 'Rajeshree Dattatrya sonvane', '7498080479', 1, 3, 4, 760, 194, '1'),
(85, '2021-01-19 20:00:15', 'Somvanshi ajay mahadev', '7709964508', 1, 3, 4, 902, 51, '1'),
(86, '2021-01-19 20:00:38', 'Sham shalgar', '9421296634', 1, 3, 3, 365, 581, '1'),
(87, '2021-01-19 20:12:56', 'Manjusha shingade Manjusha shingade', '8080838377', 1, 3, 14, 178, 241, '1'),
(88, '2021-01-19 21:30:24', 'Radha Navnath Dikale', '7350317398', 1, 2, 8, 247, 0, '3'),
(89, '2021-01-19 21:33:57', 'Jayshree shingare', '9545637013', 1, 2, 15, 316, 0, '1'),
(90, '2021-01-19 22:50:53', '', '8381067907', 1, 2, 2, 372, 12, '3'),
(91, '2021-01-19 23:01:30', 'Daivshala Tanaji Vante', '9112784293', 1, 3, 3, 6, 37, '1'),
(92, '2021-01-20 11:01:01', 'Pallavi Chandrkant jamgaonkar', '9322346641', 1, 2, 10, 299, 44, '1'),
(93, '2021-01-20 11:30:39', 'Pushpa satish awad', '9923022418', 1, 2, 2, 286, 182, '2'),
(94, '2021-01-20 11:33:54', 'Meena tatoba pawar', '9623310729', 1, 2, 2, 288, 0, '3'),
(95, '2021-01-20 11:35:31', 'Sunita Kshirsagar', '8805170476', 1, 2, 2, 683, 42, '1'),
(96, '2021-01-20 11:39:13', 'Swati Gadhave', '8208745327', 1, 2, 2, 99, 42, '1'),
(97, '2021-01-20 11:42:45', 'Rohini netaji savant', '8888974206', 1, 2, 2, 289, 42, '2'),
(98, '2021-01-20 11:43:30', 'Priyanka pasle', '9284462791', 1, 2, 10, 85, 31, '1'),
(99, '2021-01-20 11:47:23', 'Dipali mutakule', '9325781048', 1, 2, 2, 102, 42, '3'),
(100, '2021-01-20 12:01:08', 'Dipali', '477578969', 1, 2, 2, 163, 13, '2'),
(101, '2021-01-20 12:17:26', 'Seems Pawar', '9561923862', 1, 2, 2, 163, 42, '1'),
(102, '2021-01-20 12:22:31', 'Godavari madole ', '8421914078', 1, 2, 19, 260, 45, '1'),
(103, '2021-01-20 12:22:43', 'Shalubai Sachin. Kakade', '9322357390', 1, 2, 2, 850, 12, '1'),
(104, '2021-01-20 12:40:41', 'Kavita Sanjay Bhosale', '9284059170', 1, 2, 19, 668, 0, '1'),
(105, '2021-01-20 14:50:44', 'Reshma wagmare', ' 919370252', 1, 1, 1, 37, 39, '1'),
(106, '2021-01-20 14:53:15', 'Sheetal Ravindra Rankhamb', '7719091776', 1, 2, 19, 271, 45, '1'),
(107, '2021-01-20 14:57:41', '   Anjana kolekar ', '7498472783', 1, 2, 2, 33, 42, '3'),
(108, '2021-01-20 15:03:15', 'Tanujakhochare', '9307360733', 1, 2, 2, 101, 42, '3'),
(109, '2021-01-20 15:03:21', 'ASHA Hajgude', '9325553276', 1, 2, 2, 5, 42, '3'),
(110, '2021-01-20 15:23:56', 'Amod', '9554525548', 1, 4, 12, 292, 0, '1'),
(111, '2021-01-20 15:24:36', 'test shop', '8989898989', 1, 2, 27, 0, 0, '2'),
(112, '2021-01-20 15:50:17', '', ' 447447569', 1, 2, 10, 779, 0, '1'),
(113, '2021-01-20 16:40:16', 'Jyotshna ramling todkari', '8250856831', 1, 2, 19, 273, 45, '1'),
(114, '2021-01-20 16:49:20', 'Amod', '8679769769', 1, 3, 3, 7, 37, '3'),
(115, '2021-01-20 18:11:59', 'Tabassum', '9422928492', 1, 3, 31, 966, 813, '2'),
(116, '2021-01-20 18:19:48', 'Sunita store', '8805285981', 1, 3, 5, 141, 1036, '2'),
(117, '2021-01-20 18:26:18', 'Sakhi1', '8787878787', 1, 2, 10, 109, 44, '3'),
(118, '2021-01-20 19:17:30', 'Joyshna Vishnu Mane', '7775013392', 1, 3, 3, 7, 0, '1'),
(119, '2021-01-20 20:07:46', 'Priya angad birajdar', '9370580038', 1, 2, 30, 771, 0, '1'),
(120, '2021-01-21 07:11:54', 'Manisha Santosh sonavane', '7744810879', 1, 2, 30, 3103, 572, '3'),
(121, '2021-01-21 08:25:14', 'Mira sagar', '9764516094', 1, 3, 3, 48, 37, '3'),
(122, '2021-01-21 09:59:03', 'Kamlakar Shinde. ', '7083601294', 1, 2, 2, 916, 42, '1'),
(123, '2021-01-21 10:28:41', 'kalpana Prakash Sonkavade', '8830379375', 1, 1, 6, 60, 29, '1'),
(124, '2021-01-21 10:33:43', 'Suhas Randive', '7517380156', 1, 2, 2, 916, 0, '1'),
(125, '2021-01-21 10:53:41', 'Priya Ram khot ', ' 917620863', 1, 3, 3, 43, 37, '1'),
(126, '2021-01-21 11:11:16', 'Atul kadam ', '9637993376', 1, 3, 3, 41, 37, '1'),
(127, '2021-01-21 11:12:00', 'Ashok Mandore', '9923000778', 1, 4, 12, 292, 0, '1'),
(128, '2021-01-21 11:23:47', 'Gaya bhai Vishnu kalase', '9021124671', 1, 3, 3, 43, 81, '1'),
(129, '2021-01-21 11:26:28', 'Vanamala vinod gaykawad', '9881383570', 1, 2, 10, 92, 44, '3'),
(130, '2021-01-21 11:35:13', 'Rajesh shingare', '7887512130', 1, 2, 15, 316, 0, '1'),
(131, '2021-01-21 11:57:03', 'Cust1', '9999999990', 1, 3, 5, 518, 0, '1'),
(132, '2021-01-21 11:58:49', 'Aishwarya Udhavsinh Gaherwar', '7385712998', 1, 3, 4, 708, 0, '1'),
(133, '2021-01-21 12:11:09', 'Amir Shaikh', '7972967623', 1, 2, 27, 893, 0, '1'),
(134, '2021-01-21 12:14:31', ' Kaushalya datu kamble', '9689846139', 1, 3, 3, 43, 81, '3'),
(135, '2021-01-21 12:16:16', 'Gk1', '9999999992', 1, 2, 2, 287, 13, '3'),
(136, '2021-01-21 12:28:26', 'Anjali payal', '7218472945', 1, 2, 15, 316, 0, '1'),
(137, '2021-01-21 12:32:06', 'Kaushalya Dattu kamble', '9579012350', 1, 3, 3, 43, 81, '1'),
(138, '2021-01-21 12:36:54', '', '9119455407', 1, 2, 10, 86, 0, '1'),
(139, '2021-01-21 12:38:50', 'Sonali shingare', '8530626289', 1, 2, 15, 316, 84, '1'),
(140, '2021-01-21 12:45:54', 'Sandhya jadhav', '8080230295', 1, 2, 10, 109, 0, '3'),
(141, '2021-01-21 12:47:18', 'Laxmi sadi centre', '9730715487', 1, 3, 4, 344, 25, '2'),
(142, '2021-01-21 12:49:17', 'Anand beldar', '9657696946', 1, 2, 15, 0, 0, '1'),
(143, '2021-01-21 12:53:45', 'Gayabai Vishnu Kalse ', '7249678496', 1, 3, 3, 43, 81, '2'),
(144, '2021-01-21 12:57:48', 'Rutik sham shinde', '9284146066', 1, 2, 2, 916, 42, '1'),
(145, '2021-01-21 12:57:54', 'Avi shinde', '8329281913', 1, 2, 2, 916, 42, '1'),
(146, '2021-01-21 12:58:06', 'Ritesh waghmare', '9307076114', 1, 2, 2, 916, 42, '1'),
(147, '2021-01-21 13:02:15', 'Sachin shingare', '9730119278', 1, 2, 15, 316, 84, '1'),
(148, '2021-01-21 13:11:37', 'Kiran shingare', '8805471460', 1, 2, 15, 316, 84, '1'),
(149, '2021-01-21 13:14:15', 'Mahendra gawali', '9511204022', 1, 2, 15, 316, 84, '1'),
(150, '2021-01-21 13:21:39', 'Amol mali', '9098923333', 1, 2, 15, 316, 0, '1'),
(151, '2021-01-21 13:25:35', 'Akash shingare', '9130022472', 1, 2, 15, 316, 84, '1'),
(152, '2021-01-21 13:28:14', 'Sachin shingare', '8263875758', 1, 2, 15, 0, 84, '1'),
(153, '2021-01-21 13:30:40', 'Avinash shingare', '9022709970', 1, 2, 15, 316, 84, '1'),
(154, '2021-01-21 13:34:09', 'Shahaji shingare', '9284615060', 1, 2, 15, 316, 84, '1'),
(155, '2021-01-21 13:37:37', 'Ajit jadhav', '9689258668', 1, 2, 15, 316, 84, '1'),
(156, '2021-01-21 13:51:48', 'Mira payal', '9860532355', 1, 2, 15, 316, 0, '1'),
(157, '2021-01-21 13:54:51', 'Anant jadhav', '8805151480', 1, 2, 15, 316, 0, '1'),
(158, '2021-01-21 13:56:24', 'Mangal Dilip Suryawanshi', '9049857883', 1, 3, 3, 43, 81, '4'),
(159, '2021-01-21 13:58:01', 'Balaji zambre', '9021786250', 1, 2, 15, 316, 84, '1'),
(161, '2021-01-21 16:12:11', 'Anjali zadke patil', '8800880088', 1, 2, 2, 44, 0, '5'),
(162, '2021-01-21 16:13:06', 'Suvarna Kashinath Kalse', '9421380052', 1, 3, 3, 43, 81, '1'),
(163, '2021-01-21 16:47:39', 'Rajeshree ', '9922086583', 1, 1, 6, 2492, 415, '1'),
(164, '2021-01-21 17:11:37', 'Atish Shinde', '8767970789', 1, 2, 2, 2916, 42, '1'),
(165, '2021-01-21 17:14:04', 'Manoj Dhawalshankh', '8788960239', 1, 2, 2, 916, 42, '1'),
(166, '2021-01-21 17:27:54', 'Sakrubayi Babu kamle', '7066741783', 1, 3, 3, 43, 81, '2'),
(167, '2021-01-21 18:02:48', 'Sabana  Alludin  pathan', '7028351397', 1, 1, 16, 834, 115, '2'),
(168, '2021-01-21 18:26:58', 'Mahesh Wadikar', '9307843381', 1, 3, 3, 41, 0, '1'),
(169, '2021-01-21 18:40:49', '', '8329448333', 1, 3, 3, 43, 0, '1'),
(170, '2021-01-21 18:41:24', 'Sree mauli shiddeswar kirana ', '9588624488', 1, 1, 6, 965, 0, '2'),
(171, '2021-01-21 18:48:41', 'Sudhir Birajdar', '8552841154', 1, 3, 3, 41, 0, '1'),
(172, '2021-01-21 19:29:38', 'Nitin shingare', '9623481624', 1, 2, 15, 316, 84, '1'),
(173, '2021-01-21 19:34:56', 'Rajesh bharate', '9637427625', 1, 2, 15, 316, 84, '1'),
(174, '2021-01-21 19:39:45', 'Akash waldode', '8482885717', 1, 2, 19, 668, 45, '1'),
(175, '2021-01-21 20:05:29', 'Anil shingare', '7057961511', 1, 2, 15, 316, 84, '1'),
(176, '2021-01-21 20:14:24', 'Nisha nlrjan Raghu', '9850130006', 1, 3, 3, 43, 81, '1'),
(177, '2021-01-21 20:23:03', 'Jangme pratik Nagendra', '7507787405', 1, 2, 2, 44, 63, '1'),
(178, '2021-01-21 20:29:13', 'GAJANAN WAGHMARE ', '9604844994', 1, 2, 2, 44, 42, '5'),
(179, '2021-01-21 20:47:44', 'balasaheb gaikwad', ' 919834688', 1, 3, 4, 14, 0, '1'),
(180, '2021-01-21 20:50:08', 'Md Akhtar', '9693201770', 2, -1, -1, -1, 0, '1'),
(181, '2021-01-21 20:58:20', 'Vaishali yankat savant', '9921761482', 1, 2, 2, 289, 42, '2'),
(182, '2021-01-21 21:19:38', 'कदम केक शाॅप', '9579272366', 1, 2, 8, 82, 694, '2'),
(183, '2021-01-21 21:35:08', 'Ganesh Nawale', '9423992427', 1, 2, 2, 916, 42, '1'),
(184, '2021-01-21 21:39:03', 'Shital vaibhav tormal', '7770093799', 1, 3, 3, 43, 81, '1'),
(185, '2021-01-21 21:40:39', 'Anjana Siddeshwar Sul', '9325677024', 1, 2, 2, 33, 42, '1'),
(186, '2021-01-21 22:17:17', 'Raj photo studio ', '9423734370', 1, 2, 2, 95, 549, '2'),
(187, '2021-01-22 08:03:09', 'Krishna Chavan', '9325397928', 1, 2, 2, 683, 42, '1'),
(188, '2021-01-22 08:09:34', 'Archana', ' 918080755', 1, 3, 3, 347, 0, '3'),
(189, '2021-01-22 08:16:00', 'Sham chavan', '9623949479', 1, 2, 2, 683, 0, '1'),
(190, '2021-01-22 08:23:54', 'Sham chavan', 'Patil mada', 1, 2, 2, 683, 42, '1'),
(191, '2021-01-22 10:14:37', 'Amol chavan', '901167718', 1, 2, 2, 683, 42, '2'),
(192, '2021-01-22 10:23:22', 'Shrihari Anant more ', '9503977242', 1, 2, 10, 306, 0, '1'),
(193, '2021-01-22 10:58:23', 'Ashish gorakh mali', ' 919145776', 1, 2, 2, 95, 0, '1'),
(194, '2021-01-22 11:25:29', 'Ambika papad udog', '9527076848', 1, 2, 8, 74, 32, '2'),
(195, '2021-01-22 11:28:56', 'Sulkshana Pawar', '9921851849', 1, 2, 2, 683, 42, '3'),
(196, '2021-01-22 11:31:26', 'Suryakant Mahadeo Sontakke ', '9881003065', 1, 2, 2, 44, 53, '1'),
(197, '2021-01-22 11:32:07', 'Anita Bable', '7263828248', 1, 2, 19, 267, 45, '3'),
(198, '2021-01-22 11:44:32', 'Rijvana Hasan patan', '9172624431', 1, 1, 16, 342, 0, '3'),
(199, '2021-01-22 11:48:53', 'Madhav gorkatte', '8483089833', 1, 2, 19, -1, 0, '5'),
(200, '2021-01-22 11:55:25', 'Nilkant kudale', '9011219462', 1, 2, 15, 316, 84, '1'),
(201, '2021-01-22 11:59:54', 'Shreekant shingare', '7821097704', 1, 2, 15, 316, 0, '1'),
(202, '2021-01-22 12:02:00', 'Janvi butik', '9309865990', 1, 2, 2, -1, 13, '2'),
(203, '2021-01-22 12:03:05', 'Dnyaneshwar Tukaram Navadkar', '9503031667', 1, 1, 16, 341, 0, '5'),
(204, '2021-01-22 12:19:01', 'Asha. Dilip. Bhatlawande', '9822157805', 1, 2, 8, 82, 286, '1'),
(205, '2021-01-22 12:22:59', 'Shantveer Babyya swami', '7820885051', 1, 3, 3, 43, 81, '2'),
(206, '2021-01-22 12:25:44', 'Renuka amar mane', '8830241112', 1, 1, 16, 834, 470, '2'),
(207, '2021-01-22 12:40:11', 'Chandrakala dnyanoba hanmante', '9890024632', 1, 3, 3, 43, 81, '3'),
(208, '2021-01-22 12:51:17', 'Dinesh gavde', '7028715788', 1, 1, 16, 342, 0, '2'),
(209, '2021-01-22 12:58:36', 'Pranav dudh dairy', '9158631010', 1, 2, 2, -1, 13, '2');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` int(11) NOT NULL,
  `village_name` text NOT NULL,
  `loc_village_name` text DEFAULT NULL,
  `slug` text NOT NULL,
  `block_id` int(11) NOT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `village_name`, `loc_village_name`, `slug`, `block_id`, `type`) VALUES
(1, 'Pangari', 'पांगारी', 'pangari', 1, NULL),
(2, 'Tugaon', 'तुगाव', 'tugaon', 2, NULL),
(3, 'Thodsarwadi', 'थोडसरवाडी', 'thodsarwadi', 2, NULL),
(4, 'Kajla', 'काजळा', 'kajla', 2, NULL),
(5, 'Kini', 'किणी', 'kini', 2, NULL),
(6, 'Kotal Shavni', 'कोतल  शिवनी', 'kotal-shivni', 3, NULL),
(7, 'Ansarwada', 'अंसारवाडा', 'ansarwada', 3, NULL),
(8, 'Nagarsoga', 'नगरसोगा', 'nagarsoga', 4, NULL),
(9, 'Sarola', 'सरोला', 'sarola', 4, NULL),
(10, 'Ashiv', 'आशिव', 'ashiv', 4, NULL),
(12, 'Tungi', '', 'tungi', 4, NULL),
(13, 'Mangrul', 'मंगरूळ', 'mangrul', 4, NULL),
(14, 'Karjgoan', 'करजगाव', 'karjgoan', 4, NULL),
(17, 'Fattepur', 'फत्तेपूर', 'fattepur', 4, NULL),
(18, 'Mamdapur', '', 'mamdapur', 5, NULL),
(19, 'Bhadi', 'भडी', 'bhadi', 5, NULL),
(23, 'Mohtarwadi', 'महोतरवाडी', 'mohtarwadi', 2, NULL),
(24, 'Gormale', 'गोरमाले', 'gormale', 1, NULL),
(25, 'Jahanpur', 'जहांपूर', 'jahanpur', 1, NULL),
(26, 'Khamgaon', 'खामगाव', 'khamgaon', 1, NULL),
(27, 'Chikharde', 'चिखर्डे', 'chikharde', 1, NULL),
(28, 'Tandulwadi', 'तांदुळवाडी', 'tandulwadi', 1, NULL),
(29, 'Shirale', 'शिराळे', 'shirale', 1, NULL),
(30, 'Ghari', 'घारी', 'ghari', 1, NULL),
(31, 'Gatachivadi', 'गटाचिवाडी', 'gatachivadi', 1, NULL),
(32, 'Kuslamb', 'कुसलंब', 'kuslamb', 1, NULL),
(33, 'Ambejawlga', 'अंबेजवळगे', 'ambejawlga', 2, NULL),
(34, 'Chincholi', 'चिंचोली', 'chincholi', 1, NULL),
(35, 'Yelamb', 'येलाम्ब', 'yelamb', 1, NULL),
(36, 'Nari (Bhandewadi)', 'नारी (भांडेवाडी)', 'nari-(bhandewadi)', 1, NULL),
(37, 'Ukadgaon', 'उकाडगाव', 'ukadgaon', 1, NULL),
(38, 'Latur', 'लातूर', 'latur', 5, NULL),
(39, 'Nilanga', 'निलंगा', 'nilanga', 5, NULL),
(41, 'Limbala', 'लिंबळा', 'limbala', 3, NULL),
(42, 'Barshi', '', 'barshi', 1, NULL),
(43, 'Panchincholi', 'पानचिंचोलि', 'panchincholi', 3, NULL),
(44, 'Osmanabad', 'उस्मानाबाद', 'osmanabad', 2, NULL),
(45, 'Hasuri', '', 'hasuri', 3, NULL),
(46, 'New', 'नवीन', 'new', 0, NULL),
(47, 'Karjkheda', 'करजखेडा', 'karjkheda', 3, NULL),
(48, 'Anandwadi (Gaur)', 'आनंदवाडी (गौर)', 'anandwadi-(gaur)', 3, NULL),
(49, 'Tungi Bk.', 'तुंगी बीके.', 'tungi-bk.', 4, NULL),
(50, 'Kanagara', 'कानगारा', 'kanagara', 2, NULL),
(51, 'Hasori (Bu)', 'हासोरी (बु)', 'hasori-bu', 3, NULL),
(52, 'Boramani', 'बोरामणी', 'boramani', 6, NULL),
(53, 'Solapur', 'सोलापूर', 'solapur', 6, NULL),
(54, 'Shelka Dhanora', 'शेलका धानोरा', 'shelka-dhanora', 8, NULL),
(55, 'Musti', 'मुस्ती', 'musti', 6, NULL),
(56, 'Kasegaon', 'कासेगाव', 'kasegaon', 6, NULL),
(57, 'Tandulwadi', 'तांदुळवाडी', 'tandulwadi', 6, NULL),
(59, 'Kumbhari', 'कुंभारी', 'kumbhari', 6, NULL),
(60, 'Antroli', 'अँट्रोली', 'antroli', 6, NULL),
(61, 'Dongaon ', 'डोणगाव', 'dongaon', 6, NULL),
(62, 'Wadji', 'वडजी', 'wadji', 6, NULL),
(63, 'Mulegaon', 'मुळेगाव', 'mulegaon', 6, NULL),
(64, 'Gulwanchi', 'गुळवंची', 'gulwanchi', 29, NULL),
(66, 'Honsal', 'होन्सल', 'honsal', 29, NULL),
(67, 'Mohitewadi (G.P. Nannaj)', 'मोहितेवाडी (जीपी नन्नज)', 'mohitewadi-gp-nannaj', 9, NULL),
(68, 'Wadala', 'वडाळा', 'wadala', 29, NULL),
(69, 'Akolekati', 'अकोलेकाटी', 'akolekati', 29, NULL),
(70, 'Kauthali', 'कौथली', 'kauthali', 9, NULL),
(71, 'Pakani', 'पाकणी', 'pakani', 29, NULL),
(72, 'Nannaj', 'नान्नज', 'nannaj', 29, NULL),
(73, 'Telgaon', 'तेलगाव', 'telgaon', 29, NULL),
(74, 'Wagholi', 'वाघोली', 'wagholi', 8, NULL),
(75, 'Govindpur', 'गोविंदपूर', 'govindpur', 8, NULL),
(76, 'Jawala Kh', 'जावला ख', 'jawala-kh', 8, NULL),
(77, 'Khadki', 'खडकी', 'khadki', 8, NULL),
(78, 'Naigaon', 'नायगाव', 'naigaon', 8, NULL),
(79, 'Karanjkalla', 'करंजकलला', 'karanjkalla', 8, NULL),
(80, 'Bhatshirapura', 'भातशिरपुरा', 'bhatshirapura', 8, NULL),
(81, 'Shelgaon Divani', 'शेळगाव दिवाणी', 'shelgaon-divani', 8, NULL),
(82, 'Dahiphal', 'दहीफळ', 'dahiphal', 8, NULL),
(83, 'Jalkot', 'जळकोट', 'jalkot', 10, NULL),
(84, 'Kalamb', 'कळंब', 'kalamb', 8, NULL),
(85, 'Tirth Bk.', 'तीर्थ बी.के.', 'tirth-bk.', 10, NULL),
(86, 'Tirth kh.', 'तीर्थ ख.', 'tirth-kh.', 10, NULL),
(87, 'Baswantwadi', 'बसवंतवाडी', 'baswantwadi', 10, NULL),
(88, 'Ramtirth Tanda', 'रणतीर्थ तांडा', 'ramtirth-tanda', 10, NULL),
(89, 'Kilaj', 'किलाज', 'kilaj', 10, NULL),
(90, 'Masala ( Khu. )', 'मसाला (खु.)', 'masala-khu', 10, NULL),
(91, 'Dahitna', 'दहीत्ना', 'dahitna', 10, NULL),
(92, 'Kakramba', 'काकरांबा', 'kakramba', 10, NULL),
(93, 'Center Manager', 'केंद्र व्यवस्थापक', 'dahitana', 10, NULL),
(94, 'Devgaon', 'देवगाव', 'devgaon', 1, NULL),
(95, 'Ter', 'टेर', 'ter', 2, NULL),
(96, 'Irla', 'इर्ला', 'irla', 2, NULL),
(97, 'Tadwala', 'ताडवाला', 'tadwala', 10, NULL),
(98, 'Bamaniwadi', 'बामणीवाडी', 'bamaniwadi', 2, NULL),
(99, 'varuda', 'वरुड', 'varuda', 2, NULL),
(100, 'yewati', 'येवती', 'yewati', 2, NULL),
(101, 'Bamani', 'बामणी', 'bamani', 2, NULL),
(102, 'Pimpri', 'पिंपरी', 'pimpri', 2, NULL),
(103, 'Sindfal', 'सिंदफल', 'sindfal', 10, NULL),
(104, 'Yedola', 'येडोला', 'yedola', 10, NULL),
(105, 'Bijanwadi', 'बिजनवाडी', 'bijanwadi', 10, NULL),
(106, 'Salgara divti', 'सलगरा दिव्यती', 'salgara-divti', 10, NULL),
(107, 'Dhangarwadi', 'धनगरवाडी', 'dhangarwadi', 10, NULL),
(108, 'Gulhali', 'गुल्हाली', 'gulhali', 10, NULL),
(109, 'Barul', 'बरूल', 'barul', 10, NULL),
(110, 'Wagdari', 'वागदरी', 'wagdari', 10, NULL),
(111, 'Kanegaon', 'काणेगाव', 'kanegaon', 11, NULL),
(112, 'Holi', 'होळी', 'holi', 4, NULL),
(113, 'Vilaspur Pandhari', 'विलासपूर पंढरी', 'vilaspur-pandhari', 11, NULL),
(114, 'Ashta Kasar', 'अष्टा कासार', 'ashta-kasar', 11, NULL),
(115, 'Achaler', 'अचलर', 'achaler', 11, NULL),
(116, 'Kasti', 'कास्टी', 'kasti', 11, NULL),
(117, 'Udatpur', 'उदतपूर', 'udatpur', 11, NULL),
(118, 'Kondjigad', 'कोंडजीगड', 'kondjigad', 11, NULL),
(119, 'Bendkal', 'बेंदकाल', 'bendkal', 11, NULL),
(120, 'Undergaon', 'अंडरगाव', 'undergaon', 11, NULL),
(121, 'Mardi', 'मर्डी', 'mardi', 11, NULL),
(122, 'Tormba', 'तोरंबा', 'tormba', 11, NULL),
(123, 'Kasarkheda', 'कासारखेडा', 'kasarkheda', 5, NULL),
(124, 'Tandulwadi', 'तांदुळवाडी', 'tandulwadi', 5, NULL),
(125, 'Mahapur', 'महापूर', 'mahapur', 5, NULL),
(126, 'Bhuisamudraga', 'भुईसमुद्रागा', 'bhuisamudraga', 5, NULL),
(127, 'Sangamner', 'संगमनेर', 'sangamner', 1, NULL),
(128, 'Ekurga', 'एकुरगा', 'ekurga', 5, NULL),
(129, 'Nandgaon', 'नांदगाव', 'nandgaon', 5, NULL),
(130, 'Harangul Bk', 'हारंगुल बीके', 'harangul-bk', 5, NULL),
(131, 'Katgaon', 'काटगाव', 'katgaon', 5, NULL),
(132, 'Borwati', 'बोरवटी', 'borwati', 5, NULL),
(133, 'Gangapur', 'गंगापूर', 'gangapur', 5, NULL),
(134, 'Lohara', '', 'lohara', 11, NULL),
(135, 'Tuljapur', '', 'tuljapur', 10, NULL),
(136, 'Gategaon', 'गटेगाव', 'gategaon', 5, NULL),
(137, 'Nagzari', 'नागझरी', 'nagzari', 5, NULL),
(138, 'Manjari', 'मांजरी', 'manjari', 5, NULL),
(139, 'Harangul Kh.', 'हरंगुल ख.', 'harangul-kh.', 5, NULL),
(140, 'Shingoli', 'शिंगोली', 'shingoli', 8, NULL),
(141, 'Malwati', 'मालवती', 'malwati', 5, NULL),
(142, 'Jawala Bk.', 'जावला बीके', 'jawala-bk.', 5, NULL),
(143, 'Akharwai', 'अखर्वाई', 'akharwai', 5, NULL),
(147, 'Kumalwadi', 'कुमालवाडी', 'kumalwadi', 2, NULL),
(148, 'Hipparga rava', 'हिप्परगा रावा', 'hipparga-rava', 11, NULL),
(149, 'Ghargaon', 'घारगाव', 'ghargaon', 8, NULL),
(150, 'Malkaranja', 'मकरंजा', 'malkaranja', 8, NULL),
(151, 'Umara', 'उमरा', 'umara', 8, NULL),
(152, 'Pangaon', 'पानगाव', 'pangaon', 8, NULL),
(153, 'Massa', 'मसा', 'massa', 8, NULL),
(154, 'Bhatsangvi', 'भातसंगवी', 'bhatsangvi', 8, NULL),
(155, 'Sangi Kati', NULL, 'sangi-kati', 10, NULL),
(156, 'Mandva', 'मांडवा', 'mandva', 15, NULL),
(157, 'Para', NULL, 'para', 2, NULL),
(158, 'Kelewadi', NULL, 'kelewadi', 2, NULL),
(159, 'Jhinner', NULL, 'jhinner', 2, NULL),
(161, 'Gojwada', NULL, 'gojwada', 2, NULL),
(162, 'Washi', NULL, 'washi', 2, NULL),
(163, 'Bavi Dhoki', 'बावी धोकी', 'bavi-dhoki', 2, NULL),
(164, 'Vairag', NULL, 'vairag', 1, NULL),
(165, 'Sarola', 'सरोला', 'sarola', 15, NULL),
(166, 'Deoni', NULL, 'deoni', 14, NULL),
(167, 'Bolegaon', NULL, 'bolegaon', 14, NULL),
(168, 'Bhopni', NULL, 'bhopni', 14, NULL),
(169, 'Mahadev wadi', NULL, 'mahadev-wadi', 14, NULL),
(170, 'Dawanhiparga', NULL, 'dawanhiparga', 14, NULL),
(171, 'Wadmurumbi', NULL, 'wadmurumbi', 14, NULL),
(172, 'Indral', NULL, 'indral', 14, NULL),
(173, 'Konali', NULL, 'konali', 14, NULL),
(174, 'Nagral', NULL, 'nagral', 14, NULL),
(175, 'Deoni Khurd', NULL, 'deoni-khurd', 14, NULL),
(176, 'Gurnal', NULL, 'gurnal', 14, NULL),
(177, 'Gaudgaon', NULL, 'gaudgaon', 14, NULL),
(178, 'Nagtirthwadi', NULL, 'nagtirthwadi', 14, NULL),
(179, 'Sayyadpur', NULL, 'sayyadpur', 14, NULL),
(180, 'Talegaon', NULL, 'talegaon', 14, NULL),
(181, 'Gurdhal', NULL, 'gurdhal', 14, NULL),
(182, 'Pandharpur', NULL, 'pandharpur', 14, NULL),
(183, 'Darewadi', NULL, 'darewadi', 14, NULL),
(184, 'Chawanhiprga', NULL, 'chawanhprga', 14, NULL),
(185, 'Waghanalwadi', NULL, 'waghanalwadi', 14, NULL),
(186, 'Helamb', NULL, 'helamb', 14, NULL),
(187, 'Bobali Budruk', NULL, 'bobali-budruk', 14, NULL),
(188, 'Bobabli Khurd', NULL, 'bobabli-khurd', 14, NULL),
(189, 'Takli', NULL, 'takli', 14, NULL),
(190, 'Dikshal', NULL, 'dikshal', 14, NULL),
(191, 'Bakshi Hiparga', NULL, 'bakshi-hiparga', 14, NULL),
(192, 'Satephal', NULL, 'satephal', 14, NULL),
(193, 'Waluz', NULL, 'waluz', 14, NULL),
(194, 'Ahmednagar', '', 'ahmednagar', 13, NULL),
(195, 'Haregaon', 'हरेगाव', 'haregaon', 4, NULL),
(196, 'Jawalaga Po', '', 'jawalaga-po', 4, NULL),
(197, 'karajgaon', 'कराजगाव', 'karajgaon', 4, NULL),
(198, 'Karajgion', '', 'karajgion', 4, NULL),
(199, 'Sarlola', '', 'sarlola', 4, NULL),
(200, 'Tungi Bu', '', 'tungi-bu', 4, NULL),
(201, 'Vairag', 'वैराग', 'vairag', 1, NULL),
(202, 'Agalgaon', 'आगळगाव', 'agalgaon', 1, NULL),
(203, 'Balewadi', 'बालेवाडी', 'balewadi', 1, NULL),
(204, 'Barshi', '', 'barshi', 1, NULL),
(205, 'Kavhe', '', 'kavhe', 1, NULL),
(206, 'Khandavi', 'खंडावी', 'khandavi', 1, NULL),
(207, 'Koregav', 'कोरेगव', 'koregav', 1, NULL),
(208, 'Manegaon', 'मानेगाव', 'manegaon', 1, NULL),
(209, 'Pangaon', 'पानगाव', 'pangaon', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dukaan_list`
--
ALTER TABLE `dukaan_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dukaan_photos`
--
ALTER TABLE `dukaan_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dukaan_products`
--
ALTER TABLE `dukaan_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measure_unit`
--
ALTER TABLE `measure_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_reg_form_list`
--
ALTER TABLE `new_reg_form_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_reg_job_cv`
--
ALTER TABLE `new_reg_job_cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_reg_prod_list`
--
ALTER TABLE `new_reg_prod_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `dukaan_list`
--
ALTER TABLE `dukaan_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34307;

--
-- AUTO_INCREMENT for table `dukaan_photos`
--
ALTER TABLE `dukaan_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26172;

--
-- AUTO_INCREMENT for table `dukaan_products`
--
ALTER TABLE `dukaan_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16739;

--
-- AUTO_INCREMENT for table `new_reg_form_list`
--
ALTER TABLE `new_reg_form_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `new_reg_job_cv`
--
ALTER TABLE `new_reg_job_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new_reg_prod_list`
--
ALTER TABLE `new_reg_prod_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53704;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9750;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
