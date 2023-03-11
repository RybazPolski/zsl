-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Sty 2023, 21:43
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zad`
--

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `data_wypozyczenia`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `data_wypozyczenia` (
`id_wypozyczono` int(11)
,`data_wyp` timestamp
,`data_zwrotu` datetime
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `autor` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `wydawnictwo` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `autor`, `wydawnictwo`) VALUES
(65, 'Sprzedaj swój software', 'Hasted Edward', 'Wiley'),
(66, 'Visual Basic .NET - Księga przykładów', 'Macdonald Matthew', 'Microsoft Press'),
(67, 'Core C# i .NET', 'Perry Stephen C.', 'Prentice Hall PTR'),
(68, 'Wprowadzenie do systemów baz danych', 'Elmasri Ramez, Navathe Shamkant B.', 'Addison-Wesley'),
(69, 'HTML i CSS. Zaprojektuj i zbuduj witrynę WWW', 'Duckett Jon', 'John Wiley & Sons'),
(70, 'Adobe Flash CS3 Professional. Oficjalny podręcznik', 'Galvan Richard', 'Adobe Press'),
(71, 'Flash. Filmy i dźwięk. Techniki zaawansowane', 'Aleo Tania', 'FoED Press'),
(72, 'Flash MX 2004. Skuteczne rozwiązania', 'Elliott Shane', 'New Riders'),
(73, 'Flash MX 2004. Sztuka projektowania', 'Rebenschied Shane, Weinman Lynda', 'Peachpit Press'),
(74, 'Tworzenie stron WWW we Flashu CS3 Professional', 'Morris David', 'Peachpit Press'),
(75, 'Flash MX 2004. Same konkrety', 'Bhangal Sham, deHaan Jen', 'Sybex'),
(76, 'Macromedia Flash MX 2004', 'deHaan Jen', 'Macromedia Press'),
(77, 'Macromedia Flash MX 2004. Biblia', 'Reinhardt Robert, Dowd Snow', 'John Wiley & Sons'),
(78, 'Macromedia Flash 8. Oficjalny podręcznik', 'English James', 'Pearson Education'),
(79, 'Visual C# 2005 Express Edition. Od podstaw', 'Matulewski Jacek', 'Helion'),
(80, 'Przejście do VB.NET', 'Appleman Dan', 'Apress'),
(81, 'Tworzenie aplikacji graficznych w .NET 3.0', 'Rychlicki-Kicior Krzysztof', 'Helion'),
(82, 'Visual Basic .NET. Praktyczny kurs', 'Czogalik Bogdan', 'Helion'),
(83, 'Wprowadzenie do .NET', 'Conard James', 'Wrox Press'),
(84, 'Programowanie C#', 'Liberty Jesse', 'O\'Reilly'),
(85, 'Visual Basic .NET oraz Visual C# .NET w programowaniu obiektowym', 'Reynolds-Haertle Robin A.', 'Microsoft Press'),
(86, 'Visual C# 2005. Zapiski programisty', 'Liberty Jesse', 'O\'Reilly'),
(87, 'ASP.NET. Programowanie', 'Liberty Jesse, Hurwitz Dan', 'O\'Reilly'),
(88, 'SQL Server 2005 Express. Skuteczne rozwiązania', 'Mendrala Danuta, Szeliga Marcin', 'Helion'),
(89, 'Sztuka programowania SQL.', 'Faroult Stephane, Robson Peter', 'O\'Reilly'),
(90, 'MySQL Podstawy', 'Welling Luke, Thomson Laura', 'Pearson Education'),
(91, 'MySQL. Ćwiczenia', 'Nowakowski Marek', 'Helion'),
(92, 'Bazy danych. Europejski Certyfikat Umiejętności Komputerowych', 'Kopertowska Mirosława', 'Mikom'),
(93, 'Bazy danych i PostrgeSQL', 'Stones Richard, Matthew Neil', 'Wrox Press'),
(94, 'Bazy danych dla zwykłych śmiertelników', 'Hernandez Michael J.', 'Addison-Wesley'),
(95, 'PostgreSQL', 'Momjian Bruce', 'Addison-Wesley'),
(96, 'HTML5 nieoficjalny podręcznik', 'Macdonald Matthew', 'O\'Reilly'),
(97, 'Projektowanie stron internetowych', 'Robbins Jennifer Niederst', 'O\'Reilly'),
(98, 'HTML5. Przewodnik profesjonalisty', 'Stevens Luke, Owen RJ', 'Apress'),
(99, 'HTML5. Strony mobilne', 'Weyl Estelle', 'O\'Reilly'),
(100, 'Aplikacje 3D. Przewodnik po HTML5, WebGL i CSS3', 'Parisi Tony', 'O\'Reilly'),
(101, 'HTML5. Programowanie aplikacji', 'Kessin Zachary', 'O\'Reilly'),
(102, 'HTML5 i CSS3. Praktyczne projekty', 'Gajda Włodzimierz', 'Helion'),
(103, 'HTML5. Tworzenie gier z wykorzystaniem CSS i Javascript', 'Bunyan Karl', 'Helion'),
(104, 'Single Page Web Applications. Programowanie aplikacji internetowych z JavaScript', 'Mikowski Michael, Powell Josh', 'Helion'),
(105, 'Web development. Receptury nowej generacji', 'Hogan Brian P.', 'Helion'),
(106, 'Podręcznik projektantów WWW', 'Friedman Vitaly, Lennartz Sven', 'Smashing Media'),
(107, 'HTML5. Tworzenie gier', 'Seidelin Jacob', 'Helion'),
(108, 'CSS. Witryny internetowe szyte na miarę', 'Wyke-Smith Charles', 'New Riders'),
(109, 'Bootstrap. Tworzenie interfejsów stron WWW.', 'Rahman Syed Fazle', 'SitePoint'),
(110, 'Responsive Web Design. Nowoczesne strony WWW na przykładach', 'Firdaus Thoriq', 'Packt Publishing'),
(111, 'Responsive Web Design. Projektowanie elastycznych witryn w HTML5 i CSS3', 'Frain Ben', 'Packt Publishing'),
(112, 'Solidworks 2006 w praktyce', 'Babiuch Mirosław', 'Helion'),
(113, 'Jak zarabiać w Internecie. Poradnik dla przedsiębiorczych webmasterów.', 'Grzesiak Paweł', 'Helion'),
(114, 'Spam. Profilaktyka i obrona', 'Danowski Bartosz, Kozicki Łukasz', 'Helion'),
(115, 'MS Office 2000 i 2002/XP. Tworzenie własnych aplikacji w VBA.', 'Łoś Maciej', 'Helion'),
(116, 'Podstawy ochrony komputerów.', 'Lehtinen Rick, Russel Deborah', 'O\'Reilly'),
(117, 'Poczta elektroniczna', 'Fabicki Dariusz', 'Mikom'),
(118, 'Joomla! System zarządzania treścią', 'Graf Hagen', 'Packt Publishing'),
(119, 'Windows Small Business Server 2003. Administracja systemem.', 'Snedaker Susan, Bendell Daniel H.', 'Syngress Publishing'),
(120, 'Slackware Linux', 'Sokół Radosław', 'Helion'),
(121, 'Blender. Kompendium.', 'Kuklo Kamil, Kolmaga Jarosław', 'Helion'),
(122, 'Więcej niż architektura oprogramowania', 'Hohmann Luke', 'Addison-Wesley'),
(123, '75 sposobów na statystykę. Jak zmierzyć świat i wygrać z prawdopodobieństwem.', 'Frey Bruce', 'O\'Reilly'),
(124, 'Piękny kod. Tajemnice mistrzów programowania.', 'Oram Andy, Wilson Greg', 'Helion'),
(125, 'Hacking. Sztuka penetracji.', 'Erickson Jon', 'Helion'),
(126, 'PGP. Szyfrowanie informacji. Ćwiczenia praktyczne', 'Czarny Piotr', 'Helion'),
(127, 'Karta elektroniczna - bezpieczny nośnik informacji.', 'Kubas Monika, Molski Marian', 'Mikom'),
(128, 'Apache. Agresja i ochrona.', 'Anonim', 'Sams'),
(129, 'Język C++', 'Stroustrup Bjarne', 'Wydawnictwo Naukowo-Techniczne'),
(130, 'Biblia TCP/IP tom 1. Protokoły', 'Stevens W. Richard', 'Addison-Wesley'),
(131, 'OpenGL. Księga eksperta', 'Wright Richard S., Lipchak Benjamin', 'Sams'),
(132, 'Excel w biznesie. Praktyczne zastosowania', 'Abdulezer Loren', 'Wiley'),
(133, 'Thinking in C++', 'Eckel Bruce', 'Pearson Education'),
(134, 'Photoshop CS3 PL.', 'Owczarz-Dadan Anna', 'Helion'),
(135, 'SCSI i IDE - protokoły, zastosowania i programowanie', 'Schmidt Fridhelm', 'Addison-Wesley'),
(136, 'Sieci komputerowe. Kompendium.', 'Krysiak Karol', 'Helion'),
(137, 'Cisza w sieci', 'Zalewski Michał', 'Helion'),
(138, 'Google App Engine. Tworzenie wydajnych aplikacji w Javie.', 'de Jonge Adriaan', 'Addison-Wesley'),
(139, 'Cuda w przykładach', 'Sanders Jason, Kandrot Edward', 'Addison-Wesley'),
(140, 'BIOS przewodnik', 'Pyrchla Andrzej, Danowski Bartosz', 'Helion'),
(141, 'Netykieta czyli kodeks dla internautów.', 'Van der Leun Gerard, Mandel Thomas', 'Mikom'),
(142, 'Podpis elektroniczny', 'Dąbrowski Włodzimierz, Kowalczuk Przemysław', 'Mikom'),
(143, 'Sieci miejscowe PROFIBUS', 'Sacha Krzysztof', 'Mikom'),
(144, 'Thinking in Java', 'Eckel Bruce', 'Prentice Hall PTR'),
(145, 'Dane w sieci WWW od relacji do modelu semistrukturalnego i XML.', 'Abiteboul Serge, Buneman Peter,Suciu Dan', 'Mikom'),
(146, 'Excel w nauce i technice. Receptury.', 'Bourg David M.', 'O\'Reilly'),
(147, 'Asembler w koprocesorze', 'Kruk Stanisław', 'Mikom'),
(148, 'Zarządzanie projektami. Sztuka przetrwania.', 'Jones Richard', 'MT Biznes'),
(151, 'Programowanie funkcyjne z JavaScriptem. Sposoby na lepszy kod', 'Atencio Luis', 'Helion'),
(152, 'Bazy danych i MySQL. Od podstaw', 'Stones Richard, Matthew Neil', 'Wrox Press'),
(153, 'Internetowi milionerzy czyli jak zdobyć fortunę online.', 'Fox Scott', 'Helion'),
(154, 'Mała książeczka która podbija rynek', 'Greenblatt Joel', 'MT Biznes'),
(155, 'Sztuka motywacji', 'McGinnis Alan Loy', 'Vocatio'),
(156, 'Jak napisać biznesplan', 'Finch Brian', 'One Press'),
(157, 'Psychologia inwestowania', 'Nofsinger John R.', 'One Press'),
(158, 'Sztuka bycia towarzyskim czyli jak odnaleźć się w każdej sytuacji', 'Martinet Jeanne', 'Sensus'),
(159, 'Zapanować nad czasem. Jak efektywnie pracować, by mieć czas na wszystko', 'Prentice Steve', 'Wiley'),
(160, 'Więcej przebojowości! Jak pewnie kroczyć przez życie.', 'Ryan M.J.', 'Sensus'),
(161, 'Sztuka bycia atrakcyjnym. Sekrety osobistego magnetyzmu.', 'Hogan Kevin, Labay Mary Lee', 'Sensus'),
(162, 'Alchemia sprzedaży czyli jak skutecznie sprzedawać produkty, usługi, pomysły i wizerunek samego siebie', 'Pankiewicz Konrad', 'One Press'),
(163, 'Struktura magii. Kształtowanie ludzkiej psychiki, czyli więcej niż NLP.', 'Bandler Richard, Grinder John', 'One Press'),
(164, 'Siła motywacji - jak dopingować siebie i ludzi, z którymi pracujesz', 'Kordziński Jarosław', 'One Press'),
(165, 'Sztuka obserwacji czyli skuteczne studiowanie drugiego człowieka', 'Dimitrius Jo-Ellan, Mazarella Mark C.', 'Sensus'),
(166, 'Sekretny język biznesu. Rozszyfruj każdego w 3 sekundy.', 'Hogan Kevin', 'One Press'),
(167, 'Getting Things Done', 'Allen David', 'One Press'),
(168, 'Nowa era komunikacji', 'Green John O.', 'PrÃ³szyÅ„ski i S-ka'),
(169, 'Sztuka negocjacji w stylu Donalda Trumpa', 'Ross George H.', 'One Press'),
(170, 'Mroczna wiedza. Podręcznik manipulacji umysłami.', 'Lung Haha, Prowant Christopher B.', 'Sensus'),
(171, 'JavaScript. Leksykon kieszonkowy', 'Flanagan David', 'O\'Reilly'),
(172, 'PHP4. Leksykon kieszonkowy', 'Lerdorf Rasmus', 'O\'Reilly'),
(173, 'HTML. Leksykon kieszonkowy', 'Niederst Jennifer', 'O\'Reilly'),
(174, 'E-marketing w akcji, czyli jak skutecznie wzbudzać pożądanie klientów i zazdrość konkurencji', 'Pankiewicz Konrad', 'One Press'),
(175, 'Prowadź BLOG. Przewodnik dla małych firm.', 'Wibbels Andy', 'One Press'),
(176, 'Sztuka perswazji czyli język wpływu i manipulacji', 'Batko Andrzej', 'One Press'),
(177, 'Marketing partyzancki. Jak za darmo wypromować swój biznes.', 'Levinson Jay Conrad', 'One Press'),
(178, '12 sposobów na supermózg. Jak przetrwać w pracy, domu i szkole.', 'Medina John', 'PrÃ³szyÅ„ski i S-ka'),
(179, 'Pozyskiwanie nowych klientów. 151 błyskotliwych rozwiązań.', 'Wilson Jerry R.', 'One Press'),
(180, 'Zarządzanie wzrostem firmy', 'Mohr Angie', 'One Press'),
(181, 'Biznesowy savoir-vivre', 'Pachter Barbara, Magee Susan', 'One Press'),
(182, 'Podręcznik manipulacji. Zakazana retoryka.', 'Beck Gloria', 'Sensus'),
(183, 'Generator charyzmy. Kreowanie osobowości menedżera.', 'Smółka Paweł', 'Sensus'),
(184, 'PHP5, Apache i MySQL. Od podstaw.', 'Naramore Elizabeth, Gerner Jason, ...', 'Wrox Press'),
(185, 'Funkcjonalność stron internetowych', 'Pearrow Mark', 'Helion'),
(186, 'CSS. Kaskadowe arkusze stylów. Przewodnik encyklopedyczny.', 'Meyer Eric A.', 'O\'Reilly'),
(187, 'PHP. 101 praktycznych skryptów.', 'Lis Marcin', 'Helion'),
(188, 'XHTML w przykładach.', 'Navarro Ann', 'Mikom'),
(189, 'Zostań webmasterem', 'Wimmer Paweł', 'Helion'),
(190, 'HTML i XHTML. Przewodnik encyklopedyczny.', 'Musciano Chuck, Kennedy Bill', 'O\'Reilly'),
(191, 'HTML 4. Ćwiczenia praktyczne.', 'Danowski Bartosz', 'Helion'),
(192, 'Projektowanie stron www. Jak to zrobić?', 'Williams Robin, Tollet John', 'Helion'),
(193, 'ABC kaskadowych arkuszy stylów.', 'Danowski Bartosz', 'Helion'),
(194, 'Projektowanie serwisów WWW. Standardy sieciowe.', 'Zeldman Jeffrey', 'New Riders'),
(195, 'HTML i XHTML dla każdego.', 'Lemay Laura', 'Sams'),
(196, 'MySQL.', 'DuBois Paul', 'Mikom'),
(197, 'CSS według Erica Meyera. Sztuka projektowania stron WWW.', 'Meyer Eric A.', 'New Riders'),
(198, '505 praktycznych skryptów dla webmastera.', 'Lis Marcin', 'Helion'),
(199, 'PHP i MySQL. Dynamiczne strony WWW.', 'Ullman Larry', 'Helion'),
(200, 'PHP i MySQL. Tworzenie sklepów internetowych.', 'Bargieł Daniel, Marek Sebastian', 'Helion'),
(201, 'PHP i MySQL. Tworzenie stron WWW. Vademecum profesjonalisty.', 'Welling Luke, Thomson Laura', 'Helion'),
(202, 'Po prostu DHTML. Dynamic HTML.', 'Teague Jason Cranford', 'Helion'),
(203, 'Techniki programowania. Visual Basic .NET', 'Connel John', 'Microsoft Press'),
(204, 'PHP4. Od podstaw.', 'Choi Wankyu, Kent Allan, Lea Chris', 'Wrox Press'),
(205, 'Serwisy WWW. Projektowanie, tworzenie i zarządzanie.', 'Cohen June', 'New Riders'),
(206, 'Po prostu HTML4.', 'Castro Elizabeth', 'Helion'),
(207, 'Podstawy Microsoft .NET', 'Platt David S.', 'Wydawnictwo RM'),
(208, 'Sieci VPN. Zdalna praca i bezpieczeństwo danych.', 'Serafin Marek', 'Helion'),
(209, 'Programowanie baz danych w Visual Basic .NET.', 'Thomsen Carsten', 'Apress'),
(210, 'Microsoft Visual Basic .NET', 'Halvorson Michael', 'Wydawnictwo RM'),
(211, 'Visual Basic 2005. Zapiski programisty.', 'Macdonald Matthew', 'O\'Reilly'),
(212, 'PHP, MySQL i Apache dla każdego.', 'Meloni Julie C.', 'Sams'),
(213, 'Zarządzanie projektami IT. Poznaj najskuteczniejsze metody zarządzania przedsięwzięciami informatycznymi', 'Phillips Joseph', 'One Press'),
(214, 'Jak zwiększyć poczucie własnej wartości. Trening.', 'Schiraldi Glenn R.', 'Sensus'),
(215, 'Zarządzanie dla bystrzaków.', 'Nelson Bob', 'Helion'),
(216, 'Niech klienci tłoczą się u Twoich drzwi.', 'Edwards Paul, Edwards Sarah, Douglas Laura Clampit', 'One Press'),
(217, 'Zarządzanie projektami.', 'Mingus Nancy', 'One Press'),
(218, 'Zarządzanie czasem. Strategie dla administratorów systemów.', 'Limoncelii Thomas A.', 'O\'Reilly'),
(219, 'Giełda. Podstawy inwestowania.', 'Zaremba Adam', 'One Press'),
(220, 'Sztuka pisania oprogramowania.', 'Spolsky Joel', 'Helion'),
(221, 'Sekrety skutecznych prezentacji multimedialnych.', 'Lenar Paweł', 'One Press'),
(222, 'Superpamięć. Trening z Kevinem Trudeau', 'Trudeau Kevin', 'Sensus'),
(223, 'Jak być asertywnym? Trening.', 'Paterson Randy J.', 'Sensus'),
(224, 'Efektywne zarządzanie projektami.', 'Wysocki Robert K., McGary Rudd', 'One Press');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_wydzial` int(11) NOT NULL,
  `id_kierunek` int(11) NOT NULL,
  `nr_albumu` int(11) NOT NULL,
  `rok_studiow` int(11) NOT NULL,
  `miejscowosc` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `wojewodztwo` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `rok_urodzenia` int(11) NOT NULL,
  `status` enum('student','urlop','skreslony','absolwent') COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `student`
