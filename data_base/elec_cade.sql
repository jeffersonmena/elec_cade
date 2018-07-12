-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 07:08 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elec_cade`
--

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `curso` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id_curso`, `curso`) VALUES
(1, '4to Básica A'),
(2, '4to Básica B'),
(3, '5to Básica A'),
(4, '5to Básica B'),
(5, '6to Básica A'),
(6, '6to Básica B'),
(7, '7mo Básica A'),
(8, '8vo Básica A'),
(9, '8vo Básica B'),
(10, '9no Básica A'),
(11, '9no Básica B'),
(12, '10mo Básica A'),
(13, '10mo Básica B'),
(14, '10mo Básica C'),
(15, '1ro Bachillerato A'),
(16, '1ro Bachillerato B'),
(17, '2do Bachillerato A'),
(18, '2do Bachillerato B'),
(19, '2do Bachillerato C'),
(20, '3ro Bachillerato A'),
(21, '3ro Bachillerato B'),
(22, '3ro Bachillerato C');

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `codigo` varchar(8) NOT NULL,
  `estudiante` varchar(80) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `codigo`, `estudiante`, `cedula`, `id_curso`) VALUES
(1, '4TOA01', 'Andrade Pinto German Esteban', '2350346074', 1),
(2, '4TOA02', 'Andrade Viracocha Yuliana Lisbeth', '2350828642', 1),
(3, '4TOA03', 'Armijos Chungandro Mayte Larissa', '2350193443', 1),
(4, '4TOA04', 'Barragan Paredes Ronald Mathias', '2350455388', 1),
(5, '4TOA05', 'Cajas Navarrete Miguel Arturo', '2300609068', 1),
(6, '4TOA06', 'Carvajal Chavarria Leslie Nicole', '2350251019', 1),
(7, '4TOA07', 'Espin Sanchez Adrian Edmundo', '2350594525', 1),
(8, '4TOA08', 'Guillen Ochoa Solange Angelina', '2350584971', 1),
(9, '4TOA09', 'Loor Benalcazar Samuel Alexander', '2300559024', 1),
(10, '4TOA10', 'Martinez Valencia Dina Salome', '2350304180', 1),
(11, '4TOA11', 'Nasimba Zumba Ahilyn Salome', '2350810137', 1),
(12, '4TOA12', 'Nuñez Arroyo Domenica Nathalia', '2351105321', 1),
(13, '4TOA13', 'Reyes Egas Suzanna Rochelle', '0951745348', 1),
(14, '4TOA14', 'Rivas Hoyos Jorge Luis', '2300600737', 1),
(15, '4TOA15', 'Rosero Patiño Daniel Alejandro', '2350962664', 1),
(16, '4TOA16', 'Santillan Serrano Johanna Sofia', '2351001538', 1),
(17, '4TOA17', 'Swett Montes Jeremy Jared', '2350240657', 1),
(18, '4TOA18', 'Zambrano Ordoñez Kamilly Larissa', '1316145653', 1),
(19, '4TOB01', 'Avila Cisneros Andy Mateo', '1752820793', 2),
(20, '4TOB02', 'Chalaco Garcia Victor Miguel', '1208491967', 2),
(21, '4TOB03', 'Chaux Andrade Bryanna Sofia', '2300897143', 2),
(22, '4TOB04', 'Cuenca Guevara Josue Amador', '2350162489', 2),
(23, '4TOB05', 'Cuenca Matailo Sarai Raquel', '2350590648', 2),
(24, '4TOB06', 'Guerra Erazo Michelle Paule', '0000000000', 2),
(25, '4TOB07', 'Guzman Rodriguez Ariana Carolina', '1250967856', 2),
(26, '4TOB08', 'Jaramillo Parrales Camila Kristel', '2300544059', 2),
(27, '4TOB09', 'Martinez Valencia Judy Salome', '2350304222', 2),
(28, '4TOB10', 'Morales Zambrano Thomas Rodrigo', '1751483342', 2),
(29, '4TOB11', 'Orejuela Orellana Keren  Jemima', '0804612810', 2),
(30, '4TOB12', 'Puertas Valencia Keylet Sebastian', '2350783383', 2),
(31, '4TOB13', 'Quespaz Guambo Thayra Solange', '2300849649', 2),
(32, '4TOB14', 'Quezada Romero Maykel Alejandro', '2350038119', 2),
(33, '4TOB15', 'Rosales Camacho Naiara Thais', '2350875932', 2),
(34, '4TOB16', 'Valdez Lasluisa Jorge Matias', '2350103491', 2),
(35, '4TOB17', 'Velez Salgado Sarahy Jamileth', '2300518244', 2),
(36, '5TOA01', 'Aguirre Vera Victoria Alejandra', '230055745', 3),
(37, '5TOA02', 'Alcivar Freire Damaris Jocabed', '2300563216', 3),
(38, '5TOA03', 'Alvarado Lascano Cristopher Jose Maria', '1729566735', 3),
(39, '5TOA04', 'Andrade Viracocha Damian Alejandro', '2350474769', 3),
(40, '5TOA05', 'Barreto Murillo Samuel David', '2350387045', 3),
(41, '5TOA06', 'Cañizares Murillo Jared Valentino', '0931052708', 3),
(42, '5TOA07', 'Chiriboga Cedeño Thais Alexandra', '2350326936', 3),
(43, '5TOA08', 'Costales Candela Joy Anita', '2300542574', 3),
(44, '5TOA09', 'Espimbera Chica David Danilo', '2550816860', 3),
(45, '5TOA10', 'Guerra Mejia Sebastian Elias', '1251154637', 3),
(46, '5TOA11', 'Hidalgo Vallejo Dominic Roberta', '1750374124', 3),
(47, '5TOA12', 'Jimenez Alcivar Ashley Aksiniasuhat', '2350544553', 3),
(48, '5TOA13', 'Murillo Moncayo Leonela Isabel', '2350606436', 3),
(49, '5TOA14', 'Nasimba Zumba Anthony Johan', '2350810095', 3),
(50, '5TOA15', 'Quichimbo Orellana Carlos Reinaldo', '2300344807', 3),
(51, '5TOA16', 'Requelme Miranda Julian Paul', '2350090805', 3),
(52, '5TOA17', 'Romero Freire Dana Naomi', '2300614753', 3),
(53, '5TOA18', 'Segura Tacuri Carlos Daniel', '2300621386', 3),
(54, '5TOA19', 'Solorzano Contreras Ivanna Suleyka', '2350427783', 3),
(55, '5TOB01', 'Aguavil Garzon Diego Israel', '2351001249', 4),
(56, '5TOB02', 'Barberan Ricaurte Mia Charlotte', '1351201643', 4),
(57, '5TOB03', 'Coyago Cuesta Josias Orley', '2350306748', 4),
(58, '5TOB04', 'Diaz Mendez Dayla Jemina', '2000127411', 4),
(59, '5TOB05', 'Guambo Pucuna Aaron Mateo', '2350107716', 4),
(60, '5TOB06', 'Hurtado Romero Ariana Stephany', '2350386146', 4),
(61, '5TOB07', 'Miranda Freire Sophya Jadhyel', '1727059592', 4),
(62, '5TOB08', 'Morales Bustamante Cesar Rafael', '2350752743', 4),
(63, '5TOB09', 'Nuñez Arroyo Ariana Camila', '2351105313', 4),
(64, '5TOB10', 'Ocampo Naranjo Samantha Galilea', '2300304645', 4),
(65, '5TOB11', 'Ocampo Pita Pier Alejandro', '2300394240', 4),
(66, '5TOB12', 'Pinargote Barragán Wilson Estenio', '2300895550', 4),
(67, '5TOB13', 'Rivera Guillen  Sarahi Edelina', '2350156796', 4),
(68, '5TOB14', 'Ronquillo  Zambrano Enrique  Said', '2350341836', 4),
(69, '5TOB15', 'Rosero Lucas Maydelis Nohelia', '2350492977', 4),
(70, '5TOB16', 'Ruiz Chang Isaac Mathias', '2300341894', 4),
(71, '5TOB17', 'Ruiz Guevara Xavier Agustin', '2300644990', 4),
(72, '5TOB18', 'Yoong Miraba Dana Stephany', '1317748216', 4),
(73, '6TOA01', 'Alvarado Cedeño Euro Ignacio', '1314592658', 5),
(74, '6TOA02', 'Araque Cedeño Nathaly Estefania', '3050113202', 5),
(75, '6TOA03', 'Benavides Matute Cinthya Carelys', '2300365794', 5),
(76, '6TOA04', 'Cabrera Riapira Mariana Sofia', '2300518939', 5),
(77, '6TOA05', 'Calazacon Calazacon Shuana Mireya', '2350610321', 5),
(78, '6TOA06', 'Cedeño Gonzalez Hattie Elizabeth', '2300314727', 5),
(79, '6TOA07', 'Cedeño Mendoza Abrahan Rafael', '2350280828', 5),
(80, '6TOA08', 'Eugenio Perez Ana Paula', '2300307648', 5),
(81, '6TOA09', 'Gonzales Perez Iris Estefany', '1208894186', 5),
(82, '6TOA10', 'Gonzalez Espin David Enoc', '2300510118', 5),
(83, '6TOA11', 'Guevara Venegas Carlos Esteban', '2350047441', 5),
(84, '6TOA12', 'Jacome Solorzano Luis Rodrigo', '1726291089', 5),
(85, '6TOA13', 'Jaramillo Meza Mario Marcel', '2300366826', 5),
(86, '6TOA14', 'Lombeida Castañeda Bruno Elijah', '2300577158', 5),
(87, '6TOA15', 'Lucero Alvario Kori Ayalen', '1755038500', 5),
(88, '6TOA16', 'Manterola Swett Mathias Valentino', '1750462911', 5),
(89, '6TOA17', 'Mora Santos Roberto Pablo', '0929359305', 5),
(90, '6TOA18', 'Nogales Veloz Matthew Esteban', '1750706978', 5),
(91, '6TOA19', 'Quezada Reinoso Paula Domenica', '2351034349', 5),
(92, '6TOA20', 'Villarreal Lopez Misael Alejandro', '2300451255', 5),
(93, '6TOB01', 'Andino Navarrete Emilia', '2350754731', 6),
(94, '6TOB02', 'Burgos Mendoza Martina', '2350383085', 6),
(95, '6TOB03', 'Carpio Ortega Joaquina', '0107206484', 6),
(96, '6TOB04', 'Castillo  Mora Josue  Alexander', '2350460438', 6),
(97, '6TOB05', 'Castro Valencia Antonella Sthefanya', '2300198070', 6),
(98, '6TOB06', 'Colina Silvera Ismael Alejandro', '2351015181', 6),
(99, '6TOB07', 'Cuvi Coral Daira Valentina', '2300313190', 6),
(100, '6TOB08', 'Guzman Rodriguez Johan Lisander', '1208501401', 6),
(101, '6TOB09', 'Hurtado Romero Hector Enrique', '1207564376', 6),
(102, '6TOB10', 'Iza Jami Edwin Romeo', '0504430190', 6),
(103, '6TOB11', 'Mesias Solorzano Jonathan  Steven', '2350016808', 6),
(104, '6TOB12', 'Moreta Landeta Alan Matias', '2350336422', 6),
(105, '6TOB13', 'Nupan Peralta Yajaira Julieth', '2300751894', 6),
(106, '6TOB14', 'Ramirez Laz Ibeth Sarai', '0951980911', 6),
(107, '6TOB15', 'Ronquillo  Zambrano Jorge Isaac', '2350341844', 6),
(108, '6TOB16', 'Silvers Ruiz Emma Mirelli', '2300104268', 6),
(109, '6TOB17', 'Suquilanda Herrera Ury Matias', '1727176867', 6),
(110, '6TOB18', 'Torres Perez Roberth Camilo', '2350586836', 6),
(111, '6TOB19', 'Yan Zhuang Kent Lebin', '2300067655', 6),
(112, '6TOB20', 'Yepez Gomez  Nahomi  Betzabe', '1004651418', 6),
(113, '6TOB21', 'Zambrano Reyes Aitor Lenny', '1727054247', 6),
(114, '7MOA01', 'Apolo Defaz Carla Milenna', '2350045288', 7),
(115, '7MOA02', 'Arguello Burgos Octavio David', '0959313917', 7),
(116, '7MOA03', 'Arroyo Loor Emilia Alejandra', '2351134362', 7),
(117, '7MOA04', 'Campbell Arellano María José', '120714491', 7),
(118, '7MOA05', 'Cevallos Pachar Ashley Emilia', '2300289531', 7),
(119, '7MOA06', 'Espin Sanchez Damariz Arianna', '2350594491', 7),
(120, '7MOA07', 'Gonzaga Loja Jandry José', '2351138371', 7),
(121, '7MOA08', 'Guerrero Rodriguez Ander Xavier', '2350829798', 7),
(122, '7MOA09', 'Guillen Naranjo Alisson Cristina', '2350034209', 7),
(123, '7MOA10', 'Haro Zambrano Decker Sair', '1350152292', 7),
(124, '7MOA11', 'Manobanda  Sangoluisa Anny  Rebeca', '2350590416', 7),
(125, '7MOA12', 'Martinez Bazurto Pier Eduardo', '0920852212', 7),
(126, '7MOA13', 'Mejia Mendoza Maria Emilia', '2350499295', 7),
(127, '7MOA14', 'Moreira Velez Ariel Misael', '1314326669', 7),
(128, '7MOA15', 'Ortiz Lascano Diego Alexander', '0000000018', 7),
(129, '7MOA16', 'Paredes Jaramillo Scarlett Anahi', '2300320666', 7),
(130, '7MOA17', 'Paredes Toscano Edgar Saed', '2350698391', 7),
(131, '7MOA18', 'Quezada Villaprado Salomon', '2300780687', 7),
(132, '7MOA19', 'Ramon Plaza Peter Dylan', '1724417660', 7),
(133, '7MOA20', 'Reyes Egas Borys Isaak', '0092864075', 7),
(134, '7MOA21', 'Sanchez  Zambrano  Valentina Pia', '1250452925', 7),
(135, '7MOA22', 'Suarez Piloco Steven Wilfrido', '2300911175', 7),
(136, '7MOA23', 'Toro Chucuyan Samuel Orlando', '2350366585', 7),
(137, '7MOA24', 'Vera De La Torre Andrea Sofia', '1727331298', 7),
(138, '7MOA25', 'Villa Hurtado Domenica Janeth', '2300057821', 7),
(139, '7MOA26', 'Villarreal Lopez Jonathan Mateo', '2300451230', 7),
(140, '7MOA27', 'Zambrano Calazacon Jean Pierre', '2300277940', 7),
(141, '7MOA28', 'Zurita Zambrano Derek Benjamin', '2300394497', 7),
(142, '8VOA01', 'Ayala Galarza Byron Ray', '2351137308', 8),
(143, '8VOA02', 'Barreto Murillo Nahomi Stephania', '2350387078', 8),
(144, '8VOA03', 'Benalcazar Sosa Pablo Silas', '2350054058', 8),
(145, '8VOA04', 'Benitez Zambrano Kleber Estefano', '2350060188', 8),
(146, '8VOA05', 'Bolivar Torres Andrea Carolina', 'FB465348', 8),
(147, '8VOA06', 'Bravo Leon Maria Fabiana', '2300522907', 8),
(148, '8VOA07', 'Carreño Solis George', '1754246278', 8),
(149, '8VOA08', 'Carrera  Cando Angiel  Mishell', '2350939480', 8),
(150, '8VOA09', 'Castro Rosado Andrea Daniela', '2300126477', 8),
(151, '8VOA10', 'Chum Rodriguez Leire Aitana', '2300400476', 8),
(152, '8VOA11', 'Cuenca  Asanza Ana  Paula', '2350994881', 8),
(153, '8VOA12', 'Cumbicus Oña Nayerly Mishelle', '1750878942', 8),
(154, '8VOA13', 'Espimbera Chica Daniela Elizabeth', '2350816894', 8),
(155, '8VOA14', 'Espimbera Mejia Jah Stane', '2350228389', 8),
(156, '8VOA15', 'Estrella Faz Maythe Anahi', '0804748747', 8),
(157, '8VOA16', 'Jaramillo Parrales Ian Sebastian', '0805375151', 8),
(158, '8VOA17', 'Narvaez Montes David Alejandro', '2350071276', 8),
(159, '8VOA18', 'Noboa  Infante  Sebastian  Nicolas', '1755132097', 8),
(160, '8VOA19', 'Patiño Miraba Damaris Paulette', '2300625148', 8),
(161, '8VOA20', 'Portilla Gomez Kelaia Salome', '1005126006', 8),
(162, '8VOA21', 'Rodriguez Rivera Juan David', '2300860133', 8),
(163, '8VOA22', 'Valero  Jimenez Elias Josue', '0960856060', 8),
(164, '8VOA23', 'Vivas  Mendoza Elis Eduardo', '2350123242', 8),
(165, '8VOA24', 'Zambrano Contreras Marcos Brian', '0928566546', 8),
(166, '8VOB01', 'Ayala Moreira Emmily Nathalia', '1751666361', 9),
(167, '8VOB02', 'Barberan Ricaurte Pierre Stephano', '1351201627', 9),
(168, '8VOB03', 'Cevallos Solorzano Matthew Leonardo', '2300366818', 9),
(169, '8VOB04', 'Coronel Gonzales Frank Jhordanny', '0202224366', 9),
(170, '8VOB05', 'Guanoluisa Loor Emily Valentina', '2300838295', 9),
(171, '8VOB06', 'Herrera Mero Domenica Mercedes', '1751342138', 9),
(172, '8VOB07', 'Jaramillo Dominguez Aylin Fiorella', '2350162422', 9),
(173, '8VOB08', 'Meneses Martinez Madelin Renata', '2350232506', 9),
(174, '8VOB09', 'Monar Cadena Jonathan Mateo', '2350573560', 9),
(175, '8VOB10', 'Montesdioca Triviño Carlos  Jafet', '0929411783', 9),
(176, '8VOB11', 'Pazmiño Toro Byron Andres', '1711687812', 9),
(177, '8VOB12', 'Pazmiño Toro Gabriel Isai', '2350829343', 9),
(178, '8VOB13', 'Puruncajas Gonzalez Pablo Sebastian', '1752387116', 9),
(179, '8VOB14', 'Quichimbo Santin Mateo Emanuel', '1723690812', 9),
(180, '8VOB15', 'Quintero Bastidas Elkin Joel', '2300457393', 9),
(181, '8VOB16', 'Rey Minchala Arianna Elizabeth', '2350979858', 9),
(182, '8VOB17', 'Saavedra Casanova Jose Alejandro', '0503742819', 9),
(183, '8VOB18', 'Sanchez Paez Fiorella Anahi', '2350691818', 9),
(184, '8VOB19', 'Valencia Benavides Kelly Gabriela', '2300436538', 9),
(185, '8VOB20', 'Vargas Sangoluisa Melany Tatiana', '2350437378', 9),
(186, '8VOB21', 'Villamarin Andrade Joseph Gustavo', '0950433235', 9),
(187, '8VOB22', 'Xiangrui Alejandro Xu Zeng', '1724092083', 9),
(188, '8VOB22', 'Yanez Solorzano Cristian Xavier', '1305327153', 9),
(189, '9NOA01', 'Alvear Pacheco Paula Camila', '2350461733', 10),
(190, '9NOA02', 'Benalcazar Sosa Rebeca', '2350054025', 10),
(191, '9NOA03', 'Calazacon Cabrera Camila Yasir', '2350001653', 10),
(192, '9NOA04', 'Casignia Quirola Mateo Francesco', '2300051048', 10),
(193, '9NOA05', 'Castro Alcivar Juan Adrian', '2300695026', 10),
(194, '9NOA06', 'Dalgo Cuaical Steven Fernando', '1724275357', 10),
(195, '9NOA07', 'Egas Manobanda Mateo Nicolas', '2300463987', 10),
(196, '9NOA08', 'García  Lara Myriam Silvana', '0804741932', 10),
(197, '9NOA09', 'Hidalgo Bustamante Felipe Andres', '1317635934', 10),
(198, '9NOA10', 'Jacome Solorzano Rafael Alfonso', '1724482284', 10),
(199, '9NOA11', 'Lopez Cornejo Mateo Arturo', '2300535107', 10),
(200, '9NOA12', 'Maldonado Carrera Maria Rafaela', '1726648502', 10),
(201, '9NOA13', 'Moreta Landeta Miguel Alejandro', '2350358319', 10),
(202, '9NOA14', 'Oleas Custode Adriana Camila', '2351157215', 10),
(203, '9NOA15', 'Sidel Almeida Marco Antonio', '2350998544', 10),
(204, '9NOA16', 'Toaquiza Sanchez Kennet Miguel', '2350705295', 10),
(205, '9NOA17', 'Ulloa  Juan Rafael', '0531051609', 10),
(206, '9NOA18', 'Velasquez Alarcon Andres Sebastian', '2351157207', 10),
(207, '9NOA19', 'Velez Salgado Ammy Sarahi', '2300518251', 10),
(208, '9NOA20', 'Vizcarra Armijos Nahim Matias', '1723109771', 10),
(209, '9NOA21', 'Yaguachi Zambrano Marcos Elian', '1350961445', 10),
(210, '9NOA22', 'Zambrano Tubay Jean Pierre', '1314856137', 10),
(211, '9NOB01', 'Araque Viteri Fabiana Nathaly', '2300383326', 11),
(212, '9NOB02', 'Ballesteros Cevallos Dannae Abigail', '2350048746', 11),
(213, '9NOB03', 'Botia Ponton Aldo Sebastian', '2300213903', 11),
(214, '9NOB04', 'Brito Toala Emily Kathiusca', '2351154386', 11),
(215, '9NOB05', 'Castro Intriago Angel Robert', '2300415771', 11),
(216, '9NOB06', 'Catagña  Ibañez Franco Isaac', '1725145617', 11),
(217, '9NOB07', 'Cedeño Murillo Joel Josafat', '1208582039', 11),
(218, '9NOB08', 'Cervantes Garcia Omar Joffre', '0943631945', 11),
(219, '9NOB09', 'Cevallos Miraba Estefano Alessandro', '2300812209', 11),
(220, '9NOB10', 'Constante Moreira Brenda Rayli', '1316972965', 11),
(221, '9NOB11', 'Cuasque Espin Stalin Raul', '2300072234', 11),
(222, '9NOB12', 'De La Cueva Gomez Patricia Carolina', '2350821266', 11),
(223, '9NOB13', 'Guerrero Garcia Elkin Jardel', '0804963106', 11),
(224, '9NOB14', 'Ordoñez Mosquera Emily Kiara', '2300100241', 11),
(225, '9NOB15', 'Palma  Monar Martin Alejandro', '2350379323', 11),
(226, '9NOB16', 'Pulamarin Millingalli Jean Pool', '1727230912', 11),
(227, '9NOB17', 'Romero Loor Mateo Sebastian', '2350104580', 11),
(228, '9NOB18', 'Vera Varela Josselyn Marley', '0942292178', 11),
(229, '9NOB19', 'Villaprado Sanchez Jonathan Daniel', '2350590614', 11),
(230, '9NOB20', 'Yan Zhang Enmy  Leyi', '1724016991', 11),
(231, '9NOB21', 'Yanez Velez Jennifer Pierina', '2350222671', 11),
(232, '9NOB22', 'Zambrano Zuñiga Jaritza Jazmin', '2350093999', 11),
(233, '9NOB23', 'Zurita Quevedo Oscar Alejandro', '2300568843', 11),
(234, '10MOA01', 'Ayala Garcia Pacha Fidelia', '1727254052', 12),
(235, '10MOA02', 'Camino Romero Dylan Renato', '2350033086', 12),
(236, '10MOA03', 'Cueva Mariño Adrian Sebastian', '0952620094', 12),
(237, '10MOA04', 'Cueva Terreros Karla Melisa', '2450044173', 12),
(238, '10MOA05', 'Cujilema Chirau Tiffany Belinda', '2300875685', 12),
(239, '10MOA06', 'Delgado Rosero Ethan Sebastian', '2300483209', 12),
(240, '10MOA07', 'Guambo Quishpi Nathaly Lisseth', '2350980492', 12),
(241, '10MOA08', 'Jimenez Alcivar Geovanny Yarif', '1723607774', 12),
(242, '10MOA09', 'Mendoza Vera Maria Veronica', '2350096331', 12),
(243, '10MOA10', 'Mosquera Serrano Gustavo Adolfo', '1722166285', 12),
(244, '10MOA11', 'Olmedo Chicango Ana Fabiana', '0704967280', 12),
(245, '10MOA12', 'Orejuela  Orellana Kamilie Elizabeth', '1723201974', 12),
(246, '10MOA13', 'Ortiz Lascano Dayana Shantal', '0000000019', 12),
(247, '10MOA14', 'Rodriguez Ortiz Sebastian Alejandro', '2300772809', 12),
(248, '10MOA15', 'Rojas Paño Esmirna Edelweis', '2300072473', 12),
(249, '10MOA16', 'Salazar Tacuri Jared Edison', '2350016552', 12),
(250, '10MOA17', 'Serrano Segura Paula Mikaela', '2350700890', 12),
(251, '10MOA18', 'Solis Cedeño Melanie Fernanda', '0804399801', 12),
(252, '10MOA19', 'Varela  León  Ana  Paula', '1251192280', 12),
(253, '10MOA20', 'Vega Puruncajas Caleb Jair', '2350094518', 12),
(254, '10MOA21', 'Yanez Solorzano Jose Manuel', '1315375319', 12),
(255, '10MOB01', 'Aldaz Martinez Oscar Eduardo', '0235053296', 13),
(256, '10MOB02', 'Arevalo Toro Remmy Steveen', '2300497035', 13),
(257, '10MOB03', 'Benalcazar Pintado Missael Isaias', '2300341902', 13),
(258, '10MOB04', 'Cabrera Ontaneda Jose Alejandro', '1150317020', 13),
(259, '10MOB05', 'Carpio Ortega Martina', '0107144461', 13),
(260, '10MOB06', 'Cedeño Hidalgo Jose Antonio', '1206203984', 13),
(261, '10MOB07', 'Cevallos Miraba Adrian Ismael', '2300798648', 13),
(262, '10MOB08', 'Chavarria Cedeño Luz Salem', '1351926843', 13),
(263, '10MOB09', 'Delgado Ibarra Steven Joel', '1754703054', 13),
(264, '10MOB10', 'Demera Mora Kessia Astrid', '2300243165', 13),
(265, '10MOB11', 'Guerra Erazo Michael Jimmy', '1000000078', 13),
(266, '10MOB12', 'Mendoza Zambrano Alejandro Joel', '2300566367', 13),
(267, '10MOB13', 'Morales Zambrano Mateo Alejandro', '1722820691', 13),
(268, '10MOB14', 'Oleas Custode Marcelo Alejandro', '2351157231', 13),
(269, '10MOB15', 'Pazmiño Toro Jonathan Luis', '2350829384', 13),
(270, '10MOB16', 'Ponce Benavides Stefany Jamileth', '2300215239', 13),
(271, '10MOB17', 'Rosero Lucas Niurka Yamilet', '2300023278', 13),
(272, '10MOB18', 'Ruiz Chang Amy Ivanna', '1722840830', 13),
(273, '10MOB19', 'Santana Chavarria Landy Salome', '1351925977', 13),
(274, '10MOB20', 'Silvers Ruiz Keyla Patricia', '1722285234', 13),
(275, '10MOB21', 'Vega Calahorrano Adriel Israel', '1750953380', 13),
(276, '10MOC01', 'Alban Carranza Emilio Joel', '2300567860', 14),
(277, '10MOC02', 'Alvarez Contreras Dayanara Krisbel', '2350355570', 14),
(278, '10MOC03', 'Alvarez Guerrero Ainhoa', '2300216989', 14),
(279, '10MOC04', 'Arroyo Loor Ricardo Alejandro', '2351134370', 14),
(280, '10MOC05', 'Barragan Loor Emily Juliana', '1752066686', 14),
(281, '10MOC06', 'Barreto Fernandez Mario David', '2350543084', 14),
(282, '10MOC07', 'Coronel Saavedra Paula Alessandra', '2350579823', 14),
(283, '10MOC08', 'Escobar Guaman  Henry Sebastian', '0000000020', 14),
(284, '10MOC09', 'Garcia Bravo Jared', '1709937121', 14),
(285, '10MOC10', 'García Perez  Edison Eduardo', '1753046257', 14),
(286, '10MOC11', 'Guaman Paredes Camily Daniela', '2350187114', 14),
(287, '10MOC12', 'Hincapie Chiriboga Gema Carolina', '2300552805', 14),
(288, '10MOC13', 'Lara Canchingre Carlos Ivan', '1725387888', 14),
(289, '10MOC14', 'Larco Fernandez Esteban Marcelo', '2300442940', 14),
(290, '10MOC15', 'Loaiza Bermudez Grimmy Nicoll', '2300621642', 14),
(291, '10MOC16', 'Martinez Valencia Maite Carmen', '1723230965', 14),
(292, '10MOC17', 'Puertas Valencia Dave Israel', '2300059652', 14),
(293, '10MOC18', 'Suarez Piloco Leandro Josue', '1724794662', 14),
(294, '1BGUA01', 'Araujo Avegno Genesis Nahomy', '1723275044', 15),
(295, '1BGUA02', 'Ayala Garcia Micaela Carolina', '2350619371', 15),
(296, '1BGUA03', 'Benavides Matute Genesis Dailyn', '2300365786', 15),
(297, '1BGUA04', 'Cardenas Astudillo Fausto Emilio', '1750708628', 15),
(298, '1BGUA05', 'Cedeño Abad George Smith', '2200110126', 15),
(299, '1BGUA06', 'Chiriboga Cedeño Rodrigo Francisco', '2350326951', 15),
(300, '1BGUA07', 'Coyago Subia Milena Noemi', '2300373194', 15),
(301, '1BGUA08', 'Criollo Mendieta Alisson Lisseth', '2300163611', 15),
(302, '1BGUA09', 'Ennisch Martinez Jochen Javier', '2300488331', 15),
(303, '1BGUA10', 'Espinosa Carvajal Melany Carolina', '2300146780', 15),
(304, '1BGUA11', 'Espinoza Cobeña Henry David', '0804653681', 15),
(305, '1BGUA12', 'Figueroa Castro Carlos Andres', '2350970709', 15),
(306, '1BGUA13', 'Garcia Samaniego Andy Steeven', '0707355939', 15),
(307, '1BGUA14', 'Jaramillo Dominguez Sophia Anahi', '2350162398', 15),
(308, '1BGUA15', 'Lara Ojeda Jahdiel  Tobias', '2300861362', 15),
(309, '1BGUA16', 'Largacha Arteaga Natalia Camila', '0958200883', 15),
(310, '1BGUA17', 'Lopez Vega Geanine Antonella', '2300814270', 15),
(311, '1BGUA18', 'Mencias Mera Paul  Andres', '1727261883', 15),
(312, '1BGUA19', 'Pambabay Carriel Adrian Patricio', '0803340124', 15),
(313, '1BGUA20', 'Portilla Gomez Lissany Valeria', '1004721484', 15),
(314, '1BGUA21', 'Pulamarin Millingalli Geraldine Aylis', '1727230896', 15),
(315, '1BGUA22', 'Quinchuela Medrano Sarah Aracelly', '1208633014', 15),
(316, '1BGUA23', 'Reinoso Perez Brenda Stephania', '1720745973', 15),
(317, '1BGUA24', 'Robles López Valeria Leonela', '1722090840', 15),
(318, '1BGUA25', 'Salvador Aguilar Domenica Denisse', '2350488603', 15),
(319, '1BGUA26', 'Santillan Serrano Fred Santiago', '2351001512', 15),
(320, '1BGUA27', 'Yepez Gomez Pablo Jair', '1004651400', 15),
(321, '1BGUB01', 'Armijos Chungandro Zuleyka Anahi', '2300264047', 16),
(322, '1BGUB02', 'Berni  Chiriboga Belen  Virginia', '1728767854', 16),
(323, '1BGUB03', 'Cabrera Riapira Manuel Felipe', '1724967748', 16),
(324, '1BGUB04', 'Cadena Guadalupe Ariana Nikole', '2300789704', 16),
(325, '1BGUB05', 'Cañizares Murillo Allan Enrique', '955898713', 16),
(326, '1BGUB06', 'Castro Intriago Liz Nicolle', '2300415755', 16),
(327, '1BGUB07', 'Cevallos Solorzano Tiffany Belen', '1722188412', 16),
(328, '1BGUB08', 'Chila Torres Thais Marisol', '0804782225', 16),
(329, '1BGUB09', 'Cobos Alvarado Josselyn Jarely', '2351051954', 16),
(330, '1BGUB10', 'Gomez Guerrero Alvaro Ariel', '0804038727', 16),
(331, '1BGUB11', 'Guanoluisa Rosado Galo Jair', '1755258793', 16),
(332, '1BGUB12', 'Loor Paredes Tito Alejandro', '1721371126', 16),
(333, '1BGUB13', 'Medina Mora Ana Paula', '2350654675', 16),
(334, '1BGUB14', 'Monar Cadena Sara Belen', '2350574139', 16),
(335, '1BGUB15', 'Patiño Miraba Samuel Andres', '2300625130', 16),
(336, '1BGUB16', 'Puruncajas González Ronald Josue', '1752387280', 16),
(337, '1BGUB17', 'Quelal Nájera Paulette Elizabeth', '2300603582', 16),
(338, '1BGUB18', 'Ramirez Molina Karen Anais', '1317114260', 16),
(339, '1BGUB19', 'Recalde Verdugo Mateo Sebastian', '0106983679', 16),
(340, '1BGUB20', 'Saavedra Casanova Sergio Sebastian', '0503742793', 16),
(341, '1BGUB21', 'San Martin Paredes Amina Alejandra', '3050249949', 16),
(342, '1BGUB22', 'Velasquez Alarcon Diego Fernando', '2351157249', 16),
(343, '1BGUB23', 'Velez  Sabando Lenin Roberto', '000000000', 16),
(344, '1BGUB24', 'Vera De La Torre Emily Abigail', '1727331306', 16),
(345, '1BGUB25', 'Yanez Velez Carla Jamileth', '2350222648', 16),
(346, '1BGUB26', 'Zhindon Tapia Delfina Gabriela', '0950194522', 16),
(347, '2BGUA01', 'Aguilar Pineda Anthony Sam', '2350928301', 17),
(348, '2BGUA02', 'Armijos Montesinos Omar Leandro', '1721316741', 17),
(349, '2BGUA03', 'Ayala Molina Camila Estefania', '0928979103', 17),
(350, '2BGUA04', 'Bustos Venegas  Pierre  Sebastian', '2350384349', 17),
(351, '2BGUA05', 'Cedeño Flores John Robert', '2350159709', 17),
(352, '2BGUA06', 'Cervantes Granja Emily Katie', '0927344911', 17),
(353, '2BGUA07', 'Falcones Mendoza Karol Nohelia', '1317436317', 17),
(354, '2BGUA08', 'Flores Fernandez Rosibel Maylin', '1720125101', 17),
(355, '2BGUA09', 'Franco Defaz Martin Nicolas', '0955904271', 17),
(356, '2BGUA10', 'Garces Zambrano Carla Gabriela', '2300718489', 17),
(357, '2BGUA11', 'Garcia Chavez Alisson Nicole', '1724905805', 17),
(358, '2BGUA12', 'Herrera Garcia Yexy Jael', '2300705718', 17),
(359, '2BGUA13', 'Isch Preciado Maria Emilia', '1720566866', 17),
(360, '2BGUA14', 'Jaramillo Dominguez Jenny Salome', '2350162455', 17),
(361, '2BGUA15', 'Loaiza Bermudez Veronica Denysse', '2300621626', 17),
(362, '2BGUA16', 'Luzuriaga Rodriguez Joyce Elizabeth', '2300604846', 17),
(363, '2BGUA17', 'Morales Castillo Jose Julian', '1724716012', 17),
(364, '2BGUA18', 'Moreira Velez Kanddy Mariel', '1314326719', 17),
(365, '2BGUA19', 'Nogales Veloz Angela Lyz', '1750707059', 17),
(366, '2BGUA20', 'Ortega Burbano David Washington', '2350704710', 17),
(367, '2BGUA21', 'Ramon Plaza Nayeli Scarlet', '1724417652', 17),
(368, '2BGUA22', 'Sanchez Toro Jeremy Josue', '2300408461', 17),
(369, '2BGUA23', 'Santana Robalino Marcia Ester', '1250467808', 17),
(370, '2BGUA24', 'Santillan Serrano Juan Sebastian', '2351001520', 17),
(371, '2BGUA25', 'Serrano Segura Daniel Fernando', '2350700924', 17),
(372, '2BGUA26', 'Velasquez Zambrano Rosa Elizabeth', '2300616196', 17),
(373, '2BGUB01', 'Andino Navarrete Daniel', '1754847752', 18),
(374, '2BGUB02', 'Arellano Murillo Romel Fernando', '2351140229', 18),
(375, '2BGUB03', 'Calazacon Pinela Amy Mitchelle', '2350675241', 18),
(376, '2BGUB04', 'Cervantes Burgos Luis Daniel', '2300303852', 18),
(377, '2BGUB05', 'Chiriboga Cedeño Cristina Alexandra', '2350326977', 18),
(378, '2BGUB06', 'Coronel Saavedra Miguel Alejandro', '2350579831', 18),
(379, '2BGUB07', 'Ennisch Martinez Jerico Helmut', '2300488323', 18),
(380, '2BGUB08', 'Figueroa Castro Ariana Francesca', '2350970675', 18),
(381, '2BGUB09', 'Flores  Ramirez  Junior  Stiven', '2250200264', 18),
(382, '2BGUB10', 'Gonzalez Espin Wendy Mariuxi', '2300510100', 18),
(383, '2BGUB11', 'Lozano Hallón Angie Anahi', '1207454677', 18),
(384, '2BGUB12', 'Marquez Pinela Milton David', '0751005430', 18),
(385, '2BGUB13', 'Martinez Llori Barbara Mishell', '2351154139', 18),
(386, '2BGUB14', 'Moncayo Intriago Jacobo Alain', '1723770671', 18),
(387, '2BGUB15', 'Moreira Vera Edson Josiel', '0941058976', 18),
(388, '2BGUB16', 'Mortensen Estrella Ammy Denisse', '1723322747', 18),
(389, '2BGUB17', 'Ordoñez Mosquera Tifany Jamilex', '1723276091', 18),
(390, '2BGUB18', 'Palma Urgiles Javier Adhair', '0928851955', 18),
(391, '2BGUB19', 'Probst Pesantez Hanns', '2300299399', 18),
(392, '2BGUB20', 'Rojas Paño Angie Noemi', '2300073935', 18),
(393, '2BGUB21', 'Tapia Barros Maria Alejandra', '2350359325', 18),
(394, '2BGUB22', 'Tigrero Santillan Jatnael Esteban', '2350989972', 18),
(395, '2BGUB23', 'Vivas Mendoza Estefania Elizabeth', '2350123309', 18),
(396, '2BGUC01', 'Abad Roman Richar David', '220013791', 19),
(397, '2BGUC02', 'Abata Guachi Alanis Camila', '1721377206', 19),
(398, '2BGUC03', 'Bravo Delgado Ciro Alexander', '2350543977', 19),
(399, '2BGUC04', 'Caceres Mendez Chiara Eduarda', '2300864366', 19),
(400, '2BGUC05', 'Calazacon Bravo Steven Benjamin', '2350745192', 19),
(401, '2BGUC06', 'Calazacon Cabrera Jose David', '1755658414', 19),
(402, '2BGUC07', 'Camacho  Cedeño Mayerli  Nicole', '1724791700', 19),
(403, '2BGUC08', 'Cervantes Garcia Cesar Paul', '0930417902', 19),
(404, '2BGUC09', 'Cevallos Pachar Jose Emilio', '1720830635', 19),
(405, '2BGUC10', 'Espinoza Salinas Josue Jasiel', '2351117599', 19),
(406, '2BGUC11', 'Lara Canchingre Karla Isabel', '1725387896', 19),
(407, '2BGUC12', 'Mestanza  Izquierdo  Angie  Lilibeth', '2200340335', 19),
(408, '2BGUC13', 'Moreta Vega Adriana Anahi', '2200124846', 19),
(409, '2BGUC14', 'Muñoz Abad Erick Josue', '2200221857', 19),
(410, '2BGUC15', 'Ocampo  Menendez Carlos Johao', '2300281546', 19),
(411, '2BGUC16', 'Ramos Cando Emily Alexandra', '1724037708', 19),
(412, '2BGUC17', 'Rivadeneira Lage Daniela Nicole', '2350674418', 19),
(413, '2BGUC18', 'Rosales Vera Danna Kamila', '2350029134', 19),
(414, '2BGUC19', 'Sanchez Figueroa Valeria Denisse', '2350133191', 19),
(415, '2BGUC20', 'Valdivieso Jaramillo Ronald Fabricio', '2300165103', 19),
(416, '2BGUC21', 'Vera  Assen  Mark Josue', '1312261520', 19),
(417, '2BGUC22', 'Vera Moreira Edson Enos', '2351013616', 19),
(418, '3BGUA01', 'Albarracin Espinoza Julia Milena', '2300381171', 20),
(419, '3BGUA02', 'Campoverde Guamán Jamileth Enith', '2101040430', 20),
(420, '3BGUA03', 'Castro Mendoza Maria Rashel', '1316475951', 20),
(421, '3BGUA04', 'Cisneros Fierro Melannie Natalie', '1720830700', 20),
(422, '3BGUA05', 'Colina Silvera Genesis Mayerly', '2351015215', 20),
(423, '3BGUA06', 'Coronel Gonzales Edith Shakira', '0202224358', 20),
(424, '3BGUA07', 'Fierro Vasquez Andy Joshep', '1723911390', 20),
(425, '3BGUA08', 'Freire Aules Dayana Alejandra', '2300184328', 20),
(426, '3BGUA09', 'Garcia Lara Josue Steven', '0803874262', 20),
(427, '3BGUA10', 'Guerron Coronel Elmer Guillermo', '2350238503', 20),
(428, '3BGUA11', 'Jumbo Toro Kent Henry', '1753902822', 20),
(429, '3BGUA12', 'Mejia Intriago Hillary Johahy', '2350208597', 20),
(430, '3BGUA13', 'Mendoza Vera Melanie Valeria', '2350096349', 20),
(431, '3BGUA14', 'Mendoza Zambrano Mauricio Alejandro', '2300566359', 20),
(432, '3BGUA15', 'Mestanza Silva Luis Enrique', '1724886278', 20),
(433, '3BGUA16', 'Pita Garcés Verónica  Andrea', '1721951273', 20),
(434, '3BGUA17', 'Portilla Paguay Danna Betzali', '0401727268', 20),
(435, '3BGUA18', 'Ricaurte Mendoza Veronica Anahi', '1316475944', 20),
(436, '3BGUA19', 'Rosales Vera Jezzabell Milagros', '2350243974', 20),
(437, '3BGUA20', 'Salvador Pineda Milena Salome', '2350239063', 20),
(438, '3BGUA21', 'Suquilanda Herrera Avivith Yael', '1726138173', 20),
(439, '3BGUA22', 'Velastegui Astudillo Brooke Isabela', '1721312526', 20),
(440, '3BGUA23', 'Villamarin Rojas Queles Steven', '1726156126', 20),
(441, '3BGUA24', 'Yanez Solorzano Stalin Xavier', '1315327179', 20),
(442, '3BGUA25', 'Zambrano Burneo Jonathan Francisco', '2350600314', 20),
(443, '3BGUA26', 'Zambrano Zuñiga Jean Pierre', '2350092363', 20),
(444, '3BGUB01', 'Araque Cedeño Christian  Gabriel', '0000000000', 21),
(445, '3BGUB02', 'Badillo Perez Ghislaine Ginette', '0803413954', 21),
(446, '3BGUB03', 'Cabrera Ontaneda Alison Briggette', '1150317038', 21),
(447, '3BGUB04', 'Cedeño Rivadeneira Nicole Alejandra', '1721800447', 21),
(448, '3BGUB05', 'Cevallos Solorzano Diego Sebastian', '1720617479', 21),
(449, '3BGUB06', 'Cherrez Quiñonez Emily Dayanna', '2350859829', 21),
(450, '3BGUB07', 'Cuvi Uribe Nanci Nathaly', '2300302482', 21),
(451, '3BGUB08', 'Espinoza Cobeña Nayeli Elaine', '0804653699', 21),
(452, '3BGUB09', 'Flores Ayala Juan José', '2300436074', 21),
(453, '3BGUB10', 'Guerrero Garcia Jared Antonio', '0804202729', 21),
(454, '3BGUB11', 'Hurtado Acosta Bryan Marcelo', '2350902595', 21),
(455, '3BGUB12', 'Largacha Arteaga Andrea Domenica', '0958200966', 21),
(456, '3BGUB13', 'Lucero Mejia Mallerli Celina', '1000000045', 21),
(457, '3BGUB14', 'Machuca Roman Jamileth Alejandra', '0605076942', 21),
(458, '3BGUB15', 'Medina  Mora Daniel  Alberto', '1718464918', 21),
(459, '3BGUB16', 'Miguez Urrutia Fanny Lourdes', '1725686636', 21),
(460, '3BGUB17', 'Quimi Montalvan Nadia Cristina', '0943587998', 21),
(461, '3BGUB18', 'Ramirez Molina Darwin David', '1208242212', 21),
(462, '3BGUB19', 'Tacuri Pozo Anghelo Jacobo', '2350087884', 21),
(463, '3BGUB20', 'Valverde Zurita Anthony Mateo', '1722252473', 21),
(464, '3BGUB21', 'Velez Salgado Levis Aroldo', '2300518236', 21),
(465, '3BGUB22', 'Vivanco Ocampo Andrea Valeria', '0606524544', 21),
(466, '3BGUB23', 'Vivanco Sanchez Jorge Eduardo', '2300496995', 21),
(467, '3BGUB24', 'Zambrano Ocampo Karla Sofia', '0803278290', 21),
(468, '3BGUB25', 'Zamora Leverone Jeremy Khaled', '1205725466', 21),
(469, '3BGUC01', 'Aguilar  Vilela Diego Daniel', '2300579006', 22),
(470, '3BGUC02', 'Andrade Changoluisa Luis Angel', '2300577877', 22),
(471, '3BGUC03', 'Bajaña Sevillano Jennyffer Odalis', '0942144569', 22),
(472, '3BGUC04', 'Chamba Martinez Jeremy Mateo', '1727893255', 22),
(473, '3BGUC05', 'Diaz Nuñez Jhoana Raquel', '2300571235', 22),
(474, '3BGUC06', 'Freire Silva Grace Edith', '1205603499', 22),
(475, '3BGUC07', 'Goyes Villalva Edwin Wladimir', '1755861646', 22),
(476, '3BGUC08', 'Guambo Chela Roberth Alamberth', '2350672503', 22),
(477, '3BGUC09', 'Herrera Escobar Adriana Maythe', '2350468704', 22),
(478, '3BGUC10', 'Izquierdo Rojas Ambar Noemi', '0952738730', 22),
(479, '3BGUC11', 'Larrea Cevallos Tito Lorenz', '1720568953', 22),
(480, '3BGUC12', 'Mendoza  Paredes  Fatima  Lizbeth', '2200076202', 22),
(481, '3BGUC13', 'Moreira Montes Evelyn Gabriela', '1317287223', 22),
(482, '3BGUC14', 'Moreira Vera Bryan Abel', '0940852635', 22),
(483, '3BGUC15', 'Muñoz Toro Maria Del Cisne', '1724658404', 22),
(484, '3BGUC16', 'Negrete Macias Daniel Alejandro', '2300597396', 22),
(485, '3BGUC17', 'Ouissa Lascano Donia Melanie', '1729294171', 22),
(486, '3BGUC18', 'Pullay Morocho Bryan David', '0605231992', 22),
(487, '3BGUC19', 'Quinchuela Medrano Anthony Nelson', '1724942212', 22),
(488, '3BGUC20', 'Rodriguez Mazapanta Kevin Alexander', '1719912808', 22),
(489, '3BGUC21', 'Saavedra Cabezas Emilio Daniel', '2350221004', 22),
(490, '3BGUC22', 'Schweitzer Lita Keen Matthew', '2101113211', 22),
(491, '3BGUC23', 'Zambrano Ordoñez Allison Stephanie', '1315839835', 22);

