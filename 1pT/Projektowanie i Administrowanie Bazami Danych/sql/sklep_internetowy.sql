-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Kwi 2021, 19:22
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep_internetowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety`
--

CREATE TABLE `pakiety` (
  `Id_pakietu` int(11) NOT NULL,
  `nazwa_pakietu` varchar(100) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `firma` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pakiety`
--

INSERT INTO `pakiety` (`Id_pakietu`, `nazwa_pakietu`, `firma`) VALUES
(1, 'Adobe Creative Cloud', 'Adobe Systems'),
(2, 'Adobe Creative Suite', 'Adobe Systems'),
(3, 'Adobe CS6 Design', 'Adobe Systems'),
(4, 'Design Standard CS6', 'Adobe Systems'),
(5, 'Microsoft Office 2010 Home', 'Microsoft'),
(6, 'Microsoft Office 365 University', 'Microsoft'),
(7, 'Microsoft Office Professional', 'Microsoft'),
(8, 'Microsoft Office Business', 'Microsoft'),
(9, 'CorelDRAW Graphics Suite', 'Corel'),
(10, 'CorelDRAW Home', 'Corel'),
(11, 'Adobe Creative', 'Adobe Systems'),
(12, 'Apache OpenOffice', 'not-for-profit'),
(13, 'LibreOffice', 'not-for-profit'),
(14, 'Expression Studio', 'Microsoft'),
(15, 'OpenOffice STAR', 'not-for-profit'),
(16, 'CorelDRAW Standard', 'Corel'),
(17, 'CorelVideo Studio', 'Corel'),
(19, 'Calligra Suite', 'not-for-profit'),
(20, 'Logo-Gry', 'Young Digital Planet'),
(21, 'MicroStation', 'Bentley'),
(22, 'TechWriter', 'Adivo'),
(23, 'Foxit PDF Suite', 'Foxit'),
(24, 'gDOC', 'Global Graphics'),
(25, 'DocuPDF', 'Zeon Corporation'),
(26, 'Acronis Recovery', 'Acronis'),
(27, 'WinLock', 'Crystal Office System'),
(28, 'EaseUs', 'EaseUS'),
(29, 'RecoverMy', 'GetData'),
(30, 'GFI Security', 'GFI Software'),
(31, 'BadCopy', 'JustSoft'),
(32, 'Paragon Backup', 'Paragon Software'),
(33, 'PGP Support Package', 'Symantec'),
(34, 'Stellar Recovery', 'Stellar'),
(35, 'IBM Data Software', 'IBM'),
(36, 'Spectral Data', 'Spectral Core'),
(37, 'ArCADia', 'InterSoft'),
(38, 'OKAY', 'Clix Software'),
(39, 'Sales Partner', 'Sales Partner'),
(40, 'Subiekt', 'InsERT'),
(41, 'ConceptDraw Office', 'ComputerSystems Odessa'),
(42, 'Nevron Draw', 'Nevron'),
(43, 'ViewLet', 'Qarbon'),
(44, 'Dolphin Reader', 'Dolphin'),
(45, 'System Athena', 'Athena Soft'),
(46, 'Automapa', 'NavTeq'),
(47, 'AutoPilot', 'Cartall'),
(48, 'Emapa', 'Emapa'),
(49, 'Visual Mind', 'Mind Technogoly'),
(50, 'MindJet Manager', 'MindJet'),
(51, 'MagicDraw', 'Magic'),
(52, 'ActiveState Pro Studio', 'ActiveState'),
(53, 'Altova Studio', 'Altova'),
(54, 'ComponentOne Studio', 'ComponentOne'),
(55, 'dbForge', 'DevArt'),
(56, 'Infragistic Studio', 'Infragistic'),
(57, 'SerifPlus', 'Serif'),
(58, 'WebPlus XSeries', 'Serif'),
(59, 'n-software', 'n-software'),
(60, 'Actipro WPF Studio', 'Actipro Software'),
(61, 'ApexSQL Developer', 'ApexSQL'),
(62, 'ApexDBA Tools', 'ApexSQL'),
(63, 'Ashampoo Media', 'Ashampo'),
(64, 'DaemonTools Lite', 'DAEMON Tools Software Communit'),
(65, 'FusionCharts Suite XT', 'InfoSoft Global'),
(66, 'iSpring E-learning Tools', 'iSpring Solutions'),
(67, 'IconCool Software', 'Newera Software Technology'),
(68, 'Paragon Disc Tools', 'Paragon Software'),
(69, 'SolarWinds Systems Management', 'SolarWinds'),
(70, 'SolarWinds Free System Management Tools', 'SolarWinds'),
(71, 'Sothink Suite', 'Sothink'),
(72, 'Camtasia Bundle', 'TechSmith'),
(73, 'Foxit PDF Development Kits', 'Foxit');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `programy`
--

