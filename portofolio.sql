-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 07:41 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_06_28_015118_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_blog`
--

CREATE TABLE `module_blog` (
  `id_blog` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg',
  `description` text NOT NULL,
  `category` varchar(250) NOT NULL DEFAULT 'Codeigniter',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_blog`
--

INSERT INTO `module_blog` (`id_blog`, `title`, `image`, `description`, `category`, `created_at`) VALUES
(1, 'Langgeng Candrakanta', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Omnis eum et ratione sunt fugiat. Consequatur est eius rerum enim. Nemo molestiae magni et asperiores enim qui. Asperiores quia iusto blanditiis ', 'Codeigniter', '2019-06-27 02:06:01'),
(2, 'Puspa Mulyani', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quae vel explicabo esse rem aperiam corporis est. Excepturi natus reiciendis ducimus omnis sequi vel. Sapiente ipsa architecto non est culpa placeat ut.', 'Codeigniter', '2019-06-27 02:06:02'),
(3, 'Yance Yance Kuswandari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Veniam est beatae tempora sed aut fuga amet. Animi laudantium iste atque est tempore. Doloremque id delectus nobis accusantium ducimus adipisci.', 'Codeigniter', '2019-06-27 02:06:02'),
(4, 'Nova Sabrina Hasanah S.Kom', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Doloribus est laudantium quisquam accusamus rerum dolores architecto. Voluptas nihil et nihil aspernatur aut molestiae. Modi et at sed officia facilis. Qui quia animi voluptatem.', 'Codeigniter', '2019-06-27 02:06:02'),
(5, 'Vivi Sarah Kuswandari M.Kom.', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quis et molestiae laboriosam tempore illo. Ducimus nobis sint commodi dolor. Excepturi tempore nemo non voluptates ipsum.', 'Codeigniter', '2019-06-27 02:06:02'),
(6, 'Yance Rahayu', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Consectetur hic aut quam dolor adipisci quibusdam. Ipsum commodi sapiente itaque quia quo ut. Quibusdam porro suscipit itaque minus omnis et sit.', 'Codeigniter', '2019-06-27 02:06:02'),
(7, 'Cahyono Situmorang', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Et fugiat est qui omnis maiores quas quia numquam. Est iusto nulla et dolorum. Recusandae est corrupti dicta quam atque commodi.', 'Codeigniter', '2019-06-27 02:06:02'),
(8, 'Betania Ulva Suartini', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ipsam aliquam sint animi. Distinctio voluptatibus sit voluptas in ullam recusandae enim voluptatem. Ut provident sed repellendus et assumenda laboriosam.', 'Codeigniter', '2019-06-27 02:06:02'),
(9, 'Drajat Sitompul', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Veritatis sed adipisci et maiores. Et quaerat porro inventore est et.', 'Codeigniter', '2019-06-27 02:06:02'),
(10, 'Zaenab Haryanti', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Placeat sit officia et doloremque. Laudantium perferendis doloremque pariatur nesciunt voluptatem non officiis sit. Laborum atque animi incidunt blanditiis autem iste accusantium dignissimos.', 'Codeigniter', '2019-06-27 02:06:02'),
(11, 'Martani Tarihoran', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Rerum deleniti error voluptatem nihil quos voluptatem sapiente aspernatur. Et eveniet et et sed. Non facere rerum eum iste sint nisi.', 'Codeigniter', '2019-06-27 02:06:02'),
(12, 'Raisa Permata', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Illo sit provident nisi illo deleniti dolor ipsum. Nemo eaque quod magni iste. Voluptas dolorem odit id architecto facere cupiditate. In minus eos amet accusamus.', 'Codeigniter', '2019-06-27 02:06:02'),
(13, 'Hilda Ina Pudjiastuti', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Eos illum neque molestias doloremque. Voluptatibus expedita occaecati non sint excepturi unde incidunt. Voluptates sint repellendus non et dolor.', 'Codeigniter', '2019-06-27 02:06:02'),
(14, 'Mala Namaga', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Occaecati praesentium et et reprehenderit et et suscipit ut. Commodi qui cum optio.', 'Codeigniter', '2019-06-27 02:06:02'),
(15, 'Jessica Mandasari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Vero omnis aliquid minus. Quia sapiente omnis dignissimos laudantium quas. Aut non sed id qui.', 'Codeigniter', '2019-06-27 02:06:02'),
(16, 'Darmana Prasasta', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Dolorum voluptatem assumenda dicta eligendi accusantium iure debitis nihil. Minima soluta et fuga harum repudiandae. Et iste atque non temporibus. Quaerat aut dolor ab quia pariatur tenetur omnis.', 'Codeigniter', '2019-06-27 02:06:02'),
(17, 'Queen Clara Purwanti', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Adipisci alias ratione ea fuga. Delectus sunt nostrum sit doloremque aspernatur consequuntur. Maxime eaque velit aliquam totam fugit. Quaerat magnam et repudiandae officiis illum sit asperiores.', 'Codeigniter', '2019-06-27 02:06:02'),
(18, 'Digdaya Pradipta', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quia aliquam sit numquam. Magni aperiam ut libero. Eveniet nisi iure dicta veniam iure aut. Placeat laborum est cumque nihil.', 'Codeigniter', '2019-06-27 02:06:02'),
(19, 'Saiful Ganda Tarihoran', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Natus porro amet id vel praesentium porro rem et. Mollitia a ad illo ipsam eveniet iusto.', 'Codeigniter', '2019-06-27 02:06:02'),
(20, 'Shania Hani Nurdiyanti', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Et non voluptatum dolor cumque ducimus ab omnis. Voluptatum dolorum voluptatum ullam cumque. Eos natus et est nemo.', 'Codeigniter', '2019-06-27 02:06:02'),
(21, 'Satya Sabri Waluyo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Magnam nam ullam consectetur quos. Et sed quae nihil nemo. Perspiciatis voluptas eum nam similique nam alias quo.', 'Codeigniter', '2019-06-27 02:06:02'),
(22, 'Niyaga Hidayat', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Enim ducimus eligendi quo id aperiam aperiam. A voluptate perspiciatis consequatur libero est eos et. Impedit cum dolorem molestias nulla delectus.', 'Codeigniter', '2019-06-27 02:06:02'),
(23, 'Dimas Utama', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Tempora magni ullam illum. Soluta quo ipsam accusantium nihil est. Laborum repudiandae quaerat pariatur commodi cumque expedita vel impedit.', 'Codeigniter', '2019-06-27 02:06:02'),
(24, 'Wulan Yuliarti', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Non ipsam sit aut similique. Sequi id perferendis corporis. Sed odio vel deserunt officia quaerat.', 'Codeigniter', '2019-06-27 02:06:02'),
(25, 'Safina Novitasari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aspernatur quo error sint odio nostrum. Dolores iste architecto voluptatem delectus culpa. Rerum ut consequatur voluptate tenetur perspiciatis omnis. Qui suscipit magni possimus ducimus et omnis.', 'Codeigniter', '2019-06-27 02:06:02'),
(26, 'Restu Utami S.Pt', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quibusdam cumque impedit minima. Aut et nihil dignissimos natus necessitatibus laborum asperiores dolorem. Enim sint provident neque voluptatem earum quam et. Autem minus aut neque.', 'Codeigniter', '2019-06-27 02:06:03'),
(27, 'Irfan Rafi Prasasta S.Kom', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aperiam quae quod ea porro sed. Velit deleniti deleniti reprehenderit non doloribus omnis similique vitae. Asperiores sit facilis vel. Natus qui et dolorem mollitia rerum aliquid ea.', 'Codeigniter', '2019-06-27 02:06:03'),
(28, 'Cakrabirawa Wacana', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ipsum et quas ut non. Doloremque dolorem vero dolorem perspiciatis aut. Modi minus quidem ut dignissimos quis earum sed. Distinctio facilis cumque tempore ab fugiat repudiandae.', 'Codeigniter', '2019-06-27 02:06:03'),
(29, 'Kania Anggraini S.I.Kom', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aliquid reiciendis repellat minus suscipit. Distinctio et velit magnam et pariatur sit. Dolores nesciunt eos non molestiae rerum optio natus. Hic aut occaecati illo et velit similique.', 'Codeigniter', '2019-06-27 02:06:03'),
(30, 'Malika Padmasari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quas quo voluptatem qui molestiae. Voluptate voluptatem non et laborum. Error vitae vel officia commodi.', 'Codeigniter', '2019-06-27 02:06:03'),
(31, 'Mahmud Utama', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aliquid qui consequatur est libero ipsum in. Harum necessitatibus reiciendis soluta dolorem. Tempore qui id vitae eos aut beatae qui ipsam. Non qui consequatur molestiae dicta.', 'Codeigniter', '2019-06-27 02:06:03'),
(32, 'Talia Yulianti S.IP', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ipsa dicta eum quos autem. Et eius dolores est assumenda quos facilis. Ut excepturi odit nostrum veniam odio nemo ut sit.', 'Codeigniter', '2019-06-27 02:06:03'),
(33, 'Janet Puji Aryani M.Ak', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Omnis quibusdam laborum quod dolor ut velit. Sed error modi numquam accusantium delectus et sed qui. Repellat mollitia dolores consequuntur sequi pariatur autem. Consequatur eos repellat quia natus.', 'Codeigniter', '2019-06-27 02:06:03'),
(34, 'Almira Elvina Winarsih M.Pd', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Esse aut minus magnam quod. Vero ex recusandae delectus et. Accusamus soluta non ut quasi nesciunt culpa.', 'Codeigniter', '2019-06-27 02:06:03'),
(35, 'Tari Melani S.Gz', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Explicabo delectus nam voluptatem pariatur possimus nam. At numquam ad vel sequi est. Ut in aut modi iure amet et veritatis.', 'Codeigniter', '2019-06-27 02:06:03'),
(36, 'Olivia Pudjiastuti S.Ked', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Et quisquam vero aut et dolores pariatur enim aspernatur. Dolores corrupti necessitatibus aut. Itaque tempore asperiores eius porro. Dolorum rerum quo est.', 'Codeigniter', '2019-06-27 02:06:03'),
(37, 'Slamet Suryono', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Qui sunt quas et accusantium placeat. Voluptatem consequatur assumenda numquam mollitia expedita. Velit doloremque dolores aut autem aperiam modi et. Est rerum labore dolorum consequatur maiores qui.', 'Codeigniter', '2019-06-27 02:06:03'),
(38, 'Ayu Zulaika', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Architecto itaque autem rerum iste. Sit et ad occaecati vel error. Sint soluta quasi corporis consequatur aut incidunt. Incidunt ut vel impedit expedita.', 'Codeigniter', '2019-06-27 02:06:03'),
(39, 'Jaga Tamba', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Qui dolorem aliquam perspiciatis aut. Repellat ipsam ea sit laboriosam dolorem qui ducimus. Repellendus qui et occaecati ducimus.', 'Codeigniter', '2019-06-27 02:06:03'),
(40, 'Tirtayasa Ridwan Mandala S.Psi', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Incidunt harum eligendi ut libero cum occaecati et. Possimus perspiciatis enim amet magni et similique nam esse. Beatae porro consequuntur nesciunt aspernatur quos.', 'Codeigniter', '2019-06-27 02:06:03'),
(41, 'Bagas Makara Wibowo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Neque molestiae id perspiciatis libero vel aliquid quia ex. Sint autem beatae deserunt sequi voluptas illum vero. Facere repellat blanditiis repellat accusantium consectetur perferendis eveniet.', 'Codeigniter', '2019-06-27 02:06:03'),
(42, 'Kairav Jailani', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Non harum in debitis. Consequuntur sint dolorem sapiente doloremque exercitationem. Porro error cumque et ea sunt nisi. Nemo aspernatur qui soluta accusamus. Vel iste et ullam eos corporis a est.', 'Codeigniter', '2019-06-27 02:06:03'),
(43, 'Raden Darman Thamrin M.Farm', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ab iusto dolor labore animi corrupti vel possimus. Unde doloremque sit fuga laboriosam ducimus. Sunt aliquam qui tempora et in dolore.', 'Codeigniter', '2019-06-27 02:06:03'),
(44, 'Dono Wacana', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quam et aliquam provident sequi. Iure sapiente et ut laudantium ut velit hic. Neque beatae animi nihil laborum voluptas.', 'Codeigniter', '2019-06-27 02:06:03'),
(45, 'Bakda Hutagalung S.IP', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Sit consequatur rem qui labore accusamus. Eos voluptatem libero et error. Explicabo autem cumque eum ea.', 'Codeigniter', '2019-06-27 02:06:03'),
(46, 'Jarwi Prasetya M.Kom.', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Amet earum optio consequatur libero in. Aut dignissimos a consequatur unde consequuntur qui. In magnam non hic facilis expedita et quisquam. Non consequuntur sunt ducimus nesciunt.', 'Codeigniter', '2019-06-27 02:06:03'),
(47, 'Hasta Hutapea', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ratione consectetur consequuntur mollitia libero neque quam voluptatem voluptates. Numquam omnis placeat ratione qui alias. Cum quisquam corrupti qui ut ipsa suscipit.', 'Codeigniter', '2019-06-27 02:06:03'),
(48, 'Radit Siregar', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Maxime incidunt illo et. Quia voluptatem amet est quia accusamus sapiente. Commodi voluptas natus odit omnis quidem et. Rerum voluptatem voluptatem cum asperiores fugit maiores voluptas omnis.', 'Codeigniter', '2019-06-27 02:06:04'),
(49, 'Agnes Amelia Purnawati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Harum reiciendis perferendis qui soluta fuga inventore. Cum et maxime dolores molestiae placeat. Quaerat vitae error deleniti voluptates. Nemo doloremque natus debitis voluptatem natus nam.', 'Codeigniter', '2019-06-27 02:06:04'),
(50, 'Daliono Habibi', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptas labore accusamus et autem deleniti. Sit distinctio sequi quae architecto. Blanditiis perferendis ipsa molestiae sit voluptatem ea aperiam. Nulla numquam illum accusantium consequatur.', 'Codeigniter', '2019-06-27 02:06:04'),
(51, 'Umi Handayani', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptatem earum non aut similique ut repellat dolores nihil. Ut enim itaque aut rerum. Velit eum porro aut nesciunt eligendi vitae.', 'Codeigniter', '2019-06-27 02:06:04'),
(52, 'Yulia Calista Hassanah', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Doloremque in maiores dolores nihil. Blanditiis earum rerum quis ab voluptas autem. Quis rerum voluptas aperiam praesentium voluptatibus expedita.', 'Codeigniter', '2019-06-27 02:06:04'),
(53, 'Daruna Galur Gunarto', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Sed rem quod expedita consequatur velit. Reprehenderit quia illum ea explicabo sequi fuga.', 'Codeigniter', '2019-06-27 02:06:04'),
(54, 'Vanya Qori Permata', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Itaque id nihil recusandae consequuntur excepturi aut. Aperiam ut nihil eos nam. Voluptatem necessitatibus ut non qui ratione provident. Optio magni illo quod eveniet.', 'Codeigniter', '2019-06-27 02:06:04'),
(55, 'Sari Ida Yuliarti S.Psi', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Dolore ea dicta aut totam corporis magni. Quisquam enim est voluptatum sit qui. Ex consequatur dolores natus qui necessitatibus et.', 'Codeigniter', '2019-06-27 02:06:04'),
(56, 'Bakijan Ramadan', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Minus amet molestias amet. Earum perferendis quasi ut laboriosam. Illo nesciunt voluptatem laudantium itaque iusto non. Non suscipit excepturi iste quia corporis vel nihil.', 'Codeigniter', '2019-06-27 02:06:04'),
(57, 'Digdaya Karsana Waskita S.Pt', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ex numquam ratione voluptatem vero aliquid. Consequatur minus ut est laudantium aut at non earum. Dolores id molestiae et iste ut est illum. Neque eum quidem veniam et et est voluptas.', 'Codeigniter', '2019-06-27 02:06:04'),
(58, 'Harsaya Simanjuntak S.Psi', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptatem id quod est necessitatibus. Voluptatem officiis est magnam non quidem culpa. Est non itaque modi sit sunt rerum aut. Dolor praesentium aliquam quis saepe perferendis qui.', 'Codeigniter', '2019-06-27 02:06:04'),
(59, 'Raden Prasetya', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aut excepturi officiis quis quae. Quisquam alias voluptas autem voluptas facere. Et perspiciatis consequatur temporibus minima quia incidunt vel.', 'Codeigniter', '2019-06-27 02:06:04'),
(60, 'Mulyanto Saragih', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Nihil deserunt nisi officia est id delectus maiores. Maiores accusamus veritatis aperiam culpa est. Aspernatur voluptas occaecati ullam.', 'Codeigniter', '2019-06-27 02:06:04'),
(61, 'Prakosa Halim', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Omnis quis placeat in ut. Voluptatem eligendi ut et ut consectetur. Facilis quia et quis minus ea. Ut quibusdam similique voluptates tempore beatae reprehenderit.', 'Codeigniter', '2019-06-27 02:06:04'),
(62, 'Silvia Wulan Puspasari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Officia ad ut quos fugiat est. Qui quaerat culpa id sunt suscipit ut blanditiis sint. Libero et est doloribus iusto aut in. Similique iusto molestiae officiis expedita tempore dolores rerum.', 'Codeigniter', '2019-06-27 02:06:04'),
(63, 'Unggul Oskar Waskita S.Pt', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Est ullam aliquam totam officia laborum quia exercitationem. Possimus dolorum sint dolor dolor laborum. Aut maxime sit corrupti ut. Incidunt dolores et veritatis.', 'Codeigniter', '2019-06-27 02:06:04'),
(64, 'Yoga Kuswoyo S.Gz', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Id aliquam fugit similique officia similique. Dignissimos optio cupiditate et et dolorem. Placeat tempore eius porro eos excepturi eum autem. Facilis est provident pariatur eius dolor.', 'Codeigniter', '2019-06-27 02:06:04'),
(65, 'Praba Jailani', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Et est est beatae repellat aut molestiae et. Quis aperiam quam molestias quo itaque ea. Quis eligendi voluptas molestiae ab.', 'Codeigniter', '2019-06-27 02:06:04'),
(66, 'Arta Firgantoro', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Est dolorem qui est sed aut. Quod esse non ipsam sed. Est ducimus officia ducimus sint nostrum nam. Minus aut eum dignissimos et rerum vero similique.', 'Codeigniter', '2019-06-27 02:06:04'),
(67, 'Ida Vanya Halimah M.Pd', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Non aut delectus vel. Quam aliquid ullam corporis ipsa rerum. Ab sit nulla aut atque consequatur qui.', 'Codeigniter', '2019-06-27 02:06:04'),
(68, 'Cagak Jayadi Waluyo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ipsa autem quo quis vero. Asperiores repellendus repellat iusto a possimus.', 'Codeigniter', '2019-06-27 02:06:04'),
(69, 'Zulfa Hariyah S.T.', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Perferendis optio tempora voluptates dolorum reiciendis sed qui vel. Mollitia quia consequatur qui sit neque est quod. Qui vel esse nam laboriosam.', 'Codeigniter', '2019-06-27 02:06:04'),
(70, 'Tedi Pranowo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Sit quis consectetur excepturi corporis doloribus dolores sed eaque. Sit et laboriosam nisi rerum qui aut. Ducimus doloremque debitis nesciunt porro voluptatem et.', 'Codeigniter', '2019-06-27 02:06:04'),
(71, 'Usman Uwais S.Kom', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Qui pariatur nobis doloremque iste et. Rerum voluptatibus dolor perspiciatis iure earum necessitatibus dolores numquam.', 'Codeigniter', '2019-06-27 02:06:04'),
(72, 'Unjani Vicky Lestari', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Aut saepe dolor adipisci perferendis. Et ut voluptatum consequatur nihil at aspernatur modi. Ut maiores ab totam illo dignissimos eos.', 'Codeigniter', '2019-06-27 02:06:04'),
(73, 'Kala Pangestu', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quos qui distinctio cumque delectus. Tempora recusandae officia aspernatur dolores.', 'Codeigniter', '2019-06-27 02:06:05'),
(74, 'Budi Jailani', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Non harum ipsum in id. Et corrupti est et quos. Ut optio quisquam qui dicta.', 'Codeigniter', '2019-06-27 02:06:05'),
(75, 'Febi Zahra Hartati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Culpa perferendis esse saepe itaque molestias. Quisquam repellendus labore amet laborum optio quia illum. Quisquam totam iste iste iste libero. Qui iusto sapiente aut eveniet optio sunt.', 'Codeigniter', '2019-06-27 02:06:05'),
(76, 'Ismail Pranowo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ipsam molestiae voluptas in et. Veniam quisquam quam qui quia tenetur. Ut iusto id aperiam necessitatibus.', 'Codeigniter', '2019-06-27 02:06:05'),
(77, 'Kasim Najmudin', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Consequatur neque necessitatibus molestiae et facilis nemo placeat dicta. Esse ut minus qui magnam veniam. Qui sint minus voluptate quis. Dolorem nesciunt ducimus repellendus ut porro voluptas.', 'Codeigniter', '2019-06-27 02:06:05'),
(78, 'Anita Kasiyah Laksmiwati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptas voluptatem totam neque omnis qui ipsum impedit. Iure iure explicabo assumenda et assumenda itaque reprehenderit nobis. Repudiandae at ea impedit nam nihil nisi consequatur culpa.', 'Codeigniter', '2019-06-27 02:06:05'),
(79, 'Ajeng Usamah S.Farm', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Perferendis soluta minus eveniet sapiente. Vero quam praesentium iure excepturi quibusdam libero nemo. Ut quo harum illum reprehenderit. Eos repellendus eius at in.', 'Codeigniter', '2019-06-27 02:06:05'),
(80, 'Ikin Gunawan', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Veniam ipsum optio hic deserunt molestiae quidem. Omnis dolorem consectetur et quisquam corporis. Qui optio aut aut dignissimos ab. Quibusdam nemo consequatur est inventore quo quam.', 'Codeigniter', '2019-06-27 02:06:05'),
(81, 'Darmaji Jaya Pranowo', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Qui aut praesentium et. Possimus ipsa enim aut reiciendis accusamus vel sed. Vitae tempore totam inventore.', 'Codeigniter', '2019-06-27 02:06:05'),
(82, 'Lamar Harjo Adriansyah', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Dolor molestias quos deleniti aliquam iusto. Maxime ullam tempora et omnis modi reprehenderit. Error doloremque ad fugiat enim et.', 'Codeigniter', '2019-06-27 02:06:05'),
(83, 'Balijan Najam Najmudin S.Sos', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quas iusto rerum a itaque. Sapiente consectetur quas eveniet et officia harum. Nesciunt doloribus explicabo voluptas sint repudiandae commodi harum.', 'Codeigniter', '2019-06-27 02:06:05'),
(84, 'Jasmani Cecep Tamba S.Gz', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Dolorem facilis aut possimus officiis. Impedit voluptatum aut voluptates corrupti dolore. Doloribus enim minus architecto voluptate. Ut magnam error voluptas molestiae quisquam.', 'Codeigniter', '2019-06-27 02:06:05'),
(85, 'Dinda Farida M.Pd', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptatum nesciunt voluptatem asperiores. Aut soluta eveniet voluptatibus quia doloremque tempora earum eum. Veritatis molestiae ratione sint voluptates labore voluptas. Non consequatur aut quo qui.', 'Codeigniter', '2019-06-27 02:06:05'),
(86, 'Galuh Murti Megantara', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptate aut voluptas et praesentium ex sunt. Numquam non suscipit omnis harum. Officia consectetur odit sed cum.', 'Codeigniter', '2019-06-27 02:06:05'),
(87, 'Tiara Endah Maryati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Modi consequatur natus reiciendis iusto sunt. Vel error adipisci suscipit et. Consequatur qui assumenda dolor.', 'Codeigniter', '2019-06-27 02:06:05'),
(88, 'Zelaya Wahyuni S.I.Kom', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Qui dolor aut qui odio maiores soluta. Dolores possimus amet deleniti quo est facilis ut. Rerum ea est culpa.', 'Codeigniter', '2019-06-27 02:06:05'),
(89, 'Yuliana Rahimah', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Voluptates est dicta alias fuga. Quae assumenda veniam doloremque eum. Necessitatibus fugiat id ut hic at amet exercitationem consequatur.', 'Codeigniter', '2019-06-27 02:06:05'),
(90, 'Jarwadi Siregar', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Minima est recusandae molestiae quam exercitationem et. Sint cum suscipit sint cumque dolorem. Nulla aperiam earum voluptatem doloremque minima perspiciatis.', 'Codeigniter', '2019-06-27 02:06:05'),
(91, 'Cengkal Labuh Hidayanto', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Est ad quibusdam earum voluptatem et. Doloremque et non laboriosam non. Voluptas eum id et blanditiis impedit iure et.', 'Codeigniter', '2019-06-27 02:06:05'),
(92, 'Opung Asman Budiyanto', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Enim cum quod saepe et maiores. Ut et cum ut autem. Molestias sint non quaerat quam similique sed est. Aut quia illo temporibus delectus aut dolor.', 'Codeigniter', '2019-06-27 02:06:05'),
(93, 'Lasmono Zulkarnain', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quo et totam maiores sed. Ea est maiores et beatae ratione ipsam pariatur. Nisi rerum error harum accusantium explicabo autem. Ipsum pariatur voluptatibus sunt est voluptas sint.', 'Codeigniter', '2019-06-27 02:06:05'),
(94, 'Nurul Purnawati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Repudiandae ut tempora repudiandae est enim. Nihil magni quia aliquid minus soluta ex dignissimos. Doloribus molestiae repellendus quisquam quia et blanditiis eos.', 'Codeigniter', '2019-06-27 02:06:05'),
(95, 'Hesti Maryati', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ducimus sequi rerum nostrum tempora. Voluptas debitis est delectus enim. Accusantium ea iusto et porro et. Molestias neque commodi reiciendis.', 'Codeigniter', '2019-06-27 02:06:05'),
(96, 'Ian Hakim', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Nulla sed sunt doloribus veritatis. Vero quis voluptatum nihil eveniet. Sequi et quaerat tempore et porro. Dolorum numquam dolor voluptates.', 'Codeigniter', '2019-06-27 02:06:05'),
(97, 'Bahuwarna Latupono', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Ea assumenda sequi sed necessitatibus unde. Repellendus et nemo consequatur possimus molestiae inventore veniam. Qui et et qui atque provident ex.', 'Codeigniter', '2019-06-27 02:06:06'),
(98, 'Cahyadi Lantar Pradana M.TI.', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Eos dolorum nihil nemo vel dolorem. Ea soluta nemo animi reiciendis. Sint dolorum ipsam aut ad.', 'Codeigniter', '2019-06-27 02:06:06'),
(99, 'Hartaka Pradipta', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Quis possimus eum consequatur. Ex quos ut dignissimos eius. Aut sequi ex optio cum esse qui.', 'Codeigniter', '2019-06-27 02:06:06'),
(100, 'Himawan Umay Hutapea S.Pt', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'Dolorem suscipit omnis qui repellendus error labore et et. Est et est quo aut aut. Facilis laborum ducimus ipsa veniam. Reprehenderit et voluptatibus nam aut et enim modi.', 'Codeigniter', '2019-06-27 02:06:06'),
(101, 'ddd', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'ddd', 'Codeigniter', '2019-06-28 02:09:44'),
(102, 'ddd', 'http://frenify.com/envato/marketify/html/arlo/1/img/blog/1.jpg', 'ddd', 'Codeigniter', '2019-06-28 02:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `module_messages`
--

CREATE TABLE `module_messages` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_messages`
--

INSERT INTO `module_messages` (`id_message`, `name`, `email`, `messages`, `created_at`, `updated_at`) VALUES
(1, 'DSDSD', 'SDSDSD', 'DSDSD', NULL, NULL),
(2, 'DSDSD', 'SDSDSD', 'DSDSD', NULL, NULL),
(3, 'dsd', 'ss', 'ddd', NULL, NULL),
(4, 'sdsdsd', 'isdnizam1@gmail.com', 'sdsd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_project`
--

CREATE TABLE `module_project` (
  `id_project` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `category` enum('development','design','photography') NOT NULL DEFAULT 'development',
  `image` varchar(500) NOT NULL DEFAULT 'http://frenify.com/envato/marketify/html/arlo/1/img/portfolio/1.jpg',
  `client` varchar(500) NOT NULL,
  `url` varchar(222) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_project`
--

INSERT INTO `module_project` (`id_project`, `title`, `description`, `category`, `image`, `client`, `url`, `created_at`) VALUES
(1, 'Instanbooking', 'Bisnis MICE di indonesia kian berkembang hal ini dapat dilihat dari banyaknya tempat-tempat pertemuan, convensi dan pameran yang dibangun diberbagai kota di Indonesia.\r\n<br><br>\r\nPembangunan hotel bak jamur di musim hujan, membuat persaingan begitu tinggi, menyebabkan biaya marketing dan distribusi sangat tinggi, namun di era digital ini ada solusi baru untuk menurunkan biaya marketing,  yaitu;  dengan membetuk tim eccomerce yang aktif untuk membangun merek dan distribusi.\r\n<br><br>\r\n\r\nKita ambil contoh hotel saat ini sangat berketergantugan dengan OTA (Online Travel Agent ) untuk distribusi, namun peran social media juga begitu penting untuk meningkatkan awareness. Jika sebuah hotel kurang aktif dalam membangun awareness maka akan sangat berpengaruh pada tingkat huniannya. Untuk itu branding pun sangat berperan penting untuk meningkatkan revenue sebagai efek dari awareness tersebut.\r\n<br><br>\r\n\r\nBerbeda dengan dunia MICE saat ini, yang masih dibilang convensional, distribusi masih mengandalkan sales door to door, dimana biaya masih sangat tinggi.\r\n<br><br>\r\n\r\nINSTANBooking dengan pola market place adalah semuah ide anak bangsa indonesia untuk membantu pertumbuhan bisnis MICE, hotel & tourism di Indonesia agar bisa berkembang secara efficient.Investasi untuk pengembangan sebuah platform digital tidaklah murah, biaya yang tinggi membuat online platform milik perusahaan asing menetapkan tarif untuk masuk kedalam platform miliknya, berbeda dengan instanbooking sebagai anak bangsa memberikan kemudahan untuk bergabung tanpa biaya.\r\n<br><br>\r\n\r\nBukan hanya disisi properti yang diberikan solusi dalam bisnisnya, namun para peyelengara event, dan wedding serta masyarakat umum yang memerlukan informasi dan kemudahan dalam pemesanan mendapatkan solusi untuk mempermudah dan menghemat dalam pencarian kebutuhannya. Para pelaku binis EO, WO, Jasa Kontraktor Pameran, dan Pendukung event pun mendapatkan solusi disini karena INSTANBooking adalah Market Place buat MICE, bisa juga disebut sebagai one stop market for Tourism, Event & Wedding.\r\n<br><br>\r\n\r\nNah sekarang tunggu apa lagi, kenapa tidak memanfaatkan INSTANBooking sebagai fasilitas untuk branding ( membangun awareness ) dan juga menjadikannya sebagai channel distribusi baru.', 'development', '/assets/images/project/instanbooking-mockup.jpg', 'PT Instanbooking Global Mandiri', '', '2019-06-25 06:09:04'),
(2, 'Soundfren', 'Soundfren adalah aplikasi networking untuk para profesional di industri musik Indonesia. Mimpi kami menghubungkan pelaku utama di industri musik ini dengan satu wadah sehingga industri musik di Indonesia terus melaju ke arah yang lebih baik.', 'development', '/assets/images/project/soundfren-mockup.jpg', 'Telkom Company', '', '2019-06-25 06:09:40'),
(4, 'Skalasound', 'SkalaSound adalah platform yang menghubungkan antara musisi dan event organizer. Mimpi kami membuat sebuah wadah digital bagi pelaku industri musik di Indonesia sehingga musik di Indonesia terus melaju ke arah yang lebih baik.', 'development', '/assets/images/project/skalasound-mockup.jpg', 'Telkom Company', '', '2019-06-25 07:44:05'),
(6, 'Perumnas IDEA Competition', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/perumnas-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(7, 'Kuliner Klaten', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/kuliner-klaten-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(8, 'SIG Fasilitas Umum Kab Klaten', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/sig-fasum-klaten-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(9, 'SPK Penetapan  Kenaikan Gol Karyawan', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/spk-kenaikan-gol-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(10, 'Sistem Informasi Sekolah Kab Surakarta', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/SIS-kab-surakarta-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(11, 'Mentari Tour & Travel', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/mentari-tour-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(12, 'Griya Laksana Hotel', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/griya-laksana-hotel-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(13, 'Ecommerce nz-store', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/nz-store-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(14, 'Soal Pembelajaran', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/soal-pembelajaran-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(15, 'Universitas Muhammadiyah Surakarta - Demo Version', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/UMS-Demo-version-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(16, 'Personal Site', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/first-personal-site-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(17, 'Lembaga AMAL', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/Lembaga-amal-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(18, 'MAN 1 Klaten', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/man1-klaten-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(19, 'Sistem Informasi Wisata Klaten', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/wisata-klaten-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(20, 'Surat keterangan pendamping ijasah', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/surat-keterangan-pendamping-ijasah-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(21, 'Kamus Informatika', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/kamus-informatika-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(22, 'SMP N 1 Polanharjo Klaten', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/smp-polanharjo-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(24, 'Reservasi Stasiun Balapan Solo', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/stasiun-balapan-solo-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05'),
(25, 'Personal Site', 'Merupakan kompetisi inovasi ide tentang pemecahan permasalahan hunian masyarakat dan industri properti/real estate dengan memanfaatkan pola pikir dan teknologi digital di era disruptif yang diselenggarakan pada tahun 2019.', 'development', '/assets/images/project/personal-site-mockup.jpg', 'Risal Andika', '', '2019-06-25 07:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(200) NOT NULL,
  `additional_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_name`, `additional_data`) VALUES
(1, 'profile', '{\"name\":\"Nizam Faisal\",\"birthday\":\"06-05-1994\",\"city\":\"Pati\",\"email\":\"isdnizam1@gmail.com\",\"phone\":\"085696640323\",\"study\":\"UMS (Surakarta)\", \"address\":\"Sukolilo, Pati\",\"website\":\"isdnizam.com\",\"about\":\"Hi! My name is Nizam. I am a Web Developer, and I\'m very passionate and dedicated to my work. With 2 years experience as a professional Web developer, I have acquired the skills and knowledge necessary to make your project a success. I enjoy every step of the design process, from discussion and collaboration to concept and execution, but I find the most satisfaction in seeing the finished product do everything for you that it was created to do.\",\"profile_picture\":\"/assets/images/12.jpg\",\"about_me_picture\":\"/assets/images/foto1.jpg\",\"instagram\":\"nizamfs\"}'),
(2, 'social_media', '[{\"name\":\"facebook\",\"link\":\"https://ssss.com\",\"username\":\"Ni zam\"},{\"name\":\"instagram\",\"link\":\"https://ssss.com\",\"username\":\"nizamfs\"},{\"name\":\"twitter\",\"link\":\"https://ssss.com\",\"username\":\"nizamfs\"},{\"name\":\"linkedin\",\"link\":\"https://ssss.com\",\"username\":\"nizamfs\"}]'),
(3, 'system', '{\"logo\":\"164_banner_picture_a7x .png\"}'),
(4, 'skills', '[{\"name\":\"PHP\",\"ability\":\"95\"},{\"name\":\"Codeigniter\",\"ability\":\"98\"},{\"name\":\"Laravel\",\"ability\":\"80\"},{\"name\":\"Maria DB/MySQL\",\"ability\":\"93\"},{\"name\":\"Rest API\",\"ability\":\"95\"}]\r\n'),
(5, 'other_skills', '[{\"name\":\"CSS\",\"ability\":\"75\"},{\"name\":\"JavaScript\",\"ability\":\"80\"},{\"name\":\"Bootstrap\",\"ability\":\"80\"},{\"name\":\"Server\",\"ability\":\"70\"},{\"name\":\"Version Controls (Git)\",\"ability\":\"94\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_blog`
--
ALTER TABLE `module_blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `module_messages`
--
ALTER TABLE `module_messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `module_project`
--
ALTER TABLE `module_project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module_blog`
--
ALTER TABLE `module_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `module_messages`
--
ALTER TABLE `module_messages`
  MODIFY `id_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `module_project`
--
ALTER TABLE `module_project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
