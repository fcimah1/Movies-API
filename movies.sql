-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 07:22 AM
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
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_body` text NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_body`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolore quia et quidem ipsam natus repellendus rem.', 14, '2024-05-07 15:57:35', '2024-05-07 15:57:35'),
(2, 'Saepe expedita fuga iusto voluptatem amet eaque ad animi.', 15, '2024-05-07 15:57:35', '2024-05-07 15:57:35'),
(3, 'Id quis minima doloribus reiciendis rerum consequatur id est.', 16, '2024-05-07 15:57:35', '2024-05-07 15:57:35'),
(4, 'Fuga blanditiis aut consequuntur eum asperiores consequatur molestias earum.', 17, '2024-05-07 15:57:35', '2024-05-07 15:57:35'),
(5, 'Eveniet voluptas qui et aliquam a ut sit incidunt.', 18, '2024-05-07 15:57:35', '2024-05-07 15:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dolorem quia aut.', 'Facilis consequatur sapiente enim non nam voluptas inventore et dolores nesciunt quia voluptatem.', '2024-05-07 15:32:38', '2024-05-07 15:32:38'),
(2, 'Blanditiis voluptatibus.', 'Facilis qui doloribus vel harum repellat modi doloribus quo quae porro dignissimos incidunt.', '2024-05-07 15:32:38', '2024-05-07 15:32:38'),
(3, 'Libero libero possimus nemo.', 'Modi id quam quisquam eligendi non explicabo assumenda quos voluptatum enim tempora eum.', '2024-05-07 15:32:38', '2024-05-07 15:32:38'),
(4, 'Nostrum hic omnis voluptatem.', 'Temporibus magni voluptate doloribus officiis nihil nam doloribus inventore sit quis minus voluptatum incidunt.', '2024-05-07 15:32:39', '2024-05-07 15:32:39'),
(5, 'Aut sint consequatur dolorem.', 'Quia culpa officia fuga molestias fugiat aut voluptatem iure.', '2024-05-07 15:32:39', '2024-05-07 15:32:39'),
(6, 'Zachary Ziemann', 'Qui sunt odit saepe occaecati voluptates et.', '2024-05-07 15:33:59', '2024-05-07 15:33:59'),
(7, 'Dedrick Heaney', 'Dolorem dicta consequuntur atque ea repellat voluptatibus quod vel quo.', '2024-05-07 15:33:59', '2024-05-07 15:33:59'),
(8, 'Beth Breitenberg', 'Voluptate molestias eius qui ut facere iste est officia nemo at enim aut.', '2024-05-07 15:33:59', '2024-05-07 15:33:59'),
(9, 'Miss Hulda Kuhic', 'Rerum modi similique enim minima ut et totam nesciunt similique et.', '2024-05-07 15:33:59', '2024-05-07 15:33:59'),
(10, 'Prof. Viva Russel', 'Alias dolorem veritatis et id molestias atque officia at aspernatur voluptatem eligendi.', '2024-05-07 15:33:59', '2024-05-07 15:33:59'),
(11, 'Schuyler Jacobson', 'Voluptate voluptate nam iusto ex enim corrupti quam fugiat quia est pariatur dolor enim ea.', '2024-05-07 15:37:39', '2024-05-07 15:37:39'),
(12, 'Ollie Durgan', 'Laudantium neque voluptatem et deleniti beatae labore est qui nesciunt.', '2024-05-07 15:37:40', '2024-05-07 15:37:40'),
(13, 'Odessa Schuppe', 'Nemo consequatur omnis vel sed eum enim perferendis corporis.', '2024-05-07 15:37:42', '2024-05-07 15:37:42'),
(14, 'Miss Otha Carroll', 'Dolorum dolorem consequatur doloribus tempora est vero eius nesciunt quas vel.', '2024-05-07 15:37:44', '2024-05-07 15:37:44'),
(15, 'Amina Jerde', 'Aut quis doloribus adipisci et nihil eum.', '2024-05-07 15:37:46', '2024-05-07 15:37:46'),
(16, 'Henri Bayer', 'Asperiores nihil aspernatur occaecati quod facilis placeat at non maiores.', '2024-05-07 15:41:30', '2024-05-07 15:41:30'),
(17, 'Deion Kutch', 'Quis error debitis tempore possimus quidem et fugit quia dolor aperiam.', '2024-05-07 15:41:34', '2024-05-07 15:41:34'),
(18, 'Mr. Frederik Marks', 'Qui quis aliquam maxime necessitatibus recusandae culpa quis nobis error blanditiis sapiente.', '2024-05-07 15:41:38', '2024-05-07 15:41:38'),
(19, 'Jon Hudson', 'Quam sequi aut quia et nihil nisi et.', '2024-05-07 15:41:42', '2024-05-07 15:41:42'),
(20, 'Amparo Jones', 'Excepturi enim aut iusto atque qui aspernatur blanditiis labore quis.', '2024-05-07 15:41:48', '2024-05-07 15:41:48'),
(21, 'Daryl Runolfsdottir', 'Qui praesentium minima ut deleniti minima eaque architecto ipsam quaerat.', '2024-05-07 15:42:19', '2024-05-07 15:42:19'),
(22, 'Mikayla Hauck', 'Blanditiis perspiciatis iste voluptas soluta non ut debitis.', '2024-05-07 15:42:22', '2024-05-07 15:42:22'),
(23, 'Cordelia Hermann', 'Odit quo ducimus ea consequuntur dolorem et labore mollitia nisi excepturi voluptatem.', '2024-05-07 15:42:24', '2024-05-07 15:42:24'),
(24, 'Kaelyn Welch', 'Nobis molestiae et nihil omnis rerum ab non repudiandae occaecati dolorem.', '2024-05-07 15:42:28', '2024-05-07 15:42:28'),
(25, 'Percival Dooley', 'Ut omnis maxime aut in voluptatem aut sunt voluptatum voluptates eos.', '2024-05-07 15:42:30', '2024-05-07 15:42:30'),
(26, 'Cleve Jones DDS', 'Tenetur perspiciatis unde laudantium neque nihil officiis et.', '2024-05-07 15:44:23', '2024-05-07 15:44:23'),
(27, 'Fatima O\'Hara', 'Sunt quos ratione enim sit delectus ullam.', '2024-05-07 15:44:27', '2024-05-07 15:44:27'),
(28, 'Fred Kozey', 'Accusamus suscipit explicabo aperiam accusantium consequatur est ut in iure soluta ipsum ducimus.', '2024-05-07 15:44:30', '2024-05-07 15:44:30'),
(29, 'Deangelo Kunde', 'Qui facere sed qui aspernatur dignissimos cupiditate autem.', '2024-05-07 15:44:33', '2024-05-07 15:44:33'),
(30, 'Francis Flatley', 'Delectus voluptatem distinctio ut error consequatur rerum recusandae repellendus.', '2024-05-07 15:44:36', '2024-05-07 15:44:36'),
(31, 'Mossie Pfannerstill', 'Aliquid perferendis et aliquid nihil repudiandae quam magnam excepturi ut totam.', '2024-05-07 15:46:37', '2024-05-07 15:46:37'),
(32, 'Delia Schowalter', 'Sit quo commodi vitae voluptatem hic id in et.', '2024-05-07 15:46:39', '2024-05-07 15:46:39'),
(33, 'Felicity Romaguera', 'Consequuntur asperiores est laborum officia quas tenetur molestiae numquam laboriosam saepe dolor officia.', '2024-05-07 15:46:41', '2024-05-07 15:46:41'),
(34, 'Marion Schultz DDS', 'Aut sed temporibus sint quod aspernatur aspernatur excepturi fugit dolores consequatur iste.', '2024-05-07 15:46:43', '2024-05-07 15:46:43'),
(35, 'Kristoffer Wisoky', 'Sit sit ut modi provident voluptatem maiores veritatis.', '2024-05-07 15:46:45', '2024-05-07 15:46:45'),
(36, 'Audie Hagenes', 'Non dolor autem ratione vero dolorum ut est.', '2024-05-07 15:47:39', '2024-05-07 15:47:39'),
(37, 'Mia Rohan', 'Magnam unde autem quo corporis quas ut aut iusto temporibus et.', '2024-05-07 15:47:39', '2024-05-07 15:47:39'),
(38, 'Kailee Hammes', 'Quaerat odio officia iusto voluptas non aut placeat aut qui rerum neque ullam.', '2024-05-07 15:47:39', '2024-05-07 15:47:39'),
(39, 'Prof. Drake Williamson', 'Pariatur saepe sapiente autem ex necessitatibus perspiciatis quam voluptatem autem officiis quaerat.', '2024-05-07 15:47:39', '2024-05-07 15:47:39'),
(40, 'Kimberly Metz', 'Doloremque a modi delectus rerum expedita aperiam rem quo magni.', '2024-05-07 15:47:39', '2024-05-07 15:47:39'),
(41, 'Prof. Gaetano Hamill', 'Minus sunt illum animi sed officia et aliquam.', '2024-05-07 15:48:27', '2024-05-07 15:48:27'),
(42, 'Dr. Winfield Schinner', 'Magnam voluptate modi labore sunt dicta est distinctio possimus facere.', '2024-05-07 15:48:27', '2024-05-07 15:48:27'),
(43, 'Lindsay Kuhlman', 'Magnam autem consequatur non esse possimus asperiores incidunt alias minima accusantium dolor impedit.', '2024-05-07 15:48:27', '2024-05-07 15:48:27'),
(44, 'Astrid Kohler', 'Ad ut nihil est nam tempore non quisquam et quis possimus.', '2024-05-07 15:48:27', '2024-05-07 15:48:27'),
(45, 'Dr. Sonya Will', 'Nemo unde et quos laborum possimus inventore quis commodi.', '2024-05-07 15:48:27', '2024-05-07 15:48:27'),
(46, 'Isaac Wunsch', 'Accusamus est voluptas laboriosam cupiditate suscipit sunt quisquam.', '2024-05-07 15:50:48', '2024-05-07 15:50:48'),
(47, 'Dr. Bertha Wisozk MD', 'Atque fuga reprehenderit qui laborum fugiat facere et ut vitae minima.', '2024-05-07 15:50:48', '2024-05-07 15:50:48'),
(48, 'Deanna Waters Sr.', 'Facilis molestiae quam aliquid nesciunt amet officiis quo quidem quia nisi placeat qui.', '2024-05-07 15:50:48', '2024-05-07 15:50:48'),
(49, 'Graham Gleason', 'Autem reiciendis aut voluptates eum eos eveniet incidunt cupiditate et non quo.', '2024-05-07 15:50:48', '2024-05-07 15:50:48'),
(50, 'Kaylie Wiegand', 'Voluptatem aut dolor itaque impedit id repudiandae aut amet nobis quis dolorem accusamus atque.', '2024-05-07 15:50:48', '2024-05-07 15:50:48'),
(51, 'Prof. Stevie Rohan', 'Est cum dignissimos accusantium accusantium exercitationem ut qui ut natus.', '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(52, 'Mr. Garth Hills', 'Qui illum earum incidunt a culpa eaque illo assumenda libero velit.', '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(53, 'Jeromy Cartwright', 'Aut ut quod quam animi quam eum numquam.', '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(54, 'Miss Velda Barrows', 'Aut veniam aut harum quae commodi eveniet est.', '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(55, 'Prof. Enrique Erdman Sr.', 'Velit autem temporibus sed et tempore fugiat qui aperiam sapiente sunt.', '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(56, 'Ms. Kellie Schimmel', 'Repellendus aperiam molestiae eos consequatur eveniet molestiae mollitia vitae.', '2024-05-07 15:52:43', '2024-05-07 15:52:43'),
(57, 'Mr. Mohammad Bartoletti', 'Sapiente inventore non quo quasi nostrum possimus pariatur dolore quibusdam autem laudantium asperiores fugit.', '2024-05-07 15:52:43', '2024-05-07 15:52:43'),
(58, 'Carmel Goldner', 'Molestiae sed autem aut autem ipsam repudiandae ducimus molestiae at maxime perspiciatis.', '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(59, 'Maye Feest', 'Dignissimos quidem rerum voluptas quam ut doloremque non ea ut.', '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(60, 'Dr. Ross Koepp V', 'Enim adipisci quos minima sunt quia provident aliquam qui unde sit quis sed et.', '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(61, 'Prof. Leilani Toy', 'Eveniet non sit voluptatem voluptatem aliquam dolorem et quo est cumque.', '2024-05-07 15:56:41', '2024-05-07 15:56:41'),
(62, 'Geraldine Rohan', 'Iste consequuntur corporis et maxime fugit numquam pariatur aut nulla aspernatur.', '2024-05-07 15:56:43', '2024-05-07 15:56:43'),
(63, 'Lonnie Purdy DDS', 'Dolorem tenetur recusandae quia repellat aut recusandae aut illum est.', '2024-05-07 15:56:45', '2024-05-07 15:56:45'),
(64, 'Dr. Eladio Kuphal', 'Harum cupiditate voluptatem nam et omnis sapiente voluptates consequatur ipsum enim.', '2024-05-07 15:56:46', '2024-05-07 15:56:46'),
(65, 'Carlie Jacobs', 'Nemo aliquam et atque eum blanditiis sit est eos odit.', '2024-05-07 15:56:47', '2024-05-07 15:56:47'),
(66, 'Hope Witting PhD', 'Ut laborum a debitis explicabo nobis nobis est perferendis tempora ratione a et.', '2024-05-07 15:57:30', '2024-05-07 15:57:30'),
(67, 'Prof. Evalyn Terry Jr.', 'Excepturi velit qui voluptatem voluptate dolorem ut explicabo laudantium laboriosam tempora quis molestiae.', '2024-05-07 15:57:31', '2024-05-07 15:57:31'),
(68, 'Christopher Wintheiser', 'Voluptates dolor qui magni laboriosam nam dolor quis quibusdam sed facilis et.', '2024-05-07 15:57:32', '2024-05-07 15:57:32'),
(69, 'Miss Cynthia Thompson Jr.', 'Vero occaecati veniam dolore doloribus dolores esse repudiandae dolores.', '2024-05-07 15:57:34', '2024-05-07 15:57:34'),
(70, 'Mollie Spinka', 'In est ea voluptatem molestias omnis dolor et ut quia velit eveniet velit incidunt.', '2024-05-07 15:57:35', '2024-05-07 15:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_07_165132_create_genre_table', 1),
(6, '2024_05_07_165205_create_movie_table', 2),
(7, '2024_05_07_165521_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `duration` decimal(8,2) NOT NULL,
  `production_date` date NOT NULL,
  `rate` int(255) NOT NULL,
  `image` text NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `description`, `director`, `duration`, `production_date`, `rate`, `image`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 'Lelia Farrell', 'Repellendus quae distinctio quaerat repellat sit labore et ullam.', 'Vilma Grady', 29.48, '1989-03-14', 4, '0', 1, '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(3, 'Alden Herzog', 'Sequi tempora dignissimos nulla qui non porro.', 'Eulah Little II', 5.90, '1974-02-25', 5, '0', 53, '2024-05-07 15:52:21', '2024-05-07 15:52:21'),
(4, 'Prof. Jaydon McClure', 'Qui et aliquid et aut et incidunt aperiam.', 'Amina Schinner', 2.00, '2003-04-23', 1, '0', 56, '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(5, 'Meda Mohr IV', 'Ea voluptatem nulla cum quae rerum amet veritatis.', 'Eliza Fritsch DDS', 2.00, '1974-10-11', 2, '0', 57, '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(6, 'jack huffg', 'hiuyfy', 'mohamed', 100.00, '1990-01-01', 3, 'hhhhhhhhhhhhhhhhhhh', 8, '2024-05-07 15:52:44', '2024-05-12 14:44:21'),
(7, 'Mr. Kendrick Gleichner', 'Laboriosam esse nostrum magnam accusamus odio in debitis ut dolor voluptatem necessitatibus ab.', 'Mr. Leonardo Cremin IV', 4.00, '1989-12-11', 3, '0', 59, '2024-05-07 15:52:44', '2024-05-07 15:52:44'),
(9, 'Bonita Wiza V', 'Eveniet iste aspernatur dolorum et tempore excepturi perspiciatis ipsum voluptas voluptatem.', 'Mr. Deven Ullrich', 4.00, '1993-04-01', 1, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\65ac2f06e626f8e596b0dcf90518f20b.png', 61, '2024-05-07 15:56:47', '2024-05-07 15:56:47'),
(10, 'Mr. Solon Quigley', 'Recusandae sint cupiditate doloremque eos accusamus rem occaecati.', 'Miss Aliza Murray DDS', 4.00, '1990-04-10', 8, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\083b538f119a8e756d7d1415d045ecca.png', 62, '2024-05-07 15:56:47', '2024-05-07 15:56:47'),
(11, 'Delores Nitzsche', 'Alias consequuntur suscipit ut quidem consequatur natus est et voluptas.', 'Geoffrey Halvorson MD', 3.00, '2023-11-25', 8, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\a1f1c7eaef68cea9d637ac64387f8c45.png', 63, '2024-05-07 15:56:48', '2024-05-07 15:56:48'),
(12, 'Isac Toy', 'Repudiandae eum maiores quod enim numquam rerum illum.', 'Bertrand Terry', 4.00, '1974-01-08', 2, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\75fdb53bcae7cb6873349c9315f1fca7.png', 64, '2024-05-07 15:56:48', '2024-05-07 15:56:48'),
(13, 'Hobart Jast I', 'Non tempore tenetur at eius consequuntur iure odit quia quas culpa placeat voluptas aut.', 'Anastasia Breitenberg', 0.00, '1996-09-23', 6, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\afd646705e68f6a15fc7ecfabff97b30.png', 65, '2024-05-07 15:56:48', '2024-05-07 15:56:48'),
(14, 'Orin Kovacek', 'Inventore ut fugiat vitae et porro voluptas quod praesentium at est.', 'Carlie Mann', 4.00, '2024-01-11', 3, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\1b1f8e6562e9823ab00b204a3e285ddb.png', 66, '2024-05-07 15:57:30', '2024-05-07 15:57:30'),
(15, 'Neha Heller', 'Earum veniam et ea vitae quo amet.', 'Dejah Jakubowski V', 5.00, '1989-02-22', 9, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\c8eaff60ebe8cc410fb7151af5986591.png', 67, '2024-05-07 15:57:31', '2024-05-07 15:57:31'),
(16, 'Myrtle Schaefer', 'Magnam aperiam id velit dolorem consequatur quia esse qui porro quaerat.', 'Kenton Rau', 3.00, '1985-05-10', 5, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\8c94d71489edf241d64d1584f1b7e2d6.png', 68, '2024-05-07 15:57:32', '2024-05-07 15:57:32'),
(17, 'Dr. Alfredo Klein', 'Repellendus explicabo autem ut fuga impedit cum quibusdam laborum quos qui ea.', 'Dr. Eliza McKenzie', 4.00, '2009-09-17', 1, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\0733b8ee14af18d03da377759f5a25d9.png', 69, '2024-05-07 15:57:34', '2024-05-07 15:57:34'),
(18, 'Twila Towne', 'Quis sit ut qui officia ipsa qui iure vel iste cumque explicabo quasi et.', 'Dr. Jaeden Kozey', 4.00, '2009-07-11', 0, 'C:\\Users\\hisham\\AppData\\Local\\Temp\\af982d6f533982c1250b6089d37e3627.png', 70, '2024-05-07 15:57:35', '2024-05-07 15:57:35'),
(19, 'jack', 'ddddddddddddddddddddddddddd', 'omar', 222.00, '1999-05-05', 4, 'eeeeeeeeeeeeee', 1, '2024-05-12 03:42:17', '2024-05-12 03:42:17'),
(20, 'jack shan', 'bla bla bla', 'mohamed', 100.00, '1990-01-01', 2, 'ssssssss', 5, '2024-05-12 14:29:49', '2024-05-12 14:29:49'),
(21, 'shan', 'hhhhhhhhhhhhh', 'mohamed', 100.00, '1990-01-01', 2, 'jjjjjjjjjjjjjjj', 5, '2024-05-12 14:30:59', '2024-05-12 14:30:59'),
(22, 'shan', 'hhhhhhhhhhhhh', 'mohamed', 100.00, '1990-01-01', 2, 'jjjjjjjjjjjjjjj', 5, '2024-05-12 14:44:00', '2024-05-12 14:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Terrence Willms MD', 'tillman.kailee@example.com', '2024-05-12 16:29:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CM8I5YpYvL', '2024-05-12 16:29:42', '2024-05-12 16:29:42'),
(2, 'Mohamed', 'fci.mah@gmail.com', '2024-05-12 16:29:42', '$2y$10$YFH5jJDeEe6.lp6ZLgaaV.UdhemsYd0x1XxGZKrrBaYqUqtPtIUf.', 'rn97VCor8d', '2024-05-12 16:29:42', '2024-05-13 03:07:43'),
(4, 'Carol DuBuque', 'lynch.rodrick@example.net', '2024-05-12 16:29:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GUuK4OGpx4', '2024-05-12 16:29:42', '2024-05-12 16:29:42'),
(5, 'Garrett Schinner', 'dickinson.ed@example.com', '2024-05-12 16:29:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OTHlCqEQtI', '2024-05-12 16:29:42', '2024-05-12 16:29:42'),
(6, 'Mohamed Ahmed', 'eng.mohamedahmed2741991@gmail.com', NULL, '$2y$10$zY4l178teTrzOv6h2lhUa.QLEUkk2U/9W/XlRx1YvNf7FS3HB.hBW', NULL, '2024-05-13 02:56:37', '2024-05-13 02:56:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