CREATE TABLE `programy` (
  `Id_programu` int(11) NOT NULL,
  `program` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `rodzaj` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `programy`
--

INSERT INTO `programy` (`Id_programu`, `program`, `rodzaj`, `cena`) VALUES
(1, 'Photoshop', 'grafika', 890),
(2, 'Lightroom', 'grafika', 320),
(3, 'Illustrator', 'grafika', 1230),
(4, 'InDesign', 'DTP', 1995),
(5, 'Premiere Pro', 'video', 1500),
(6, 'After Effects', 'animacja', 450),
(7, 'Dreamweaver', 'projektowanie stron Web', 1350),
(8, 'Flash', 'animacja', 950),
(9, 'Acrobat Pro', 'konwerter tekstu', 1240),
(10, 'Audition', 'multimedia', 340),
(11, 'Word', 'edytor dokumentow tekstowych', 120),
(12, 'Excel', 'arkusz kalkulacyjny', 150),
(13, 'Power Point', 'multimedia', 180),
(14, 'Access', 'baza danych', 320),
(15, 'Publisher', 'edytor dokumentow tekstowych', 170),
(16, 'OneNote', 'notatki i planowanie', 120),
(17, 'Corel DRAW', 'grafika', 2100),
(18, 'Corel PHOTO-PAINT', 'grafika', 600),
(19, 'Corel Website', 'projektowanie stron Web', 849),
(20, 'Writer', 'edytor dokumentow tekstowych', 0),
(21, 'Calc', 'arkusz kalkulacyjny', 0),
(22, 'Base', 'baza danych', 0),
(23, 'Draw', 'grafika', 0),
(24, 'Impress', 'multimedia', 0),
(25, 'Math', 'edytor dokumentow tekstowych', 0),
(26, 'Expression Web', 'projektowanie stron Web', 187),
(27, 'Expression Blend', 'animacja', 229),
(28, 'Expression Design', 'grafika', 134),
(29, 'Expression Encoder Pro', 'video', 0),
(30, 'Corel Pinnacle Studio', 'video', 230),
(31, 'Words', 'edytor dokumentow tekstowych', 0),
(32, 'Sheets', 'arkusz kalkulacyjny', 0),
(33, 'Stage', 'multimedia', 0),
(34, 'Author', 'edytor dokumentow tekstowych', 0),
(35, 'Krita', 'grafika', 0),
(36, 'Karbon', 'grafika', 0),
(37, 'Flow', 'grafika', 0),
(38, 'Kexi', 'baza danych', 0),
(39, 'Plan', 'zarzadzanie projektem', 0),
(40, 'Braindump', 'notatki i planowanie', 0),
(41, 'Logo-Malarz', 'gra terapeutyczna', 0),
(42, 'Logo-Krecik', 'gra terapeutyczna', 0),
(43, 'Logo-Poziom', 'gra terapeutyczna', 150),
(44, 'Logo-Papuga', 'gra terapeutyczna', 150),
(45, 'Logo-Locik', 'gra terapeutyczna', 150),
(46, 'Logo-Cel', 'gra terapeutyczna', 150),
(47, 'Logo-Szum', 'gra terapeutyczna', 150),
(48, 'Logo-Lapka', 'gra terapeutyczna', 150),
(49, 'Logo-Tenis', 'gra terapeutyczna', 150),
(50, 'Logo-Muzyk', 'gra terapeutyczna', 150),
(51, 'MicroStation', 'CAD', 20100),
(52, 'Power Draft', 'CAD', 8230),
(53, 'Map PowerView', 'CAD', 6756),
(54, 'Generative Components', 'CAD', 650),
(55, 'Bentley View', 'grafika', 0),
(56, 'TechWriter 2012 for Databases', 'baza danych', 701),
(57, 'TechWriter 2012 for Web Services', 'projektowanie stron Web', 520),
(58, 'TechWriter 2012 for XML Schemas', 'edytor dokumentow tekstowych', 230),
(59, 'Foxit PhantomPDF Standard', 'edytor dokumentow tekstowych', 453),
(60, 'Foxit Reader RMS Plug-in', 'czytnik dokumentow tekstowych', 38),
(61, 'Foxit Redactor for Office', 'edytor dokumentow tekstowych', 1621),
(62, 'Fosit PDF Compressor', 'edytor i konwerter tekstu', 3920),
(63, 'Scribus', 'DTP', 0),
(64, 'gDoc Fusion', 'edytor dokumentow tekstowych', 220),
(65, 'gDoc PDF Server', 'zarzadzanie dokumentami teksto', 130),
(66, 'DocuCom PDF Gold', 'edytor dokumentow tekstowych', 190),
(67, 'DocuCom PDF Driver', 'konwerter tekstu', 100),
(68, 'DocuCom PDF Server', 'zarzadzanie dokumentami teksto', 100),
(69, 'Acronis Recovery for Microsoft Exchange', 'bezpieczenstwo danych', 4612),
(70, 'Acronis vmProtect', 'narzedziowy', 55),
(71, 'Acronis SnapDeploy', 'narzedziowy', 93),
(72, 'Acronis Disk Director', 'narzedziowy', 2319),
(73, 'Acronis Backup & Recovery 11 Server', 'narzedziowy', 3388),
(74, 'Winlock Professional', 'narzedziowy', 1217),
(75, 'Winlock Remote Administrator', 'narzedziowy', 430),
(76, 'EaseUS Data Recovery Wizard', 'odzyskiwanie danych', 385),
(77, 'EaseUS Todo Backup Workstation', 'odzyskiwanie danych', 183),
(78, 'EaseUS Todo Backup Server', 'odzyskiwanie danych', 960),
(79, 'Recover My Files', 'odzyskiwanie danych', 350),
(80, 'Recover My Photos', 'odzyskiwanie danych', 200),
(81, 'Recover My E-mail', 'odzyskiwanie danych', 130),
(82, 'GFI EndPoint Security', 'bezpieczenstwo danych', 2952),
(83, 'GFI EventManager', 'zarzadzanie siecia komputerowa', 11210),
(84, 'GFI WebMonitor', 'zarzadzanie siecia komputerowa', 228),
(85, 'GFI LanGuard', 'zarzadzanie siecia komputerowa', 421),
(86, 'BadCopy Pro', 'odzyskiwanie danych', 258),
(87, 'BadCopy Doc Repair', 'odzyskiwanie danych', 552),
(88, 'Drive Backup Server', 'bezpieczenstwo danych', 1460),
(89, 'System Backup', 'bezpieczenstwo danych', 89),
(90, 'Drive Backup Workstation', 'bezpieczenstwo danych', 219),
(91, 'PGP Whole Disk Encryption', 'bezpieczenstwo danych', 260),
(92, 'PGP Command Line', 'bezpieczenstwo danych', 11052),
(93, 'PGP Desktop Email', 'bezpieczenstwo danych', 1460),
(94, 'PGP NetShare', 'bezpieczenstwo danych', 388),
(95, 'PGP Universal Gateway Email', 'bezpieczenstwo danych', 332),
(96, 'Stellar Office Password Recovery', 'odzyskiwanie danych', 340),
(97, 'Stellar Windows Data Recovery', 'odzyskiwanie danych', 488),
(98, 'Stellar Phoenix Media Recovery', 'odzyskiwanie danych', 192),
(99, 'Stellar Outlook Recovery', 'odzyskiwanie danych', 734),
(100, 'IBM Data Rational Software', 'zarzadzanie projektem', 1100),
(101, 'IBM Information Management Software', 'zarzadzanie projektem', 890),
(102, 'IBM Tivoli Software', 'zarzadzanie projektem', 742),
(103, 'Data Converter Enterprise', 'baza danych', 1464),
(104, 'Data Sync', 'baza danych', 971),
(105, 'Data Documenter', 'baza danych', 725),
(106, 'ArCADia - INTELLICAD', 'CAD', 1321),
(107, 'ArCADia - ARCHITEKTURA', 'CAD', 430),
(108, 'ArCon 13', 'CAD', 550),
(109, 'OKAY CRM', 'zarzadzanie kontaktami handlow', 550),
(110, 'OKAY Beam', 'wirtualny meeting', 400),
(111, 'Sales Partner CRM', 'zarzadzanie kontaktami handlow', 1560),
(112, 'Sales Partner - Pulpit Sprzedawcy', 'zarzadzanie kontaktami handlow', 680),
(113, 'Sales Partner - Pulpit Menadzera', 'zarzadzanie kontaktami handlow', 588),
(114, 'Sales Partner - Pulpit Klienta`', 'zarzadzanie kontaktami handlow', 119),
(115, 'mikroSubiekt', 'zarzadzanie kontaktami handlow', 172),
(116, 'Subiekt GT', 'zarzadzanie kontaktami handlow', 900),
(117, 'Subiekt GT - licencja na prace zdalna', 'zarzadzanie kontaktami handlow', 369),
(118, 'Sfera dla Subiekta GT', 'zarzadzanie kontaktami handlow', 799),
(119, 'Gestor GT', 'zarzadzanie kontaktami handlow', 725),
(120, 'Sello', 'zarzadzanie kontaktami handlow', 840),
(121, 'Subiekt Sprint', 'zarzadzanie kontaktami handlow', 418),
(122, 'ConceptDraw Diag', 'grafika', 429),
(123, 'ConceptDraw MindMap', 'mapa mysli', 299),
(124, 'ConceptDraw Project', 'grafika', 635),
(125, 'Nevron Chart', 'grafika', 300),
(126, 'Nevron Diagram', 'grafika', 300),
(127, 'Nevron Data Visualisation', 'grafika', 399),
(128, 'Nevron 3DChart for ActiveX', 'grafika', 299),
(129, 'Nevron Vision', 'grafika', 159),
(130, 'ViewLet Builder', 'animacja', 569),
(131, 'ViewLet Poll', 'animacja', 145),
(132, 'ViewLet Quiz', 'animacja', 145),
(133, 'ViewLet Cam', 'animacja', 423),
(134, 'ViewLet Central', 'animacja', 560),
(135, 'Dolphin Lunar', 'edytor dokumentow tekstowych', 299),
(136, 'Dolphin Hall', 'edytor dokumentow tekstowych', 399),
(137, 'Dolphin SuperNova', 'edytor dokumentow tekstowych', 299),
(138, 'Norma Standard', 'kosztorysowanie', 3890),
(139, 'Viking', 'kosztorysowanie', 259),
(140, 'Rysunek', 'kosztorysowanie', 197),
(141, 'AthExcel', 'kosztorysowanie', 122),
(142, 'AthProject', 'kosztorysowanie', 1230),
(143, 'Ocena', 'kosztorysowanie', 250),
(144, 'Wykopy', 'kosztorysowanie', 348),
(145, 'Stawka', 'kosztorysowanie', 156),
(146, 'MiaraPro', 'kosztorysowanie', 1217),
(147, 'Automapa Polska', 'mapa nawigacyjna', 196),
(148, 'Automapa Europa', 'mapa nawigacyjna', 356),
(149, 'Autopilot Polska', 'mapa nawigacyjna', 301),
(150, 'Autopilot Europa', 'mapa nawigacyjna', 503),
(151, 'Navigator', 'mapa nawigacyjna', 201),
(152, 'Emapa Geomarketing', 'mapa nawigacyjna', 4533),
(153, 'Emapa Transport', 'mapa nawigacyjna', 2135),
(154, 'Emapa Autopilot', 'mapa nawigacyjna', 300),
(155, 'Visual Mind Basic Editon', 'mapa mysli', 430),
(156, 'Visual Mind Server', 'mapa mysli', 3064),
(157, 'MindJet Basic', 'mapa mysli', 1585),
(158, 'MindJet Connect', 'mapa mysli', 330),
(159, 'MindJet JVC Gantt', 'mapa mysli', 431),
(160, 'MagicDraw UML Enterprise', 'modelowanie UML', 2671),
(161, 'MagicDraw UML Teamwork Server', 'modelowanie UML', 649),
(162, 'Komodo IDE', 'programowanie', 1199),
(163, 'ActiveTcl', 'programowanie', 421),
(164, 'Tcl Development Kit', 'programowanie', 354),
(165, 'Altova XMLSpy', 'programowanie', 1189),
(166, 'Altova Mapforce', 'programowanie', 1091),
(167, 'Altova DiffDog', 'programowanie', 543),
(168, 'Altova UModel', 'programowanie', 1092),
(169, 'Altova DatabaseSpy', 'baza danych', 551),
(170, 'Altova StyleVision', 'programowanie', 679),
(171, 'Altova Authentic Desktop', 'edytor XML', 336),
(172, 'Adobe PageMaker', 'DTP', 996),
(173, 'ComponentOne Doc-To-Help', 'programowanie', 520),
(174, 'ComponentOne PowerSuite', 'programowanie', 3200),
(175, 'ComponentOne ActiveReports', 'programowanie', 231),
(176, 'ComponentOne Spread Studio', 'programowanie', 134),
(177, 'ComponentOne Spread COM', 'programowanie', 156),
(178, 'ComponentOne Studio for Silverlight', 'programowanie', 142),
(179, 'ComponentOne Studio Ultimate', 'programowanie', 263),
(180, 'ComponentOne ActiveAnalysis', 'programowanie', 380),
(181, 'dbForge Studio', 'programowanie', 1200),
(182, 'dbForge Compare Bundle', 'programowanie', 340),
(183, 'dbForge Fusion', 'programowanie', 410),
(184, 'dbForge Object Search', 'programowanie', 323),
(185, 'dbForge Event Profiler', 'programowanie', 365),
(186, 'dbForge SQL Decryptor', 'programowanie', 0),
(187, 'Windows Forms', 'programowanie', 3600),
(188, 'Ignite UI (Javascript/HTML5)', 'programowanie', 2669),
(189, 'Windows Presentation Foundation', 'programowanie', 3320),
(190, 'Indigo Studio', 'programowanie', 1980),
(191, 'Serif Movie', 'multimedia', 366),
(192, 'Serif Photo', 'multimedia', 356),
(193, 'Serif CraftArtist', 'multimedia', 389),
(194, 'Serif Draw', 'multimedia', 337),
(195, 'WebPlus', 'projektowanie stron Web', 368),
(196, 'PagePlus', 'edytor dokumentow tekstowych', 360),
(197, 'PhotoPlus', 'grafika', 312),
(198, 'DrawPlus', 'grafika', 360),
(199, 'MoviePlus', 'video', 240),
(200, 'PanoramaPlus', 'grafika', 81),
(201, 'CratfArtist', 'grafika', 99),
(202, 'PhotoProject', 'grafika', 86),
(203, 'IP*Works!', 'narzedziowy', 157),
(204, 'Enterprise Adapters', 'narzedziowy', 210),
(205, 'E-Business Integrators', 'narzedziowy', 221),
(206, 'NetCmdlets and PowerShell', 'narzedziowy', 260),
(207, 'Workflow Activities (WF)', 'narzedziowy', 189),
(208, 'Actipro WPF Basic', 'programowanie', 2512),
(209, 'Actipro BarCode', 'programowanie', 364),
(210, 'Actipro Charts', 'programowanie', 643),
(211, 'Actipro Docking', 'programowanie', 2897),
(212, 'Actipro Gauge', 'programowanie', 999),
(213, 'Actipro Navigation', 'programowanie', 429),
(214, 'Actipro Property Grid', 'programowanie', 598),
(215, 'Actipro Ribbon', 'programowanie', 899),
(216, 'Actipro Views', 'programowanie', 451),
(217, 'Actipro Wizard', 'programowanie', 351),
(218, 'ApexSQL Build', 'programowanie', 1550),
(219, 'ApexSQL Clean', 'programowanie', 1560),
(220, 'ApexSQL Diff', 'programowanie', 1667),
(221, 'ApexSQL Doc', 'programowanie', 1131),
(222, 'ApexSQL Generate', 'programowanie', 1999),
(223, 'ApexSQL Script', 'programowanie', 981),
(224, 'ApexSQL Refactor', 'programowanie', 0),
(225, 'ApexSQL Search', 'programowanie', 0),
(226, 'ApexSQL Source Control', 'programowanie', 1189),
(227, 'ApexSQL Backup', 'baza danych', 1980),
(228, 'ApexSQL Monitor', 'baza danych', 1990),
(229, 'ApexSQL Restore', 'baza danych', 1189),
(230, 'Ashampoo Movie Studio', 'multimedia', 350),
(231, 'Ashampoo Snap', 'multimedia', 170),
(232, 'Ashampoo Deniose', 'multimedia', 216),
(233, 'Ashampoo Moovie Shrink', 'multimedia', 134),
(234, 'Edytor obrazow dysku', 'narzedziowy', 24),
(235, 'Wirtualny HDD', 'narzedziowy', 39),
(236, 'Nagrywanie plyty', 'narzedziowy', 19),
(237, 'Rozruchowe USB', 'narzedziowy', 31),
(238, 'Inicjator ISCSI', 'narzedziowy', 23),
(239, 'Monitor', 'narzedziowy', 31),
(240, 'Wirtualna nagrywarka', 'narzedziowy', 40),
(241, 'Obsluga nieograniczonej liczby urzadzen', 'narzedziowy', 40),
(242, 'Backup', 'narzedziowy', 0),
(243, 'FusionCharts XT', 'grafika', 799),
(244, 'FusionWidgets XT', 'grafika', 799),
(245, 'PowerCharts XT', 'grafika', 799),
(246, 'FusionMaps XT', 'grafika', 799),
(247, 'iSpring Suite', 'e-learning', 2690),
(248, 'iSpring Presenter', 'e-learning', 1998),
(249, 'iSpring QuizMaker', 'e-learning', 1612),
(250, 'Converter Pro', 'e-learning', 1174),
(251, 'iSpring Cam', 'e-learning', 399),
(252, 'iSpring TalkMaster', 'e-learning', 1954),
(253, 'iSpring River', 'e-learning', 199),
(254, 'IconCool Studio', 'grafika', 1399),
(255, 'ImageCool Converter', 'grafika', 1190),
(256, 'IconCool Editor', 'grafika', 0),
(257, 'IconCool Manager', 'grafika', 1569),
(258, 'PDFCool Studio', 'grafika', 1035),
(259, 'Partition Manager', 'narzedziowy', 178),
(260, 'Hard Disc Manager', 'narzedziowy', 139),
(261, 'Disc Wiper', 'narzedziowy', 430),
(262, 'Drive Copy', 'narzedziowy', 109),
(263, 'Encrypted Disc', 'narzedziowy', 89),
(264, 'Virtualization Manager', 'narzedziowy', 179),
(265, 'QuarkXPress', 'DTP', 3695),
(266, 'Application Stack Management Bundle', 'zarzadzanie siecia komputerowa', 13980),
(267, 'Server & Application Monitor', 'zarzadzanie siecia komputerowa', 11880),
(268, 'Virtualization Manager', 'zarzadzanie siecia komputerowa', 11880),
(269, 'Storage Resource Monitor', 'zarzadzanie siecia komputerowa', 11880),
(270, 'Web Performance Monitor', 'zarzadzanie siecia komputerowa', 7900),
(271, 'Admin Bundle for Active Directory', 'zarzadzanie siecia komputerowa', 0),
(272, 'Permissions Analyzer for Active Directory', 'zarzadzanie siecia komputerowa', 0),
(273, 'SAN Monitor', 'zarzadzanie siecia komputerowa', 0),
(274, 'VMware Monitor', 'zarzadzanie siecia komputerowa', 0),
(275, 'VM-to-Cloud Calculator', 'zarzadzanie siecia komputerowa', 0),
(276, 'SNMP Enabler for Windows', 'zarzadzanie siecia komputerowa', 0),
(277, 'Moare', 'multimedia', 7444),
(278, 'SWF Quicker', 'multimedia', 335),
(279, 'SWF Catcher', 'multimedia', 141),
(280, 'DHTML Site Navigation', 'multimedia', 391),
(281, 'Flash Maker', 'multimedia', 289),
(282, 'Logo Maker', 'multimedia', 237),
(283, 'Photo Album Maker', 'multimedia', 0),
(284, 'Camtasia Studio', 'multimedia', 1121),
(285, 'Snagit ScreenCapture', 'multimedia', 184),
(286, 'SWF Decompiler', 'multimedia', 316),
(287, 'Foxit Quick PDF Library', 'edytor dokumentow tekstowych', 6000),
(288, 'Foxit WebPDF SDK', 'programowanie', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zestawy`
--

CREATE TABLE `zestawy` (
  `Id_programu` int(11) DEFAULT NULL,
  `Id_pakietu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  ADD PRIMARY KEY (`Id_pakietu`);

--
-- Indeksy dla tabeli `programy`
--
ALTER TABLE `programy`
  ADD PRIMARY KEY (`Id_programu`);

--
-- Indeksy dla tabeli `zestawy`
--
ALTER TABLE `zestawy`
  ADD KEY `Id_programu` (`Id_programu`),
  ADD KEY `Id_pakietu` (`Id_pakietu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  MODIFY `Id_pakietu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT dla tabeli `programy`
--
ALTER TABLE `programy`
  MODIFY `Id_programu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zestawy`
--
ALTER TABLE `zestawy`
  ADD CONSTRAINT `zestawy_ibfk_1` FOREIGN KEY (`Id_programu`) REFERENCES `programy` (`Id_programu`),
  ADD CONSTRAINT `zestawy_ibfk_2` FOREIGN KEY (`Id_pakietu`) REFERENCES `pakiety` (`Id_pakietu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
