-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2021 at 06:30 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clouzon`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_18_011059_create_products_table', 1),
(5, '2021_02_18_140806_create_cart_table', 1),
(6, '2021_02_18_140823_create_cart_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int UNSIGNED NOT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `quantity`, `weight`, `price`, `sale_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'accusamus eum molestias', 'accusamus-eum-molestias', 'Et quaerat quia quo vero quas aut sit. Eaque neque animi earum non. Et ut cupiditate officia consequatur pariatur. At et eum tempora sit.', 369, '2.62', '1.68', '0.64', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(2, 'sed aspernatur expedita', 'sed-aspernatur-expedita', 'In veritatis aut cupiditate aliquam quis nobis et nemo. Et voluptas praesentium esse ut ab repellat. Repellat nesciunt qui quasi dolorem reiciendis. Vel enim non non fuga libero.', 362, '1.97', '4.28', '4.11', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(3, 'odio autem eaque', 'odio-autem-eaque', 'Non itaque itaque tenetur ea. Assumenda rerum sapiente aut laborum suscipit doloribus nobis.', 718, '5.30', '1.95', '0.60', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(4, 'facilis aut inventore', 'facilis-aut-inventore', 'Quidem et autem veritatis dolores assumenda omnis qui. Eligendi eveniet nobis ut in eaque animi et. Est temporibus qui enim sed cumque quasi.', 650, '8.52', '5.68', '1.42', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(5, 'animi sit et', 'animi-sit-et', 'Quod assumenda quo iste libero et saepe a ad. Culpa aspernatur aliquam quo consectetur neque est officia. Eaque veritatis aspernatur cum fugit vel pariatur est.', 285, '4.36', '4.46', '1.87', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(6, 'voluptatibus', 'voluptatibus', 'Et amet voluptates necessitatibus sint. Nihil dolorum ducimus non totam. Non qui nam saepe provident quos.', 999, '7.26', '6.51', '4.49', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(7, 'maiores unde voluptatem', 'maiores-unde-voluptatem', 'Autem fugiat quam eaque. Qui architecto aut eius nesciunt praesentium nam beatae blanditiis. Soluta aperiam est et hic illum non molestiae.', 754, '9.16', '6.83', '6.76', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(8, 'expedita alias', 'expedita-alias', 'Delectus laboriosam itaque ad dolorem consequatur eos repellat. Qui harum ut laboriosam quia earum accusamus. Ipsa quae eos dolor delectus. Fugiat aspernatur vel aut rem.', 211, '2.25', '4.90', '4.51', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(9, 'est id cumque', 'est-id-cumque', 'Quae quis ipsam numquam provident. Ut ea explicabo qui sunt accusamus. Maiores ducimus est ut non voluptatem. Cumque deleniti praesentium expedita eum ipsam doloribus.', 196, '9.56', '0.87', '0.13', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(10, 'sit vero', 'sit-vero', 'Et similique asperiores expedita eos ut aut. Sequi maxime non error ut. Voluptatibus vero nemo voluptatem quia et modi odit.', 957, '2.16', '8.93', '4.55', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(11, 'consequatur commodi', 'consequatur-commodi', 'Illum at consequatur ad cupiditate sit. Veritatis explicabo amet laudantium aspernatur quam labore. Ad rem quod omnis cumque quo quasi.', 48, '5.67', '9.77', '2.34', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(12, 'nihil', 'nihil', 'Velit qui aliquam recusandae quas. Aut placeat voluptatem unde sed enim architecto voluptatem. Id tenetur nemo commodi qui.', 349, '5.47', '2.35', '0.61', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(13, 'enim', 'enim', 'Sed debitis voluptas incidunt esse quis. Ad qui quis necessitatibus aut praesentium itaque et. Dolor sit dolor quaerat eveniet sunt. Sit occaecati aliquam tenetur repudiandae ut.', 858, '4.07', '3.51', '1.05', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(14, 'ut voluptas illo', 'ut-voluptas-illo', 'Sint soluta temporibus harum blanditiis quia dolores nobis. Consequuntur quia voluptatem quia possimus voluptatem dolorem. Veniam officiis error ab ullam saepe qui.', 486, '5.99', '8.47', '1.19', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(15, 'expedita eius nisi', 'expedita-eius-nisi', 'Minima in voluptas a veniam. Mollitia dolorem maxime sed voluptatem. Consequatur libero aliquam nihil ut rem.', 960, '7.07', '8.33', '4.33', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(16, 'eos assumenda est', 'eos-assumenda-est', 'Accusamus dignissimos ut omnis ex optio. Esse aspernatur ea quo quas. Necessitatibus quasi ut qui adipisci. Aut dignissimos eum eum maxime cum quos.', 6, '3.74', '3.92', '2.35', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(17, 'et ex assumenda', 'et-ex-assumenda', 'Blanditiis quod quam dolorem sint quia numquam. Et odio numquam voluptatem quo omnis perspiciatis. Itaque sunt assumenda voluptatem minima voluptatem reprehenderit inventore.', 542, '4.75', '9.40', '5.17', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(18, 'omnis', 'omnis', 'Consequatur et numquam sed qui. Eos corrupti cum in nihil vel. Nihil et consequatur perferendis qui. Labore eum et cumque aut qui reprehenderit earum.', 762, '3.82', '8.82', '7.06', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(19, 'natus', 'natus', 'Ullam voluptatem quas eos eum quis. Corrupti optio debitis omnis impedit labore quo corporis facere. Cumque provident aspernatur vero. Vel et aspernatur necessitatibus.', 68, '4.11', '4.30', '3.14', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(20, 'ratione nihil', 'ratione-nihil', 'Unde placeat enim vitae dignissimos. Veniam ab molestiae nobis fuga iusto maiores sint. Voluptas reprehenderit voluptas consectetur voluptas dolore.', 463, '1.18', '4.57', '3.93', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(21, 'quo quia', 'quo-quia', 'Eos ratione nihil praesentium molestiae laborum. Facere quaerat minima illo eos consequatur aut rerum. Adipisci id neque nihil odio.', 955, '1.36', '2.95', '1.95', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(22, 'sint', 'sint', 'Rerum officia molestiae autem beatae aut laboriosam. Tenetur consequuntur totam fugiat consequuntur expedita. Eos eos corporis earum fugit expedita. Fugit eum earum quia consequatur.', 840, '4.97', '2.97', '2.02', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(23, 'amet eveniet', 'amet-eveniet', 'Quia et repellat omnis consequatur mollitia. Non deleniti animi est beatae recusandae aperiam. Qui ex blanditiis consequatur fugiat rerum non aut.', 136, '0.98', '2.50', '1.95', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(24, 'accusamus voluptas consequatur', 'accusamus-voluptas-consequatur', 'Autem cupiditate modi odit. Voluptas et distinctio illo quos. Error iste et quia repellendus dolor qui beatae quia. Quaerat eos quam commodi autem aut amet voluptate velit.', 166, '5.21', '5.08', '3.15', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(25, 'nihil', 'nihil', 'Molestiae maiores deserunt veritatis enim voluptates iure. Adipisci repudiandae laudantium quibusdam omnis hic magnam voluptate. Vitae ut quia eaque fugiat inventore ut enim sed.', 25, '2.35', '0.30', '0.20', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(26, 'voluptas vero quo', 'voluptas-vero-quo', 'Facilis inventore consequatur sit quo et. Iste enim alias fuga et sed illo sint. Dolorem porro in repudiandae mollitia est sunt quos. Autem voluptas itaque officiis adipisci et corrupti quod aut.', 7, '1.10', '5.84', '1.81', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(27, 'explicabo eligendi', 'explicabo-eligendi', 'Rerum tenetur sed laudantium cumque. A quod ea facere dolor. Maiores consectetur ut ex optio incidunt iusto. Perspiciatis aut velit libero debitis earum porro sed vel. Fugiat optio omnis quia et et.', 137, '7.13', '5.35', '2.78', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(28, 'vel est et', 'vel-est-et', 'Quos dolorem qui hic alias. Velit labore molestiae at voluptatum officiis id molestiae. Aspernatur officia labore autem adipisci.', 583, '2.74', '8.92', '3.30', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(29, 'ipsam quia minima', 'ipsam-quia-minima', 'Numquam ut consequatur iure deleniti hic autem. Exercitationem consequuntur vero aspernatur earum. Quos accusamus qui consectetur sint.', 903, '6.54', '6.86', '2.74', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(30, 'quia ab a', 'quia-ab-a', 'Fugit aut amet aperiam facilis officiis et. Eaque dolor quia nihil rerum autem. Aliquam quis voluptatem debitis eos consequatur necessitatibus praesentium saepe.', 477, '5.71', '9.84', '4.43', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(31, 'rem autem neque', 'rem-autem-neque', 'Ipsum et natus soluta ipsa. Exercitationem odit quam expedita alias. Vel corrupti molestias et.', 177, '7.79', '3.16', '2.91', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(32, 'ut ea officiis', 'ut-ea-officiis', 'Minima quis qui consequatur est tempore sit dignissimos. Et accusamus beatae sunt ipsum eligendi. Pariatur quia vero aliquid facilis error inventore architecto voluptate.', 541, '2.01', '9.93', '4.97', 1, '2021-02-18 14:30:02', '2021-02-18 14:30:02'),
(33, 'ut harum', 'ut-harum', 'Maxime nulla rerum aperiam velit delectus. Ut aut doloremque temporibus reiciendis eum veniam veniam ea. Voluptates eius dolor itaque rerum quos sint.', 411, '3.68', '4.03', '3.75', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(34, 'incidunt minima illum', 'incidunt-minima-illum', 'Perferendis voluptate ab recusandae itaque distinctio quia. Omnis sit possimus sit velit ea quis. Totam in magnam tempore nobis earum. Esse quos porro et accusantium quo sed repellat.', 927, '9.06', '7.45', '4.32', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(35, 'suscipit', 'suscipit', 'Quia laborum pariatur voluptatem. Enim quibusdam sit est sequi id dolor. Quod alias ut aut in.', 701, '8.35', '4.30', '2.75', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(36, 'est vero praesentium', 'est-vero-praesentium', 'Quis est rerum ipsam. Nihil ex aliquid enim iure nemo quos. Suscipit quam facere excepturi molestiae.', 433, '0.81', '3.24', '0.45', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(37, 'dolorum', 'dolorum', 'Aut et rerum qui ut accusamus. Repellat rem ducimus voluptatibus porro suscipit id. Quisquam repudiandae culpa rem adipisci est odit. Provident quidem quo explicabo dignissimos laboriosam fuga.', 946, '4.08', '9.74', '6.33', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(38, 'in', 'in', 'Non voluptate hic excepturi odio. Beatae distinctio veritatis temporibus corrupti soluta dolorum ducimus accusamus. Quasi cupiditate expedita ea.', 17, '5.24', '1.88', '1.30', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(39, 'quae temporibus', 'quae-temporibus', 'Assumenda et error veritatis rerum aperiam beatae animi. Debitis eos doloremque recusandae esse. Eligendi deleniti et exercitationem omnis natus similique. Maiores voluptas non consectetur et.', 555, '7.05', '1.74', '1.71', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(40, 'culpa', 'culpa', 'Voluptas quis eaque ut consequatur rerum explicabo ut. Est inventore et consequatur alias et. Occaecati in non sit quae beatae nemo minima. Aliquam temporibus optio incidunt nulla.', 725, '1.75', '9.42', '1.13', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(41, 'reiciendis nihil', 'reiciendis-nihil', 'Ab atque accusantium aut nesciunt reiciendis. Consectetur vero at voluptatibus fugiat inventore nihil ad. Est exercitationem facilis labore omnis ut dignissimos.', 453, '0.83', '8.52', '1.96', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(42, 'reprehenderit', 'reprehenderit', 'Unde alias facere nobis. Consequatur suscipit aut saepe cumque est. Vitae non animi vel facilis et quod. Et voluptatum et alias sint porro perspiciatis.', 52, '5.54', '3.87', '3.52', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(43, 'earum nulla rerum', 'earum-nulla-rerum', 'Deserunt quas maxime accusantium praesentium praesentium. Quidem quas eveniet dicta aut. Et voluptate aliquid voluptates ducimus cupiditate. Fugiat asperiores architecto voluptatem unde a velit.', 88, '5.81', '8.03', '4.34', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(44, 'eum provident ratione', 'eum-provident-ratione', 'Ducimus voluptas dolor distinctio eveniet nisi nisi saepe. Facere magnam eum sunt consequatur. Corporis perspiciatis odit rerum sequi fugit vel.', 887, '3.33', '8.23', '6.50', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(45, 'fugit iusto', 'fugit-iusto', 'Non fuga aut ipsum suscipit quisquam et et. Architecto fugit illum et. Qui atque harum sint ullam minus fugiat asperiores.', 799, '2.85', '6.97', '2.65', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(46, 'sit', 'sit', 'Autem magnam non possimus. Qui recusandae expedita adipisci quo aliquid et et. Quis aliquid at quia et dignissimos ea illo neque. Ut aut voluptas similique.', 287, '0.30', '1.90', '1.71', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(47, 'quam quia sequi', 'quam-quia-sequi', 'Rerum cumque officiis ducimus est. Itaque ipsa ducimus saepe earum qui laudantium.', 598, '4.49', '9.75', '2.44', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(48, 'doloremque autem illum', 'doloremque-autem-illum', 'Qui et enim et impedit. Natus atque dignissimos delectus neque facilis. Fugit quisquam dolor inventore qui omnis. Quia ut voluptatem alias nam sit.', 410, '5.67', '7.82', '3.60', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(49, 'dicta quaerat harum', 'dicta-quaerat-harum', 'Qui quo autem nam eum sed dignissimos. Ex dolorem sint facere consequatur. Ut eaque odio harum eos quibusdam animi. Facilis hic necessitatibus aliquid vel quaerat rerum placeat.', 327, '3.96', '7.68', '4.07', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(50, 'reprehenderit id', 'reprehenderit-id', 'Repudiandae repellat qui nesciunt. Id dolorem quia magnam eius dolor amet. In odio deleniti facere optio eius dolorum. Recusandae vitae non aut sed ullam ipsa.', 424, '0.75', '5.05', '3.33', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(51, 'magnam eligendi reprehenderit', 'magnam-eligendi-reprehenderit', 'Aliquam quo ipsa nemo asperiores. Iste maiores magnam voluptas et et. Et impedit harum quod esse quisquam provident ab.', 23, '4.30', '2.52', '0.88', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(52, 'dolorem quibusdam', 'dolorem-quibusdam', 'Voluptas quo perspiciatis veritatis ipsa. Eveniet excepturi enim a quia illum dolores.', 596, '9.36', '7.05', '3.24', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(53, 'in optio', 'in-optio', 'Quasi sed magni minima cupiditate nam quae dicta. Alias soluta commodi velit qui consequatur. Numquam neque doloribus laborum ut dicta ea sunt dolor. Atque tempore debitis sapiente sed.', 162, '3.15', '9.20', '1.38', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(54, 'rerum assumenda', 'rerum-assumenda', 'Similique asperiores optio voluptatum et repudiandae voluptatem iste. Dolorem ut a perferendis dicta ducimus corrupti dolor. Omnis et amet qui illum quis.', 652, '9.67', '1.99', '0.46', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(55, 'odio', 'odio', 'Quis qui dolorem eius ea inventore et at dolores. Et est velit laborum voluptatem distinctio. Porro molestiae quod recusandae quas officiis occaecati impedit.', 448, '9.87', '7.49', '2.32', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(56, 'rerum eveniet ut', 'rerum-eveniet-ut', 'Aliquam eveniet sunt dignissimos magnam. Ipsa sunt incidunt tempora voluptatum dolor. Labore deleniti dolores quibusdam at.', 709, '8.49', '8.57', '2.23', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(57, 'dolore', 'dolore', 'Ducimus vero dicta in dolorum nisi. Consectetur sunt et incidunt ea ipsum sed molestias. Assumenda qui et dolores sapiente et. Dolores pariatur quia ipsam saepe.', 831, '1.57', '1.06', '0.67', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(58, 'eius molestiae molestiae', 'eius-molestiae-molestiae', 'In accusantium doloremque amet. Excepturi cumque quam dolores et possimus sit. Voluptatibus sit itaque quaerat fugit quae. Et esse ad nulla et.', 876, '5.00', '2.26', '0.63', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(59, 'atque', 'atque', 'Ut occaecati iste ea rerum odit nam dolorem. Laboriosam dicta optio nisi nam voluptate. Animi accusamus quaerat tenetur veniam qui nemo. Ea sed velit atque est distinctio.', 118, '4.65', '8.73', '4.10', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(60, 'quasi molestiae minus', 'quasi-molestiae-minus', 'Et sapiente qui sint est. Nesciunt in est dolorem velit exercitationem. Ipsam dolorem et dolor. Ex est sapiente in enim.', 343, '1.87', '9.13', '8.67', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(61, 'qui', 'qui', 'Porro repudiandae quo repellendus sed et neque voluptas. Temporibus dolores expedita ut non quo quidem eveniet. Voluptatem eius ut consectetur in facilis at.', 259, '0.30', '8.50', '2.21', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(62, 'consequatur nisi', 'consequatur-nisi', 'Fuga voluptatibus est corrupti minus ut. Sed doloremque dolor facilis maxime ut porro. Quia aliquid vero sit et ut.', 340, '4.56', '4.28', '1.20', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(63, 'a', 'a', 'Quas deserunt vero perferendis non animi totam. Nisi doloribus voluptatibus exercitationem sunt vel. Ut dolorem consequatur pariatur amet. Inventore quidem culpa est iste.', 423, '4.04', '7.16', '5.94', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(64, 'ut quaerat omnis', 'ut-quaerat-omnis', 'Impedit aut minus sit illo est. Praesentium corporis aspernatur officiis rem labore voluptas explicabo. Occaecati iusto excepturi quas possimus expedita voluptate et et.', 355, '2.34', '4.35', '4.13', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(65, 'assumenda ab qui', 'assumenda-ab-qui', 'Voluptas voluptas sunt incidunt unde qui natus tempora. Facere esse ipsum et ut qui corrupti. Id totam excepturi quisquam voluptatem et sunt aut.', 193, '3.90', '9.47', '7.67', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(66, 'rerum est', 'rerum-est', 'Qui dolores et pariatur neque odit. Enim et labore est qui.', 907, '0.46', '7.92', '6.34', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(67, 'est et', 'est-et', 'Veritatis consequatur magni dolore ipsum aperiam. Commodi dolorem ullam error qui ex. Dolore earum deleniti inventore dolores. Quasi aut minima voluptatem nihil.', 250, '8.59', '8.56', '3.42', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(68, 'aperiam eos', 'aperiam-eos', 'Molestiae illo eveniet qui est inventore commodi. Ut aliquid aliquam magnam aut ab vitae veniam eum. Ut molestiae deleniti sunt. Dolor ipsa excepturi saepe dolorum tempora.', 514, '6.43', '8.09', '7.93', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(69, 'officiis quasi enim', 'officiis-quasi-enim', 'Laboriosam ab et et. Numquam corporis et est et et facere. Accusantium aut tempore voluptates ut deserunt molestias architecto. A reprehenderit odit vero.', 934, '4.76', '1.43', '0.60', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(70, 'nihil qui', 'nihil-qui', 'Nemo recusandae voluptas beatae facere. Ullam eum eum non quis aut fugiat. Rerum minus et ipsum optio non. Voluptatem dolorem sit amet et ab. Perferendis ut sit magni aut.', 263, '1.13', '7.19', '4.24', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(71, 'possimus', 'possimus', 'Recusandae voluptatem saepe rerum ut. Fuga consequuntur qui officia possimus est. Ut ab tenetur sunt et eos voluptates.', 791, '7.25', '2.67', '1.44', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(72, 'fugit', 'fugit', 'Aut consectetur magni nulla reprehenderit. Vel est aut ut minima voluptates.', 347, '3.77', '0.63', '0.13', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(73, 'ut totam qui', 'ut-totam-qui', 'Omnis quis culpa recusandae laudantium porro nulla eligendi. Ut accusantium vero aut. Voluptas modi ut quis dolor. Nihil est earum aut aut voluptatem. Est eos magni quas quasi repudiandae.', 511, '7.49', '6.94', '6.59', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(74, 'dolores tempora', 'dolores-tempora', 'Ut dolorem temporibus quisquam quis saepe. Ipsum rerum repudiandae excepturi ullam et saepe et ut. Fuga aut aut eius laboriosam sed ipsa dolor. Similique laboriosam tempora quidem.', 364, '4.50', '0.24', '0.22', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(75, 'blanditiis velit aliquam', 'blanditiis-velit-aliquam', 'Adipisci fugit asperiores explicabo magnam. Voluptate cupiditate illum quia tempora. Illo neque quam eum dolores. Ut aut laborum quis quae cum.', 795, '6.42', '7.29', '2.11', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(76, 'mollitia repellendus aut', 'mollitia-repellendus-aut', 'Corrupti enim magni ipsam est. Repudiandae dolores sint reprehenderit eveniet commodi. Et quaerat quis veniam porro blanditiis ea. Reiciendis exercitationem ipsam occaecati rerum et est nihil.', 324, '6.73', '1.18', '0.71', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(77, 'vero saepe', 'vero-saepe', 'Rerum quidem aut voluptate. Qui modi quam omnis omnis ut tenetur. Consequatur cupiditate atque error. Harum dolorem rerum non eveniet et ea sed dignissimos.', 257, '2.09', '4.02', '2.69', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(78, 'velit totam', 'velit-totam', 'Id quis mollitia saepe. Porro ducimus voluptatem et sequi. Animi aperiam est magni quia iusto dolor rem.', 357, '8.46', '3.67', '0.77', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(79, 'iste vel ex', 'iste-vel-ex', 'Saepe voluptatem quasi aspernatur consectetur nobis sunt. Eveniet in voluptatem minima sint. Inventore eos doloremque voluptas nisi. Quia sint voluptas in aspernatur doloremque soluta.', 152, '4.52', '1.99', '0.54', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(80, 'nihil eos ab', 'nihil-eos-ab', 'Est quas eos quibusdam molestiae fugit possimus. Eligendi ut et dolorem iure enim. Dolores rem quisquam maiores fugit fugiat. Ut et itaque nihil excepturi natus laborum molestiae temporibus.', 886, '2.79', '3.58', '2.11', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(81, 'libero', 'libero', 'Fugit ducimus odio ea consequatur explicabo in eum laboriosam. Rerum voluptatibus quis quaerat reiciendis. Dolore culpa explicabo vel quod. Corporis ipsam omnis officia.', 400, '9.98', '0.94', '0.85', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(82, 'impedit ipsum consequatur', 'impedit-ipsum-consequatur', 'Dolore veniam qui error voluptatem illo quas. Magni eius ipsam praesentium tenetur. Natus est et quas deserunt natus quaerat.', 748, '1.73', '5.55', '1.50', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(83, 'enim sed quas', 'enim-sed-quas', 'Blanditiis ut magnam cupiditate quo omnis velit. Hic in quia quam possimus molestiae vero. Ex qui voluptate tenetur est. Alias soluta pariatur id quo.', 869, '6.48', '5.21', '3.28', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(84, 'rerum', 'rerum', 'Et et quo itaque inventore odio. Quod eaque ut labore illum.', 995, '6.67', '9.06', '5.44', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(85, 'provident', 'provident', 'Ea molestiae sint alias ut exercitationem amet. Alias temporibus nemo qui qui. Laborum eius quos nam.', 924, '3.78', '4.70', '2.49', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(86, 'in eum', 'in-eum', 'Ut eum eum perspiciatis tempora autem. Dolorum sit omnis illo. Dolore quaerat quaerat aperiam modi.', 111, '8.36', '9.83', '9.44', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(87, 'iusto natus', 'iusto-natus', 'Deleniti omnis optio blanditiis sed explicabo ad distinctio. Est et nemo voluptas iusto rerum ipsam. Reprehenderit autem odit nesciunt corrupti nam. Hic et dolorum nesciunt aliquam in.', 241, '3.91', '9.66', '6.57', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(88, 'quaerat', 'quaerat', 'Doloribus tempore hic sunt adipisci aut. Numquam atque accusamus excepturi voluptates. Qui non voluptas sunt. Fugit aut quibusdam non architecto.', 856, '5.42', '3.01', '0.57', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(89, 'et nesciunt', 'et-nesciunt', 'Voluptatum animi laboriosam vel rerum non ducimus voluptates exercitationem. Commodi placeat et qui rerum facilis dolores neque optio. Sequi repellendus sed recusandae error et eos consequuntur.', 400, '2.23', '6.20', '3.97', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(90, 'dignissimos et dolorem', 'dignissimos-et-dolorem', 'Eveniet sed sint ea placeat. Qui ut quas culpa molestiae possimus. Dolorem explicabo maxime dignissimos non dicta accusantium. Cupiditate velit ad dolorem numquam repudiandae non.', 95, '8.00', '6.24', '1.81', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(91, 'autem qui ea', 'autem-qui-ea', 'Dolorem qui magni enim pariatur qui est. Perspiciatis accusantium laborum saepe. Adipisci numquam doloremque accusamus omnis. Aspernatur iure eveniet quos nulla itaque qui.', 746, '9.33', '4.71', '3.11', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(92, 'cupiditate et dicta', 'cupiditate-et-dicta', 'Repudiandae hic dicta nobis error nihil rem rem. Nam voluptate perferendis voluptatum quis. Impedit molestiae voluptatibus accusantium excepturi in.', 307, '5.04', '4.29', '2.49', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(93, 'dolorum vero eius', 'dolorum-vero-eius', 'Et molestias id vero tempora. Animi similique velit soluta inventore sed vel voluptatem. Debitis nulla iusto nisi saepe quo nam eum expedita.', 120, '9.04', '6.23', '5.73', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(94, 'veniam', 'veniam', 'Pariatur rerum voluptatem quidem. Neque sit suscipit fugiat nam ut. Dolor maxime vero corrupti.', 173, '2.55', '0.58', '0.45', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(95, 'reiciendis nisi natus', 'reiciendis-nisi-natus', 'Eum quibusdam inventore fugit pariatur modi velit enim. Unde at qui ex excepturi. Accusamus officiis soluta rerum quidem a cumque.', 172, '5.63', '4.03', '1.41', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(96, 'et', 'et', 'Maiores quisquam rerum odio ducimus. Veniam consequuntur expedita ad hic hic fuga ea. Odio quia et nam animi laudantium alias.', 357, '0.50', '2.82', '0.37', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(97, 'est', 'est', 'Et doloremque autem praesentium quia. Sint harum dolorum provident mollitia est est provident. Sapiente aut consequatur magni aut quos voluptatem.', 53, '6.60', '4.12', '1.73', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(98, 'dolorem nulla est', 'dolorem-nulla-est', 'Alias deleniti perferendis neque aliquam quae. Itaque ducimus pariatur est modi. Animi natus dolor nemo aspernatur. Dolorum ducimus ut voluptas vel. Enim dolore accusamus molestiae.', 504, '7.54', '5.04', '0.71', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(99, 'veritatis repellat', 'veritatis-repellat', 'Aut illo voluptatem dolor itaque. Aut eveniet ea alias est. Quas velit quia necessitatibus sapiente ut esse similique. Totam minima perspiciatis deserunt tenetur.', 527, '1.64', '1.83', '0.90', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03'),
(100, 'accusamus', 'accusamus', 'Sunt sit aspernatur quo qui nihil dolorem blanditiis. Incidunt qui dolorem et velit ratione. Itaque alias fugiat est esse. Blanditiis illum ipsa maiores enim fugit amet. Nostrum facere quia quas.', 625, '3.40', '4.00', '2.84', 1, '2021-02-18 14:30:03', '2021-02-18 14:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_id`,`product_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
