-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2021 at 04:31 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(2, 'Personal', 'personal', '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(3, 'Web Design', 'web-design', '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(6, 'New Category Edit', 'new-category-edit', '2021-12-27 13:37:44', '2021-12-27 13:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_044638_create_posts_table', 1),
(6, '2021_12_20_113637_create_categories_table', 1),
(7, '2021_12_23_120145_add_is_admin_to_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_app` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_app`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Dolore delectus.', 'et-labore-qui-est', NULL, 'Placeat pariatur commodi aut et deserunt iusto sit. Velit tempora exercitationem quaerat expedita vel et qui. Molestiae dicta aut dolores omnis aut.', '<p>Corrupti voluptatem quas laudantium autem ut. Enim optio inventore nulla accusantium delectus hic excepturi aut. Ut repellendus ullam maxime culpa. Consequatur voluptatem similique expedita.</p><p>Rerum explicabo et dolores illo esse natus. Assumenda ut qui accusantium culpa at commodi. Et sed numquam voluptas fugiat quos quaerat.</p><p>Quis aut illo recusandae inventore voluptas sed. Et doloribus sunt sequi error et quaerat a cumque. Quam et amet quam qui et ullam voluptatibus. Deserunt qui sequi ut nisi sunt.</p><p>Necessitatibus rerum voluptatem accusantium ullam inventore dolores quia. Dolorem ducimus aut ab cumque et atque et enim. Velit voluptates quasi est dolore mollitia facilis incidunt. Necessitatibus aspernatur perferendis rerum ut necessitatibus.</p><p>Unde tenetur quis et natus. Voluptatem sint excepturi harum illo dignissimos sequi. Quasi occaecati incidunt debitis cupiditate sed iste et.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(2, 2, 2, 'Repudiandae nesciunt sit ratione beatae recusandae aut consequatur neque fugiat ipsa.', 'sed-doloremque-voluptatum-quia-accusantium-quam-velit', NULL, 'Et illum atque velit et consequatur. Pariatur sit sed esse itaque. Neque repellendus delectus dolorem quo quod non incidunt reiciendis.', '<p>Nemo qui ut eaque quam nihil voluptas facere. Exercitationem nemo enim est vero. Laborum dignissimos et consequatur accusantium magnam minima consequuntur. Possimus aperiam impedit et quisquam sed debitis autem.</p><p>Molestiae atque quod est ut perspiciatis aut qui. Fugit quis neque facere suscipit voluptatibus explicabo nam. Rerum quia repudiandae est cum enim ipsum quia.</p><p>Autem et autem provident ut. Amet non ut itaque omnis odit aspernatur. Culpa nam voluptas aut consequatur accusantium.</p><p>Laborum cum minus eligendi expedita repellendus reprehenderit corrupti aut. Esse culpa non qui incidunt animi. Aut dolorem maxime vitae sapiente.</p><p>Fugiat nostrum est non vero velit. Esse in saepe laborum quis. Enim dolorem commodi quaerat a qui. Quaerat repellendus perspiciatis perferendis aut eveniet aut.</p><p>Expedita nulla officiis voluptatem rerum quo beatae. In sapiente iusto aspernatur vero. Non et laboriosam saepe ullam. Aut est rerum ipsum sint rem fuga necessitatibus.</p><p>Aut et sed itaque a veniam. Atque magni nemo dolor voluptatem consequuntur ut adipisci et. Eum ipsum qui et itaque id accusamus quod. Eius sint sed nesciunt. Et eveniet veniam repudiandae quam et placeat.</p><p>Vel dolorem aut nisi dolorem nostrum dignissimos. Dolores sapiente quis quis asperiores. Assumenda ratione non recusandae dolorem eligendi vel. Fugiat labore repellendus voluptatibus ipsam autem.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(3, 1, 3, 'Occaecati maxime.', 'quasi-architecto-soluta-id-et-provident-temporibus-culpa-aliquam', NULL, 'Dolores sint voluptate quis. Soluta amet illum est enim dolores. Et est qui illum voluptatibus.', '<p>Aut numquam aut molestiae eius et dolorem debitis. Nihil hic vel veniam aut nihil est. Velit suscipit suscipit et et omnis nulla. Voluptatem vero non quasi fugit qui eligendi.</p><p>Harum harum sequi officiis ut blanditiis nam. Eum facere occaecati sed vel magnam ut. Veritatis sed aut architecto nam quisquam suscipit. Asperiores est voluptatibus numquam labore dolorum doloribus.</p><p>Facilis blanditiis odio ipsum a. Ipsa asperiores repellat autem rerum quibusdam qui ipsa. Quidem nostrum exercitationem non perspiciatis vel quaerat.</p><p>Similique est et optio laboriosam odio magni consequatur. Accusantium excepturi expedita veritatis voluptatem tempore doloribus. Accusantium doloremque voluptatem veritatis voluptatibus.</p><p>Et quia voluptas id voluptatem rerum. Harum et consequatur voluptas deleniti voluptas ut nam cumque. Sed maiores praesentium tenetur aut.</p><p>Iure voluptas iste et et nostrum eveniet amet ut. Et mollitia esse cupiditate commodi. Accusamus corrupti illo non error id blanditiis. Iste eos adipisci odio quia neque.</p><p>Ipsum praesentium qui rem eos atque. Aliquam qui quis sint blanditiis et omnis totam. Aut reprehenderit distinctio et est.</p><p>Est est voluptatum minus ratione facere. Et reiciendis et quis nulla autem earum unde unde. Consequuntur facere corporis illo et rerum dicta sint suscipit. Corrupti occaecati dolor et est ea.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(4, 2, 2, 'Impedit commodi vel nam.', 'omnis-voluptas-sed-doloribus-non', NULL, 'Voluptatem aut ducimus id eum libero dolores. Dolorem expedita sit repellendus rerum. Autem aut eos dolores quia ea corrupti ducimus. Cumque nihil eos unde consequuntur doloremque ab et.', '<p>Consequuntur veniam dignissimos voluptatum non quia quis sint id. Provident exercitationem placeat delectus beatae et nisi. Sed sit dolorem omnis possimus molestias. Eaque non distinctio amet et impedit ut recusandae.</p><p>Labore voluptatum modi et quisquam hic et. Rerum facere provident est. Aliquid iste tempore ullam dicta est earum.</p><p>Natus ut sit nihil fuga modi. Neque quos animi autem voluptatem. Tempore ut iste ratione possimus maiores sunt quo placeat. Et in ut et amet rem soluta.</p><p>Voluptatem doloremque cupiditate quis sunt. Itaque odit consequatur fuga quis. Porro magni unde eligendi voluptatum. Quis pariatur velit illo sunt. Voluptatem ipsa voluptas voluptas quisquam.</p><p>Quo modi eveniet sint sed libero et. Rerum itaque consectetur unde et. Ut velit aut sit. Voluptate quas maxime corporis optio perferendis tenetur est qui.</p><p>Eius enim debitis maiores. Minima beatae non placeat est possimus perferendis soluta. Pariatur repudiandae et id ratione.</p><p>Sunt doloremque reiciendis illo vel rerum nihil. Molestiae a rerum blanditiis tenetur quod sed consequatur. Eos quo voluptate quam molestias voluptas suscipit. Et reiciendis laboriosam sequi sunt in voluptas.</p><p>Ratione et officiis aut et eaque. Rerum temporibus error et. Eius dolorum quasi dolorem quia voluptate. Autem quaerat numquam ad sunt tempore quibusdam.</p><p>Laudantium qui molestiae similique occaecati maiores. Iusto eaque animi est est laborum ea. Quisquam quo id ea ut incidunt. Natus aperiam eius dolores.</p><p>Doloremque quod adipisci a ut aut. Magnam distinctio quod est et. Eius nisi possimus dolore sed rerum quo. Eaque quia cumque quam.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(5, 1, 1, 'Et quis nulla perspiciatis odio mollitia.', 'facilis-fugit-aut-aut-qui', NULL, 'Maxime voluptates voluptatem inventore et. Quos accusantium quod et aspernatur. Magni et dolor blanditiis ut.', '<p>Cupiditate tenetur vitae ut cupiditate impedit quia odit. Vero corporis laboriosam et numquam totam quaerat. Est ipsa non voluptas voluptatem accusantium.</p><p>Excepturi eos voluptatibus minima possimus ut numquam omnis. Eum iure necessitatibus ipsam voluptate voluptas unde ex non. Reiciendis dicta dolores facilis ad. Vitae non dolores tenetur sunt.</p><p>Sit dolores voluptatem at odit. Voluptatem voluptatum quod aspernatur cum dignissimos ut explicabo ad. Eos perferendis nulla dolor in aut maiores.</p><p>Adipisci minima natus quae facilis neque soluta est magnam. Quis fugiat nemo dolores. Id animi veniam harum odio. Nam enim fugiat nulla accusamus.</p><p>Et qui voluptatum ea sit aut illo quia. Eum nisi iure provident excepturi. Dolorem delectus exercitationem ipsam voluptatibus eum. Necessitatibus itaque optio nobis vitae corrupti. Tempore qui error consequatur esse.</p><p>Qui quia qui ducimus iusto. Distinctio totam id cum. Itaque incidunt quae voluptates. Fuga vitae dolorem occaecati itaque voluptas occaecati.</p><p>Accusamus dolor dolorem debitis dolorem pariatur. Eveniet sint perferendis nostrum inventore. Quo error vel aut animi nihil similique sed incidunt. Et quam nihil dolorem laboriosam non.</p><p>Nihil ipsa eos iusto fuga praesentium. Harum ut quia odio. Et et odit sint aperiam neque qui.</p><p>Omnis ad ut fuga illum quibusdam doloremque. Quibusdam non ut eum maxime possimus vitae. Corrupti saepe ullam beatae ad quae. Et voluptatem et optio animi repudiandae sunt et.</p><p>Incidunt ipsa doloribus placeat. Omnis quis quidem pariatur voluptate fugiat quis. Voluptatem non sit voluptatem porro sed. Velit illo consectetur totam sit est corporis ut.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(6, 2, 1, 'Reiciendis repudiandae deleniti qui aut optio voluptatem ea ut minima expedita.', 'et-nam-est-enim-id-cupiditate-non', NULL, 'Velit adipisci consequatur enim sapiente. Vero facere ut unde accusantium error. Enim rerum tempore tempora nostrum culpa rerum.', '<p>Veritatis dolore voluptatem ex consequuntur. Qui recusandae aperiam sequi maxime incidunt amet. Quaerat dolorum esse voluptatibus qui voluptatem at sint nihil. Earum quaerat distinctio ea voluptatem at.</p><p>Ipsam est reprehenderit accusantium asperiores. Voluptatum laudantium iste nesciunt ut velit. Aliquid nihil et reiciendis nulla veniam.</p><p>Quia qui odio iusto qui. Quis laboriosam quidem ab sint cupiditate ullam ab. Molestiae ipsum et quia ea quaerat neque provident. Eligendi perspiciatis maxime repellat nisi. Velit nostrum ad quia est cumque distinctio aliquid.</p><p>Aperiam in occaecati sed molestiae mollitia cupiditate corrupti possimus. Deserunt dolor quisquam aut animi. Necessitatibus minus ut sit accusantium est nostrum. Qui pariatur corporis esse. Necessitatibus qui nihil iste ut doloremque vel est.</p><p>Sed perferendis autem amet et dicta autem culpa. Quis ut sit aspernatur dolorum qui dolore dignissimos.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(7, 2, 1, 'Voluptate vel placeat harum qui.', 'illum-cupiditate-tenetur-hic-distinctio-sint-sit-dicta', NULL, 'Sed qui autem fuga at. Adipisci sint hic vitae delectus eius culpa quisquam. Assumenda reiciendis aut maxime quae itaque. Distinctio laudantium perferendis eos deleniti qui.', '<p>Aliquid inventore omnis esse labore. Quisquam officiis saepe ducimus modi est vel.</p><p>Iste distinctio dolores sed est. Qui et rerum quis qui ipsam. Labore veritatis accusantium blanditiis accusantium non eligendi deserunt aut. Dolor et possimus quos non vero esse.</p><p>Asperiores voluptas quis sapiente ea non nobis. Voluptas excepturi repellat blanditiis dolores et. Ut neque et dignissimos repellendus quia. Ratione odit totam quia consequuntur.</p><p>Id ipsa expedita quas ut sapiente. Omnis iste quasi est cum rerum sapiente. Aut et est sit labore.</p><p>Ipsam et quisquam aut sed aperiam eum expedita soluta. Rerum eaque sequi aut alias sint quam et. Voluptatem fugiat dolorum ipsa ipsa.</p><p>Et architecto consequatur saepe nostrum omnis voluptatibus. Et nulla velit quas facere incidunt dolores. Hic perferendis non eligendi quae.</p><p>Sunt praesentium asperiores qui quisquam natus laudantium. Aut aut deleniti et nihil delectus. Ut voluptates excepturi numquam. Sunt distinctio praesentium maxime quaerat impedit.</p><p>Recusandae aut sit fugit fugit. Et dolorem magnam sunt quia consectetur inventore adipisci. Placeat similique nobis incidunt molestiae temporibus iste voluptas dignissimos.</p><p>Omnis qui sit molestiae occaecati atque non rerum. Ab blanditiis eos dolore. Magni voluptas perspiciatis nemo voluptatum aliquid sapiente nostrum.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(8, 1, 2, 'Labore praesentium nihil aliquid quae dolorum.', 'tempora-suscipit-temporibus-odio-porro', NULL, 'Est possimus voluptatem fugit deserunt. Repudiandae doloremque ullam nostrum impedit veniam quaerat. Magnam deleniti inventore rerum consequatur sed enim veniam est. Et et quo sed qui et magnam.', '<p>Dolorem voluptatem corporis quae fuga. Maxime minus dolorum modi atque suscipit. Ut aspernatur aut dolor voluptas cupiditate. Aut similique natus incidunt earum natus repellendus.</p><p>Eos eius dolore sapiente aliquam reiciendis voluptates earum aut. Distinctio id possimus consequatur ea omnis sint. Ratione mollitia sit libero quo ipsam facere.</p><p>Vel repudiandae facere sit quas. Et et ab modi eligendi nihil voluptate doloribus. Excepturi et voluptatem et qui corporis vero nobis odit. Sed est cumque laborum sunt.</p><p>Modi consequatur voluptatem fugiat laboriosam qui sapiente facere ipsa. Enim ea placeat incidunt labore tempora. Perferendis temporibus aliquid id eum. Est voluptas est mollitia maiores optio sapiente.</p><p>Et tenetur enim officia id vel tempore earum deserunt. Illum voluptatibus ducimus quasi voluptatem impedit quis. Perferendis fugiat delectus iste sunt voluptatum.</p><p>Modi vel esse quam exercitationem optio quia ut. Molestias odit doloremque ipsam omnis.</p><p>Voluptatibus quaerat dolor iste recusandae delectus aliquam modi necessitatibus. Eaque amet labore eveniet at aliquam. Culpa sed odit consectetur eum veniam qui debitis.</p><p>Dolorem labore at et optio. Dolore natus dolore quam rem accusamus id rerum. Aut ut doloremque corporis aspernatur et non consequatur. Nostrum id aut illo explicabo nemo delectus. Ea accusantium dolor dolorem.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(9, 1, 1, 'Provident sint qui accusantium est molestiae.', 'dolore-sunt-ipsam-facere', NULL, 'Animi sunt amet est aliquam iusto a. Asperiores et alias accusamus non est et non libero. Vel voluptatem consequuntur quis enim eveniet omnis deleniti.', '<p>Voluptates fugit ut tempora dolorem aut rerum hic atque. In velit quas et deleniti nisi veritatis repellendus. Similique ut et sapiente est sit ut sunt est. Qui repudiandae iure delectus repellat est quo enim vero.</p><p>Atque quaerat nihil voluptas facilis. Qui consequuntur quas dignissimos fuga ratione. Alias aut sed vel voluptatibus tenetur earum sequi sed. Facilis consectetur consequatur nisi accusantium qui molestias.</p><p>Dolor officia dolores nihil placeat consectetur voluptatem. Beatae aspernatur dignissimos repellat aut. Odio est iusto eligendi veritatis. Commodi nam ut harum recusandae.</p><p>Rem enim laboriosam labore sit. Praesentium iste perferendis nemo doloremque. Omnis aut doloremque saepe accusantium cupiditate. Numquam quam est voluptas eveniet. Cum non similique accusantium.</p><p>Aut reprehenderit natus autem ut non et maiores. Amet repellendus aspernatur perspiciatis amet ut. Accusantium et aut esse et incidunt.</p><p>Quasi totam et molestiae molestiae est repudiandae. Et sed esse sapiente fugiat. Necessitatibus officia ad sunt autem. Modi sunt quia eos maxime et.</p><p>Tempora provident nam sit tenetur. Veritatis eos optio voluptatem asperiores aut aspernatur. Beatae at eos sit quo.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(10, 1, 2, 'Ea repellendus necessitatibus dolore suscipit.', 'dolorem-quia-ut-sint-beatae-eos', NULL, 'Pariatur repudiandae iure commodi laudantium quam quia expedita sunt. Dolores doloremque necessitatibus ut aut animi consequatur. Quae rerum reprehenderit qui aspernatur sit facilis. Modi voluptate aut et dolorem accusamus.', '<p>Minima in et aliquam autem. Illo animi ipsam eos veniam saepe. Placeat ut similique similique iste non ab. Consectetur qui id dolorem omnis laboriosam qui soluta ut.</p><p>Consectetur rem consequatur nemo non. Odio cupiditate eveniet accusamus dolore excepturi eos voluptatem voluptas. Nihil libero sed eum facere repellat quia non. Ipsam quia velit quisquam et distinctio in.</p><p>Maxime consectetur labore recusandae eos ut animi. Aut at corrupti error nisi. Debitis voluptatibus voluptas et aliquam consequatur eum quia et. Expedita nostrum repellendus modi est.</p><p>Nihil ut quia temporibus est dolorem hic in. Impedit blanditiis enim voluptatum architecto. Maiores est labore officia aut pariatur consequatur. Qui assumenda molestiae optio tempore animi. Temporibus iusto non officia ut.</p><p>Ducimus eveniet numquam atque voluptatem harum quia rerum. Sed nihil quisquam ipsa nobis omnis ex. Eligendi est ea eos illo rerum.</p><p>Qui voluptas labore repellendus dolorem nulla asperiores. Et doloremque autem molestias qui dolores doloremque asperiores aliquam. Officiis dolorum eveniet labore doloremque est porro recusandae. Molestiae autem eligendi officia et eligendi et odit.</p><p>Aliquam pariatur et quis provident quia et consectetur. In nam vel in quidem. Dolores qui consequatur odio deleniti animi beatae. Maiores et quia quia recusandae occaecati.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(11, 1, 2, 'Voluptatibus non consequatur sit aut.', 'praesentium-sed-sit-tenetur-est-repellendus-distinctio', NULL, 'Occaecati impedit sit voluptas saepe odio aut. Qui consequatur quis earum. Quod exercitationem consectetur quasi eligendi atque aut et officia.', '<p>Nisi rem aut dignissimos minus quia porro et. Sequi commodi maiores voluptatem ad. Et aperiam deleniti quo labore veritatis beatae totam earum. Ea quidem facilis odio.</p><p>Id libero omnis id facilis corporis incidunt est. Dolores deleniti qui odit est. Blanditiis iure reprehenderit rerum perferendis quis labore. Molestiae dolorem laboriosam amet aliquam. In illum architecto cupiditate reprehenderit dolorem.</p><p>Aut ad ducimus sint dolores autem voluptas. Illum delectus perspiciatis accusamus assumenda laboriosam est et ut. Vitae qui nam perspiciatis in praesentium optio et. Voluptas dicta ut tenetur at.</p><p>Delectus dolorem quam accusantium provident iure enim ipsa. Cumque quos provident nam vero et neque qui reiciendis. Ratione nostrum non quis ut dignissimos et sit occaecati. Voluptatem officia id quisquam aliquid temporibus quis ipsum cumque.</p><p>Repudiandae dolorem reiciendis quia unde. Cupiditate aut sunt odit quasi cum. Blanditiis eos placeat nihil debitis nesciunt voluptates.</p><p>Quis velit rem sunt vel tempore nobis eos. Eos molestias ab velit possimus voluptatibus. Sint nulla dolores distinctio quisquam. Qui quibusdam magni delectus. Aut dolorem saepe et quia deserunt nisi.</p><p>Velit et possimus eligendi fuga. Earum nemo doloremque ipsum amet. Recusandae ut voluptatem et ut earum error.</p><p>Voluptatem labore est tenetur ipsa. Quia dolor rerum consequatur consequatur assumenda. Voluptas totam voluptatem totam asperiores iusto. Doloribus dolor esse voluptas sint.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(12, 2, 2, 'Dolorum rerum et tempora eaque sint.', 'aut-consequatur-dolores-sit-et-iste-totam', NULL, 'Velit illum sed beatae et dolor. Aspernatur amet minus esse. Velit consequatur suscipit qui culpa eveniet voluptas dolorum voluptatem.', '<p>Sit doloremque voluptas ad consequatur sunt voluptatem. Delectus nostrum ad et animi quasi eligendi. Sed quia est est beatae.</p><p>Quam et ipsa aut rem quisquam optio. Enim occaecati odit unde eius nihil sit. Eos nemo libero sed qui.</p><p>Eaque amet aliquam suscipit voluptatem doloribus expedita. Adipisci rem iste voluptas enim sed enim iusto. Et ut aut nesciunt officia explicabo rerum minima. Quia quo deserunt voluptatem consequatur nihil veritatis.</p><p>Ex totam deserunt optio neque dignissimos in nulla. Debitis aut sed ad ut voluptas. Minus iste nihil optio autem nisi suscipit esse. Officiis error nisi possimus non maiores ab. Deleniti sed saepe rerum a quo esse sapiente.</p><p>Tempora qui aut nostrum deserunt quia. Quibusdam beatae optio earum qui consequuntur aspernatur beatae accusamus. Officia error velit alias a dignissimos laudantium quasi. Et dolores ipsa reiciendis sit aut maiores sit.</p><p>Eos voluptates rerum sit consequatur eos. Laborum vel consequatur et. Non sit voluptatum et nihil.</p><p>Placeat quod odio recusandae. Harum laborum voluptatibus aliquid ab nesciunt dolorum est. Aut sunt cum fugit aut soluta. Officiis cupiditate ipsa amet dolore aliquam molestias totam ratione.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(13, 2, 2, 'Omnis facilis possimus.', 'fuga-et-natus-qui-illo-omnis-culpa-impedit-illo', NULL, 'Vero quasi repudiandae ipsa. Reiciendis magnam optio impedit sint et. Ut error ut molestiae fugit repudiandae sequi voluptas. Harum aliquid aspernatur minus laudantium perspiciatis et nesciunt.', '<p>Voluptatem et voluptatem est corporis excepturi ut deserunt. Rerum laboriosam veniam animi voluptas. Eum aut sunt cumque ipsum quae laborum. Omnis alias et quisquam omnis architecto est.</p><p>Rem temporibus aut magni aliquam id magnam necessitatibus. Sit molestias facere ut. Nulla consequuntur culpa aut. Aut eos recusandae voluptatem est quas sed iure.</p><p>Qui nihil facilis ipsum. Corrupti nam est consequatur rerum iste doloremque. Commodi perferendis ipsum sit ea sed aut.</p><p>Ab ut non facere qui deleniti doloremque dolore. Non suscipit voluptatem beatae odit qui. Labore est tenetur enim quod minima.</p><p>Sed quia est voluptas qui et. Iusto iure suscipit quis sint eius asperiores voluptate. Illum nostrum laudantium est quod eius sapiente enim sequi.</p><p>Ratione repellendus qui fugit repellendus quia assumenda eveniet. Aut quasi reprehenderit aut a reprehenderit natus quisquam et. Ea corrupti aut non molestiae.</p><p>Nulla totam sint harum numquam et velit est ea. Id unde quasi recusandae error sed at repellendus aut. Quis esse nisi iusto quia. Adipisci dolorem nihil et magni similique consequatur odio.</p><p>Rerum veritatis at consectetur alias. Veniam saepe sit magni quia repudiandae deserunt. Qui tempora ab neque.</p><p>Iure voluptas dolor dolores illum ut ut. Pariatur repellat iure dolorum nemo aut. Voluptatum expedita saepe nihil qui nihil.</p><p>Cum voluptas recusandae similique sint ea et et. Id aliquam ex consequatur voluptas ratione odit nam. Deserunt ipsum optio quasi quam.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(14, 2, 1, 'Et rerum autem sunt ad occaecati.', 'tempore-impedit-reprehenderit-natus', NULL, 'Iusto nemo quia fugit dolores molestiae. Dolorum iure et nam ut perferendis iste vel. Ex vero qui est blanditiis.', '<p>Voluptates voluptates laudantium omnis eaque voluptatum laborum fuga. Fugiat doloremque quidem exercitationem porro. Explicabo autem illo omnis blanditiis eum minus et. Velit adipisci ullam et a eum amet quaerat expedita.</p><p>Odit omnis ullam quae labore aut. Officia architecto voluptas odio voluptas. Sed excepturi ab enim occaecati.</p><p>Consectetur incidunt modi asperiores corrupti tempora possimus. Voluptas ea consequatur voluptas quia qui. Aut et vitae maxime.</p><p>Recusandae voluptas ipsum asperiores esse consequatur. Ut voluptatum et ex at doloribus. Dolores sunt quia ipsum similique et qui minus voluptatum.</p><p>Cumque iusto mollitia aperiam debitis et. Corrupti cupiditate nostrum explicabo quos. Hic officia et similique sed. Dolores nostrum odit praesentium tempore maxime.</p><p>Illum voluptas tenetur eum praesentium et neque pariatur id. Dolorem voluptas animi eos tempora sequi pariatur nihil. Veritatis vitae asperiores et ut minima tempora. Et delectus fugiat ut aut inventore est. Laudantium accusantium qui aut sit.</p><p>Tempora qui harum ad ducimus et nemo eligendi. Tempora et enim nihil ut laudantium. Et illo fugit dolores vel.</p><p>Sit assumenda hic ea minima. Dolorem perferendis non nemo earum non architecto. Minus vitae officia omnis omnis provident tempora.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(15, 2, 3, 'Velit iure dolor.', 'et-non-molestias-quaerat-velit', NULL, 'Fugit vel sed perferendis velit quis qui. Sit est quis blanditiis illum. Hic maiores architecto similique.', '<p>Voluptatibus nisi necessitatibus tenetur dolorum quis veritatis. Exercitationem repellat aut nobis eaque deserunt ab. Necessitatibus voluptates commodi quo quaerat mollitia sapiente. In ut laborum quisquam aut dolorum sit tempora distinctio.</p><p>Et iure tempora est. Sint adipisci occaecati fuga reiciendis. Voluptatum quod sit ut hic vitae laborum.</p><p>Rerum nostrum quasi quia. Impedit aut maiores molestiae consequatur in neque inventore sed.</p><p>Itaque cumque necessitatibus officiis quas. Quibusdam quis dolor velit velit. Accusamus voluptatem vel dolor voluptatibus.</p><p>Odit aut eius laboriosam ut ullam. Ullam quasi nihil natus est blanditiis suscipit. Provident qui ea perspiciatis quam nemo laborum. Sunt eligendi ex ut.</p><p>Ratione ut natus fugiat unde quam consectetur voluptas. Corporis hic perferendis omnis atque. Saepe facilis maiores voluptatem.</p><p>Fuga eum ut tempore sunt. Ut et voluptatibus molestias qui dolorum. Consequuntur voluptate delectus similique consectetur.</p><p>Vel ab molestias minima minus officia ea sapiente qui. Nobis id laborum est distinctio praesentium. Cum cum aut est et dolorum voluptas asperiores.</p><p>Sed voluptatem odio sed perferendis fuga aut quia. Assumenda ea facilis et rerum nostrum odio autem. Est unde quidem voluptates autem consectetur. Voluptas ipsum praesentium necessitatibus consequatur architecto aut.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(17, 2, 3, 'Voluptates natus asperiores velit minus.', 'optio-minima-ducimus-nisi-sunt-id-officia-praesentium-molestiae', NULL, 'Itaque sit temporibus ab asperiores consectetur sit velit. Qui nihil iusto nisi et. Dignissimos aut hic quibusdam sit repellat eum officiis. Tenetur et cupiditate voluptatem neque.', '<p>Dolore repudiandae provident quasi reiciendis aut. Quia quis iusto quibusdam doloremque.</p><p>Dolor sed et dolore facilis. Fuga eius nihil ipsum quo. Rerum et nulla laboriosam necessitatibus exercitationem tempora nihil.</p><p>Ab beatae provident ut rem atque ea. Eum eligendi ut tenetur unde blanditiis. Reprehenderit veniam animi et unde quae explicabo.</p><p>Pariatur voluptatem quam sit. Nihil ut suscipit assumenda qui. Sit asperiores expedita iusto voluptatum.</p><p>Et ea architecto ab ipsa qui quis praesentium. Ea et non id est deserunt qui. Voluptates rem voluptatum aut saepe ea.</p><p>Optio minus qui autem et est illo quia. Eum corrupti mollitia non expedita ut magni nulla. Quis ea aspernatur et molestias tempore odio.</p><p>Qui molestiae laudantium neque id. Praesentium ex voluptas quia et voluptatem repellendus qui. Ea illo explicabo placeat illo eligendi vitae.</p><p>Dolores numquam harum et nihil soluta quia autem. Est optio perspiciatis error ipsam architecto architecto.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(18, 2, 3, 'Exercitationem veritatis debitis totam aut voluptas laborum hic voluptatem occaecati.', 'reiciendis-nihil-id-placeat-eum-amet', NULL, 'Sunt quisquam voluptatem ad sit officiis numquam laborum. Voluptatem sed quo et. Ut ratione voluptates eos atque nesciunt repellat. Non quasi aliquid aut voluptas sit. Cumque accusantium autem officiis error doloremque pariatur.', '<p>Aut id eum quia et et praesentium. Dolorum hic consequatur alias earum. Ducimus tempore necessitatibus placeat modi omnis perferendis.</p><p>Voluptatem error a autem unde debitis molestiae saepe. Vel architecto aut officiis veniam asperiores. Aperiam fugit expedita a suscipit dolor corrupti.</p><p>Sit voluptates est omnis est. Maiores quia sed ab in. In odio asperiores ipsum assumenda possimus ipsum ipsum.</p><p>Saepe itaque molestiae cumque iusto ex. Perspiciatis cumque facilis accusantium et cupiditate. Eos magni totam consequuntur dolorem placeat. Illum recusandae distinctio deserunt non vitae qui quia eum.</p><p>Unde maiores et tenetur fuga. Et aperiam voluptatem odio odio officia aspernatur animi. Rerum mollitia sint eos minima distinctio.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(19, 2, 1, 'Perspiciatis ullam.', 'eius-ut-modi-eum-quia-voluptates-et-voluptas', NULL, 'Aut laborum autem tenetur ea non est. At cum numquam consequuntur rem est. Explicabo quis ipsa quam distinctio ducimus.', '<p>Distinctio corrupti reiciendis consequuntur perspiciatis cumque. Nihil non aut sunt dolore. Repellendus non sint non nulla.</p><p>Tempora officia possimus nisi ullam. Temporibus consequatur sit sed fugiat. Aperiam enim ratione ratione officia voluptas assumenda.</p><p>Consectetur dolores soluta voluptatem dolores est. Consequatur ut aut omnis voluptatem natus explicabo sint quia. Ut perferendis ut culpa dolor dolor sed est.</p><p>Libero et inventore molestiae aliquam voluptas molestias quisquam. Esse et voluptatum ipsam libero non. Veniam ut rerum quisquam reprehenderit. Aut et officia itaque perferendis.</p><p>Minima ea itaque vero cupiditate est saepe molestiae. Qui soluta voluptates ut nobis voluptatem est. Molestiae iure optio aliquam repudiandae. Consequatur harum et cupiditate iste.</p><p>Suscipit laudantium temporibus numquam rerum. Vel fugiat optio rerum. Quis et illo deleniti ad est quibusdam atque.</p><p>Est voluptatem qui aut et. Labore sed qui nihil ea delectus temporibus aspernatur reprehenderit. Dolorem est explicabo et dignissimos asperiores ad amet ut. Optio nostrum cumque et adipisci.</p><p>Nihil facere temporibus recusandae repellat ut consequatur dolor. Veritatis dolores soluta odit inventore nihil. Velit odit quia nam ab ut.</p><p>Eos est sed excepturi eos. Inventore iusto perspiciatis doloribus. Recusandae qui officiis qui et eligendi numquam rerum.</p><p>Rem harum sit repellendus ut. Quae et magnam aperiam hic cum. Consequuntur ut odit et ipsum rem.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04'),
(20, 2, 2, 'Provident est nemo sed nisi fuga voluptate optio ipsa voluptas.', 'accusamus-consequuntur-consequatur-blanditiis-aut-eum-odit', NULL, 'Ullam quia sint laborum numquam. Et totam hic sapiente nam perferendis inventore. Et aut totam molestiae velit blanditiis tenetur.', '<p>Perferendis vitae non optio voluptas laboriosam molestiae. Blanditiis illum iste aut omnis. Recusandae ipsam repellat iste quod ut in quis. Molestias sequi qui similique.</p><p>Vitae maiores aliquid non in enim ex. Quos modi doloremque ut commodi voluptatum. Doloribus ut harum sapiente hic in fugiat recusandae.</p><p>Mollitia ullam cumque et autem recusandae excepturi qui. Aut necessitatibus libero qui ut fugiat harum et. Sed et eaque qui harum placeat est quis exercitationem. Sunt sed veritatis eius est fugit dolores dignissimos. Est minus error aspernatur aspernatur maxime.</p><p>Quis rerum laboriosam consectetur molestiae. Cum similique fugit similique autem accusamus quam vel ut. Dolore quia distinctio doloremque illum vel eum ab.</p><p>Quia aperiam doloremque officia adipisci accusamus et libero qui. Eum cupiditate tempora nesciunt eaque aspernatur. Nisi consectetur amet omnis facere non minima quia. Et nostrum aut earum voluptatibus optio et qui.</p><p>Rerum assumenda itaque occaecati velit deleniti ducimus expedita. Ut sit fuga qui ut asperiores rerum dolorum. Magni magni officia dignissimos excepturi hic laudantium voluptas vitae. Aut culpa nostrum asperiores quidem.</p><p>Asperiores sint esse corrupti illum adipisci. Sed et ut qui eum. Ut pariatur excepturi magnam sint repellendus et quaerat. Aut ipsa aliquid dolore dignissimos ducimus animi.</p><p>Necessitatibus nisi ducimus ipsum cupiditate. Corrupti vero esse et cumque nesciunt id. Quia eligendi nostrum quia dignissimos ut sit eum.</p>', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Surya', 'surya', 'surya@gmail.com', NULL, '$2y$10$0aBVSh2guQ1k3KtH0.p56.iN6UdPtyShoQz.ZTOdPeo.F0marOfqu', NULL, '2021-12-22 23:02:04', '2021-12-22 23:02:04', 1),
(2, 'Ridwan Pangestu', 'puput55', 'wwastuti@example.com', '2021-12-22 23:02:04', '$2y$10$0aBVSh2guQ1k3KtH0.p56.iN6UdPtyShoQz.ZTOdPeo.F0marOfqu', 'N4CB4hJpco', '2021-12-22 23:02:04', '2021-12-22 23:02:04', 0),
(3, 'Caket Habibi', 'tarihoran.zamira', 'canggraini@gmail.com', '2021-12-22 23:02:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6DyvSzmPqkjQnYLqox5fbUetlzaOsv5P0CtPxFa2EVDMVdIyd1f62oXVyvaJ', '2021-12-22 23:02:04', '2021-12-22 23:02:04', 0),
(4, 'Ulva Irma Lailasari S.Ked', 'unjani.hastuti', 'soleh69@example.org', '2021-12-22 23:02:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KYzOKKF76M', '2021-12-22 23:02:04', '2021-12-22 23:02:04', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
