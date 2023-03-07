-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.28 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for test_companies
CREATE DATABASE IF NOT EXISTS `test_companies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_companies`;

-- Dumping structure for table test_companies.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `companyId` int unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `companyRegistrationNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `companyFoundationDate` date NOT NULL,
  `country` varchar(100) NOT NULL,
  `zipCode` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `streetAddress` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `companyOwner` varchar(50) NOT NULL,
  `employees` int NOT NULL,
  `activity` varchar(50) NOT NULL,
  `active` enum('true','false') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_companies.companies: ~100 rows (approximately)
INSERT INTO `companies` (`companyId`, `companyName`, `companyRegistrationNumber`, `companyFoundationDate`, `country`, `zipCode`, `city`, `streetAddress`, `latitude`, `longitude`, `companyOwner`, `employees`, `activity`, `active`, `email`, `password`) VALUES
	(1, 'Mauris PC', '177874-5578', '1990-05-01', 'Belarus', '71137', 'Villa Verde', 'P.O. Box 391, 1457 Sed St.', 50.67063000, -75.37700000, 'Travis Elliott', 11, 'Car', 'false', 'Donec.sollicitudin@Duisacarcu.com', 'felis'),
	(2, 'Magna Lorem Inc.', '896098-0855', '1991-10-22', 'Philippines', '60934', 'Bahawalnagar', '6753 Sit Street', 4.69671000, -101.06612000, 'Hamilton Pearson', 62, 'Building Industry', 'false', 'metus.facilisis@Proinsedturpis.ca', 'sem,'),
	(3, 'Egestas Hendrerit Neque LLP', '615308-4733', '1994-06-10', 'Western Sahara', '442580', 'Lagundo/Algund', 'P.O. Box 857, 1455 Nullam Street', 89.75893000, -125.99941000, 'Todd Douglas', 230, 'Building Industry', 'true', 'lacus.Quisque@posuerecubiliaCurae.org', 'vestibulum'),
	(4, 'Ipsum Ac Mi Company', '609476-5515', '1984-11-28', 'Northern Mariana Islands', '64967', 'Lonquimay', 'Ap #191-7809 Nec Ave', 71.41273000, -64.46302000, 'Hayes Harper', 491, 'Growing Plants', 'false', 'convallis.dolor@perinceptos.ca', 'nulla.'),
	(5, 'Nibh Phasellus Nulla Consulting', '875175-2307', '2013-12-12', 'French Guiana', '61307', 'Pelluhue', 'P.O. Box 371, 6261 Non, St.', -17.63940000, 55.73754000, 'Norman Walls', 401, 'IT', 'true', 'massa.non.ante@auctor.co.uk', 'nec'),
	(6, 'Ac Corp.', '047597-1263', '1990-05-12', 'United Arab Emirates', '6648', 'Flawinne', '481-9974 Vestibulum Road', 81.44500000, -103.01562000, 'Jerry Herman', 399, 'Car', 'true', 'ornare.sagittis@orciadipiscing.org', 'ornare,'),
	(7, 'Ut Molestie Company', '387343-2466', '2019-11-08', 'Algeria', 'DB15 0TF', 'Lacombe County', 'Ap #781-3660 Leo. Av.', -11.06026000, -150.11469000, 'Nicholas Stuart', 177, 'Building Industry', 'true', 'Donec@Etiam.com', 'nonummy'),
	(8, 'Justo Eu Arcu Inc.', '495058-7198', '2015-07-02', 'Denmark', '2116', 'Selkirk', 'Ap #385-8575 Nullam Rd.', 9.44015000, -126.00997000, 'Amery Huber', 326, 'Food', 'false', 'mollis.dui.in@utpharetrased.co.uk', 'vulputate'),
	(9, 'Eu Institute', '496281-9175', '2000-06-11', 'Albania', '09469', 'Pittsburgh', 'P.O. Box 924, 1815 Elit. Av.', -83.85754000, 21.33176000, 'Gage Duncan', 99, 'Food', 'true', 'Nunc@ac.org', 'Sed'),
	(10, 'Rutrum Consulting', '404429-0841', '1995-12-02', 'Korea, North', '528938', 'Kamarhati', 'Ap #732-2307 Augue St.', 86.50586000, -94.03420000, 'Hashim Curry', 132, 'Growing Plants', 'false', 'quis.turpis@conubianostra.org', 'congue.'),
	(11, 'Dapibus Quam Limited', '874092-9669', '2014-09-14', 'Nauru', 'Z5 0NG', 'Laon', '150-2314 Dis Rd.', -61.57830000, -113.53350000, 'Paki Elliott', 439, 'Building Industry', 'false', 'non.nisi@et.org', 'dolor'),
	(12, 'Ac Institute', '147153-5631', '2020-06-25', 'Ecuador', '8918', 'Westmount', '757-1405 Tempor, Rd.', -29.21539000, 80.31999000, 'Nathaniel Summers', 202, 'Growing Plants', 'true', 'ullamcorper.magna@massaQuisque.ca', 'In'),
	(13, 'Adipiscing Fringilla Consulting', '943211-1384', '2008-07-01', 'Armenia', 'V9N 3K8', 'La Cisterna', '389-4506 Malesuada Rd.', -40.90990000, 0.55558000, 'Gray Nicholson', 250, 'Growing Plants', 'false', 'amet.massa@Curabitur.co.uk', 'lorem'),
	(14, 'Urna Et Arcu Incorporated', '296422-0780', '1980-03-13', 'Falkland Islands', '51-352', 'Genk', 'Ap #126-6407 Ullamcorper, St.', -48.30411000, 166.02567000, 'Joel Bartlett', 48, 'Growing Plants', 'true', 'egestas.nunc@lobortis.net', 'enim'),
	(15, 'Nam Porttitor Scelerisque Industries', '832132-1518', '1982-04-13', 'Ireland', '926236', 'Remscheid', 'P.O. Box 648, 9240 Suspendisse St.', 34.05535000, 71.44296000, 'Cain Coleman', 117, 'Car', 'true', 'quam.Curabitur.vel@Vivamusnibhdolor.co.uk', 'Pellentesque'),
	(16, 'Mauris PC', '038700-0656', '1989-02-16', 'Dominica', '57717', 'Norrköping', 'Ap #859-4029 Vivamus Av.', -79.15152000, -16.95243000, 'Joshua Farley', 352, 'Building Industry', 'true', 'lacinia.Sed@mauriseu.ca', 'faucibus'),
	(17, 'Rhoncus Nullam Velit LLP', '113075-2072', '1977-01-29', 'Lesotho', '98940', 'Ipís', '3927 Adipiscing Av.', -5.63582000, 156.31194000, 'Grady Brady', 310, 'Car', 'true', 'commodo@conguea.com', 'adipiscing'),
	(18, 'Sagittis Placerat PC', '897659-4542', '2000-07-27', 'Marshall Islands', '5625', 'Dokkum', '1405 Mauris St.', -39.51426000, 58.90849000, 'Hoyt Sparks', 134, 'Car', 'true', 'in.consequat@tellusidnunc.net', 'amet'),
	(19, 'Ligula Aliquam Erat PC', '349714-9892', '1998-04-19', 'Sri Lanka', '18789-978', 'Kalat', '9174 Morbi Street', 66.41582000, 41.43761000, 'Jamal Miller', 352, 'IT', 'false', 'Cras.dolor@egestashendrerit.edu', 'magna.'),
	(20, 'Enim Consequat Corporation', '468296-7726', '1993-11-06', 'Bosnia and Herzegovina', '25017', 'Kassel', '207-8810 Eleifend Street', 18.59296000, 169.04322000, 'Blake Armstrong', 495, 'Car', 'false', 'facilisi.Sed.neque@Cras.ca', 'sodales'),
	(21, 'Vulputate Mauris Limited', '015506-0312', '1978-03-28', 'Czech Republic', '92256', 'Bath', 'P.O. Box 593, 1211 Enim Rd.', -69.00851000, -146.53661000, 'Griffin Mcgowan', 216, 'Building Industry', 'false', 'In@erat.org', 'justo.'),
	(22, 'Aliquam Enim Corporation', '298024-3410', '1997-04-15', 'Finland', '40134-63707', 'Arbre', 'P.O. Box 812, 6627 Ridiculus Rd.', 33.13149000, 113.64074000, 'Ralph Everett', 94, 'Building Industry', 'true', 'Nulla@odio.co.uk', 'risus'),
	(23, 'Ac Consulting', '213715-0500', '1994-05-08', 'Norway', '27343', 'Maransart', 'Ap #733-9569 Tempor Street', 53.31115000, -122.27091000, 'Hiram Jimenez', 441, 'Growing Plants', 'true', 'tortor.dictum.eu@Integer.co.uk', 'eleifend.'),
	(24, 'Aliquet Phasellus Foundation', '299975-9497', '2016-07-19', 'Saint Lucia', '94634', 'Denderbelle', 'P.O. Box 350, 5648 Rutrum. Av.', -19.41137000, 63.36240000, 'Ezra Garrison', 442, 'IT', 'true', 'aliquet.molestie@dolor.edu', 'lectus'),
	(25, 'Vel Lectus Consulting', '284240-1461', '1980-07-23', 'Bermuda', '069530', 'Ingelheim', '868-3049 Aliquam Ave', -69.10617000, -39.25967000, 'Cain Colon', 388, 'Growing Plants', 'true', 'vulputate@odioNaminterdum.org', 'Aliquam'),
	(26, 'Diam Lorem Auctor Limited', '737022-2007', '2014-08-06', 'Czech Republic', '03025', 'Retiro', '115-4328 Mollis. Avenue', 25.26154000, 88.27236000, 'Lucian Guthrie', 55, 'Car', 'true', 'iaculis.odio@risusodioauctor.org', 'felis.'),
	(27, 'Fusce Aliquet LLC', '505774-5464', '2012-07-07', 'French Guiana', '56191', 'Sambreville', 'P.O. Box 611, 2079 A Street', -45.02808000, -32.71053000, 'Gray Elliott', 232, 'Building Industry', 'true', 'Duis.a.mi@faucibus.org', 'accumsan'),
	(28, 'Duis Risus Odio Associates', '664171-0568', '1981-07-29', 'Martinique', '42584', 'Salamanca', '621-155 Non Rd.', -56.14818000, -23.17769000, 'Justin Deleon', 229, 'Car', 'false', 'rhoncus.Proin@nullaatsem.org', 'id'),
	(29, 'Mattis Ornare Incorporated', '644302-8698', '1976-06-18', 'Macao', '492928', 'Leipzig', 'Ap #418-6201 Aliquam Av.', -39.22581000, 42.64547000, 'Kareem Freeman', 346, 'Growing Plants', 'false', 'commodo@mauris.com', 'lacus.'),
	(30, 'Nisl Corp.', '446969-7454', '1979-09-25', 'China', '18662', 'Znamensk', '527-6157 Feugiat St.', -71.06829000, -7.76610000, 'Philip Garcia', 405, 'Car', 'false', 'faucibus@nibhQuisque.net', 'enim.'),
	(31, 'Ligula Aenean Gravida Consulting', '165190-5026', '1977-02-06', 'Suriname', '51530', 'Brighton', '528-2561 Morbi Ave', 20.87619000, 37.10334000, 'Rooney Gardner', 101, 'Building Industry', 'true', 'risus.Duis.a@malesuadafames.ca', 'urna.'),
	(32, 'Cras Sed Institute', '793259-0073', '2018-10-28', 'Tonga', 'Z8134', 'Sitapur', '976-2786 Neque Ave', -78.81951000, 102.88379000, 'Lucius Miller', 435, 'Growing Plants', 'false', 'porttitor.scelerisque.neque@lectusCum.edu', 'Nunc'),
	(33, 'Nibh Ltd', '609207-8762', '2007-11-21', 'Kiribati', 'T49 8AU', 'Chimbarongo', '829-2022 Dis Ave', -46.72476000, 147.20419000, 'Gannon Park', 320, 'Building Industry', 'false', 'in.faucibus@vulputate.net', 'ipsum.'),
	(34, 'Curae; Phasellus Limited', '308488-6708', '2009-05-22', 'Kyrgyzstan', 'MX2C 2DE', 'Ebenthal in Kärnten', '703-8299 Tellus. St.', 55.56007000, 57.54254000, 'Levi Vance', 25, 'Building Industry', 'false', 'cursus.et.eros@urnaNuncquis.org', 'amet'),
	(35, 'Nec Diam PC', '384120-5713', '1989-06-14', 'Jersey', 'Z5716', 'Ciudad Obregón', 'P.O. Box 671, 5515 Ornare St.', 50.92743000, -127.58284000, 'Neil Hampton', 62, 'Car', 'true', 'magna.tellus@Quisquetinciduntpede.edu', 'Integer'),
	(36, 'Sem Egestas Blandit Foundation', '298751-6321', '1976-09-20', 'Congo, the Democratic Republic of the', 'L0Z 4Y2', 'Alcalá de Henares', 'Ap #589-6402 In Av.', -35.61260000, -132.46325000, 'Steel Watkins', 291, 'Growing Plants', 'false', 'dictum@necleo.net', 'urna'),
	(37, 'Enim Foundation', '479882-8747', '2017-02-11', 'Central African Republic', 'E4T 4W7', 'Tonk', 'P.O. Box 250, 6935 Lorem, St.', 71.15153000, -22.73678000, 'Oleg Walter', 303, 'Growing Plants', 'false', 'montes.nascetur@mattisvelit.com', 'eget,'),
	(38, 'Orci Company', '193154-2755', '2004-12-25', 'Singapore', 'RE42 1LB', 'Madrid', '944-3039 Consectetuer Rd.', -17.89947000, 177.50542000, 'Hunter Walls', 319, 'Food', 'true', 'Suspendisse.aliquet.molestie@utcursus.com', 'at'),
	(39, 'Nisi Magna Industries', '458912-8406', '1995-05-12', 'Lithuania', 'C88 1SA', 'Bonnyrigg', '540-4734 Nisi St.', -40.42055000, 126.40650000, 'Baker Stephenson', 321, 'Food', 'true', 'mattis.semper.dui@velit.co.uk', 'urna'),
	(40, 'In At Pede Ltd', '399639-6861', '2007-05-19', 'Norway', '46738', 'Gorbea', 'Ap #494-1350 Orci, Rd.', -44.48784000, 21.20729000, 'Bradley Small', 474, 'Building Industry', 'true', 'Nam.porttitor@lacusUt.com', 'sodales'),
	(41, 'Bibendum Ullamcorper Duis LLP', '697656-2709', '2012-05-07', 'Armenia', '4421', 'Zona Bananera', 'P.O. Box 798, 7239 Ligula. St.', -26.71934000, 136.00369000, 'Aidan Ortiz', 204, 'Growing Plants', 'false', 'Nunc.quis.arcu@anunc.org', 'arcu.'),
	(42, 'Orci Phasellus LLP', '862779-8948', '2019-02-06', 'Guinea-Bissau', '60410', 'Springfield', 'Ap #759-3004 Eu, Ave', 29.01183000, -112.70922000, 'Camden Neal', 191, 'Building Industry', 'true', 'eu@sed.ca', 'lacus.'),
	(43, 'Etiam Laoreet Libero PC', '505947-1119', '1980-02-29', 'Isle of Man', '2940', 'Fort McPherson', 'Ap #205-6670 Lobortis Street', 64.29502000, -9.12611000, 'Hilel Hays', 98, 'Growing Plants', 'true', 'mauris@Crasvehiculaaliquet.edu', 'pharetra'),
	(44, 'Congue Elit Sed PC', '054324-8066', '1981-12-22', 'Curaçao', '37939', 'Belo Horizonte', '6105 Non Av.', 14.90896000, 43.65768000, 'Walter Riggs', 338, 'Growing Plants', 'false', 'imperdiet.nec@velsapien.ca', 'in'),
	(45, 'Tincidunt Congue Turpis Corporation', '665763-8158', '2017-12-18', 'Hong Kong', '291325', 'Aieta', 'P.O. Box 673, 7687 Dui St.', 36.76340000, 17.96623000, 'Paul Lancaster', 112, 'Growing Plants', 'true', 'natoque.penatibus@nisl.ca', 'quis'),
	(46, 'Netus Et Malesuada Corporation', '348579-3487', '2001-12-06', 'Burkina Faso', '1174', 'Wagga Wagga', '319-2330 Lacinia St.', 34.72568000, 167.76303000, 'Wayne Tucker', 369, 'Car', 'true', 'eu.tellus.Phasellus@Quisquefringilla.net', 'orci'),
	(47, 'Vehicula Pellentesque Corp.', '809126-6471', '1980-10-06', 'Dominica', '1028', 'Mainz', '788-8720 Velit Street', -86.07504000, 70.40259000, 'Samuel Le', 453, 'Building Industry', 'false', 'Donec@tellusAeneanegestas.edu', 'lacus.'),
	(48, 'Ante Bibendum Ullamcorper Foundation', '952209-0514', '1987-04-09', 'Jersey', '984637', 'Bouwel', 'P.O. Box 863, 9246 Interdum. Avenue', 76.39694000, 34.35133000, 'Aristotle Noble', 282, 'Growing Plants', 'true', 'Fusce.dolor@mauriselitdictum.edu', 'aliquam'),
	(49, 'Mauris Ipsum Inc.', '229141-4403', '1999-09-02', 'Laos', 'Z1900', 'Villers-sur-Semois', '7076 Et Av.', -55.29531000, -85.93836000, 'Phillip Erickson', 3, 'Growing Plants', 'false', 'augue.malesuada.malesuada@sodalesMauris.co.uk', 'magna.'),
	(50, 'Sit Amet Consectetuer Inc.', '229482-3634', '1977-12-19', 'Moldova', '5738', 'Ereğli', 'Ap #320-4007 Mi Avenue', -64.51829000, -165.12548000, 'Uriel Blair', 99, 'Car', 'false', 'nibh@diamluctus.edu', 'eget,'),
	(51, 'Accumsan Laoreet Ipsum LLP', '685555-2490', '2000-07-31', 'Mauritania', '19417', 'Galzignano Terme', '617-2164 Sem Rd.', 16.83673000, 29.97678000, 'Alec Best', 308, 'Food', 'false', 'ut@loremvehicula.net', 'nec'),
	(52, 'Ut Erat Sed LLC', '616405-8320', '1981-12-01', 'Barbados', '5855', 'General Escobedo', '7817 Mauris Road', -10.94425000, 78.59853000, 'Brett Vance', 43, 'Building Industry', 'true', 'tellus.faucibus.leo@Donecnibh.com', 'cursus'),
	(53, 'Diam Proin Limited', '043851-7658', '1997-12-28', 'France', 'WO9J 9RO', 'Reno', 'P.O. Box 229, 7505 Orci St.', 87.77386000, 168.01604000, 'Vernon Harris', 56, 'Building Industry', 'true', 'sem.Nulla.interdum@luctusfelis.org', 'Etiam'),
	(54, 'Non Sapien Industries', '592842-3614', '1993-11-14', 'Reunion', '8630 PX', 'Blankenberge', 'P.O. Box 919, 7986 Consequat Ave', 76.44835000, 99.70048000, 'Cole Hopper', 72, 'IT', 'true', 'metus.Aliquam.erat@ametrisusDonec.co.uk', 'luctus,'),
	(55, 'Feugiat Metus Sit Ltd', '296701-2515', '1976-10-31', 'Sweden', '40323', 'Llanquihue', 'Ap #486-6806 Ornare Rd.', 11.36357000, 8.23815000, 'Colton Stein', 281, 'Car', 'false', 'Donec@acsemut.co.uk', 'parturient'),
	(56, 'Et Euismod Et Consulting', '934575-2878', '2019-02-21', 'Curaçao', '55507', 'Warminster', 'Ap #974-3390 Suspendisse Avenue', -58.95948000, 29.22972000, 'Demetrius Holloway', 396, 'Food', 'false', 'Proin.nisl.sem@mattis.ca', 'primis'),
	(57, 'Mollis PC', '212117-5679', '1989-02-17', 'Albania', '2938', 'Jackson', 'Ap #348-2018 Lectus Rd.', -51.36397000, -149.81456000, 'Eaton Pennington', 397, 'Building Industry', 'true', 'vitae.erat@sapien.org', 'egestas,'),
	(58, 'Aliquet Molestie Tellus Company', '857403-6045', '1998-11-20', 'Swaziland', '8046', 'Eisenhüttenstadt', 'P.O. Box 303, 3224 Vitae Rd.', 17.36283000, -10.46160000, 'Emmanuel Bishop', 467, 'Growing Plants', 'true', 'Etiam@ullamcorperviverraMaecenas.com', 'nunc.'),
	(59, 'Odio Semper Cursus Limited', '598188-9735', '2014-11-13', 'Spain', '83062', 'Stroitel', '974-1180 Cum Road', 59.95113000, 51.24992000, 'Timon Hatfield', 130, 'Car', 'false', 'ipsum@nisiMauris.edu', 'sem'),
	(60, 'Sit PC', '496815-6002', '2002-03-12', 'Heard Island and Mcdonald Islands', '01452', 'Villers-Poterie', 'P.O. Box 880, 9209 Volutpat St.', 78.58619000, -139.04453000, 'Timothy Levy', 58, 'Building Industry', 'false', 'Donec.tincidunt.Donec@Nullamut.ca', 'Suspendisse'),
	(61, 'Urna Suscipit Nonummy Consulting', '436989-3856', '2010-05-08', 'Kuwait', '54468', 'Falciano del Massico', '527-4117 Nisi St.', 85.66114000, 128.91869000, 'Josiah Dunn', 348, 'Food', 'false', 'Quisque@semmollis.com', 'pharetra,'),
	(62, 'Posuere Cubilia Curae; Corp.', '987019-0098', '2009-05-01', 'Cuba', '71-267', 'Plymouth', '6625 Orci. Av.', -76.55281000, 157.25754000, 'Joshua Roth', 364, 'Food', 'true', 'Sed.nulla.ante@elitdictum.org', 'risus.'),
	(63, 'Proin Non Massa Industries', '844094-8498', '1981-09-07', 'Grenada', '40306', 'Bhind', '311-244 Nullam Ave', -33.48850000, -76.95441000, 'Aquila Campbell', 128, 'Car', 'false', 'quis@quisarcuvel.com', 'fames'),
	(64, 'Nam Porttitor Scelerisque Incorporated', '529736-5081', '1985-07-31', 'Mali', '2516', 'Tiltil', '2838 Non St.', -83.87990000, -160.58447000, 'Micah Kim', 82, 'Growing Plants', 'false', 'dignissim.magna@Maurisnondui.ca', 'lorem,'),
	(65, 'Dui Semper Associates', '686201-0441', '1986-03-20', 'Turkmenistan', '60112', 'Zandvoorde', '908-9132 Mi St.', 18.87049000, -5.20058000, 'Chandler Vasquez', 425, 'Building Industry', 'false', 'magnis.dis.parturient@enim.net', 'vulputate'),
	(66, 'Lectus Company', '148952-0740', '2004-03-05', 'Botswana', '93877', 'Bonnyrigg', 'Ap #851-5106 Risus. Avenue', -72.44128000, -167.34157000, 'Leo Hartman', 327, 'IT', 'true', 'vitae@duiquisaccumsan.edu', 'tortor'),
	(67, 'Libero Institute', '034397-9407', '1976-01-15', 'Virgin Islands, United States', '42765', 'Morinville', '413-8544 Enim. Road', -82.53925000, 75.97331000, 'Berk Jacobs', 47, 'IT', 'false', 'Nulla.tempor.augue@litoratorquent.net', 'non'),
	(68, 'Ac Nulla Corp.', '086707-9717', '1997-02-26', 'Kyrgyzstan', '51711', 'Colledimacine', '3553 Elementum Avenue', 69.52146000, -66.08975000, 'Zeus Crawford', 458, 'IT', 'false', 'erat.vitae.risus@Craseutellus.edu', 'Morbi'),
	(69, 'Sit Amet Metus PC', '636578-3247', '1975-08-06', 'Turkey', 'RA5 1HG', 'Taber', 'P.O. Box 885, 6937 Aliquet Road', -75.48027000, -107.60812000, 'Dieter Vaughn', 12, 'Food', 'true', 'purus.in@pellentesque.org', 'at,'),
	(70, 'Nulla Facilisi LLP', '548134-2904', '1999-02-19', 'Northern Mariana Islands', '67111', 'Requínoa', '1667 Bibendum Ave', 48.60493000, -174.39938000, 'Jackson Baird', 273, 'Growing Plants', 'true', 'dui@aliquam.edu', 'arcu.'),
	(71, 'Integer Sem Consulting', '172914-2701', '2016-03-10', 'Libya', '17008', 'Llanquihue', '815-4103 Ac, Street', -37.44374000, -171.15375000, 'Harlan Ferrell', 251, 'Car', 'true', 'eros.nec.tellus@Etiamgravida.net', 'torquent'),
	(72, 'Fermentum Arcu Vestibulum PC', '296427-5461', '2016-04-06', 'Tajikistan', '413156', 'Rostock', 'P.O. Box 667, 6377 Egestas Av.', 53.41835000, -4.23415000, 'Adam Cole', 19, 'Car', 'true', 'elit.Nulla@nisiAenean.org', 'penatibus'),
	(73, 'Justo Foundation', '357840-0222', '1984-11-02', 'Niger', '353691', 'Puerto Colombia', '4289 Eu Rd.', -9.45301000, 60.35998000, 'Gavin Powell', 341, 'IT', 'false', 'quam.a.felis@bibendum.net', 'facilisis.'),
	(74, 'Hendrerit A Arcu Inc.', '148044-0179', '2006-09-21', 'Austria', '16413', 'Freirina', '291-5391 Mi Road', -35.06963000, -103.10451000, 'Sebastian Mccall', 485, 'Building Industry', 'false', 'diam.Sed.diam@dictum.edu', 'augue'),
	(75, 'Cursus Consulting', '976892-8765', '1994-09-08', 'Mexico', 'Z6686', 'Camponogara', 'Ap #249-9275 Mi Road', 55.19939000, 38.59427000, 'Jonas Burt', 331, 'Building Industry', 'true', 'adipiscing.elit@aptenttacitisociosqu.ca', 'pede.'),
	(76, 'Eu Company', '319945-3329', '1994-09-25', 'Nigeria', '51845', 'Siquirres', 'P.O. Box 474, 4246 Phasellus Avenue', 1.85769000, 121.76172000, 'Thomas Manning', 281, 'IT', 'false', 'Nullam.enim@nec.net', 'erat'),
	(77, 'Fusce Feugiat Lorem Industries', '343080-5907', '1999-05-12', 'Uruguay', '51417', 'Surabaya', '854-2043 Facilisis St.', 35.16104000, -59.11706000, 'Cullen Lynch', 28, 'Building Industry', 'false', 'tempor.lorem@Etiambibendumfermentum.org', 'ullamcorper'),
	(78, 'Tortor PC', '125087-8269', '2016-11-04', 'Equatorial Guinea', '73642', 'Meeuwen-Gruitrode', 'P.O. Box 188, 2095 Turpis Avenue', 81.66685000, -132.95289000, 'Connor Barrera', 366, 'Car', 'false', 'leo.elementum.sem@metus.ca', 'felis,'),
	(79, 'Et Ultrices Posuere Company', '659366-9846', '2002-04-08', 'Estonia', '12365', 'Sudhanoti', '6336 Risus. Rd.', 84.48759000, 24.76425000, 'Ahmed Calhoun', 90, 'Building Industry', 'true', 'risus@sociis.net', 'faucibus'),
	(80, 'Euismod Ltd', '505754-2507', '1981-03-26', 'Papua New Guinea', '85892', 'Joondalup', 'Ap #285-6662 Non Road', -48.42863000, -112.47054000, 'Emmanuel Perez', 134, 'Growing Plants', 'false', 'Cum.sociis@Duis.co.uk', 'felis,'),
	(81, 'Donec Company', '905581-3969', '1998-01-23', 'Lebanon', 'Z8653', 'Bihain', 'P.O. Box 952, 5590 Accumsan Rd.', 23.31353000, -148.37050000, 'Lev Simon', 184, 'Building Industry', 'false', 'Proin@molestiein.edu', 'lacinia'),
	(82, 'Neque Nullam Corporation', '496430-6353', '1994-04-16', 'Bangladesh', '27618-39013', 'Montague', 'P.O. Box 764, 1587 Dis Rd.', 31.90824000, 150.07572000, 'Nathaniel Burt', 284, 'Car', 'true', 'elit.fermentum@Phasellus.co.uk', 'libero'),
	(83, 'Vulputate Associates', '673363-7430', '1996-06-06', 'Ireland', '37724', 'Bras', 'P.O. Box 922, 8151 Volutpat Rd.', 74.14739000, -59.65905000, 'Armand Howell', 442, 'Growing Plants', 'true', 'dis.parturient@eros.co.uk', 'lacus.'),
	(84, 'Ligula Aliquam Erat Ltd', '806640-1772', '2016-11-07', 'Singapore', '697586', 'Dole', 'P.O. Box 722, 8313 Laoreet Road', -34.46051000, 13.72711000, 'Patrick Mcfarland', 405, 'IT', 'false', 'orci@pede.com', 'interdum'),
	(85, 'Tortor Integer Associates', '359548-8556', '1976-12-10', 'Ethiopia', '85437', 'Salamanca', 'P.O. Box 987, 7081 Sem. Avenue', -82.42214000, 116.38578000, 'Isaiah Love', 409, 'Building Industry', 'false', 'feugiat.nec.diam@sagittis.org', 'orci'),
	(86, 'Ligula LLC', '956856-4844', '1996-07-24', 'Cuba', '7748', 'Río Ibáñez', 'P.O. Box 335, 394 Dictum Av.', -23.00652000, 96.81938000, 'Griffin Mcintyre', 466, 'Car', 'false', 'augue.scelerisque.mollis@afelisullamcorper.net', 'Mauris'),
	(87, 'Et Commodo Limited', '442801-8735', '2002-12-20', 'France', '8396', 'Rixensart', '7720 Quisque Ave', 60.00947000, 66.99372000, 'Kermit Maddox', 310, 'Growing Plants', 'true', 'penatibus@dapibusidblandit.edu', 'enim'),
	(88, 'Aliquet Metus Urna Associates', '203888-3068', '2004-12-05', 'Tonga', '241312', 'Allentown', 'Ap #632-6950 In Street', 53.25403000, 132.63357000, 'Fletcher Langley', 213, 'Car', 'false', 'dictum@egestasSed.ca', 'mauris.'),
	(89, 'Elit Sed Consequat Foundation', '742337-5281', '1976-01-08', 'Guinea-Bissau', '72654-179', 'Cinisi', '2153 Sit Avenue', -73.94114000, 142.51448000, 'Austin Mayer', 57, 'Car', 'false', 'a.arcu@eget.com', 'vitae'),
	(90, 'Elit Pede LLP', '484250-8378', '2017-11-24', 'Comoros', '870133', 'Le Cannet', 'Ap #112-122 In Street', -43.28177000, 148.36225000, 'Mark Alvarez', 378, 'Building Industry', 'true', 'Donec.est@Sed.edu', 'id,'),
	(91, 'Elementum LLP', '503420-9477', '2008-12-11', 'Saint Pierre and Miquelon', '2589', 'Reno', 'P.O. Box 805, 3745 Ultrices Av.', 62.52045000, 120.79172000, 'Francis Pacheco', 191, 'Food', 'true', 'nulla@tempuseu.co.uk', 'nec'),
	(92, 'Et Eros Ltd', '032113-0866', '2016-07-26', 'Saudi Arabia', '99198', 'Valéncia', '811-8295 Lectus St.', 16.60793000, -101.78048000, 'Barclay Moran', 98, 'Building Industry', 'false', 'mauris@eget.ca', 'sem'),
	(93, 'Sit Amet Risus Corporation', '489799-8763', '1979-05-06', 'Montenegro', '66173', 'Wambeek', 'P.O. Box 274, 579 Sit Avenue', 29.51780000, 4.56206000, 'Tobias Peck', 63, 'Growing Plants', 'false', 'dignissim@malesuadavelconvallis.co.uk', 'facilisis'),
	(94, 'Tristique Company', '404399-6885', '2002-06-28', 'South Sudan', '709185', 'Ponta Grossa', 'P.O. Box 660, 911 Curabitur St.', -12.46639000, -47.80895000, 'Stone Fletcher', 117, 'Growing Plants', 'false', 'Aliquam@odiosagittissemper.ca', 'tortor,'),
	(95, 'Eu Tellus Eu Associates', '148798-5010', '2001-07-18', 'Venezuela', '49633', 'Temuco', '749-2666 Volutpat. St.', -56.47309000, -85.77269000, 'Porter Anderson', 275, 'Car', 'true', 'In.scelerisque.scelerisque@urna.com', 'eu,'),
	(96, 'Cursus Non Corporation', '993494-9752', '1989-09-01', 'Cayman Islands', '6489 OA', 'Lac-Serent', '7401 Blandit Av.', -59.45704000, -113.11917000, 'Kareem Hansen', 89, 'Car', 'true', 'vitae.odio.sagittis@ridiculus.ca', 'dignissim'),
	(97, 'Erat LLP', '674411-4775', '2013-11-01', 'French Guiana', 'Z5708', 'Longvilly', 'Ap #960-133 Arcu. Rd.', -37.52415000, -121.76164000, 'Amos Osborn', 164, 'Growing Plants', 'true', 'nunc@ametorci.net', 'arcu.'),
	(98, 'Et Consulting', '232008-1199', '2013-03-24', 'Chad', 'Z3020', 'Bowling Green', '1073 Turpis. St.', -10.23881000, 16.91773000, 'Palmer Norman', 248, 'Food', 'true', 'libero@vitaesemper.co.uk', 'enim.'),
	(99, 'Lacus Associates', '219173-9727', '1989-02-08', 'Congo (Brazzaville)', '14914', 'Böblingen', '6688 Metus. St.', 76.54404000, -91.16178000, 'Akeem Porter', 42, 'Food', 'true', 'Duis.ac.arcu@non.co.uk', 'massa.'),
	(100, 'Enim Associates', '488428-9150', '2011-11-11', 'Sao Tome and Principe', '44419', 'Tamworth', '5003 Quam Avenue', 72.31592000, -174.92451000, 'Callum Leonard', 392, 'IT', 'false', 'nisi.Cum@quama.com', 'ut,');

-- Dumping structure for table test_companies.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_companies.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table test_companies.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_companies.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- Dumping structure for table test_companies.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_companies.password_resets: ~0 rows (approximately)

-- Dumping structure for table test_companies.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_companies.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
