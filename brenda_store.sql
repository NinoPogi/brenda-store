-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 07, 2023 at 12:30 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brenda_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Bottled Drinks', '', ''),
(2, 'Alcoholic Beverages', '', ''),
(3, 'Condiments', '', ''),
(4, 'Processed Foods', '', ''),
(5, 'Snacks', '', ''),
(6, 'Hygiene', '', ''),
(7, 'Powdered Drinks', '', ''),
(8, 'School Supplies', '', ''),
(9, 'Frozen Goods', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Featured`
--

CREATE TABLE `Featured` (
  `id` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Featured`
--

INSERT INTO `Featured` (`id`, `image`, `name`, `price`, `category`) VALUES
(3, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rjA5zojLs71I8j_TTwryJfJDTdUDtBopL5Uvu9cZAmz434utFYEboqcG83X8Iu5RemeQVc5OtmmfXHu4m5Q6nZfMaJqg=s1600', 'Coca Cola 750ml', 30, 'Bottled Drinks'),
(71, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rseYmWYvrkNdtpkBsd1G_SqS1L6qY0lthNEH-i4Ej0KhiSggo4cb_I4VO9sOeVviJaX1BUwc0A1Ahwf08JXTyaW_wYcg=s1600', 'Combi', 10, 'Snacks'),
(72, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rPVByzPD5Lu1-sFlQVh3K1l9g4TotDzt7rqP6ItF3XslpclnuMabTibQdsl5BgZlQufHsJZB4jS3rddr_HiNPT1a4YLA=s1600', 'Cracklings', 10, 'Snacks'),
(80, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qsx6RBcaFCIhxnlW02JdedMi6Ot9bjtRcA6UXx797D3NzZmy7Zfk5UD6rPa45w8yGQettzX6oTG_FbINVwp5wq-TbCiA=s1600', 'Presto Peanut Butter', 10, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'C2 Solo', '', 18, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oF0kgcY7YP-oMlU_2hbhZnxZCWFQtGGjiCGTEOsknSijrlEO0CYmrRwHlXGTcAWQPy1hgC6F0YncbvO3Ru7NKG3wYw=s1600', 'Bottled Drinks'),
(2, 'Coca Cola 237ml', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rm3XKmvtWJ9Y5YCLzRgFF2iYdod_tLFQAvj3rAVprYY1JAc-KtVDfQRej-eNVmJyRV5AMouMgTa0MjqjFkKzx4xK5qXg=s1600', 'Bottled Drinks'),
(3, 'Coca Cola 750ml', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rjA5zojLs71I8j_TTwryJfJDTdUDtBopL5Uvu9cZAmz434utFYEboqcG83X8Iu5RemeQVc5OtmmfXHu4m5Q6nZfMaJqg=s1600', 'Bottled Drinks'),
(4, 'Del Monte Pineapple', '', 28, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ravTZcXOD8Ys3283wzB3MDbhG65IeN6EnQSDdO_177tvYoccMnwjS0ancU9ne7BBUFYRW-RX5kdgF6UoPS8P-S0vLhZA=s1600', 'Bottled Drinks'),
(5, 'Gatorade', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oxZepH3SEq9-Hl0OWggzNYN8naKKmN4HsBxcfS4labVY7_VAqEi71EatlDiKeTQ6hWBYIal9GQjVWS5dtH2OeyqbxWkw=s1600', 'Bottled Drinks'),
(6, 'Magnolia', '', 17, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rMHYBouN0zcUAquAUT1TOiApVbMX02r9QbzTvcl9rXwTnN-Z1oVsj5sVroYUxNKfro2Swap9X-cLf8YD6hVcWHeRJ4Kw=s1600', 'Bottled Drinks'),
(7, 'Mountain Dew 355ml', '', 18, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pYULuN_z2-VsYURjE3Va6ZzommqHPrKmSlu-YDywJIKh-dxYOIWUWvJkVICsP6X1TW64TioGxQbYnrXok240tnXosksg=s1600', 'Bottled Drinks'),
(8, 'Royal 750ml', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pAyYI_R53KRu2hdUrf3rvKuLs2GsGRu7BJPXOqmPzN3LudZ2dqTuD57fhgoxfEQdLwA6WQ6ETJvZcWNPIux1bIQhAdUA=s1600', 'Bottled Drinks'),
(9, 'Sprite 237ml', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qqJkku60GbVcSrSRTAU384H_aUVpJGDQ6qsMuY3sa7qZkTdEJRaU7B81QrbQ3aFRRUMVFyFQfZ5fNxJr6l4XkYfBo68Q=s1600', 'Bottled Drinks'),
(10, 'Zesto Big', '', 12, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ow8nl901ro4TDn1I8aMSHvd80NRYBn58J8DvHwj7R48cc_1gIvo1jaFnLr83eM6j5QywDKQdRLRxrLCOIWYc5a0pyi=s1600', 'Bottled Drinks'),
(11, 'Alfonso 1L', '', 345, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oCRLgULM5mJjPu8rutxN6ebMhTFkO_z0P4b_UW2-HxQFFYaE1nfFoP6-6wZhYsvBrWoi8glvKlJ5ny_HSLoVCfey-hRw=s1600', 'Alcoholic Beverages'),
(12, 'Alfonso 70cL', '', 290, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81o9GxlN8jcZATcAfKdT6ZYTGbpbTSGLvQigB_CdNcY5TcN2sXfBszk-YK8VHf5m95pwvOAQFE7swNMsQVMyvdJoF185=s1600', 'Alcoholic Beverages'),
(13, 'Gin (Square)', '', 70, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81reFlE1FSpUDUDDHwqzfby84gxfdUntsX2Jh-T5YBC6x_ghCyWrOeCvV43-InQrdRHNA2JbdNH9CeIGS7A8SkKa2k36=s1600', 'Alcoholic Beverages'),
(14, 'Gin (Bilog)', '', 70, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oGvObr1qP-3b9lia2hrUNo1b8Zquam0VD6pqd-M0ae5li_as0-EDAMsgQUQCb2CzbwcKwlyztTywWsJaeABz3za_Wb=s1600', 'Alcoholic Beverages'),
(15, 'Empe 1L', '', 180, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qT_YBfgAGfmivRBtrFLSFbsjdtjJGbAlXB4gI3VkQnT6R1k22EiK5gHKm6ZqnW7ExYm3JdoDEF-3cQ2xW2WIaL5IJeug=s1600', 'Alcoholic Beverages'),
(16, 'Red Horse', '', 60, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oGil3KxroldAA0HboiuhXmQSJl9hh-rYwf42Zy99CZWjT6huX3ZPRLH0s-zNyaZYVVFCmJAqOrahy3mdmvuKqhxSFaNw=s1600', 'Alcoholic Beverages'),
(17, 'Pale Pilsen', '', 75, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qwhus1bBBU0cdVPP_q_9Vpkm835VeuLmP2AcnskP7grCgIhKrKzlb1OdzNNgcMYPLHm9RiXEzHLvc-uRey3KRu1wMRGA=s1600', 'Alcoholic Beverages'),
(18, 'Datu Puti Soy Sauce', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81onyUEp5gW7BSNU3z6demyvyfuliS97T_FisETqdD_vxZtUqwn2ERbpEGOR0hAEKbs-AyqQryoW-8sZ8_29ySQFvF7yKQ=s1600', 'Condiments'),
(19, 'Datu Puti Vinegar', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ovjT5a2NnJNqg-EsX-SR00PLkT69IRGNuslDs72PhOtq1H8f98yhWwe9kSLfb-EByEPjwy4tYWJkHP7oB75mc5utBc2w=s1600', 'Condiments'),
(20, 'Datu Puti Patis Flavor', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oP9N6jZWXHCwrqteY5Tw0upK8I_SZh_QR0MSPdgP6gX5tLbGmHD91JO40q8N4_ZBY7Ed3Gmied_h1usc4RoIqxwi_GFw=s1600', 'Condiments'),
(21, 'Coco Mama Gata', '', 35, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qTPwqVQTihMp1hvFO8IPlioToFqDYTggzKA4o6u0-B1A7mlJBE2RZDK5Pky7e_tJMDQZpNOmGzC01bLpF901hm9eDWaA=s1600', 'Condiments'),
(22, 'Tomato Paste', '', 38, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qqJDLqBbsazPXFfOFdY6smU4vAMhoM7bALj8PO6FcEX-Jlhsbr1TkY34p2PqqXTclscF0IuAABq6R27HR8HoyE78Vhcw=s1600', 'Condiments'),
(23, 'Pineapple Tidbits', '', 43, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pWLSiISgaaxd68_Kw3oHpSjO1hvxAmV0hzDGoldRQwaClGrmR97OAG-9a5LnlSoH70wkHC8oYmp4PxBHFhCDG0nDcbJw=s1600', 'Condiments'),
(24, 'Ketchup', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qCHdHIfdlkENMWsYzvzP1GGOUfjNk1wgYPAJZ6VZLYBpNjX6i4wFxRkQLobbYjBpGLF-s39c7ZRovz40G-qFJA_Z5g_Q=s1600', 'Condiments'),
(25, 'Argentina Corned Beef', '', 45, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81o62bM0UBxJuKGHQX1d7rv513bjdpQiZEIIPvGrhDITaBsLBqUcvH76FtwaTiDh5YaGxpoPLCTts5g1qFg2J6FwcnZ1Pw=s1600', 'Processed Foods'),
(26, 'Hokkai Mackarel', '', 40, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rGdXBNH0St79vXZtbO_Pc-TQWm-hTBVc08cRDsFm7yBiDj5ob6H0gcAJrDv06qU7vyKSfCxxKVl9zrHn1HJIq78kwbzg=s1600', 'Processed Foods'),
(27, 'Argentina Meatloaf', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81olC1y_Nbf9JQ4m2a1YJv4tiJkCxRaG3T18Wt0MN-DhzudbIg-inZ6cPdsHSOmKr2a_hp8o0r4AUQXSNHXuIjP6XgA4wA=s1600', 'Processed Foods'),
(28, 'Lucky Me Beef', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ofvb-vwo87KMMRLNFW5VSc7GtAj8f5TOqxKg6ca9OvDoUb8y_JwDk7_3oE9Wott8gqG2e2FkwXTXvihAympG93k5Voew=s1600', 'Processed Foods'),
(29, 'Nissin Ramen', '', 15, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rvwFKzCyxnOr2HbGyeR33IIUHiFKHlHHJkeBMM7wlE928_bhMTYPsHv6ScRlCYXmxNmOR5vBpapsx7or5mZMpUBbHSxQ=s1600', 'Processed Foods'),
(30, 'Nissin Cup Noodles Spicy Seafood', '', 25, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pbKPBCROOW8y_2_PSBRcpSdLNTtiIvTYx8td-q-2RYmPrbo3YKXjtoRcXdzJvWEHbBLDkCFCuLykUwaFiAioZ6gtJm=s1600', 'Processed Foods'),
(31, 'SkyFlakes', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81o8zPyLgRqpgpdSvULqJMYIKeaK_uAX-noq3ZDFcLO3SJLKL7VghbzQVJ6Y3XkUaOiuOi6kf4vE89Dgc-sAVksuByMk=s1600', 'Snacks'),
(32, 'Snacku', '', 15, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81r4Qd42bG8908Zdk_Fjq1hq-ttUZUl9CJt-7heHOngyK_Ya5lQTvOU6xkd5Nr4c0Ff1qq0VsAFMKciJuRI6bRCsMxC0EQ=s1600', 'Snacks'),
(33, 'Cheese Ring', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qGbBUnsABSZbaRf4ovEcBnwsOSj-TwgBfi6eodaxojn0EGjKDdRN35Z17UHeCfzdRANUCrvEG8sSzXcmaf7A0zwcSTiw=s1600', 'Snacks'),
(34, 'Bread Sticks', '', 8, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rmbuMCUD0mD-5JNn9EBR77vLM8wtqoYPrVfBPkG1v2SDT9rNAPMueAdKmdsCCH496F7j5E1VnPl1vgtHG4HRM0Qxle=s1600', 'Snacks'),
(35, 'Mang Juan', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rJYGjrgJXLHyyVHOxAKeZdhn_tffb0nWpA1X-mcNe-7mo33uLQ-kNPOxwS15wbS63ss4zM_o1WWkOfoA1uDZyRO2NaGg=s1600', 'Snacks'),
(36, 'Head Shoulder Per Sachet', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qc3AT77GtzhAjFBBnzsLJ1f_8dacNBNAWAoU0rwQ0EsXHIxC0Gi8wwtCXzuZWgKcYQkFPLGaHcYxf-I7SX7Wnk5mrJKA=s1600', 'Hygiene'),
(37, 'Sunsilk Green Per Sachet', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pOTKPrEJEOGyS-3e8FKUdBA8FhCidHH8rgfv0JAb8VSo7ZWxn7rs0biHBYAaNTifdQ9jw2A7QFCF6htp1jwNoV7Pys4g=s1600', 'Hygiene'),
(38, 'Keratin Gold Per Sachet', '', 12, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oX_e-wCWmhtEqYT7LYHL4Z6y5MyAXaSUH0d0M3Rs7Wc6Dh_pgPWjCNNzCtEPTSl7rGTfezaQkbvl1eddLusJBlMDh2=s1600', 'Hygiene'),
(39, 'Downy Per Sachet', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qcnmy2Zh8fbVQr6Hf4u9viJB8KH7I2SEMViY5MVMBr90U7JamW3Yf3Ex_lmGNaQZKHT_reIGSXC-3GZnNH7iFfmkLNXg=s1600', 'Hygiene'),
(40, 'Hapee', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qGbyEW5E79Uhc_u0akOz1NMLQBUTKT8_sxgfwD_CntA6hN1FJpB5QOQNhdI1Bbyvm3-OODMyBzCv9g62GQKPjghp9bjg=s1600', 'Hygiene'),
(41, 'Tide Per Sachet', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ruJawrQ4tS2AWog-Fk8rxXTfq58Ubx7aYHKRfTLBAVgg2QgqIOXbA9iePDyzyUav-56cbEoGfCTgbwolfO5DWVixeIDQ=s1600', 'Hygiene'),
(42, 'Wings Per Sachet', '', 20, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rZyRQgT-RTMTQfd7hDUx9ls_Y9cSPHoT7cP9uzDtB9I3E7kOIP1uPOgIeTZCRAOqF93fiU2iAwdL4IsCQ7PR9sh8UbRQ=s1600', 'Hygiene'),
(43, 'Surf Per Sachet', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rB5kiWS2LJT7BMxg708oVUdP1Wp51rKz389fUNhqO40Dpp-yYO7bWPA-KRH717GDipab48_S0zo7NwD8UFy-XWxW_G=s1600', 'Hygiene'),
(44, 'Zonrox', '', 25, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pjOp1xqA0IPB1rKuZInhs1u2mbc0_vXPWVqRJ1E4PBkxDMmtn8F_vDgHEkOjWtjGPOW_BwkJeIgIa-lV0H-R5TVCbb=s1600', 'Hygiene'),
(45, 'Milo', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oKfQvTIZs8ea9zISs5JbdDU_N5oCeSbXpxwBWmbtzoWibIHY_3KMS0E-JmQGbFibt5RKq5_WAQ1lam-CCfGjRLpVAmrQ=s1600', 'Powdered Drinks'),
(46, 'Birch Tree', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rYz3NR-jbMDXwisZXSJujKIyITNk1Oo9ZAde3UGrMBdJ7Az6FNzTITr8MUYHtcdfwVRYt9z2Y8_2KdMAUJboaFNkon=s1600', 'Powdered Drinks'),
(47, 'Energen Vanilla', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ocunr8SwN9vLyno64-Mana9Omf8ft4-epAVzle4glK0CGLekOxU0FxMZOTzQPKmwSMQApEbhvto9bqCqQ3DaHV_btZ=s1600', 'Powdered Drinks'),
(48, 'Bear Brand', '', 15, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81r-neF0cvOvrIGgudIuu-YQCkGhKNof4ISSo2W_VHPPcqa1TWGv_CRX5QzE8xMRdMXwots4c2pyb5iWqZOw4GBtmZe-=s1600', 'Powdered Drinks'),
(49, 'Nestea Apple', '', 20, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81p4zUdi1R9RWuhftxlcE7zyjcZOBZcxezZvqhyh323e72jjYTzfUZLr7AFF3h0jhtnDF3N6uLh2RvyuZ1eix8FdETQzQg=s1600', 'Powdered Drinks'),
(50, 'Tang Pomelo', '', 20, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rYtW9nyNNFIAMUGuS7HbD_8PWuZp1LkTYyxFxOPcg4ixj1gfoWonh96yCRafWL-X6IHZ5mQePCych535tF9eHPecR2Ag=s1600', 'Powdered Drinks'),
(51, 'Great Taste White', '', 25, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81or5KdHH4YByOv_TMc71cUch4suUMLsmZ1fjkeufvi_HwprJhUTVHikX80MQTHACaWfDuMUonZDcuTF4RQUor2gJT5PpQ=s1600', 'Powdered Drinks'),
(52, 'Correction Tape', '', 20, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rRzIoC9cbcWqtAHx-dFmCWNYz_I5hSz07I5FUP_BKDWvY8VFKa4whCCO1UJ9hvEj-WJNe-hPc78joTt8yzZBYlw_9a=s1600', 'School Supplies'),
(53, 'HBW Ballpen', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81otrXPMrhANvkXnwboWtX57Rmkf7j-NIQqodvMRNNLTWXYdM_U3GpoVZ1gSAr2hMg460yW3F2UJbh9LvMfRbbvCs2YAfQ=s1600', 'School Supplies'),
(54, 'Mongol Pencil 2', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rKwroM5nByHnueuf2fvp-yQLEXZk2BM3zkWZ37skpfUvapBsw-gTF6z5iOqXsjG2Ah4P0-A9LvUejJp0rxeZOXFrLH=s1600', 'School Supplies'),
(55, 'Scotch Tape', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rqLp2ilsrk6zbwFlU0GTHjtY9o1m9WhP-Dz6deM-wx8gP17nOwHin-U9ZnSKXO2Ga8gLKE0PBbvknA3YBlq8QoR489Gw=s1600', 'School Supplies'),
(56, 'Sharpener', '', 7, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81ppFFhK-25EcoRpYQXgrBHZKtIwaIt44EtbwNu_M83xxONZotjcsJ9Zv_7jdrPE3XBTxhxxQhgJXqMzMFdkfgefbAoycw=s1600', 'School Supplies'),
(57, 'Mcdo Fries 1/2 kilo', '', 120, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qTHPQROrN3baAiSmYseB4MDDT6BYiRJ00RyiHXc4q2199Z95oqcCwaiMHKGUaknlNv5wyQCzUA6iwgNLv7tfD_kTRH2w=s1600', 'Frozen Goods'),
(58, 'Chicken Thigh', '', 180, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oQ2w3BBAyxqPV_299RmyW7Jhud0EQdSCOrVCsvoSq-6P3ZZyBL87gMyDpX7eEVnMY6PcPtMW5-EWOMAgBsvdhwm-CyxQ=s1600', 'Frozen Goods'),
(59, 'Liempo', '', 200, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qp4tuD3IqVMDaKcLBzFmCLdZDuS450OGQ2cP1HmZ7dGWB6mDaEDrRzcgAG1VH7ZgiEV8QZ1JuKR5Lmw5DjMZVGldW0dw=s1600', 'Frozen Goods'),
(60, 'Pork Jowl', '', 130, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81q9mBjVjjQFZFA8ONnIBEb2qUD78Vq1tX-OygFWbxFR1_bxl2S-1zSgtpIuuro5Yro1RWlmPARUfT4AdWZoSxZlzLAoRw=s1600', 'Frozen Goods'),
(61, 'Century Tuna Hot & Spicy', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qZplE5iADb08JFNfY6Gm8qD1v_isLCBkMwk5SCj1PnaUGSIQCysKhICM2cGRKu6EumAI2rbkvOg97MDfQC4_r5DyVQ=s1600', 'Processed Foods'),
(62, 'Saba Mackerel', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rZTwSi_TGcgkB7VTM3keQbJq_IuNOZb5HhfwEOqffXecQxtwjPRdDMs5w2xdqNGlPEnE6zHshRQKXDgmNWnvVreaF3=s1600', 'Processed Foods'),
(63, 'Ligo Sardines', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rjwG61FjN2zEMZfpxloA1M0SLwGc9irJx1eLQEpGU6mGvSUPh_U4u7FBHzNBy25U1lk30JTqZcaOIqqBgccHiJfhdCsA=s1600', 'Processed Foods'),
(64, 'San Marino Chili Corned Tuna', '', 30, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rDWhJ_BPboPr1Rz-iMX6utfWVQP5D0Cw1d8TcRKKxH2U_IgP-nKUOff444Ym1Lauee75g3JpbbuI4Hr-E41bLWlDPe=s1600', 'Processed Foods'),
(65, 'Lucky Me Pancit Canton Chlilimansi', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81p2RZz56iJ6Ye1EyNx8BacO6vPkKrGODGIjKmrctj8f7UNs1GbQE9sRZOZH8eGUHmY3rWLj2nYVSE6Na1lepU7QBqH_OQ=s1600', 'Processed Foods'),
(66, 'Lucky Me Pancit Canton Extra Hot Chili', '', 16, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81piLfZQeYUR4kOxraDbrWjlmR3NX6KEgD35liskH3UMASyaX1UZLYEl6ssY7ig1saQX5elC2eA068QdnTwfAmKdJBi_Ag=s1600', 'Processed Foods'),
(67, 'Nissin Cup Noodles Seafood', '', 25, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qOx1ho42IUf86S1fwC7S0TBsVx3pa8NqIu7-Yn1KURDj5KEv9BEXVN0TXEZPIMwVhnjR7V88NqNQQpuF9yM_9hHr_Tug=s1600', 'Processed Foods'),
(68, 'Lucky Me Go Cup', '', 25, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81o_DU4x_lXt0P05SVwnSiDLtnEQ0W999dWmR5hm8OJxRfm_39OBhcEv-v2j1VTPCpGrYpdev2xSbAMcjADqH6neP359nA=s1600', 'Processed Foods'),
(69, 'Butter Cream', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rzhMDB_P5lNT4VpYrk-7W-4lXo99Nbz0rRdFAnY9Ch9cH0qQ9EDzwc59J2ndJuV-SHwQzMjwqFtCzm0bH0ofPHMda5OA=s1600', 'Snacks'),
(70, 'Cheeze-It', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pY_Sc0_xdRrGen8i_DTwOtuL_zvv-30xPs1oyjdtXR-wpZdxQWwEBttxouziBp0VpmemWM4NpNegblFyPztyYSxHWk=s1600', 'Snacks'),
(71, 'Combi', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rseYmWYvrkNdtpkBsd1G_SqS1L6qY0lthNEH-i4Ej0KhiSggo4cb_I4VO9sOeVviJaX1BUwc0A1Ahwf08JXTyaW_wYcg=s1600', 'Snacks'),
(72, 'Cracklings', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rPVByzPD5Lu1-sFlQVh3K1l9g4TotDzt7rqP6ItF3XslpclnuMabTibQdsl5BgZlQufHsJZB4jS3rddr_HiNPT1a4YLA=s1600', 'Snacks'),
(73, 'Cream O Milk', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81owVCePL24NlWgBkjZg17hH-OTGe7Cln-mtkQSbAGjVgnqHX564vR-0wPaMsml28gWUo0EsXGle_MOolzfsBQSzWYwtUA=s1600', 'Snacks'),
(74, 'Hansel Chocolate', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81pNDmSTZ4DnT34C-ZLEyTj4o-zwXbaHUQTyxuO2Q_JhBmq6f10m9EFPtMyWPRm9upZXKE2s5E388h2zxNF9zP4vDaWL4g=s1600', 'Snacks'),
(75, 'Fudgee Bar Pandan', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oFlk2MO8AX-1j9DXqTxm_b-Fx0od_D4B_RPkQFEEz8-vKLVJSSbt8luYb7F2dcMSnK5Mtved-5wpOstS-NHT10gP_iUg=s1600', 'Snacks'),
(76, 'Kirei', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81p-Tf4SBQ_9WOUEjZPIhaPRoxEP7f1Qvyh5mKwN9I15mX5HSC9NN8X7fMUQJ5ZUjn-81QOu5hI1x0MCk43KBC1zywMtPg=s1600', 'Snacks'),
(77, 'Mr. Chips', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81q4FXuA4upnkx60eR7G3iuWB4eDNUoGQoHoaznFMwxH-3Q8I-a6T_OtToZ8d7utfxrSSHXjGr0qPGylGx-U6hCJgwF5iA=s1600', 'Snacks'),
(78, 'Oishi Spicy', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81r_26MbmkW0KI_QHYsO5XPlzGnsPF32WrGDdgHz9a33adUQQ-8IKpw8rGDeQGumyg1gfzCGQDmxGtmOZsAqegdBkQyX=s1600', 'Snacks'),
(79, 'Pillows', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81prcHqpzQPIcwGNZDqyrus19Kzsn_p9SUrgu4kLujzaaPQXLMAA-LFF6lJib471ZRaZFEdsnGbR6TpdFGP9yyj28Fsizg=s1600', 'Snacks'),
(80, 'Presto Peanut Butter', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81qsx6RBcaFCIhxnlW02JdedMi6Ot9bjtRcA6UXx797D3NzZmy7Zfk5UD6rPa45w8yGQettzX6oTG_FbINVwp5wq-TbCiA=s1600', 'Snacks'),
(81, 'Rebisco Strawberry', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81oLOHTp_rC4soR8F33CmP8ox78YQqRNgnVSdH8cQ_PYkhY6BmNU8wcH6LztwTWeVKFz1tMnvjyp6tWvb8tSZACWBou8ww=s1600', 'Snacks'),
(82, 'Roller Coaster', '', 10, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81rgHaHtrVzUcZzUVIfJet4Z6F6p9iGOK5HeyOwcUrbmYLzYcIvT3xXNGs-T5bybzKSGCA7N6hCuqPQr6UYYPNV_B-l4xw=s1600', 'Snacks'),
(83, 'Energen Chocolate', '', 13, 'https://lh3.googleusercontent.com/drive-viewer/AFGJ81q17MFOW5X3CNO3kvVNKxVjwYJNvD8HDpp5oN4lAoJfGdwirs4z3gU5x_eIZOYLxBN5d7wgrvlwu5jjmqRxgb4g6isw=s1600', 'Powdered Drinks');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Featured`
--
ALTER TABLE `Featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Featured`
--
ALTER TABLE `Featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
