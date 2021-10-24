-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2021 at 11:36 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feeder`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `idaddress` int(11) NOT NULL,
  `street` varchar(45) NOT NULL,
  `house_no` varchar(15) NOT NULL,
  `fk_postal_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`idaddress`, `street`, `house_no`, `fk_postal_city`) VALUES
(1, 'Rismarksvej', '39', 5200),
(2, 'Grønløkkevej', '22', 5000),
(3, 'Benediktsgade', '30-36', 5000),
(4, 'Hans Mules Gade', '16', 5000),
(5, 'Skibhusvej', '41-45', 5000),
(6, 'Fuglsang', '2', 5270),
(7, 'Nyborgvej', '200 A', 5220),
(8, 'Ørbækvej', '109A', 5220),
(9, 'Cortex Park', '12', 5230),
(10, 'Tilst Parkvej', '4B', 8381),
(11, 'Runevej', '1', 8210),
(12, 'Silkeborgvej', '246', 8230),
(13, 'Skovvejen', '17', 8000),
(14, 'Vindrosen', '39', 8240),
(15, 'Korshøjen', '1', 8240),
(16, 'Haurumsvej', '8', 8381),
(17, 'Kappelvænget', '8A', 8210),
(18, 'Norges Allé', '15', 8200),
(19, 'Jens Baggesens Vej', '7', 8210),
(20, 'Frydenlunds Allé', '1', 8210),
(21, 'Skanderborgvej', '26', 8000),
(22, 'Ringvej Syd', '84', 8260),
(23, 'Rømersvej', '2', 5200),
(24, 'Rugårdsvej', '240', 5210),
(25, 'Vesterbro', '33', 5000),
(26, 'Benediktsgade', '46', 5000),
(27, 'L. A. Rings Vej', '100', 5230),
(28, 'Kochsgade', '120', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand`) VALUES
(1, 'Jensens'),
(2, 'Salling'),
(3, 'Herregård');

-- --------------------------------------------------------

--
-- Table structure for table `chain`
--

CREATE TABLE `chain` (
  `chain_id` int(11) NOT NULL,
  `chain` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chain`
--

INSERT INTO `chain` (`chain_id`, `chain`) VALUES
(2, 'Coop'),
(1, 'Netto');

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `food_item_id` int(11) NOT NULL,
  `food_item_title` varchar(45) DEFAULT NULL,
  `standard_item` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`food_item_id`, `food_item_title`, `standard_item`) VALUES
(1, 'Olivenolie', 1),
(2, 'Æg', 0),
(3, 'Hvedemel', 0),
(4, 'Hvidløg', 0),
(5, 'Salt', 1),
(6, 'Smør', 0),
(7, 'Chiliflager', 1),
(8, 'Frisk koriander', 0),
(9, 'Fuldkornshvedemel', 0),
(10, 'Græsk yoghurt', 0),
(11, 'Hakkede tomater', 0),
(12, 'ingefær', 0),
(13, 'Kyllingefilet', 0),
(14, 'Lime', 0),
(15, 'Mælk', 0),
(16, 'Røget paprika', 1),
(17, 'Sort peber', 1),
(18, 'Stødt spidskommen', 1),
(19, 'Agurk', 0),
(20, 'Appelsin', 0),
(21, 'Avocado', 0),
(22, 'Baby spinat', 0),
(23, 'Basmati ris', 0),
(24, 'Bladselleri', 0),
(25, 'Blomkål', 0),
(26, 'cheddar ost', 0),
(27, 'Cremefraiche', 0),
(28, 'Flagesalt', 1),
(29, 'Frisk mynte', 0),
(30, 'Gær', 0),
(31, 'Garam masala', 1),
(32, 'Grahamsmel', 0),
(33, 'Grøntsagsbuillion', 1),
(34, 'Gurkemeje', 1),
(35, 'Hokkaido græskar', 0),
(36, 'Hytteost', 0),
(37, 'Kanel', 1),
(38, 'Kardemomme', 1),
(39, 'Karry', 1),
(40, 'Kidneybønner', 0),
(41, 'Kokosmælk', 0),
(42, 'Kokosolie', 0),
(43, 'Koriander', 1),
(44, 'Lakridsrod', 0),
(45, 'Majs', 0),
(46, 'Mandler', 0),
(47, 'nachos', 0),
(48, 'Rød chili', 0),
(49, 'Røde linser', 0),
(50, 'Rødløg', 0),
(51, 'Rødspættefilet', 0),
(52, 'Sesamfrø', 1),
(53, 'Spidskål', 0),
(54, 'squash', 0),
(55, 'Chilisovs', 1),
(56, 'Stødt kardemomme', 1),
(57, 'Stødt koriander', 1),
(58, 'Sukker', 0),
(59, 'Tomatpuré', 0),
(60, 'Vand', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingrediens_list`
--

CREATE TABLE `ingrediens_list` (
  `fk_food_item` int(11) NOT NULL,
  `fk_recipe` int(11) NOT NULL,
  `food_item_size` varchar(45) DEFAULT NULL,
  `fk_measurement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `idmeasurement` int(11) NOT NULL,
  `measurement` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`idmeasurement`, `measurement`) VALUES
(1, 'ml'),
(2, 'dl'),
(3, 'l'),
(4, 'kg'),
(5, 'g'),
(6, 'tsk'),
(7, 'spsk'),
(8, 'knivspids'),
(9, 'dåse'),
(10, 'fed'),
(11, 'bundt'),
(12, 'pose'),
(13, 'stk');

-- --------------------------------------------------------

--
-- Table structure for table `postal_city`
--

