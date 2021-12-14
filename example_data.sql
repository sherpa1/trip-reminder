SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `notes` (`id`, `content`, `position`, `done`, `trip`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1,	'Préparer ma valise',	0,	0,	1,	1,	1,	'2021-12-14 16:04:22',	'2021-12-14 16:04:22'),
(2,	'Acheter mon ticket d\'avion',	0,	1,	1,	1,	1,	'2021-12-14 16:35:08',	'2021-12-14 16:35:08');

INSERT INTO `trips` (`id`, `name`, `planned_on`, `done`, `created_by`, `updated_by`, `created_at`, `updated_at`, `user`) VALUES
(1,	'Voyage à Rome',	'2021-12-24',	0,	1,	1,	'2021-12-14 16:02:00',	'2021-12-14 16:04:04',	1);

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmationToken`, `confirmed`, `blocked`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1,	'Tom Watson',	'john@watson.com',	'local',	'$2a$10$cEJmBLE0OYgpEKNyq685uOT6hUq3R2ISGlGx8Ulk.V59v0wbkmACC',	NULL,	NULL,	1,	0,	1,	1,	1,	'2021-12-14 16:03:45',	'2021-12-14 16:03:45');