--

INSERT INTO `student` (`id_student`, `imie`, `nazwisko`, `id_wydzial`, `id_kierunek`, `nr_albumu`, `rok_studiow`, `miejscowosc`, `wojewodztwo`, `rok_urodzenia`, `status`) VALUES
(1, 'Jan', 'Kowalski', 1, 1, 34772, 3, 'Kielce', 'świętokrzyskie', 1999, 'student'),
(2, 'Adam', 'Nowak', 2, 4, 34553, 1, 'Kalisz', 'wielkopolskie', 2000, 'student'),
(3, 'Michał', 'Szczęsny', 2, 5, 34557, 2, 'Opole', 'opolskie', 1997, 'skreslony'),
(4, 'Jakub', 'Przygoński', 3, 8, 34554, 4, 'Kraków', 'małopolskie', 1998, 'urlop'),
(5, 'Agnieszka', 'Borówka', 3, 7, 34775, 2, 'Tarnów', 'małopolskie', 1996, 'urlop'),
(6, 'Izabela', 'Skała', 3, 6, 34211, 5, 'Krosno', 'podkarpackie', 1995, 'absolwent'),
(7, 'Bożena', 'Kralisz', 1, 2, 34675, 1, 'Częstochowa', 'śląskie', 1999, 'student'),
(8, 'Damian', 'Izdebski', 2, 4, 34212, 3, 'Katowice', 'śląskie', 1997, 'skreslony'),
(9, 'Magdalena', 'Jędraszek', 4, 9, 34222, 4, 'Iława', 'warmińsko-mazurskie', 1997, 'student'),
(10, 'Justyna', 'Kędzior', 3, 7, 34556, 1, 'Wrocław', 'dolnośląskie', 2000, 'student');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczono`
--

CREATE TABLE `wypozyczono` (
  `id_wypozyczono` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `data_wyp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data_zwrotu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wypozyczono`
--

INSERT INTO `wypozyczono` (`id_wypozyczono`, `id_student`, `id_ksiazki`, `data_wyp`, `data_zwrotu`) VALUES
(1, 9, 131, '2018-10-05 08:23:55', '2018-10-22 00:00:00'),
(2, 7, 101, '2018-10-05 08:23:59', '2018-10-25 00:00:00'),
(3, 4, 125, '2018-10-05 08:24:04', '2018-10-13 00:00:00'),
(4, 2, 75, '2018-10-02 06:24:35', '2018-10-23 00:00:00'),
(5, 6, 90, '2018-08-07 06:25:02', '2018-10-19 00:00:00'),
(6, 6, 112, '2018-10-05 08:23:25', '2018-10-17 00:00:00'),
(7, 9, 93, '2018-10-05 08:23:25', '2018-10-27 00:00:00'),
(8, 1, 66, '2018-10-05 08:23:25', '2018-10-30 00:00:00'),
(9, 5, 111, '2018-10-05 08:23:25', '2018-10-29 00:00:00'),
(10, 4, 123, '2018-10-05 08:23:25', '2018-11-15 00:00:00'),
(11, 8, 143, '2018-10-05 08:23:25', '2018-10-15 00:00:00'),
(12, 6, 111, '2018-10-05 08:23:25', '2018-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Struktura widoku `data_wypozyczenia`
--
DROP TABLE IF EXISTS `data_wypozyczenia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_wypozyczenia`  AS SELECT `wypozyczono`.`id_wypozyczono` AS `id_wypozyczono`, `wypozyczono`.`data_wyp` AS `data_wyp`, `wypozyczono`.`data_zwrotu` AS `data_zwrotu` FROM `wypozyczono` ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`);

--
-- Indeksy dla tabeli `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- Indeksy dla tabeli `wypozyczono`
--
ALTER TABLE `wypozyczono`
  ADD PRIMARY KEY (`id_wypozyczono`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT dla tabeli `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `wypozyczono`
--
ALTER TABLE `wypozyczono`
  MODIFY `id_wypozyczono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