CREATE TABLE `postal_city` (
  `postal` int(11) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postal_city`
--

INSERT INTO `postal_city` (`postal`, `city`) VALUES
(1301, 'København K'),
(2000, 'Frederiksberg'),
(2100, 'København Ø'),
(2200, 'København N'),
(2300, 'København S'),
(2400, 'København NV'),
(2450, 'København SV'),
(2500, 'Valby'),
(2600, 'Glostrup'),
(2605, 'Brøndby'),
(2610, 'Rødovre'),
(2625, 'Vallensbæk'),
(2630, 'Taastrup'),
(2635, 'Ishøj'),
(2640, 'Hedehusene'),
(2650, 'Hvidovre'),
(2660, 'Brøndby Strand'),
(2665, 'Vallensbæk Strand'),
(2670, 'Greve'),
(2680, 'Solrød Strand'),
(2690, 'Karlslunde'),
(2700, 'Brønshøj'),
(2720, 'Vanløse'),
(2730, 'Herlev'),
(2740, 'Skovlunde'),
(2750, 'Ballerup'),
(2760, 'Måløv'),
(2765, 'Smørum'),
(2770, 'Kastrup'),
(2791, 'Dragør'),
(2800, 'Kongens Lyngby'),
(2820, 'Gentofte'),
(2830, 'Virum'),
(2840, 'Holte'),
(2850, 'Nærum'),
(2860, 'Søborg'),
(2880, 'Bagsværd'),
(2900, 'Hellerup'),
(2920, 'Charlottenlund'),
(2930, 'Klampenborg'),
(2942, 'Skodsborg'),
(2950, 'Vedbæk'),
(2960, 'Rungsted Kyst'),
(2970, 'Hørsholm'),
(2980, 'Kokkedal'),
(2990, 'Nivå'),
(3000, 'Helsingør'),
(3050, 'Humlebæk'),
(3060, 'Espergærde'),
(3070, 'Snekkersten'),
(3080, 'Tikøb'),
(3100, 'Hornbæk'),
(3120, 'Dronningmølle'),
(3140, 'Ålsgårde'),
(3150, 'Hellebæk'),
(3200, 'Helsinge'),
(3210, 'Vejby'),
(3220, 'Tisvildeleje'),
(3230, 'Græsted'),
(3250, 'Gilleleje'),
(3300, 'Frederiksværk'),
(3310, 'Ølsted'),
(3320, 'Skævinge'),
(3330, 'Gørløse'),
(3360, 'Liseleje'),
(3370, 'Melby'),
(3390, 'Hundested'),
(3400, 'Hillerød'),
(3460, 'Birkerød'),
(3480, 'Fredensborg'),
(3490, 'Kvistgård'),
(3500, 'Værløse'),
(3520, 'Farum'),
(3540, 'Lynge'),
(3550, 'Slangerup'),
(3600, 'Frederikssund'),
(3630, 'Jægerspris'),
(3650, 'Ølstykke'),
(3660, 'Stenløse'),
(3670, 'Veksø Sjælland'),
(3700, 'Rønne'),
(3720, 'Aakirkeby'),
(3730, 'Nexø'),
(3740, 'Svaneke'),
(3751, 'Østermarie'),
(3760, 'Gudhjem'),
(3770, 'Allinge'),
(3782, 'Klemensker'),
(3790, 'Hasle'),
(4000, 'Roskilde'),
(4040, 'Jyllinge'),
(4050, 'Skibby'),
(4060, 'Kirke Såby'),
(4070, 'Kirke Hyllinge'),
(4100, 'Ringsted'),
(4130, 'Viby Sjælland'),
(4140, 'Borup'),
(4160, 'Herlufmagle'),
(4171, 'Glumsø'),
(4173, 'Fjenneslev'),
(4174, 'Jystrup'),
(4180, 'Sorø'),
(4190, 'Munke Bjergby'),
(4200, 'Slagelse'),
(4220, 'Korsør'),
(4230, 'Skælskør'),
(4241, 'Vemmelev'),
(4242, 'Boeslunde'),
(4243, 'Rude'),
(4250, 'Fuglebjerg'),
(4261, 'Dalmose'),
(4262, 'Sandved'),
(4270, 'Høng'),
(4281, 'Gørlev'),
(4291, 'Ruds Vedby'),
(4293, 'Dianalund'),
(4295, 'Stenlille'),
(4296, 'Nyrup'),
(4300, 'Holbæk'),
(4320, 'Lejre'),
(4330, 'Hvalsø'),
(4340, 'Tølløse'),
(4350, 'Ugerløse'),
(4360, 'Kirke Eskilstrup'),
(4370, 'Store Merløse'),
(4390, 'Vipperød'),
(4400, 'Kalundborg'),
(4420, 'Regstrup'),
(4440, 'Mørkøv'),
(4450, 'Jyderup'),
(4460, 'Snertinge'),
(4470, 'Svebølle'),
(4480, 'Store Fuglede'),
(4490, 'Jerslev'),
(4500, 'Nykøbing Sj'),
(4520, 'Svinninge'),
(4532, 'Gislinge'),
(4534, 'Hørve'),
(4540, 'Fårevejle'),
(4550, 'Asnæs'),
(4560, 'Vig'),
(4571, 'Grevinge'),
(4572, 'Nørre Asmindrup'),
(4573, 'Højby'),
(4581, 'Rørvig'),
(4583, 'Sjællands Odde'),
(4591, 'Føllenslev'),
(4592, 'Sejerø'),
(4593, 'Eskebjerg'),
(4600, 'Køge'),
(4621, 'Gadstrup'),
(4622, 'Havdrup'),
(4623, 'Lille Skensved'),
(4632, 'Bjæverskov'),
(4640, 'Fakse'),
(4652, 'Hårlev'),
(4653, 'Karise'),
(4654, 'Fakse Ladeplads'),
(4660, 'Store Heddinge'),
(4671, 'Strøby'),
(4672, 'Klippinge'),
(4673, 'Rødvig Stevns'),
(4681, 'Herfølge'),
(4682, 'Tureby'),
(4683, 'Rønnede'),
(4684, 'Holme-Olstrup'),
(4690, 'Haslev'),
(4700, 'Næstved'),
(4720, 'Præstø'),
(4733, 'Tappernøje'),
(4735, 'Mern'),
(4736, 'Karrebæksminde'),
(4750, 'Lundby'),
(4760, 'Vordingborg'),
(4771, 'Kalvehave'),
(4772, 'Langebæk'),
(4773, 'Stensved'),
(4780, 'Stege'),
(4791, 'Borre'),
(4792, 'Askeby'),
(4793, 'Bogø By'),
(4800, 'Nykøbing F'),
(4840, 'Nørre Alslev'),
(4850, 'Stubbekøbing'),
(4862, 'Guldborg'),
(4863, 'Eskilstrup'),
(4871, 'Horbelev'),
(4872, 'Idestrup'),
(4873, 'Væggerløse'),
(4874, 'Gedser'),
(4880, 'Nysted'),
(4891, 'Toreby L'),
(4892, 'Kettinge'),
(4894, 'Øster Ulslev'),
(4895, 'Errindlev'),
(4900, 'Nakskov'),
(4912, 'Harpelunde'),
(4913, 'Horslunde'),
(4920, 'Søllested'),
(4930, 'Maribo'),
(4941, 'Bandholm'),
(4943, 'Torrig L'),
(4944, 'Fejø'),
(4951, 'Nørreballe'),
(4952, 'Stokkemarke'),
(4953, 'Vesterborg'),
(4960, 'Holeby'),
(4970, 'Rødby'),
(4983, 'Dannemare'),
(4990, 'Sakskøbing'),
(5000, 'Odense C'),
(5200, 'Odense V'),
(5210, 'Odense NV'),
(5220, 'Odense SØ'),
(5230, 'Odense M'),
(5240, 'Odense NØ'),
(5250, 'Odense SV'),
(5260, 'Odense S'),
(5270, 'Odense N'),
(5290, 'Marslev'),
(5300, 'Kerteminde'),
(5330, 'Munkebo'),
(5350, 'Rynkeby'),
(5370, 'Mesinge'),
(5380, 'Dalby'),
(5390, 'Martofte'),
(5400, 'Bogense'),
(5450, 'Otterup'),
(5462, 'Morud'),
(5463, 'Harndrup'),
(5464, 'Brenderup'),
(5466, 'Asperup'),
(5471, 'Søndersø'),
(5474, 'Veflinge'),
(5485, 'Skamby'),
(5491, 'Blommenslyst'),
(5492, 'Vissenbjerg'),
(5500, 'Middelfart'),
(5540, 'Ullerslev'),
(5550, 'Langeskov'),
(5560, 'Aarup'),
(5580, 'Nørre Aaby'),
(5591, 'Gelsted'),
(5592, 'Ejby'),
(5600, 'Faaborg'),
(5610, 'Assens'),
(5620, 'Glamsbjerg'),
(5631, 'Ebberup'),
(5642, 'Millinge'),
(5672, 'Broby'),
(5683, 'Haarby'),
(5690, 'Tommerup'),
(5700, 'Svendborg'),
(5750, 'Ringe'),
(5762, 'Vester Skerninge'),
(5771, 'Stenstrup'),
(5772, 'Kværndrup'),
(5792, 'Årslev'),
(5800, 'Nyborg'),
(5853, 'Ørbæk'),
(5854, 'Gislev'),
(5856, 'Ryslinge'),
(5863, 'Ferritslev Fyn'),
(5871, 'Frørup'),
(5874, 'Hesselager'),
(5881, 'Skårup Fyn'),
(5882, 'Vejstrup'),
(5883, 'Oure'),
(5884, 'Gudme'),
(5892, 'Gudbjerg'),
(5900, 'Rudkøbing'),
(5932, 'Humble'),
(5935, 'Bagenkop'),
(5953, 'Tranekær'),
(5960, 'Marstal'),
(5970, 'Ærøskøbing'),
(5985, 'Søby Ærø'),
(6000, 'Kolding'),
(6040, 'Egtved'),
(6051, 'Almind'),
(6052, 'Viuf'),
(6064, 'Jordrup'),
(6070, 'Christiansfeld'),
(6091, 'Bjert'),
(6092, 'Sønder Stenderup'),
(6093, 'Sjølund'),
(6094, 'Hejls'),
(6100, 'Haderslev'),
(6200, 'Aabenraa'),
(6230, 'Rødekro'),
(6240, 'Løgumkloster'),
(6261, 'Bredebro'),
(6270, 'Tønder'),
(6280, 'Højer'),
(6300, 'Gråsten'),
(6310, 'Broager'),
(6320, 'Egernsund'),
(6330, 'Padborg'),
(6340, 'Kruså'),
(6360, 'Tinglev'),
(6372, 'Bylderup-Bov'),
(6392, 'Bolderslev'),
(6400, 'Sønderborg'),
(6430, 'Nordborg'),
(6440, 'Augustenborg'),
(6470, 'Sydals'),
(6500, 'Vojens'),
(6510, 'Gram'),
(6520, 'Toftlund'),
(6535, 'Branderup J'),
(6541, 'Bevtoft'),
(6560, 'Sommersted'),
(6580, 'Vamdrup'),
(6600, 'Vejen'),
(6621, 'Gesten'),
(6622, 'Bække'),
(6623, 'Vorbasse'),
(6630, 'Rødding'),
(6640, 'Lunderskov'),
(6650, 'Brørup'),
(6660, 'Lintrup'),
(6670, 'Holsted'),
(6682, 'Hovborg'),
(6683, 'Føvling'),
(6690, 'Gørding'),
(6700, 'Esbjerg'),
(6701, 'Esbjerg'),
(6705, 'Esbjerg Ø'),
(6710, 'Esbjerg V'),
(6715, 'Esbjerg N'),
(6720, 'Fanø'),
(6731, 'Tjæreborg'),
(6740, 'Bramming'),
(6752, 'Glejbjerg'),
(6760, 'Ribe'),
(6771, 'Gredstedbro'),
(6780, 'Skærbæk'),
(6792, 'Rømø'),
(6800, 'Varde'),
(6818, 'Årre'),
(6823, 'Ansager'),
(6830, 'Nørre Nebel'),
(6840, 'Oksbøl'),
(6851, 'Janderup'),
(6852, 'Billum'),
(6853, 'Vejers Strand'),
(6854, 'Henne'),
(6855, 'Outrup'),
(6857, 'Blåvand'),
(6862, 'Tistrup'),
(6870, 'Ølgod'),
(6880, 'Tarm'),
(6893, 'Hemmet'),
(6900, 'Skjern'),
(6920, 'Videbæk'),
(6933, 'Kibæk'),
(6940, 'Lem St'),
(6950, 'Ringkøbing'),
(6960, 'Hvide Sande'),
(6971, 'Spjald'),
(6973, 'Ørnhøj'),
(6980, 'Tim'),
(6990, 'Ulfborg'),
(7000, 'Fredericia'),
(7080, 'Børkop'),
(7100, 'Vejle'),
(7120, 'Vejle Øst'),
(7130, 'Juelsminde'),
(7140, 'Stouby'),
(7150, 'Barrit'),
(7160, 'Tørring'),
(7171, 'Uldum'),
(7173, 'Vonge'),
(7182, 'Bredsten'),
(7183, 'Randbøl'),
(7184, 'Vandel'),
(7190, 'Billund'),
(7200, 'Grindsted'),
(7250, 'Hejnsvig'),
(7260, 'Sønder Omme'),
(7270, 'Stakroge'),
(7280, 'Sønder Felding'),
(7300, 'Jelling'),
(7321, 'Gadbjerg'),
(7323, 'Give'),
(7330, 'Brande'),
(7361, 'Ejstrupholm'),
(7362, 'Hampen'),
(7400, 'Herning'),
(7430, 'Ikast'),
(7441, 'Bording'),
(7442, 'Engesvang'),
(7451, 'Sunds'),
(7470, 'Karup J'),
(7480, 'Vildbjerg'),
(7490, 'Aulum'),
(7500, 'Holstebro'),
(7540, 'Haderup'),
(7550, 'Sørvad'),
(7560, 'Hjerm'),
(7570, 'Vemb'),
(7600, 'Struer'),
(7620, 'Lemvig'),
(7650, 'Bøvlingbjerg'),
(7660, 'Bækmarksbro'),
(7673, 'Harboøre'),
(7680, 'Thyborøn'),
(7700, 'Thisted'),
(7730, 'Hanstholm'),
(7741, 'Frøstrup'),
(7742, 'Vesløs'),
(7752, 'Snedsted'),
(7755, 'Bedsted Thy'),
(7760, 'Hurup Thy'),
(7770, 'Vestervig'),
(7790, 'Thyholm'),
(7800, 'Skive'),
(7830, 'Vinderup'),
(7840, 'Højslev'),
(7850, 'Stoholm, Jylland'),
(7860, 'Spøttrup'),
(7870, 'Roslev'),
(7884, 'Fur'),
(7900, 'Nykøbing M'),
(7950, 'Erslev'),
(7960, 'Karby'),
(7970, 'Redsted M'),
(7980, 'Vils'),
(7990, 'Øster Assels'),
(8000, 'Århus C'),
(8200, 'Århus N'),
(8210, 'Århus V'),
(8220, 'Brabrand'),
(8230, 'Åbyhøj'),
(8240, 'Risskov'),
(8250, 'Egå'),
(8260, 'Viby J'),
(8270, 'Højbjerg'),
(8300, 'Odder'),
(8305, 'Samsø'),
(8310, 'Tranbjerg J'),
(8320, 'Mårslet'),
(8330, 'Beder'),
(8340, 'Malling'),
(8350, 'Hundslund'),
(8355, 'Solbjerg'),
(8361, 'Hasselager'),
(8362, 'Hørning'),
(8370, 'Hadsten'),
(8380, 'Trige'),
(8381, 'Tilst'),
(8382, 'Hinnerup'),
(8400, 'Ebeltoft'),
(8410, 'Rønde'),
(8420, 'Knebel'),
(8444, 'Balle'),
(8450, 'Hammel'),
(8462, 'Harlev J'),
(8464, 'Galten'),
(8471, 'Sabro'),
(8472, 'Sporup'),
(8500, 'Grenaa'),
(8520, 'Lystrup'),
(8530, 'Hjortshøj'),
(8541, 'Skødstrup'),
(8543, 'Hornslet'),
(8544, 'Mørke'),
(8550, 'Ryomgård'),
(8560, 'Kolind'),
(8570, 'Trustrup'),
(8581, 'Nimtofte'),
(8585, 'Glesborg'),
(8586, 'Ørum Djurs'),
(8592, 'Anholt'),
(8600, 'Silkeborg'),
(8620, 'Kjellerup'),
(8632, 'Lemming'),
(8641, 'Sorring'),
(8643, 'Ans by'),
(8653, 'Them'),
(8654, 'Bryrup'),
(8660, 'Skanderborg'),
(8670, 'Låsby'),
(8680, 'Ry'),
(8700, 'Horsens'),
(8721, 'Daugård'),
(8722, 'Hedensted'),
(8723, 'Løsning'),
(8732, 'Hovedgård'),
(8740, 'Brædstrup'),
(8751, 'Gedved'),
(8752, 'Østbirk'),
(8762, 'Flemming'),
(8763, 'Rask Mølle'),
(8765, ' Klovborg'),
(8766, 'Nørre Snede'),
(8781, 'Stenderup'),
(8783, 'Hornsyld'),
(8800, 'Viborg'),
(8830, 'Tjele'),
(8831, 'Løgstrup'),
(8832, 'Skals'),
(8840, 'Rødkærsbro'),
(8850, 'Bjerringbro'),
(8860, 'Ulstrup'),
(8870, 'Langå'),
(8881, 'Thorsø'),
(8882, 'Fårvang'),
(8883, 'Gjern'),
(8900, 'Randers'),
(8950, 'Ørsted'),
(8961, 'Allingåbro'),
(8963, 'Auning'),
(8970, 'Havndal'),
(8981, 'Spenstrup'),
(8983, 'Gjerlev J'),
(8990, 'Fårup'),
(9000, 'Aalborg'),
(9200, 'Aalborg SV'),
(9210, 'Aalborg SØ'),
(9220, 'Aalborg Øst'),
(9230, 'Svenstrup J'),
(9240, 'Nibe'),
(9260, 'Gistrup'),
(9270, 'Klarup'),
(9280, 'Storvorde'),
(9293, 'Kongerslev'),
(9300, 'Sæby'),
(9310, 'Vodskov'),
(9320, 'Hjallerup'),
(9330, 'Dronninglund'),
(9340, 'Asaa'),
(9352, 'Dybvad'),
(9362, 'Gandrup'),
(9370, 'Hals'),
(9380, 'Vestbjerg'),
(9381, 'Sulsted'),
(9382, 'Tylstrup'),
(9400, 'Nørresundby'),
(9430, 'Vadum'),
(9440, 'Aabybro'),
(9460, 'Brovst'),
(9480, 'Løkken'),
(9490, 'Pandrup'),
(9492, 'Blokhus'),
(9493, 'Saltum'),
(9500, 'Hobro'),
(9510, 'Arden'),
(9520, 'Skørping'),
(9530, 'Støvring'),
(9541, 'Suldrup'),
(9550, 'Mariager'),
(9560, 'Hadsund'),
(9574, 'Bælum'),
(9575, 'Terndrup'),
(9600, 'Aars'),
(9610, 'Nørager'),
(9620, 'Aalestrup'),
(9631, 'Gedsted'),
(9632, 'Møldrup'),
(9640, 'Farsø'),
(9670, 'Løgstør'),
(9681, 'Ranum'),
(9690, 'Fjerritslev'),
(9700, 'Brønderslev'),
(9740, 'Jerslev J'),
(9750, 'Øster Vrå'),
(9760, 'Vrå'),
(9800, 'Hjørring'),
(9830, 'Tårs'),
(9850, 'Hirtshals'),
(9870, 'Sindal'),
(9881, 'Bindslev'),
(9900, 'Frederikshavn'),
(9940, 'Læsø'),
(9970, 'Strandby'),
(9981, 'Jerup'),
(9982, 'Ålbæk'),
(9990, 'Skagen');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `idrecipe` int(11) NOT NULL,
  `instruction` varchar(2400) NOT NULL,
  `title` varchar(75) NOT NULL,
  `portion_size` int(11) NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`idrecipe`, `instruction`, `title`, `portion_size`, `pic`) VALUES
(1, 'Varm olien i en stor gryde ved middelvarme og tilsæt hvidløg og ingefær og rør rundt i 1 minut.Tilsæt herefter karry, spidskommen, kardemomme, koriander, og chiliflager og svits krydderierne af i et minuts tid under omrøring.Skyl linserne i en sigte og kom dem i gryden sammen med grøntsagsbouillon og hakkede tomater.Lad det simre under låg i 30-45 minutter. Rør jævnligt i gryden og tilsæt eventuelt lidt ekstra grøntsagsbouillon, hvis den bliver for fast. Smag til med salt og server retten i dybe skåle med koriander på toppen.Server kølig raita.RaitaRør alle ingredienserne til raita sammen og smag til.', 'Indisk Dhal med raita', 4, './images/dhal.jpg'),
(2, 'Korma marinadeBegynd i god tid , da kødet skal marinere længe. Bland marinaden sammen og vend kyllingestykkerne grundigt i marinaden, så de bliver helt dækket af marinaden.Stil det på køl og lad det trække i 12-24 timer.Inden serveringSmelt kokosolie på en pande og sauter kort løgene heri, til de er blevet bløde.Kom kyllingestykkerne på sammen med marinaden og steg kyllingestykkerne under omrøring. Tilsæt tomatpuré og kokosmælk, læg låg på og lad retten simre i 30 minutter.Rør de hakkede mandler i inden servering og smag til med salt og friskkværnet peber.Server retten i dybe tallerkener sammen med ris og drys med grofthakket koriander', 'Kylling Korma', 4, './images/kylling-korma-1.jpg'),
(3, 'Pisk æggene sammen i en skål.Rør hvedemel, grahamsmel, salt og peber godt sammen i en anden skål.Vend fiskefileterne først i sammenpisket æg og derefter i melblandingen.Steg fiskefileterne i smør og olivenolie på panden ved middel varme i cirka 4-5 minutter på hver side, til fiskefileterne er smukt gyldenbrune.', 'Fiskefilet', 4, './images/fiskefilet.jpg'),
(4, 'TærtedejBland hvedemel og fuldkornsmel med salt og smuldr smør i melblandingen. Det kan også køres på en foodprocessor.Saml dejen med vand, lad den gerne hvile på køl i 30 minutter.Tryk dejen ud i en smurt tærteform på 28 cm i diameter og prik hul i dejen med en gaffelForbag dejen i en forvarmet ovn ved 175 grader varmluft i 10 minutter, hvorefter den er klar til at blive fyldt og bagt færdigt.Krydret tomatkyllingRist krydderierne ved middelvarme i en lille kasserolle. Kom olie, hvidløg, hakkede tomater, bladselleri, squash og kylling i. Lad det simre uden låg i 10 minutter og lad det køle lidt af. Hæld væden fra, hvis der er flydende væde i gryden.Tærte fyld til mexitærtePisk æg, hytteost, salt og friskkværnet peber sammen med et piskeris og vend den lune krydrede tomatkylling, kidneybønner,  majskerner i blandingen.Fordel fyldet i den forbagte tærtebund, drys med friskrevet cheddar og knuste tortilla og bag tærten i ca. 35 minutter i en forvarmet ovn ved 175 grader varmluft,  til æggemassen er stivnet.Server med cremefraiche, chili, lime og koriander', 'Mexi Tærte', 4, './images/mexitaerte-1.jpg'),
(5, 'Vend blomkål med olivenolie og derefter med røget paprika, kanel, salt og peber.Fordel blomkålsbuketter­ne på en bageplade med bagepapir og bag dem i en forvarmet ovn ved 200 grader varmluft i 20 minutter.Fileter appelsinerne ved at skære skrællen og de hvide hinder af omkring hver appelsinbåd.Anret babyspinat, spidskål, appelsiner og avocado på et fad med de bagte blomkålsstykker.Drys med ristet sesamfrø, salt og peber inden servering.', 'Paprikablomkål og appelsinsalat', 4, './images/roeget-blomkaal-salat-appelsin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_food_item`
--

CREATE TABLE `recipe_food_item` (
  `recipe_id` int(11) NOT NULL,
  `food_item_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_measurement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipe_food_item`
--

INSERT INTO `recipe_food_item` (`recipe_id`, `food_item_id`, `amount`, `amount_measurement`) VALUES
(3, 51, 4, 13),
(3, 2, 2, 13),
(3, 3, 20, 5),
(3, 32, 30, 5),
(3, 6, 50, 5),
(3, 1, 1, 6),
(1, 4, 5, 10),
(1, 12, 2, 7),
(1, 39, 3, 6),
(1, 18, 1, 7),
(1, 43, 1, 7),
(1, 38, 1, 6),
(1, 7, 1, 6),
(1, 33, 6, 2),
(1, 49, 200, 5),
(1, 11, 2, 9),
(1, 1, 2, 7),
(1, 29, 1, 11),
(1, 10, 2, 2),
(1, 19, 1, 13),
(1, 8, 1, 11),
(2, 13, 500, 5),
(2, 31, 1, 7),
(2, 7, 1, 6),
(2, 34, 1, 6),
(2, 4, 4, 10),
(2, 12, 1, 7),
(2, 14, 1, 13),
(2, 10, 1, 2),
(2, 50, 2, 13),
(2, 59, 65, 5),
(2, 41, 1, 9),
(2, 46, 65, 5),
(2, 42, 1, 7),
(2, 8, 1, 11),
(2, 23, 4, 2),
(4, 9, 65, 5),
(4, 3, 160, 5),
(4, 6, 125, 5),
(4, 60, 4, 7),
(4, 5, 1, 6),
(4, 18, 1, 6),
(4, 16, 1, 6),
(4, 57, 1, 6),
(4, 4, 3, 10),
(4, 11, 1, 9),
(4, 24, 50, 5),
(4, 54, 250, 5),
(4, 13, 200, 5),
(4, 1, 1, 7),
(4, 5, NULL, NULL),
(4, 17, NULL, NULL),
(4, 2, 3, 13),
(4, 36, 200, 5),
(4, 40, 1, 9),
(4, 45, 150, 5),
(4, 26, 50, 5),
(4, 47, 100, 5),
(4, 55, 2, 7),
(4, 27, 1, 2),
(4, 48, 1, 13),
(4, 14, 1, 13),
(5, 25, 1, 13),
(5, 16, 1, 6),
(5, 37, 1, 8),
(5, 20, 2, 13),
(5, 22, 70, 5),
(5, 53, 1, 13),
(5, 21, 1, 13),
(5, 52, 1, 7),
(5, 1, 3, 7),
(5, 28, NULL, NULL),
(5, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `idstore` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fk_address` int(11) NOT NULL,
  `chain_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`idstore`, `name`, `fk_address`, `chain_id`) VALUES
(1, '1 Rismarksvej', 1, 2),
(2, '1 Grønløkkevej', 2, 2),
(3, '1 Benediktsgade', 3, 2),
(4, '1 Hans Mules Gade', 4, 2),
(5, '1 Skibhusvej', 5, 2),
(6, '1 Fuglsang', 6, 2),
(7, '1 Nyborgvej', 7, 2),
(8, '1 Ørbækvej', 8, 2),
(9, '1 Cortex Park', 9, 2),
(10, '1 Tilst Parkvej', 10, 2),
(11, '1 Runevej', 11, 2),
(12, '1 Silkeborgvej', 12, 2),
(13, '1 Skovvejen', 13, 2),
(14, '1 Vindrosen', 14, 2),
(15, '1 Korshøjen', 15, 2),
(16, '2 Haurumsvej', 16, 2),
(17, '2 Kappelvænget', 17, 2),
(18, '2 Norges Allé', 18, 2),
(19, '2 Jens Baggesens Vej', 19, 2),
(20, '2 Frydenlunds Allé', 20, 2),
(21, '2 Skanderborgvej', 21, 2),
(22, '2 Ringvej Syd', 22, 2),
(23, '2 Rømersvej', 23, 2),
(24, '2 Rugårdsvej', 24, 2),
(25, '2 Vesterbro', 25, 2),
(26, '2 Benediktsgade', 26, 2),
(27, '2 L. A. Rings Vej', 27, 2),
(28, '2 Kochsgade', 28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_food_item`
--

CREATE TABLE `store_food_item` (
  `id_store_food_item` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `size` decimal(6,2) NOT NULL,
  `fk_store` int(11) DEFAULT NULL,
  `fk_measurement` int(11) NOT NULL,
  `food_item_id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `fk_chain` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_food_item`
--

INSERT INTO `store_food_item` (`id_store_food_item`, `price`, `size`, `fk_store`, `fk_measurement`, `food_item_id`, `brand`, `fk_chain`) VALUES
(28, 12, '10.00', NULL, 13, 2, 2, 1),
(29, 10, '10.00', NULL, 13, 2, 3, 2),
(30, 24, '10.00', NULL, 13, 2, 1, 2),
(31, 9, '1.00', NULL, 13, 19, 2, 1),
(32, 8, '1.00', NULL, 13, 19, 3, 2),
(33, 9, '1.00', NULL, 13, 19, 1, 2),
(34, 3, '1.00', NULL, 13, 20, 2, 1),
(35, 4, '1.00', NULL, 13, 20, 3, 2),
(36, 2, '1.00', NULL, 13, 20, 1, 2),
(37, 9, '1.00', NULL, 13, 21, 2, 1),
(38, 12, '1.00', NULL, 13, 21, 3, 2),
(39, 23, '1.00', NULL, 13, 21, 1, 2),
(40, 20, '200.00', NULL, 5, 22, 2, 1),
(41, 18, '200.00', NULL, 5, 22, 3, 2),
(42, 20, '200.00', NULL, 5, 22, 1, 2),
(43, 8, '1000.00', NULL, 5, 23, 2, 1),
(44, 12, '1000.00', NULL, 5, 23, 3, 2),
(45, 15, '1000.00', NULL, 5, 23, 1, 2),
(46, 10, '200.00', NULL, 5, 24, 2, 1),
(47, 10, '200.00', NULL, 5, 24, 3, 2),
(48, 10, '200.00', NULL, 5, 24, 1, 2),
(49, 12, '1.00', NULL, 13, 25, 2, 1),
(50, 15, '1.00', NULL, 13, 25, 3, 2),
(51, 20, '1.00', NULL, 13, 25, 1, 2),
(52, 30, '200.00', NULL, 5, 26, 2, 1),
(53, 30, '200.00', NULL, 5, 26, 3, 2),
(54, 20, '200.00', NULL, 5, 26, 1, 2),
(55, 19, '500.00', NULL, 1, 27, 2, 1),
(56, 15, '500.00', NULL, 1, 27, 3, 2),
(57, 20, '500.00', NULL, 1, 27, 1, 2),
(58, 8, '1.00', NULL, 11, 8, 2, 1),
(59, 9, '1.00', NULL, 11, 8, 3, 2),
(60, 10, '1.00', NULL, 11, 8, 1, 2),
(61, 8, '1.00', NULL, 11, 29, 2, 1),
(62, 9, '1.00', NULL, 11, 29, 3, 2),
(63, 10, '1.00', NULL, 11, 29, 1, 2),
(64, 20, '500.00', NULL, 5, 9, 2, 1),
(65, 25, '500.00', NULL, 5, 9, 3, 2),
(66, 25, '500.00', NULL, 5, 9, 1, 2),
(67, 7, '50.00', NULL, 5, 30, 2, 1),
(68, 5, '50.00', NULL, 5, 30, 3, 2),
(69, 4, '50.00', NULL, 5, 30, 1, 2),
(70, 16, '500.00', NULL, 1, 10, 2, 1),
(71, 15, '500.00', NULL, 1, 10, 3, 2),
(72, 12, '500.00', NULL, 1, 10, 1, 2),
(73, 30, '500.00', NULL, 5, 32, 2, 1),
(74, 20, '500.00', NULL, 5, 32, 3, 2),
(75, 25, '500.00', NULL, 5, 32, 1, 2),
(76, 8, '1.00', NULL, 9, 11, 2, 1),
(77, 7, '1.00', NULL, 9, 11, 3, 2),
(78, 8, '1.00', NULL, 9, 11, 1, 2),
(79, 30, '800.00', NULL, 5, 35, 1, 2),
(80, 10, '1000.00', NULL, 5, 3, 2, 1),
(81, 12, '1000.00', NULL, 5, 3, 3, 2),
(82, 11, '1000.00', NULL, 5, 3, 1, 2),
(83, 15, '3.00', NULL, 13, 4, 2, 1),
(84, 15, '3.00', NULL, 13, 4, 3, 2),
(85, 17, '3.00', NULL, 13, 4, 1, 2),
(86, 20, '500.00', NULL, 1, 36, 2, 1),
(87, 15, '500.00', NULL, 1, 36, 3, 2),
(88, 16, '500.00', NULL, 1, 36, 1, 2),
(89, 7, '1.00', NULL, 13, 12, 2, 1),
(90, 8, '1.00', NULL, 13, 12, 3, 2),
(91, 9, '1.00', NULL, 13, 12, 1, 2),
(92, 14, '1.00', NULL, 9, 40, 2, 1),
(93, 13, '1.00', NULL, 9, 40, 3, 2),
(94, 12, '1.00', NULL, 9, 40, 1, 2),
(95, 20, '400.00', NULL, 1, 41, 2, 1),
(96, 30, '400.00', NULL, 1, 41, 3, 2),
(97, 20, '400.00', NULL, 1, 41, 1, 2),
(98, 30, '400.00', NULL, 5, 42, 2, 1),
(99, 30, '400.00', NULL, 5, 42, 3, 2),
(100, 35, '400.00', NULL, 5, 42, 1, 2),
(101, 40, '400.00', NULL, 5, 13, 2, 1),
(102, 35, '400.00', NULL, 5, 13, 3, 2),
(103, 40, '400.00', NULL, 5, 13, 1, 2),
(104, 4, '1.00', NULL, 13, 14, 2, 1),
(105, 3, '1.00', NULL, 13, 14, 3, 2),
(106, 4, '1.00', NULL, 13, 14, 1, 2),
(107, 11, '1.00', NULL, 3, 15, 2, 1),
(108, 12, '1.00', NULL, 3, 15, 3, 2),
(109, 10, '1.00', NULL, 3, 15, 1, 2),
(110, 8, '400.00', NULL, 5, 45, 2, 1),
(111, 9, '400.00', NULL, 5, 45, 3, 2),
(112, 12, '400.00', NULL, 5, 45, 1, 2),
(113, 20, '200.00', NULL, 5, 46, 2, 1),
(114, 30, '200.00', NULL, 5, 46, 3, 2),
(115, 30, '200.00', NULL, 5, 46, 1, 2),
(116, 8, '1.00', NULL, 12, 47, 2, 1),
(117, 10, '1.00', NULL, 12, 47, 3, 2),
(118, 5, '1.00', NULL, 12, 47, 1, 2),
(119, 19, '500.00', NULL, 5, 49, 2, 1),
(120, 18, '500.00', NULL, 5, 49, 3, 2),
(121, 19, '500.00', NULL, 5, 49, 1, 2),
(122, 7, '5.00', NULL, 13, 50, 2, 1),
(123, 10, '5.00', NULL, 13, 50, 3, 2),
(124, 12, '5.00', NULL, 13, 50, 1, 2),
(125, 45, '4.00', NULL, 13, 51, 2, 1),
(126, 40, '4.00', NULL, 13, 51, 3, 2),
(127, 50, '4.00', NULL, 13, 51, 1, 2),
(128, 20, '200.00', NULL, 5, 6, 2, 1),
(129, 10, '200.00', NULL, 5, 6, 3, 2),
(130, 15, '200.00', NULL, 5, 6, 1, 2),
(131, 12, '1.00', NULL, 13, 53, 2, 1),
(132, 14, '1.00', NULL, 13, 53, 3, 2),
(133, 15, '1.00', NULL, 13, 53, 1, 2),
(134, 15, '1.00', NULL, 13, 54, 2, 1),
(135, 14, '1.00', NULL, 13, 54, 3, 2),
(136, 12, '1.00', NULL, 13, 54, 1, 2),
(137, 5, '50.00', NULL, 5, 59, 2, 1),
(138, 6, '50.00', NULL, 5, 59, 3, 2),
(139, 5, '50.00', NULL, 5, 59, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`idaddress`),
  ADD KEY `fk_postal_city_idx` (`fk_postal_city`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `chain`
--
ALTER TABLE `chain`
  ADD PRIMARY KEY (`chain_id`),
  ADD UNIQUE KEY `chain_UNIQUE` (`chain`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`food_item_id`),
  ADD UNIQUE KEY `food_item_title_UNIQUE` (`food_item_title`);

--
-- Indexes for table `ingrediens_list`
--
ALTER TABLE `ingrediens_list`
  ADD KEY `fk_food_item_idx` (`fk_food_item`),
  ADD KEY `fk_recipe_idx` (`fk_recipe`),
  ADD KEY `fk_measurement_idx` (`fk_measurement`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`idmeasurement`);

--
-- Indexes for table `postal_city`
--
ALTER TABLE `postal_city`
  ADD PRIMARY KEY (`postal`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`idrecipe`),
  ADD UNIQUE KEY `pic_UNIQUE` (`pic`);

--
-- Indexes for table `recipe_food_item`
--
ALTER TABLE `recipe_food_item`
  ADD KEY `fk_recipe_id_idx` (`recipe_id`),
  ADD KEY `fk_recipe_food_item_id_idx` (`food_item_id`),
  ADD KEY `fk_recipe_food_item_measurement_idx` (`amount_measurement`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`idstore`),
  ADD KEY `fk_address_idx` (`fk_address`),
  ADD KEY `fk_store_chain_idx` (`chain_id`);

--
-- Indexes for table `store_food_item`
--
ALTER TABLE `store_food_item`
  ADD PRIMARY KEY (`id_store_food_item`),
  ADD KEY `fk_store_idx` (`fk_store`),
  ADD KEY `fk_measurement_idx` (`fk_measurement`),
  ADD KEY `fk_chain_food_item_idx` (`fk_chain`),
  ADD KEY `fk_store_food_item_food_item_idx` (`food_item_id`),
  ADD KEY `fk_store_food_item_brand_idx` (`brand`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `idaddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `chain`
--
ALTER TABLE `chain`
  MODIFY `chain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `food_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `idmeasurement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `idrecipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `idstore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `store_food_item`
--
ALTER TABLE `store_food_item`
  MODIFY `id_store_food_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_postal_city` FOREIGN KEY (`fk_postal_city`) REFERENCES `postal_city` (`postal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ingrediens_list`
--
ALTER TABLE `ingrediens_list`
  ADD CONSTRAINT `fk_measurement1` FOREIGN KEY (`fk_measurement`) REFERENCES `measurement` (`idmeasurement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe` FOREIGN KEY (`fk_recipe`) REFERENCES `recipe` (`idrecipe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_store_food_item_ingrediens_list` FOREIGN KEY (`fk_food_item`) REFERENCES `store_food_item` (`id_store_food_item`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `recipe_food_item`
--
ALTER TABLE `recipe_food_item`
  ADD CONSTRAINT `fk_recipe_food_item_id` FOREIGN KEY (`food_item_id`) REFERENCES `food_item` (`food_item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe_food_item_measurement` FOREIGN KEY (`amount_measurement`) REFERENCES `measurement` (`idmeasurement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`idrecipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `fk_address` FOREIGN KEY (`fk_address`) REFERENCES `address` (`idaddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_store_chain` FOREIGN KEY (`chain_id`) REFERENCES `chain` (`chain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `store_food_item`
--
ALTER TABLE `store_food_item`
  ADD CONSTRAINT `fk_chain_food_item` FOREIGN KEY (`fk_chain`) REFERENCES `chain` (`chain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_measurement_store_food_item` FOREIGN KEY (`fk_measurement`) REFERENCES `measurement` (`idmeasurement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_store` FOREIGN KEY (`fk_store`) REFERENCES `store` (`idstore`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_store_food_item_brand` FOREIGN KEY (`brand`) REFERENCES `brand` (`brand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_store_food_item_food_item` FOREIGN KEY (`food_item_id`) REFERENCES `food_item` (`food_item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
