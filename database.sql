-- Adminer 4.8.1 MySQL 11.4.2-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `birthdate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `authors` (`id`, `name`, `bio`, `birthdate`, `created_at`, `updated_at`) VALUES
(1,	'Vladimir Erdman',	'Calco pauper crebro deludo conculco eius appono amo dignissimos taceo. Aspernatur super speculum attollo quam tactus sono. Debeo voluptatum campana amplitudo appono stipes taceo despecto voluptas universe. Eius viduo consequatur. Eveniet aperio cimentarius correptius substantia varius decet abeo pauper tondeo.',	'2023-10-02',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(2,	'Bryon Murray',	'Eligendi caterva administratio. Trepide texo doloremque culpo comminor tametsi. Tamisium veritas voro commodi deprimo cibo placeat amplexus abstergo. Cohibeo creator truculenter candidus. Eligendi commodo tenetur tondeo.',	'2024-02-03',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(3,	'London Boehm',	'Tui ver defleo. Adficio odit voveo patria creta tam circumvenio. Adsuesco temporibus excepturi arma veritatis. Paens pauci patior bene tero verecundia laudantium totus supra. Compello minima cunabula.',	'2024-03-11',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(4,	'Cooper Windler-Gleason',	'Collum consuasor animi ademptio. Iure derideo ager. Sui adficio nam. Curvo eaque sunt. Vinco tego volup cometes.',	'2024-04-14',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(5,	'Shemar Wunsch',	'Stabilis peior nihil ustulo curiositas creta blandior crustulum accendo culpa. Odio voco quisquam cohors verbum thymum tonsor. Varius amita sequi cotidie copia pectus cubo vindico. Solium sumptus doloribus ventus tripudio corrupti accommodo. Corporis deleo modi tredecim acervus.',	'2023-11-01',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(6,	'Jeffry Aufderhar',	'Quis talio armarium arbustum defleo sustineo votum volup. Suspendo demum deludo talus. Canonicus labore aveho suscipio eius. Texo ascisco nemo veritatis autus. Vapulus tumultus venio cunctatio.',	'2024-06-11',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(7,	'Asha Turcotte',	'Color thalassinus laborum demens solus admiratio deprimo trucido. Ratione aqua saepe adeo reprehenderit vinculum thymbra. Curvo alias civitas. Eligendi attonbitus atrocitas consectetur bene alveus amo amoveo. Curvo pax correptius bellicus sono terga coma decretum patrocinor.',	'2024-06-03',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(8,	'Stanford Dooley',	'Arguo aspernatur celer timidus deporto terminatio vilis sumo clamo alo. Universe acies altus tenuis auxilium sodalitas avarus. Culpa vigor clarus. Ater adipiscor adhaero possimus sub demonstro ultra nisi. Currus facilis verecundia delego.',	'2023-07-27',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(9,	'Torey Keeling',	'Confido calco vae credo incidunt solio adinventitias animi acerbitas. Volva somnus sophismata. Virgo averto aut delectus templum. Pax deprecator angulus acer tabgo officiis bos tondeo. Maxime suscipio utrum confugo uredo speculum solium adsidue cognatus capillus.',	'2023-09-12',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(10,	'Adan Lesch',	'Spectaculum valetudo aggero urbanus porro vita debilito cupio. Texo viscus thesis. Odit cribro subito defleo sumptus vehemens. Incidunt suggero adamo beneficium vesco solutio debeo. Tantum curtus sum voco molestiae tergo provident usque ademptio.',	'2023-09-15',	'2024-07-08 03:14:54',	'2024-07-08 03:14:54');

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `published_date` date NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `books_author_id_foreign` (`author_id`),
  CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `books` (`id`, `title`, `description`, `published_date`, `author_id`, `created_at`, `updated_at`) VALUES
(1,	'Doloribus communis catena alias vindico tyrannus capillus utroque.',	'Clementia circumvenio occaecati studio. Deficio administratio conqueror decor accedo censura illum cena atrocitas benevolentia. Tergeo condico deputo adinventitias tego arma curiositas sto. Aequus accusator claustrum uter cultellus textor absconditus. Clam creo numquam templum adfero.',	'2024-01-28',	1,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(2,	'Velum avarus viduo.',	'Canto cribro creber tantillus dolorem voveo audacia sto arcesso. Sublime vesco canis cauda consequatur tyrannus debeo acceptus tui. Ara beneficium totidem uberrime adimpleo vilitas. Altus autem averto defessus unus adimpleo timor delectus. Sumptus adstringo auctor tristis.',	'2024-06-16',	2,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(3,	'Atrox cohibeo bellum callide tabesco color depulso vero suasoria.',	'Derideo tabernus suffragium abeo uxor nam quos fugiat conculco. Comptus supplanto laudantium aliquam voluptates. Degusto delectus defendo nesciunt. Ad perferendis somnus videlicet patior ulciscor. Amitto quia atque testimonium bestia vulticulus paens coerceo.',	'2024-07-03',	3,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(4,	'Claustrum vicinus coepi cum aptus temporibus deripio tepesco venustas voluntarius.',	'Claudeo tripudio quos termes artificiose templum assumenda. Conculco defaeco demulceo abduco textor. Theatrum solutio magni infit. Bardus talus cubo suscipit vigor. Earum vestrum animi.',	'2024-05-05',	4,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(5,	'Arbitro testimonium volva cariosus umquam.',	'Trado capio natus subnecto supra ullus chirographum ullam turba. Vomica stultus commodi solus. Sortitus quibusdam acerbitas ustulo angustus chirographum. Comitatus vesper expedita unde canis caecus nam quia. Deserunt teres autus conspergo nesciunt modi commemoro nihil cenaculum beneficium.',	'2023-07-27',	5,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(6,	'Abscido textor provident accusantium.',	'Vociferor somniculosus supellex totus reiciendis theca. Debitis asper calco carus fugit reprehenderit odio balbus. Conspergo pariatur sopor valde cunabula cibo deficio consequuntur dapifer. Cognomen torrens bellicus appositus nemo ancilla saepe. Contego curo cauda aperte aeneus.',	'2024-04-18',	6,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(7,	'Custodia cometes textus demonstro aduro accusamus tabella coruscus.',	'Tego vulgo tui unus carpo. Quisquam turpis derideo conscendo caritas blanditiis cauda aestas spes. Vester vitiosus sunt ulterius. Bestia aureus capio curis. Sub coaegresco clamo suffoco tandem calamitas.',	'2024-02-01',	7,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(8,	'Maiores condico acidus absconditus voluptatum vicinus adduco.',	'Coniecto usus synagoga natus antepono vere. Comitatus temeritas solio undique. Alias super vulariter. Suffragium bellicus aureus damnatio thorax. Conspergo caelum in vulticulus amet sum dicta curtus.',	'2023-11-19',	8,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(9,	'Tutis at sto.',	'Denuncio colligo tandem alienus uxor sui thesis. Triduana tandem cupressus utpote ascit terga compono curto est. Tam architecto quis deleo cupiditas minima. Asperiores patruus tumultus correptius carus statua velum tardus aeneus traho. Versus harum ater.',	'2023-08-04',	9,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54'),
(10,	'Rerum trepide complectus.',	'Capio comminor necessitatibus ceno umquam denego cattus adeo. Calco sumptus assentator. Suggero neque tricesimus ubi sto thymum acerbitas tabella. Cupio denuo terebro soluta casso derelinquo benigne sint quae. Delibero curiositas abeo supellex delicate.',	'2024-04-25',	10,	'2024-07-08 03:14:54',	'2024-07-08 03:14:54');

DROP TABLE IF EXISTS `_migrations`;
CREATE TABLE `_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1,	'20240707175454_create_authors_table.ts',	1,	'2024-07-08 02:45:51'),
(2,	'20240707175839_create_books_table.ts',	1,	'2024-07-08 02:45:51');

DROP TABLE IF EXISTS `_migrations_lock`;
CREATE TABLE `_migrations_lock` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `_migrations_lock` (`index`, `is_locked`) VALUES
(1,	0);

-- 2024-07-08 03:15:27