-- --------------------------------------------------------

--
-- Table structure for table `listas`
--

CREATE TABLE `listas` (
  `id_lista` int(11) NOT NULL,
  `lista` varchar(8) NOT NULL,
  `candidato` int(11) NOT NULL,
  `code` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `votos`
--

CREATE TABLE `votos` (
  `id_voto` int(11) NOT NULL,
  `cod_estudiante` varchar(8) NOT NULL,
  `voto` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `votos`
--

INSERT INTO `votos` (`id_voto`, `cod_estudiante`, `voto`) VALUES
(1, '4TOB05', 'B'),
(2, '4TOB06', 'A'),
(3, '5TOA04', 'A'),
(4, '6TOB04', 'B'),
(5, '10MOA01', 'B'),
(6, '7MOA02', 'B'),
(7, '4TOA12', 'B'),
(8, '8VOA03', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id_lista`),
  ADD KEY `candidato` (`candidato`);

--
-- Indexes for table `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id_voto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;
--
-- AUTO_INCREMENT for table `listas`
--
ALTER TABLE `listas`
  MODIFY `id_lista` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `votos`
--
ALTER TABLE `votos`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON UPDATE CASCADE;

--
-- Constraints for table `listas`
--
ALTER TABLE `listas`
  ADD CONSTRAINT `listas_ibfk_1` FOREIGN KEY (`candidato`) REFERENCES `estudiantes` (`id_estudiante`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
