-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2020 at 02:52 AM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `editbwbt_cryptodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_onpost`
--

CREATE TABLE `comment_onpost` (
  `id` int(11) NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vote` int(10) NOT NULL DEFAULT 0,
  `status` int(3) NOT NULL DEFAULT 1 COMMENT '0=inactive,1-active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_onpost`
--

INSERT INTO `comment_onpost` (`id`, `post_id`, `user_id`, `comment`, `vote`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 51, '<p>Hello everyone. It&#39;s my first post here. I&#39;ve been working on the most comprehensive North Korean vehicle database. It includes automotive-related articles, local-made cars, motorcycles, buses, trams, trains, trucks, construction vehicles and even automated unmanned vehicles.</p>', 0, 1, '2020-08-16 15:42:46', '2020-08-25 10:12:55'),
(2, 16, 51, '<p>Bitcoin uses peer-to-peer technology to operate with no central authority Bitcoin uses peer-to-peer technology to operate with no central authority</p>', 0, 1, '2020-08-25 09:09:23', '2020-08-25 09:09:23'),
(3, 16, 51, '<p>Bitcoin uses peer-to-peer technology to operate with no central authority Bitcoin uses peer-to-peer technology to operate with no central authority</p>', 0, 1, '2020-08-25 09:12:04', '2020-09-04 09:37:55'),
(6, 54, 51, '<p>This is crypto safe comment..</p>', 0, 1, '2020-08-25 11:30:48', '2020-09-04 09:37:48'),
(20, 98, 51, '<p>And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.</p>\r\n\r\n<p>And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.</p>\r\n\r\n<p>And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.And that&#39;s how when a user logged in, he will be automatically redirected to the previous page.</p>', 0, 1, '2020-08-29 12:29:34', '2020-09-04 09:37:55'),
(21, 72, 51, '<p>glossaryglossaryglossaryglossary</p>', 0, 1, '2020-08-29 12:30:42', '2020-08-29 12:30:42'),
(24, 105, 55, '<p>Algorand is a type of cyptocurrency.</p>', 0, 1, '2020-08-29 18:06:53', '2020-09-03 17:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `forums_tb`
--

CREATE TABLE `forums_tb` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `question` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `vote` int(5) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `forums_tb`
--

INSERT INTO `forums_tb` (`id`, `user_id`, `question`, `answer`, `vote`, `created_at`, `updated_at`) VALUES
(1, 51, 'TIL that India requires voting booths within 2 km of every registered voter. This means some poll workers trek for days through mountains and jungles to reach small, remote villages, sometimes for only a single registered voter.', 'TIL that India requires voting booths within 2 km of every registered voter. This means some poll workers trek for days through mountains and jungles to reach small, remote villages, sometimes for only a single registered voter.', 0, '2020-09-02 09:26:52', '2020-09-04 09:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `keywords_tb`
--

CREATE TABLE `keywords_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 1,
  `is_crypto` int(5) NOT NULL DEFAULT 0 COMMENT '1=yes,0=no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `keywords_tb`
--

INSERT INTO `keywords_tb` (`id`, `name`, `user_id`, `is_crypto`, `created_at`, `updated_at`) VALUES
(1, 'Aave - LEND', 50, 0, '2020-08-27 06:45:27', '2020-09-02 07:42:47'),
(2, 'Balancer - BAL', 50, 0, '2020-08-27 06:45:27', '2020-09-02 07:42:47'),
(3, 'Bitcoin - BTC ', 50, 0, '2020-08-27 06:46:27', '2020-09-02 07:42:47'),
(4, 'BitTorrent - BTT', 50, 0, '2020-08-27 06:46:27', '2020-09-02 07:42:47'),
(5, 'Bancor Network Token - BNT', 50, 0, '2020-08-27 06:46:27', '2020-09-02 07:42:47'),
(6, 'Bitcoin Cash - BCH ', 50, 0, '2020-08-27 06:46:27', '2020-09-02 07:42:47'),
(7, 'Bitmax Token - BMTX', 50, 0, '2020-08-27 06:46:27', '2020-09-02 07:42:47'),
(8, 'Cardano - ADA ', 50, 0, '2020-08-27 06:47:30', '2020-09-02 07:42:47'),
(9, 'Cryptocurrency', 50, 0, '2020-08-27 06:47:30', '2020-09-02 07:42:47'),
(10, 'Crypto Daily', 50, 0, '2020-08-27 06:47:30', '2020-09-02 07:42:47'),
(11, 'Chainlink - LINK', 50, 0, '2020-08-27 06:47:30', '2020-09-02 07:42:47'),
(12, 'Crypto Twitter', 50, 0, '2020-08-27 06:47:30', '2020-09-02 07:42:47'),
(18, 'Band Protocol - BAND', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(19, 'Bitcoin Diamond - BCD', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(20, 'Blockstack - STX', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(21, 'Basic Attention Token - BAT', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(22, 'Bitcoin Gold - BTG', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(23, 'Bytom - BTM', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(24, 'Binance Coin - BNB', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(25, 'Bitcoin SV - BSV', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(26, 'bZx Protocol - BZRX', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(27, 'Binance USD - BUSD', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(28, 'Bitshares - BTS', 50, 0, '2020-08-28 13:47:26', '2020-09-02 07:42:47'),
(29, 'Cosmos - ATOM', 50, 0, '2020-08-28 13:48:17', '2020-09-02 07:42:47'),
(30, 'Crypto.com Coin - CRO', 50, 0, '2020-08-28 13:48:17', '2020-09-02 07:42:47'),
(31, 'Defi (Decentralized Finance)', 50, 0, '2020-08-28 13:48:54', '2020-09-02 07:42:47'),
(32, 'Dogecoin - DOGE', 50, 0, '2020-08-28 13:48:54', '2020-09-02 07:42:47'),
(33, 'EOS - EOS', 50, 0, '2020-08-28 13:49:08', '2020-09-02 07:42:47'),
(34, 'Ethereum - ETH', 50, 0, '2020-08-28 13:49:08', '2020-09-02 07:42:47'),
(35, 'FTX Token - FTT', 50, 0, '2020-08-28 13:49:39', '2020-09-02 07:42:47'),
(36, 'Golem - GNT', 50, 0, '2020-08-28 13:49:39', '2020-09-02 07:42:47'),
(37, 'HODL', 50, 0, '2020-08-28 13:49:58', '2020-09-02 07:42:47'),
(38, 'Huobi Token - HT', 50, 0, '2020-08-28 13:49:58', '2020-09-02 07:42:47'),
(39, 'Iota - MIOTA', 50, 0, '2020-08-28 13:50:10', '2020-09-02 07:42:47'),
(40, 'Just - JST', 50, 0, '2020-08-28 13:50:10', '2020-09-02 07:42:47'),
(41, 'Kusama - KSM', 50, 0, '2020-08-28 13:50:26', '2020-09-02 07:42:47'),
(42, 'Leo Token - LEO', 50, 0, '2020-08-28 13:50:26', '2020-09-02 07:42:47'),
(43, 'Litecoin - LTC', 50, 0, '2020-08-28 13:50:47', '2020-09-02 07:42:47'),
(44, 'Meme', 50, 0, '2020-08-28 13:50:47', '2020-09-02 07:42:47'),
(45, 'Monero - XMR', 50, 0, '2020-08-28 13:50:59', '2020-09-02 07:42:47'),
(46, 'Moon', 50, 0, '2020-08-28 13:50:59', '2020-09-02 07:42:47'),
(47, 'Neo - NEO', 50, 0, '2020-08-28 13:51:16', '2020-09-02 07:42:47'),
(48, 'OKB - OKB', 50, 0, '2020-08-28 13:51:16', '2020-09-02 07:42:47'),
(49, 'Polkadot - DOT', 50, 0, '2020-08-28 13:51:40', '2020-09-02 07:42:47'),
(50, 'Qtum - QTUM', 50, 0, '2020-08-28 13:51:40', '2020-09-02 07:42:47'),
(51, 'REN - REN', 50, 0, '2020-08-28 13:51:52', '2020-09-02 07:42:47'),
(52, 'Rug Pull', 50, 0, '2020-08-28 13:51:52', '2020-09-02 07:42:47'),
(53, 'Satoshi Nakamoto', 50, 0, '2020-08-28 13:52:04', '2020-09-02 07:42:47'),
(54, 'Stellar - XLM', 50, 0, '2020-08-28 13:52:04', '2020-09-02 07:42:47'),
(55, 'Tether - USDT', 50, 0, '2020-08-28 13:52:16', '2020-09-02 07:42:47'),
(56, 'Tezos - XTZ', 50, 0, '2020-08-28 13:52:16', '2020-09-02 07:42:47'),
(57, 'Tron - TRX', 50, 0, '2020-08-28 13:52:27', '2020-09-02 07:42:47'),
(58, 'USD Coin - USDC', 50, 0, '2020-08-28 13:52:27', '2020-09-02 07:42:47'),
(59, 'VeChain - VET', 50, 0, '2020-08-28 13:52:39', '2020-09-02 07:42:47'),
(60, 'Waves - WAVES', 50, 0, '2020-08-28 13:52:39', '2020-09-02 07:42:47'),
(61, 'XRP (Formerly Ripple) - XRP', 50, 0, '2020-08-28 13:52:51', '2020-09-02 07:42:47'),
(62, 'Yam - YAM', 50, 0, '2020-08-28 13:52:51', '2020-09-02 07:42:47'),
(63, 'yearn.finance - YFI', 50, 0, '2020-08-28 13:53:06', '2020-09-02 07:42:47'),
(64, 'Yield Farming', 50, 0, '2020-08-28 13:53:06', '2020-09-02 07:42:47'),
(65, 'Zcash - ZEC', 50, 0, '2020-08-28 13:53:18', '2020-09-02 07:42:47'),
(66, 'nano', 50, 0, '2020-08-29 02:08:12', '2020-09-02 07:42:47'),
(68, 'newcoin', 50, 0, '2020-08-29 11:09:40', '2020-09-02 07:42:47'),
(69, 'Public Transit', 50, 0, '2020-08-29 11:18:36', '2020-09-02 07:42:47'),
(71, 'Algorand - ALGO', 50, 1, '2020-08-29 17:57:59', '2020-09-02 07:42:47'),
(72, 'Maker - MKR', 50, 0, '2020-08-29 18:18:51', '2020-09-02 07:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<p><strong>On May 15, 2020, JK Rowling tweeted a simple request:</strong> &quot;I don&#39;t understand Bitcoin. Please explain it to me.&quot; Over the next few days the crypto community offered hundreds of explanations. Twenty, thirty and even forty minute video explanations filled Youtube and lengthy Medium posts were written to explain something that&rsquo;s been around for over a decade. It made me realize one thing is certain: we desperately need to... Edit Crypto In the film industry, there&rsquo;s something known as the &ldquo;30-second elevator pitch&rdquo; for when an artist gets that brief moment to pitch an idea to someone who has the power to help get it made, and they only have a few seconds to convey an entire idea and why it&#39;s important. Edit Crypto is our 30-Second Elevator Pitch. It&#39;s a crowdsourced database designed to quickly and succinctly allow the community to define crypto projects and terms. Edit Crypto encourages the community to step back from the polarization and tribalism that now runs rampant on social media, and instead allow ideas to flow freely, where before they were ignored if the person wasn&rsquo;t in the right &ldquo;camp&rdquo; or had the &ldquo;correct&rdquo; emoji next to their name. So have at it. Ask the questions you&#39;ve always been too embarrassed to ask. Or help create the inspiring answer that makes people everywhere say &quot;Wow, that sounds amazing!&quot;</p>', '2020-09-02 06:58:30', '2020-09-03 08:32:19'),
(2, 'Donate', 'donate', 'On May 15, 2020, JK Rowling tweeted a simple request:\r\n\"I don\'t understand Bitcoin. Please explain it to me.\"\r\nOver the next few days the crypto community offered hundreds of explanations. Twenty, thirty and even forty minute video explanations filled Youtube and lengthy Medium posts were written to explain something that’s been around for over a decade. It made me realize one thing is certain: we desperately need to...\r\nEdit Crypto', '2020-09-03 08:00:51', '2020-09-03 08:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_id` int(5) NOT NULL,
  `vote` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `media_file`, `tags`, `keyword_id`, `vote`, `created_at`, `updated_at`) VALUES
(16, 49, 'What is bitcoin user for', 'Bitcoin uses peer-to-peer technology to operate with no central authority or banks; managing transactions and the issuing of bitcoins is carried out collectively by the network.&nbsp;<strong>Bitcoin is open-source; its design is public, nobody owns or controls Bitcoin and&nbsp;<a href=\"https://bitcoin.org/en/support-bitcoin\">everyone can take part</a></strong>. Through many of its unique properties, Bitcoin allows exciting uses that could not be covered by any previous payment system.<br />\r\n&nbsp;', '', 'search tags', 1, 0, '2020-08-20 17:31:17', '2020-09-03 07:15:28'),
(51, 51, 'What is Cryptocurrency and how does it work?', 'How&nbsp;<strong>do cryptocurrencies work</strong>?&nbsp;<strong>Cryptocurrencies</strong>&nbsp;use decentralised technology to let users make secure payments and store money without the need to use their name or go through a bank. They&nbsp;<strong>run</strong>&nbsp;on a distributed public ledger called blockchain, which is a record of all transactions updated and held by currency holders.', '', 'crypto', 3, 0, '2020-08-21 12:08:07', '2020-08-24 09:40:59'),
(52, 51, 'What is Crypto market?', 'Cryptocurrency&nbsp;<strong>markets</strong>&nbsp;are decentralised, which means they are not issued or backed by a central authority such as a government. Instead, they run across a network of computers. ... Unlike traditional currencies, cryptocurrencies exist only as a shared digital record of ownership, stored on a&nbsp;<strong>blockchain</strong>.', '', 'crypto', 4, 0, '2020-08-21 12:08:41', '2020-08-24 10:37:23'),
(53, 51, 'What is the main purpose of Cryptocurrency?', 'A&nbsp;<strong>cryptocurrency</strong>&nbsp;is a medium of exchange like normal currencies such as USD, but designed for the&nbsp;<strong>purpose</strong>&nbsp;of exchanging digital information.&nbsp;<strong>Cryptocurrency</strong>&nbsp;is defined by Investopedia.com as a decentralized &ldquo;digital or virtual currency that uses cryptography for security&rdquo; making it difficult to counterfeit.', '', 'crypto', 5, 0, '2020-08-21 12:09:09', '2020-09-02 09:37:31'),
(54, 51, 'Is crypto safe?', 'Investments are always risky, but some experts say&nbsp;<strong>cryptocurrency</strong>&nbsp;is one of the riskier investment choices out there, according to Consumer Reports. However, digital currencies are also some of the hottest commodities.', '', 'crypto', 5, 0, '2020-08-21 12:09:37', '2020-09-02 12:58:02'),
(56, 51, 'What is the disadvantage of Cryptocurrency?', 'One of the most significant&nbsp;<strong>disadvantages cryptocurrencies</strong>&nbsp;have is the constant fluctuation of the price. And this makes it quite difficult for the users (and merchants) to accept and use&nbsp;<strong>crypto</strong>. ... And, along comes the next issue of&nbsp;<strong>cryptocurrency</strong>&nbsp;‒ the lack of merchants accepting digital money.', '', 'crypto', 6, 0, '2020-08-21 12:11:36', '2020-08-21 12:11:36'),
(57, 51, 'Is Cryptocurrency a good investment?', '<strong>Investing</strong>&nbsp;in&nbsp;<strong>cryptocurrency</strong>&nbsp;could be a&nbsp;<strong>good investment</strong>, or it could not. ... With that in mind, the best advice is to be prepared to lose every penny you&nbsp;<strong>invest</strong>&nbsp;in&nbsp;<strong>cryptocurrency</strong>, it probably won&#39;t happen, but it could, an<img alt=\"Council Post: The Top 10 Risks Of Bitcoin Investing (And How To ...\" src=\"https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F908633080%2F960x0.jpg%3Ffit%3Dscale\" />d you need to go into the&nbsp;<strong>cryptocurrency</strong>&nbsp;with some stored up resilience.', '', 'crypto', 7, 0, '2020-08-21 12:12:23', '2020-08-25 11:12:31'),
(84, 52, 'how dollar works?', '<br />\r\nIn the U.S. that is the&nbsp;<strong>dollar</strong>. Once there is a unit of account, people can indeed exchange on credit without the use of physical money. Currency is the physical paper notes and coins in circulation. By accepting the currency, a merchant can sell his or her goods and have a convenient way to pay their trading partners.<br />\r\n&nbsp;', '', 'dollar,USA', 8, 0, '2020-08-22 15:38:51', '2020-08-24 10:19:12'),
(105, 55, 'Algorand', 'What is Algorand?', '', 'Algorand', 71, 0, '2020-08-29 18:04:18', '2020-09-03 17:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `unique_id`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(45, 'k7sourabh', 'k999@gmail.com', NULL, '$2y$10$31WjXuRSt12J31Wpc07t0uptfEUkLuWDf6EwLhgJITjzVeaRsgoE6', 1, '2ff11351-c545-4400-8ec1-792f3a46a537', 1, NULL, NULL, '2020-08-20 16:58:38', '2020-08-20 16:58:38', NULL),
(46, 'john', 'john@gmail.com', NULL, '$2y$10$ihmBNOsclCwbhma1if/.iuunP2Hg07TS5daQ.ep9Kdl0dDujqlmpG', 1, '90a76cbb-0ce0-4f95-a3ca-d7405666a13c', 1, NULL, NULL, '2020-08-20 17:09:06', '2020-08-20 17:09:06', NULL),
(47, 'bhushan', 'bhushannuance@gmail.com', NULL, '$2y$10$QC7cgkpmOE5I7oka.S0IHuSuUuVldMr1b3mLafYiXVb7MAsEfK58q', 1, '96046c7b-6bb7-4d4b-877f-5488f1dba94c', 1, NULL, NULL, '2020-08-20 17:18:38', '2020-08-20 17:18:38', NULL),
(48, 'fsdfsd', 'sds@gmail.com', NULL, '$2y$10$Ik4O8wpot.LLDOuL780k7uTCjWXULDQK03wz..91hvV5r9rVaWWSO', 1, 'd411cea0-5ace-4165-99af-53fab14195d5', 1, NULL, NULL, '2020-08-20 17:22:27', '2020-08-20 17:22:27', NULL),
(49, 'test', 'test@bogusemail.com', NULL, '$2y$10$m8RpIOqKEo/8HqMbdy1pxe5ht5Omz/eawd9uFQ0wuVG7fV5lJ.6GK', 1, 'bbc17a3a-13a1-4cf8-882c-7cba09dc9344', 1, NULL, NULL, '2020-08-20 17:28:12', '2020-08-20 17:28:12', NULL),
(50, 'admin', 'admin@gmail.com', NULL, '$2y$10$qSMyJhPmlWrRvpBx.X05m.tiX.hN3v0/OvF.znIfPH09iJkG.BE.e', 1, '7e3f13c8-5f43-4bb3-92b8-d8adb98f2dcd', 1, NULL, NULL, '2020-08-21 10:40:48', '2020-08-21 10:40:48', NULL),
(51, 'johndue', 'johndue@gmail.com', NULL, '$2y$10$7e/4Ce6KVsQIWA2u4QiOruNd4dvzISn.B/ungv4Yom/UFJdBAhSdC', 1, 'ae56ba2b-32d4-4d65-a60a-bce19dbb85da', 1, NULL, NULL, '2020-08-21 11:56:33', '2020-08-21 11:56:33', NULL),
(52, 'sadh', 'alphatest@gmail.com', NULL, '$2y$10$UfYmz2fmhI2W6nIgkJHkqeKLOiGMvrWiSGUA1p6x5scZVIb0UZWqS', 1, '1890671d-84b8-4035-b307-269e1af21f18', 1, NULL, NULL, '2020-08-22 15:37:20', '2020-08-22 15:37:20', NULL),
(53, 'fdsfds', 'daa@gmail.com', NULL, '$2y$10$3x1oneKYSDAhxZYBUY14l.ePYlk9f6uI2yLuulH9Lke1M7ee6m2ci', 1, '6753c54b-1fc3-4edc-8040-c4b60d343bc8', 1, NULL, NULL, '2020-08-24 10:39:49', '2020-08-24 10:39:49', NULL),
(54, 'Waseem Raja', 'waseem.raja1689@gmail.com', NULL, '$2y$10$m/TuJAQQ.V01yakQ7LRbXuzvJfdOSk2GdzRW3BqxgL7YEh7pfnPGK', 1, 'da959816-b767-4635-87e8-95b5b1cb19a3', 1, NULL, NULL, '2020-08-25 04:06:55', '2020-08-25 04:06:55', NULL),
(55, 'Edit Crypto Test', 'editcryptotest@gmail.com', NULL, '$2y$10$oLROW8Yhted4mBRcZ5NRyOjvE5mxs.kqq9A46cEyaR/vk9QaoLJgK', 1, '1d17d27b-a3af-413f-b1ea-9501d3ed1289', 1, NULL, NULL, '2020-08-26 01:16:00', '2020-08-26 01:16:00', NULL),
(59, 'johntest123123', 'johntest123123@gmail.com', 'ECRY1599052424johntest123123', '$2y$10$Uk8r3Wx0c8/mD4kY.0RKYeWmB4.Wc.Ar848CxxFUumM5wxaVmSvBS', 1, 'c9f747d7-6a36-4221-8598-1f74119f55fb', 1, NULL, NULL, '2020-09-02 13:13:44', '2020-09-02 13:13:44', NULL),
(60, 'editcrypto@protonmail.ch', 'editcrypto@protonmail.ch', 'ECRY1599240182editcrypto@protonmail.ch', '$2y$10$dKyu.wlEAcmQ/1.m4HV1Zu4WOHko5eC2VxaGhELtpqXSvM6SlJGWq', 1, '9e18c9b8-16d3-4cd7-80b9-9624c42a58e4', 1, NULL, NULL, '2020-09-04 21:23:02', '2020-09-04 21:23:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 1),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(59, 2),
(60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uservote_onforum`
--

CREATE TABLE `uservote_onforum` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `forum_id` int(10) NOT NULL DEFAULT 0,
  `voting_type` int(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uservoting_oncomment`
--

CREATE TABLE `uservoting_oncomment` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL DEFAULT 0,
  `comment_id` int(10) NOT NULL,
  `voting_type` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uservoting_onpost`
--

CREATE TABLE `uservoting_onpost` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `voting_type` int(5) NOT NULL DEFAULT 0 COMMENT '1=plus,2=subtract',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_onpost`
--
ALTER TABLE `comment_onpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums_tb`
--
ALTER TABLE `forums_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords_tb`
--
ALTER TABLE `keywords_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- Indexes for table `uservote_onforum`
--
ALTER TABLE `uservote_onforum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservoting_oncomment`
--
ALTER TABLE `uservoting_oncomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservoting_onpost`
--
ALTER TABLE `uservoting_onpost`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_onpost`
--
ALTER TABLE `comment_onpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `forums_tb`
--
ALTER TABLE `forums_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keywords_tb`
--
ALTER TABLE `keywords_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `uservote_onforum`
--
ALTER TABLE `uservote_onforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uservoting_oncomment`
--
ALTER TABLE `uservoting_oncomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uservoting_onpost`
--
ALTER TABLE `uservoting_onpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
