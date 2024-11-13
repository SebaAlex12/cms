-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lis 2024, 14:33
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `demo.pl`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktualnosci`
--

CREATE TABLE `aktualnosci` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `g` tinyint(4) NOT NULL DEFAULT 0,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text NOT NULL,
  `tekstde` text NOT NULL,
  `tekst_krotki` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `tekst_krotkien` text NOT NULL,
  `tekst_krotkide` text NOT NULL,
  `img` tinytext NOT NULL,
  `data` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nr` int(11) NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `nazwa_pliku` tinytext NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `link` tinytext NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `titleen` tinytext NOT NULL,
  `titlede` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `descriptionen` text NOT NULL,
  `descriptionde` text NOT NULL,
  `szablon` text NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `banery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `aktualnosci`
--

INSERT INTO `aktualnosci` (`id`, `parent`, `g`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `tekst_krotki`, `tekst_krotkien`, `tekst_krotkide`, `img`, `data`, `nr`, `widocznosc`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `link`, `keywords`, `title`, `titleen`, `titlede`, `description`, `descriptionen`, `descriptionde`, `szablon`, `albumy_id`, `banery_id`) VALUES
(1, -1, 0, 'Zadbaj o piękny uśmiech', '', '', '<p>Zadbaj o zdrowy i piękny uśmiech swojego dziecka! Rozpoczęcie mało inwazyjnego leczenia ortodontycznego we wczesnych etapach rozwoju, zapobiega pogłębianiu się wady i ewentualnej konieczności zastosowania zaawansowanego leczenia w przyszłości Umów swoje dziecko na wizytę a dowiesz się, czy leczenie ortodontyczne jest konieczne!</p>', '', '', '<p>Zadbaj o zdrowy i piękny uśmiech swojego dziecka! Rozpoczęcie mało inwazyjnego leczenia ortodontycznego we wczesnych etapach rozwoju, zapobiega pogłębianiu się wady ...</p>', '', '', '4.webp', '2021-12-08', -1, 1, 'aktualnosci1', '', '', '', '', '', '', '', '', '', '', '', 0, 0),
(2, -1, 0, 'Chirurgiczne usuwanie zębów', '', '', '<p>Chirurgiczne usuwanie zębów, czyli ekstrakcja, jest niekiedy koniecznością Dotyczy to przypadków, w których wszelkie metody postępowania zachowawczego nie doprowadziły do sukcesu leczniczego, doszło do rozległego zniszczenia zęba lub jego korzenia, urazu lub zaawansowanego stanu zapalnego. Niekiedy zatrzymane całkowicie lub częściowo zęby mądrości, mogą doprowadzić do powolnego niszczenia zębów sąsiednich, wywierając na nie niekontrolowane siły. W takich przypadkach ekstrakcja zębów ósmych jest również najwłaściwszą metodą postępowania. Dowiedz się więcej o ekstrakcji zębów na naszej stronie https://www.nowa/ i umów się na wizytę</p>', '', '', '<p>Chirurgiczne usuwanie zębów, czyli ekstrakcja, jest niekiedy koniecznością Dotyczy to przypadków, w których wszelkie metody postępowania zachowawczego nie doprowadziły ...</p>', '', '', '3.webp', '2016-09-16', -2, 1, 'aktualnosci2', '', '', '', '', '', '', '', '', '', '', '', 0, 0),
(3, -1, 0, 'Stomatologia zachowawcza', '', '', '<p>Stomatologia zachowawcza to pierwsza pomoc w bólu i urazach zębów stałych lub mlecznych Zalicza się do niej wszystkie zabiegi z zakresu leczenia ubytków próchnicowego oraz niepróchnicowego pochodzenia (starcia, ubytki klinowe), a także odbudowy zębów po leczeniu kanałowym... Zobacz więcej o naszych zabiegach stomatologicznych na ➡ https://www.nowa/ i skontaktuj się z nami</p>', '', '', '<p>Stomatologia zachowawcza to pierwsza pomoc w bólu i urazach zębów stałych lub mlecznych Zalicza się do niej wszystkie zabiegi z zakresu leczenia ubytków ...</p>', '', '', '2.webp', '2021-12-25', -3, 1, 'aktualnosci3', '', '', '', '', '', '', '', '', '', '', '', 0, 0),
(4, -1, 0, 'Prawidłowe szczotkowanie zębów', '', '', '<p>Prawidłowe szczotkowanie zębów to podstawa zachowania zdrowej jamy ustnej! Z pozoru banalna czynność, przysparza sporej części pacjentów mnóstwo pytań i problemów... Jeśli chcesz dowiedzieć się jak właściwie o to zadbać, umów się na wizytę kontrolną</p>', '', '', '<p>Prawidłowe szczotkowanie zębów to podstawa zachowania zdrowej jamy ustnej! Z pozoru banalna czynność, przysparza ...</p>', '', '', '1.webp', '2021-09-07', -4, 1, 'aktualnosci4', '', '', '', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `albumy`
--

CREATE TABLE `albumy` (
  `id` int(11) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `nazwa_pliku` tinytext NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nr` int(11) NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `img` text NOT NULL,
  `parent` bigint(20) NOT NULL,
  `g` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `titlede` tinytext NOT NULL,
  `titleen` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `descriptionen` text NOT NULL,
  `descriptionde` text NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `keywordsen` tinytext NOT NULL,
  `keywordsde` tinytext NOT NULL,
  `szablon` text NOT NULL,
  `artykuly_id` int(11) NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `banery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `albumy`
--

INSERT INTO `albumy` (`id`, `nazwa`, `nazwaen`, `nazwade`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `tekst`, `nr`, `widocznosc`, `img`, `parent`, `g`, `title`, `titlede`, `titleen`, `description`, `descriptionen`, `descriptionde`, `keywords`, `keywordsen`, `keywordsde`, `szablon`, `artykuly_id`, `albumy_id`, `banery_id`) VALUES
(1, 'Galeria', '', '', 'galeria', '', '', '', 1, 1, 'udroznienie_kanalizacji.jpg', -1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `albumy_img`
--

CREATE TABLE `albumy_img` (
  `id` int(11) NOT NULL,
  `id_albumu` int(11) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` text NOT NULL,
  `nazwade` text NOT NULL,
  `img` text NOT NULL,
  `nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `albumy_img`
--

INSERT INTO `albumy_img` (`id`, `id_albumu`, `nazwa`, `nazwaen`, `nazwade`, `img`, `nr`) VALUES
(103, 1, '', '', '', 'czyszczenie_basenow.jpg', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykuly`
--

CREATE TABLE `artykuly` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `g` tinyint(4) NOT NULL DEFAULT 0,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text NOT NULL,
  `tekstde` text NOT NULL,
  `tekst_krotki` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `tekst_krotkien` text NOT NULL,
  `tekst_krotkide` text NOT NULL,
  `img` tinytext NOT NULL,
  `data` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nr` int(11) NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `widoczny_glowna` tinyint(4) NOT NULL,
  `nazwa_pliku` tinytext NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `titleen` tinytext NOT NULL,
  `titlede` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `descriptionen` text NOT NULL,
  `descriptionde` text NOT NULL,
  `szablon` text NOT NULL,
  `artykuly_id` int(11) NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `banery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `artykuly`
--

INSERT INTO `artykuly` (`id`, `parent`, `g`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `tekst_krotki`, `tekst_krotkien`, `tekst_krotkide`, `img`, `data`, `nr`, `widocznosc`, `widoczny_glowna`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `keywords`, `title`, `titleen`, `titlede`, `description`, `descriptionen`, `descriptionde`, `szablon`, `artykuly_id`, `albumy_id`, `banery_id`) VALUES
(5, -1, 0, 'Endodoncja mikroskopowa', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez naszą Dr n.med. Monikę Biniek związanymi z tematyką endodoncji mikroskopowej i dowiedz się więcej o leczeniu kanałowym.</p>', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez naszą Dr n.med. Monikę Biniek związanymi z tematyką endodoncji mikroskopowej i dowiedz się więcej o leczeniu kanałowym.</p>', '', '', 'leczenie-kanalowe-pod-mikroskopem.jpg', '', -2, 1, 0, 'blog/endodoncja-mikroskopowa', '', '', '', '', '', '', '', '', '', '', 0, 2, 0),
(6, -1, 0, 'Stomatologia zachowawcza', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z tematyką stomatologii zachowaczej i dowiedz się więcej o wizytach kontrolnych oraz pierwszej pomocy w przypadku bólu zęba.</p>', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z tematyką stomatologii zachowaczej i dowiedz się więcej o wizytach kontrolnych oraz pierwszej pomocy w przypadku bólu zęba.</p>', '', '', 'stomatologia-zachowawcza.jpg', '', -3, 1, 0, 'blog/stomatologia-zachowawcza', '', '', '', '', '', '', '', '', '', '', 6, 0, 0),
(7, 6, 1, 'Tomografia komputerowa', '', '', '<h4>Tomografia komputerowa Łódź Biniek Clinic Łódź</h4>\n<p>Dzięki <strong>tomografii komputerowej 3D</strong> otrzymujemy najdokładniejszy obraz radiologiczny. Badanie to pomaga lekarzowi w szybkiej i precyzyjnej diagnozie oraz pomaga wybrać najlepszą metodę leczenia stomatologicznego.</p>\n<p>Prześwietlanie promieniami RTG w wielu z nas budzi obawy, zadajemy sobie pytanie, czy jest bezpieczne dla zdrowia? Tak! Jeśli badanie jest wykonywane za pomocą tak nowoczesnego sprzętu, jak w Biniek Clinic.</p>\n<p>Dzięki nowoczesnemu aparatowi Xmind Trium True low dose dawka promienowania została zmniejszona o połowę w porównaniu do aparatów starszej generacji, co zapewnia wiarygodną ochronę radiologiczną pacjenta bez utraty jakości obrazu 3D.</p>\n<h3>Dlaczego tomografia to ważne badanie diagnostyczne w stomatologii?</h3>\n<p>W każdej dziedzinie medycyny, w tym i w stomatologii, prawidłowa diagnoza ma podstawowe znaczenie dla ustalenia właściwego procesu leczenia. Jednym z jej elementów w przypadku stomatologii są <strong>badania rtg</strong>. W tym celu niezbędne jest często wykonanie zlecanych przez lekarzy badań z zakresu radiologii: <strong>zdjęć zębowych</strong>, <strong>pantomograficznych</strong> i <strong>tomograficznych</strong>. Te ostatnie są najdokładniejszym rodzajem badania rtg, pokazującym w ujęciu 3D wszystkie struktury twarzoczaszki.</p>\n<p>Badanie to pozwala w bezpieczny sposób planować leczenie, w szczególności tak zaawansowane, jak implantologiczne. Poprzez możliwość przeprowadzenia komputerowej symulacji zabiegu na ekranie monitora, tomografia komputerowa warunkuje bezpieczeństwo i precyzję przeprowadzanego zabiegu.</p>\n<p>Jest niezwykle ważna w przypadku niektórych procesów chorobowych kości szczęk i żuchwy, stawów skroniowo-żuchwowych oraz zatok szczękowych.</p>\n<h3>Tomografia jest badaniem wykorzystującym promienie rentgenowskie do obrazowania tkanek w trzech płaszczyznach</h3>\n<p>CBCT jest szybką i bezpieczną odmianą tomografii komputerowej stworzoną dla stomatologii. Skuteczność prowadzonego leczenia stomatologicznego oraz komfort pacjenta zależy w dużej mierze od dokładnej i trafnej diagnozy. Postawienie jej jest możliwe dzięki nowoczesnej tomografii komputerowej 3D. Informacje uzyskane podczas tego badania mają ogromne znaczenie przy planowaniu zabiegów i określaniu potencjalnego ryzyka, wyborze najbardziej optymalnej metody leczenia. To dokładne badanie, które daje pełny, trójwymiarowy obraz tkanek miękkich oraz kości pacjenta, co przekłada się na wiedzę między innymi o tym, jak przebiegło dotychczasowe leczenie, jaka jest ilość i rozmieszczenie kanałów zębowych, nerwów, naczyń, korzeni zębów, czy też, jaki jest układ kostny twarzoczaszki.</p>\n<h3>Tomografia zębów CBCT sprawdza się podczas diagnozowania i <a href=\"https://artdent.ojczyk.pl/leczenie-kanalowe/\">leczenia endodontycznego</a>.</h3>\n<p>Na <a href=\"https://artdent.ojczyk.pl/zdjecie-rtg-zeba/\">zdjęciach punktowych</a> nie ma możliwości obejrzenia struktury zęba i kości w projekcji przestrzennej. Obraz jest płaski, jednopłaszczyznowy. Wiele informacji jest niewystarczających, przysłoniętych przez nakładające się na siebie elementy Tomografia doskonale uwidacznia wszystkie struktury zębowe i kostne. W związku z tym, mamy możliwość obejrzeć ząb w animacji komputerowej z każdej strony. Zaglądamy do jego wnętrza dzięki przekrojom warstwowym. Jesteśmy w stanie znaleźć wszystkie nieprawidłowości i zaburzenia zarówno w jego wnętrzu, jak i w tkankach otaczających. <strong>Tomografia stożkowa CBCT</strong> pomaga ustalić ilość kanałów, ich przebieg, zakrzywienia, anomalie anatomiczne. Uwidacznia również zmiany zapalne w okolicy wierzchołkowej korzeni zębów ich lokalizację oraz zasięg, umożliwia odnalezienie dodatkowych kanałów zęba, ewentualnych złamań, pęknięć czy perforacji.</p>\n<h3>Tomografia stożkowa CBCT wykorzystywana jest w planowaniu leczenia protetycznego i implantologicznego.</h3>\n<p>Dzięki niej możemy ocenić jakość oraz gęstość kości. Dobór <a href=\"https://artdent.ojczyk.pl/implanty-zebowe/\">implantu</a>, jego długość i szerokość jest przeprowadzany na podstawie analizy zdjęcia CBCT. Dzięki tomografii lekarz może wybrać dogodne miejsce wprowadzenia wszczepu oraz ustalić kąt, pod którym implant zęba ma być później wkręcany. Przed implantacją można ocenić postęp wykonanych zabiegów augmentacji kości, a także zaplanować implantację (wirtualny wybór typu i rozmiaru implantu oraz jego wirtualne wkręcenie) i stworzyć szablony do wprowadzenia wszczepów śródkostnych.</p>\n<p><strong>Tomografia CBCT jest zdjęciem warstwowym 3D o najmniejszym promieniowaniu.</strong> Dlatego tez dawka potrzebna do wykonania tego zdjęcia nie jest wysoka i wynosi ok. 5 -19 µSv, czyli praktycznie tyle samo co <a href=\"https://artdent.ojczyk.pl/zdjecie-panoramiczne-zebow/\"><strong>zdjęcia panoramicznego</strong></a>. Oczywiście zależy ona od rodzaju aparatu rentgenowskiego, którym to zdjęcie wykonujemy.<br /> <strong>Aparaty cyfrowe CBCT cały czas ewoluują i w kolejnych ich generacjach otrzymujemy coraz lepszy obraz przy jednoczesnej redukcji dawki.</strong> <strong>Badania obrazowe 3D w stomatologii są również niezbędne w trudnych przypadkach chirurgicznych</strong>, zwłaszcza przed zabiegami operacyjnego usuwania zębów zatrzymanych. W przypadku dolnych zębów mądrości daje szczególnie istotne informacje na temat budowy i topografii ich korzeni w stosunku do kanału żuchwy, w przypadku górnych – ich położenia względem zachyłka zębodołowego zatoki szczękowej, ale także względem korzeni zębów trzonowych. W przypadku urazów części twarzowej czaszki i żuchwy możliwe jest także odnalezienie nawet małych pęknięć i złamań.</p>\n<h2>Dlaczego warto wykonywać badania 3D w Biniek Clinic?</h2>\n<p>Stosowanie badań obrazowych 3D zapewnia pacjentom doskonałą diagnostykę. Umożliwia lekarzom dokładne przygotowanie siebie i pacjenta do przeprowadzenia nawet skomplikowanych zabiegów w sposób jak najbezpieczniejszy. Dzięki temu zmniejszeniu ulega ilość powikłań oraz urazów jatrogennych.</p>\n<p>Często może także zaoszczędzić pracy stomatologowi i przewlekłego leczenia pacjentom w przypadku przedłużającego się leczenia endodontycznego zęba, który w rzeczywistości jest uszkodzony - np. doszło do złamania lub pęknięcia, które pozostaje niewidoczne na zdjęciu wewnątrz ustnym czy pantomograficznym.</p>\n<h3>Zalety tomografii 3D:</h3>\n<ul>\n<li>nowa jakość w diagnostyce RTG</li>\n<li>niska dawka promieniowania</li>\n<li>funkcja planowania zabiegów implantologicznych</li>\n<li>możliwość wybrania danego obszaru do prześwietlenia, szczęki lub żuchwy lub całej twarzoczaszki</li>\n<li>szybkość wykonania zdjęcia</li>\n</ul>\n<p>W naszej klinice z powodzeniem wykorzystujemy tomografię 3D, która pozwala nam planować zabiegi stomatologiczne. Precyzyjny wynik jest dla specjalisty kluczowym w postawieniu trafnej diagnozy. Ponadto można ustalić, w jaki sposób przeprowadzić dany zabieg stomatologiczny, aby wykluczyć ryzyko niepowodzenia i komplikacji.</p>\n<h3>Zdjęcia Pantomograficzne</h3>\n<p><strong>Zdjęcie pantomograficzne</strong> zwane również pantomogramem lub ortopantomogramem (w skrócie OPG) jest to zdjęcie rentgenowskie dające panoramiczny obraz kości szczęki i żuchwy, wszystkich zębów, a także stawów skroniowo żuchwowych i zatok szczękowych.</p>\n<h2>Wskazania do wykonania zdjęcia pantomograficznego</h2>\n<h3>1. Choroby zębów i przyzębia</h3>\n<p>Próchnica-możliwe jest wykrycie ubytków próchnicowych niewidocznych w badaniu wewnątrzustnym np. w punktach stycznych zębów lub pod starymi wypełnieniami czy koronami protetycznymi.<br /> Choroby przyzębia (paradontoza) -zdjęcie uwidacznia postęp zaniku kości towarzyszący temu schorzeniu oraz płaszczyzny zaniku.<br /> Problemy endodontyczne - zdjęcie obrazuje korzenie wszystkich zębów, dzięki czemu stomatolog jest w stanie wykryć wszystkie nieprawidłowości związane z leczeniem kanałowym lub jego brakiem, np.: zmiany okołowierzchołkowe, torbiele, niedopełnione kanały, złamane narzędzia kanałowe.</p>\n<h3>2. Ekstrakcje zębów</h3>\n<p>Pantomogram pokazuje kształt oraz rozmieszczenie korzeni zębów, ich położenie w stosunku do zębów sąsiednich oraz innych struktur anatomicznych. Jest bardzo przydatne przy usuwaniu zębów mądrości (ósemek) tych wyrzniętych, jak i całkowicie zatrzymanych.</p>\n<h3>3. Leczenie implantologiczne</h3>\n<p>Pantomogram jest podstawowym zdjęciem rentgenowskim obok tomografii komputerowej przed wykonaniem zabiegu implantacji. Pomaga wstępnie zaplanować zabieg, dobrać odpowiedni implant i ocenić warunki anatomiczne dla przyszłej odbudowy protetycznej.</p>\n<h3>4. Leczenie ortodontyczne</h3>\n<p>Pozwala ustalić położenie zawiązków zębów jeszcze nie wyrzniętych, zaplanować przyszłe leczenie ortodontyczne.</p>\n<h3>5. Urazy zębów i twarzoczaszki</h3>\n<p>Zdjęcie pantomograficzne jest pomocne przy ocenie złamań korzeni zębów, złamań żuchwy i innych urazów w obrębie kości szczęk.</p>\n<p><strong>Zdjęcie pantomograficzne jest wykorzystywane w celu wykrycia ukrytych ognisk infekcji w jamie ustnej, które mogą stanowić bezpośrednie zagrożenie podczas wszelkiego rodzaju zabiegów operacyjnych</strong>.</p>\n<p>Tylko na podstawie pełnego wywiadu i badania stomatologicznego oraz po wykonaniu zdjęcia pantomograficznego stomatolog może wystawić zaświadczenie o braku przeciwwskazań do takiego zabiegu.</p>\n<h3>Jak przygotować się do wykonania zdjęcia?</h3>\n<p><strong>Wykonanie zdjęcia pantomograficznego niewymaga specjalnego przygotowania</strong> i można je wykonać od razu (za okazaniem skierowania). Jedynym istotnym zaleceniem jest <strong>zdjęcie wszelkich metalowych przedmiotów</strong>, takich jak okulary czy biżuteria oraz założenie kamizelki chroniącej resztę ciała przed promieniami rentgenowskimi.</p>\n<h3>Jak duża jest dawka promieniowania przyjęta podczas badania?</h3>\n<p>Dawka emitowana podczas badania jest w przybliżeniu równa 2-3 dniowej dawce promieniowania przyjętej z otaczającego nas środowiska.</p>\n<h3>Czy zdjęcie pantomograficzne można wykonać u pacjentki w ciąży?</h3>\n<p>W okresie ciąży można wykonywać stomatologiczne zdjęcia RTG tylko w sytuacjach, gdy jest to niezbędne.</p>\n<h3>Jak często należy kontrolować stan uzębienia za pomocą zdjęcia pantomograficznego?</h3>\n<p>O konieczności wykonania zdjęcia, zawsze decyduje lekarz stomatolog po wykonaniu badania wewnątrzustnego. Na częstotliwość powtarzania badania ma wpływ stan jamy ustnej oraz ogólny stan zdrowia i jest to parametr ustalany indywidualnie dla każdego pacjenta.</p>', '', '', '<p>Dzięki <span style=\"font-weight: bolder;\">tomografii komputerowej 3D</span> otrzymujemy najdokładniejszy obraz radiologiczny. Badanie to pomaga lekarzowi...</p>', '', '', 'tomografia-komputerowa-lodz-biniek-clinic.webp', '', 1, 1, 0, 'stomatologia-zachowawcza/tomografia-komputerowa', '', '', 'tomografia komputerowa, tomografia zębów, tomografia, badanie cbct, tomografia komputerowa 3d, Łódź, zdjęcia pantomograficzne Łódź', 'Tomografia komputerowa Łódź - Biniek Clinic Łódź', '', '', 'Dlaczego tomografia komputerowa jest konieczna przed zabiegiem? Kiedy tomografia zębów CBCT jest potrzebna? Czy warto wykonać badanie tomograficzne 3D zębów, szczęki, żuchwy lub zatok? Czym są zdjęcia pantomograficzne?', '', '', '', 0, 0, 0),
(8, -1, 0, 'Chirurgiczne usuwanie zębów', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z usuwaniem zębów, w tym również chirurgiczną ekstrakcją ósemek.</p>', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z usuwaniem zębów, w tym również chirurgiczną ekstrakcją ósemek.</p>', '', '', 'usuwanie-osemek-lodz.jpg', '', -4, 1, 0, 'blog/usuwanie-zebow', '', '', '', '', '', '', '', '', '', '', 8, 0, 0),
(9, 8, 1, 'Usuwanie ósemek', '', '', '<h2>Usuwanie ósemek Łódź- Biniek Clinic Łódź</h2>\r\n<p><strong>Ekstrakcja ósemek</strong> to zabieg, który cieszy się niezwykle złą sławą wśród pacjentów. W naszym gabinecie udowadniamy, że usuwanie zębów mądrości nie musi wiązać się z czymś nieprzyjemnym. Wszystko dzięki wykwalifikowanemu personelowi, który swoją pracę wykonuje precyzyjnie i uważnie. <strong>Zabiegi przeprowadzane są w odpowiednim znieczuleniu, z zachowaniem zasad aseptyki pola</strong> <strong>operacyjnego</strong>. Wskazaniami do ekstrakcji ósemek są znaczne zniszczenia zębów przez proces próchnicowy, gdy nie możemy zapewnić szczelności wypełnienia i prawidłowej odbudowy, nawracające stany zapalne wokół wyrzynających się zębów oraz zmiany okołowierzchołkowe niepoddające się leczeniu.</p>\r\n<p>Wyjątkowo kłopotliwe są <strong>częściowo lub całkowicie zatrzymane ósemki</strong>. Gdy ząb wyrznięty jest częściowo, a resztę przykrywa dziąsło, sprzyja to gromadzeniu resztek pokarmowych pod kapturem dziąsłowym i powstawaniu stanu zapalnego. Całkowicie zatrzymane ósemki, często nieprawidłowo ułożone w kości, mogą naciskać na korzeń sąsiadującego zęba i stopniowo doprowadzać do jego resorpcji. W konsekwencji może to doprowadzić do konieczności ekstrakcji dwóch zębów.</p>\r\n<p>Co prawda <strong>operacyjne usunięcie zęba mądrości</strong> jest zabiegiem bardziej skomplikowanym niż zwykła ekstrakcja, jednak dzięki naszemu personelowi i umiejętnościom nie jest to uciążliwe dla pacjentów. Prawidłowe zaopatrzenie rany i ewentualne dodatkowe leki pozwalają na przyspieszenie procesu gojenia.</p>\r\n<h2>Jak się przygotować do zabiegu uśnięcia ósemek w Biniek Clinic?</h2>\r\n<p>Jeśli istnieje możliwość, zabieg warto zaplanować na chłodniejsze miesiące. <strong>Niższe temperatury otoczenia sprzyjają szybkiemu gojeniu</strong>, upalne dni mogą nasilić nieprzyjemne dolegliwości poekstrakcyjne. Godziny poranne to odpowiednia pora na usuwanie zębów u osób z niską krzepliwością krwi oraz cukrzyków. Warto mądrze zaplanować 2-3 dni po zabiegu. Jest to czas, w którym opuchlizna i dolegliwości bólowe mogą najbardziej dawać się we znaki, a prawdopodobieństwo wystąpienia powikłań jest największe.</p>\r\n<p><strong>Bezpośrednio przed zabiegiem warto się spożyć obfity posiłek,</strong> ponieważ przyjmowanie pokarmów czy nawet ciepłych płynów może być utrudnione przez kilkanaście godzin. Palacze powinni zadbać o plastry lub tabletki z nikotyną, ponieważ <strong>palenie tytoniu po zabiegu jest niewskazane</strong>, podobnie jak stosowanie nikotynowych preparatów w formie gum do żucia i pastylek do ssania.</p>\r\n<p><strong>Zakazane jest również spożywanie nawet najmniejszych ilości alkoholu przed ekstrakcją</strong>. Alkohol może wchodzić w interakcje ze środkami znieczulającymi i nie tylko zmniejszyć działanie znieczulenia, ale także doprowadzić do powikłań kardiologicznych. Chirurgiczne usuwanie ósemek wykonywane jest w znieczuleniu miejscowym, które całkowicie znosi czucie bólu. Po ekstrakcji lekarz odpowiednio zaopatruje ranę, a pacjent tuż po zabiegu zostaje przez około pół godziny w poczekalni.</p>\r\n<h2>Zalecenia po usunięciu zęba mądrości w Biniek Clinic</h2>\r\n<ul>\r\n<li>W celu zahamowania krwawienia należy przez około 15 minut zagryzać tampon umieszczony w ranie po usuniętym zębie. Stały ucisk spowoduje szybsze tworzenie się skrzepu.</li>\r\n<li><strong>Spożywanie pokarmów jest zakazane przez okres minimum 2 godzin po ekstrakcji zęba</strong>, gdyż może spowodować podrażnienie świeżej rany. Podobnie z przyjmowaniem płynów, które mogą powodować wypłukanie skrzepu zabezpieczającego ranę.</li>\r\n</ul>\r\n<p>Działające nadal znieczulenie może doprowadzić do pogryzień warg i języka poprzez trwające jeszcze zaburzenia czucia.</p>\r\n<ul>\r\n<li>W celu zminimalizowania opuchlizny i bólu <strong>należy stosować́ zimne okłady</strong>. Może to być suchy lód, kompresy do zamrażania dostępne w aptekach lub zwykły lód zawinięty w mały ręcznik.</li>\r\n<li>W razie pojawienia się dolegliwości bólowych po ustąpieniu znieczulenia, <strong>zaleca się stosowanie środków przeciwbólowych</strong>. Najlepiej wybierać́ takie, o jednoczesnym działaniu przeciwzapalnym np. Ibuprofen,Pyralgina. Jeżeli lekarz zapisze antybiotyk należy go stosować́ według zaleceń́, nawet po ustąpieniu dolegliwości i <strong>nie spożywać alkoholu. </strong>Jeżeli silne dolegliwości bólowe utrzymują̨ się̨ kilka dni należy udać́ się̨ na wizytę̨ kontrolną.</li>\r\n<li>W ciągu doby po zabiegu <strong>zaleca się spożywanie chłodnych</strong> <strong>pokarmów.</strong> Należy unikać́ gorących napojów i posiłków. Rozgrzanie rany  i jej podrażnienie może spowodować́ nasilenie krwawienia.</li>\r\n<li>Przez co najmniej <strong>dwa dni nie należy palić papierosów</strong>. Dym papierosowy ma niekorzystny wpływ na gojenie rany, upośledza tworzeniu się̨ skrzepu. Częstym powikłaniem jest wtedy tzw. Suchy zębodół, który jest wyjątkowo bolesny.</li>\r\n<li><strong>W ciągu doby po ekstrakcji nie powinno się̨ płukać́ jamy ustnej płukankami</strong>. Energiczne płukanie może usunąć́ skrzep zabezpieczający ranę̨, co przyczyni się̨ do wydłużenia okresu gojenia. Po tym czasie najlepiej stosować́ delikatne płukanki ziołowe, które mają działanie odkażające i ściągające jak np. szałwia.</li>\r\n<li><strong>Tylko w pierwszej dobie po zabiegu nie należy szczotkować́ zębów,</strong> aby nie uszkodzić́ rany. <strong>W kolejnych dobach</strong> na ranę̨ należy uważać́, natomiast <strong>zęby należy dokładnie oczyszczać</strong>. Higiena jamy ustnej jest bardzo ważna, gdyż zapobiega zakażeniu rany poekstrakcyjnej.</li>\r\n</ul>\r\n<p>Często w miejscu po usuniętym zębie powstaje budzący obawy u pacjentów biało-szary nalot. Nie należy go usuwać́, gdyż̇ jest to zdrowa tkanka, z której tworzy się̨ nowe dziąsło.</p>\r\n<ul>\r\n<li><strong>Niewielkie krwawienie może utrzymywać́ się przez kilka dni po ekstrakcji</strong>. Jeżeli jednak z upływem czasu krwawienie się nie zmniejsza, należy niezwłocznie udać́ się̨ do stomatologa.</li>\r\n</ul>', '', '', '<p><span style=\"font-weight: bolder;\">Ekstrakcja ósemek</span> to zabieg, który cieszy się niezwykle złą sławą wśród pacjentów. W naszym gabinecie udowadniamy, że usuwanie zębów mądrości nie musi wiązać się z czymś nieprzyjemnym...</p>', '', '', 'usuwanie-osemek-lodz.webp', '', 1, 1, 0, 'usuwanie-zebow/usuwanie-osemek-lodz', '', '', 'usuwanie ósemek zabieg, ekstrakcja ósemek, ekstrakcja zębów mądrości, zęby mądrości, usuwanie zębów mądrości, jak przygotować się do usunięcia ósemek, jak przygotować się do usunięcia zębów mądrości', 'Usuwanie ósemek - Jak przygotować się do zabiegu, zalecenia po ekstrakcji', '', '', 'Ekstrakcja ósemek to zabieg, który cieszy się niezwykle złą sławą wśród pacjentów. Sprawdź jak przygotować się do usunięcia ósemek, jakie są zalecenia po ekstrakcji zębów mądrości...', '', '', '', 0, 2, 0),
(10, -1, 0, 'Stomatologia dziecięca', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek dotyczącymi stomatolgogii dziecięcej i zadbaj o zdrowie jamy ustnej oraz zębów swojego dziecka.</p>', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek dotyczącymi stomatolgogii dziecięcej i zadbaj o zdrowie jamy ustnej oraz zębów swojego dziecka.</p>', '', '', 'stomatologia-dziecieca.jpg', '', -5, 1, 0, 'blog/stomatologia-dziecieca', '', '', '', '', '', '', '', '', '', '', 10, 0, 0),
(11, 10, 1, 'Wizyty kontrolne dziecka u dentysty jak często?', '', '', '<p>Do 6 roku życia dziecka, zalecane są badanie kontrolne co 4 miesiące, u starszych pacjentów,po wyleczeniu wszystkich zębów, co 6 miesięcy. Częstotliwość wizyt kontrolnych jest uzależniona od ilości ubytków na pierwszej wizycie, nawyków żywieniowych oraz higienicznych i jest indywidualnie wyznaczana przez lekarza dentystę.</p>\r\n<p>Dr n. med Monika Biniek</p>', '', '', '<p>Do 6 roku życia dziecka, zalecane są badanie kontrolne co 4 miesiące, u starszych pacjentów,po wyleczeniu wszystkich zębów, co 6 miesięcy....</p>', '', '', 'dzieci-wizyta-kontrolna-u-dentysty.webp', '', 1, 1, 0, 'stomatologia-dziecieca/wizyty-kontrolne-dziecka-u-dentysty-jak-czesto', '', '', 'dziecko a wizyta kontrolna u dentysty, jak często z dzieckiem do dentysty, co ile chodzić z dzieckiem do dentysty, dentysta wizyta a dziecko', 'Wizyty kontrolne dziecka u dentysty jak często? - Biniek Clinic Łódź', '', '', 'Kontrolna wizyta dziecka u dentysty jest bardzo ważna z kilku powodów. Jak często chodzić na wizyty kontrolne z dzieckiem? Sprawdź na naszej stronie!', '', '', '', 0, 0, 0),
(12, 10, 1, 'Jak dbać o jamę ustną dziecka od pierwszych miesięcy życia?', '', '', '<p>Przed wyrznięciem pierwszych zębów mlecznych, rodzice powinni regularnie oczyszczać błonę śluzową oraz dziąsła dziecka codziennie wieczorem przed położeniem go spać. Zalecane jest używanie gazika lub bawełnianej chusteczki nawiniętej na palec wskazujący rodzica, zamoczonej w słabym naparze z rumianku lub letniej przegotowanej wody.</p>\r\n<p>W momencie pojawienia się pierwszych zębów mlecznych wprowadzamy do ich oczyszczania szczoteczkę z tworzywa sztucznego z miękkim włosiem, małej główce i dużej rączce. Rozmiarem powinna być dostosowana do jamy ustnej dziecka, może być manualna bądź elektryczna.</p>\r\n<h3>Pasta z ksylitolem? Jak najbardziej!</h3>\r\n<p>Ksylitol będący naturalnym słodzikiem jest również składnikiem past do zębów. Od wielu lat mówi się o jego dobroczynnym działaniu na zdrowie zębów. Udowodniono, że przywraca prawidłowe pH śliny, stymuluje jej produkcję oraz hamuje rozmnażanie bakterii. Ułatwia również przyswajanie wapnia, co jest bardzo ważne dla prawidłowego rozwoju kości i zębów dziecka.</p>\r\n<p>Dr n. med. Monika Biniek</p>', '', '', '<p>Przed wyrznięciem pierwszych zębów mlecznych, rodzice powinni regularnie oczyszczać błonę śluzową oraz dziąsła dziecka codziennie wieczorem przed położeniem go spać...</p>', '', '', 'jak-dbac-o-jame-ustna-niemowlaka.webp', '', 2, 1, 0, 'stomatologia-dziecieca/jak-dbac-o-jame-ustna-dziecka-od-pierwszych-miesiecy', '', '', 'higiena jamy ustnej niemowlaka, niemowlak higiena jamy ustnej, dbanie o higienę ustną dziecka, małe dzieci a higiena jamy ustnej', 'Jak dbać o jamę ustną dziecka od pierwszych miesięcy życia? - Klinika dentystyczna Biniek Clinic Łódź', '', '', 'Jak dbać o jamę ustną dziecka od pierwszych miesięcy życia, aby cieszyło się ono zdrowymi dziąsłami i zębami przed wyrznięciem i po? Zobacz na naszej stronie.', '', '', '', 0, 0, 0),
(13, 10, 1, 'Kiedy pierwsza wizyta z dzieckiem u dentysty?', '', '', '<p>Obecnie uważa się, że pierwsza wizyta młodego pacjenta w gabinecie stomatologicznym powinna odbyć się maksymalnie 6 miesięcy po wyrżnięciu pierwszego zęba mlecznego, lecz nie później niż w 12 miesiącu życia. Jej celem jest ocena ryzyka zachorowania dziecka na próchnicę, na podstawie wywiadu przeprowadzonego z rodzicami, dotyczącego nawyków żywieniowych oraz higienicznych, a także badania klinicznego jamy ustnej dziecka.</p>\r\n<p>Dr n. med. Monika Biniek</p>', '', '', '<p>Obecnie uważa się, że pierwsza wizyta młodego pacjenta w gabinecie stomatologicznym powinna odbyć się....</p>', '', '', 'pierwsza-wizyta-dziecka-u-dentysty.webp', '', 3, 1, 0, 'stomatologia-dziecieca/kiedy-pierwsza-wizyta-z-dzieckiem-u-dentysty', '', '', 'pierwsza wizyta dziecka u dentysty, dziecko a dentysta pierwsza wizyta, kiedy do dentysty dziecięcego, stomatologia dziecięca pierwsza wizyta', 'Kiedy pierwsza wizyta z dzieckiem u dentysty? - Stomatologia dziecięca Biniek Clinic Łódź', '', '', 'Obecnie uważa się, że pierwsza wizyta dziecka u dentysty powinna odbyć się po wyrznięciu a dokładniej... Sprawdź opinię naszej stomatolożki dziecięcej.', '', '', '', 0, 0, 0),
(14, 10, 1, 'Właściwa dieta i jej ogromna rola w stomatologii dziecięcej', '', '', '<p>Sposób odżywiania i odpowiednio zbilansowana dieta są podstawowymi elementami profilaktyki próchnicy. Oczywiście ograniczenie podaży cukrów wydaje się być tu najważniejszym gwarantem sukcesu w walce z próchnicą, jednak znaczenie ma również konsystencja i częstotliwość spożywanych pokarmów. Ich kleistość sprawia, że są w mniejszym stopniu wymywane przez ślinę, w związku z czym ich czas przebywania na powierzchni zębów i szkodliwe działanie jest dłuższy. Częste spożywanie pokarmów zawierających cukry, do tego miękkich i kleistych utrzymuje kwaśne pH w płytce nazębnej, sprzyja demineralizacji szkliwa i powstawaniu ubytków. Słodycze zjedzone przed snem wyrządzą więcej szkody niż zjedzone w ciągu dnia. Przyczyną tego jest mniejsze wydzielanie śliny w porze nocnej, w związku z czym obniża się jej dobroczynne działanie w walce z próchnicą. Odżywanie wpływa nie tylko na kondycję zębów, ale warunkuje prawidłowe kształtowanie narządu żucia dziecka. Pokarmy twarde, gruboziarniste, masują dziąsła i zwiększają ich ukrwienie przez co pobudzają rozwój kości i przyzębia, wpływając na formowanie się właściwego zgryzu.</p>\r\n<p>W ciąży i w pierwszych latach życia dziecka niedobory białka, wapnia, fosforu, witamin A C D E oraz fluoru , może wpłynąć niekorzystnie na proces formowania i mineralizacji zawiązków zębowych, czyli odontogenezę. Ich nieodostatek w pożywieniu może być przyczyną większej podatności zębów na czynniki próchnicotwórcze. Największe korzyści płyną z podaży produktów mlecznych, serów, ksylitolu oraz pokarmów bogatych w błonnik.</p>\r\n<p>Dr n.med. Monika Biniek</p>', '', '', '<p>Sposób odżywiania i odpowiednio zbilansowana dieta są podstawowymi elementami profilaktyki próchnicy. Oczywiście ograniczenie podaży cukrów wydaje się być tu najważniejszym gwarantem sukcesu w walce z próchnicą...</p>', '', '', 'rola-diety-w-stomatologii-dzieciecej.webp', '', 4, 1, 0, 'stomatologia-dziecieca/wlasciwa-dieta-i-jej-rola-w-stomatologii-dzieciecej', '', '', 'dieta a problemy z próchnicą, dieta a stomatologia dziecięca, wpływ diety na zęby dziecka, dziecko dieta a próchnica, przeciwdziałanie próchnicy', 'Właściwa dieta i jej ogromna rola w stomatologii dziecięcej - Biniek Clinic Łódź', '', '', 'posób odżywiania i odpowiednio zbilansowana dieta są podstawowymi elementami stomatologii dziecięcej. Profilaktyka próchnicy to przecież ograniczenie cukrów, ale nie tylko...', '', '', '', 0, 0, 0),
(15, -1, 0, 'Protetyka', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z licówkami, koronami zębowymi oraz innymi zagadnieniami z dziedziny protetyki.</p>', '', '', '<p>Zapoznaj się z artykułami przygotowanymi przez Dr n.med. Monikę Biniek związanymi z licówkami, koronami zębowymi oraz innymi zagadnieniami z dziedziny protetyki.</p>', '', '', 'licowki-lodz.jpg', '', -6, 1, 0, 'blog/protetyka', '', '', '', '', '', '', '', '', '', '', 15, 0, 0),
(16, 15, 1, 'Licówki wskazania i przeciwwskazania', '', '', '<h2>Licówki Łódź - wskazania i przeciwwskazania - Biniek Clinic Łódź</h2>\r\n<p>Licówki to najmniej ingerujące w tkanki zęba uzupełnienie protetyczne. Cienkie płatki porcelany przyklejane są do przedniej powierzchni zębów.</p>\r\n<p>Ich zastosowanie to metoda korekcji uśmiechu, pozwalająca na ukrycie defektów estetycznych takich jak nieodpowiedni kształt i wielkość zębów, przebarwienia czy też przerwy między zębami. Posiadają dużą odporność na ścieranie i zachowują trwałą barwę i połysk, powodując znaczną poprawę samopoczucia pacjentów po zakończonym leczeniu przez wiele lat. To właśnie one są odpowiedzialne za większość ‘hollywoodzkich’ uśmiechów.</p>\r\n<p>Wskazania:</p>\r\n<ul>\r\n<li>korekta kształtu zębów (np. zęby stożkowe)</li>\r\n<li>korekta położenia zębów</li>\r\n<li>przebarwienia korony zębów np. po antybiotykach które nie podlegają wybielaniu</li>\r\n<li>niedorozwój szkliwa</li>\r\n<li>nieestetyczne wypełnienia na powierzchniach wargowych zębów przednich</li>\r\n<li>szpary między zębami</li>\r\n<li>urazowe odamania brzegów siecznych</li>\r\n</ul>\r\n<p></p>\r\n<p>Przeciwwskazania</p>\r\n<ul>\r\n<li>nieleczony bruksizm (zgrzytanie i zaciskanie zębów)</li>\r\n<li>zęby bardzo zniszczone z rozległymi wypełnieniami</li>\r\n<li>parafunkcje-szkodliwe nawyki np. obgryzanie paznokci</li>\r\n<li>zbyt mała ilość szkliwa zapewnić utrzymanie licówki</li>\r\n<li>choroby dziąseł i przyzębia</li>\r\n<li>braki zębowe w odcinkach bocznych</li>\r\n<li>wady zgryzu powodujące nadmierne obciążenie licówek</li>\r\n<li>zęby po leczeniu kanałowym</li>\r\n</ul>\r\n<h2>Licówki w Łodzi - rodzaje licówek - Biniek Clinic Łódź</h2>\r\n<p>Licówki kompozytowe skutecznie maskują niedoskonałości uzębienia , nie są jednak tak trwałe i estetyczne jak licówki porcelanowe. Dzięki wykorzystaniu kilku materiałów licówka bardzo dobrze trzyma się powierzchni zęba oraz jest wytrzymała i odporna na uszkodzenia mechaniczne zachodzące w całym okresie używania. Warto również podkreślić, że licówki kompozytowe charakteryzują się jednolitym kolorem przez to wyglądają nieco sztucznie. Z czasem mogą ulegać przebarwieniom. Na ten rodzaj uzupełnień najczęściej decydują się pacjenci z niższymi zasobami finansowymi.</p>\r\n<p>Do najpopularniejszych licówek zalicza się licówki porcelanowe. Charakteryzuje je duża odporność na uszkodzenia mechaniczne, przebarwienia oraz duża estetyka wyglądu. Licówki porcelanowe tak jak pozostałe mają ok 0,5 mm grubości, a wytwarza się je z wcześniej przygotowanej masy porcelanowej, wzbogaconej o różne dodatki. Licówki porcelanowe charakteryzują się o wiele większą trwałością w codziennym użytkowaniu niż ma to miejsce w przypadku licówek kompozytowych. Kolejną zaletą licówek jest ich odporność na przebarwienia przez cały okres noszenia, który może wynosić nawet kilkanaście lat.</p>\r\n<p>Licówki ceramiczne to obecnie najlepsze i najdroższe uzupełnienia. Charakteryzują się bardzo dużą wytrzymałością i wyglądem do złudzenia przypominającym naturalny ząb. Jednym z najpopularniejszych systemów materiałów ceramicznych na rynku jest IPS e-max. Producent wykorzystał w nim materiały dwukrzemowo-litowe, które charakteryzują się znacznie wyższą wytrzymałością mechaniczną, trwałością i odpornością na uszkodzenia. Pozwala to na stosowanie bardzo cienkich warstw, przy zachowaniu wszystkich właściwości. Jednocześnie ceramika przepuszcza światło w podobny sposób, do naturalnych zębów, dzięki czemu w doskonały sposób odwzorowuje ich kolor.</p>\r\n<h2>Zakładanie licówek w gabinecie Biniek Clinic Łódź</h2>\r\n<p>Na pierwszej wizycie, dentysta przygotowuje zęby pod licówki, czyli szlifuje je w odpowiedni sposów w obrębie szkliwa lub w niektórych przypadkach tylko wygładza (licówki non-prep) Następnie pobierane są wyciski, z których technik odlewa modele diagnostyczne oraz tworzy wax-up.</p>\r\n<p>Wax-up to woskowa symulacja uzupełnienia protetycznego. Na gipsowy model zębów nakładany jest specjalny wosk,w takim kształcie, w jakim pacjent chciałby mieć przyszłe licówki. Na kolejnej wizycie lekarz powiela ten kształt z odpowiedniego materiału i wykonuje Mock-up czyli tymczasową nakładkę na zęby pacjenta. Dzięki tej metodzie, można zwizualizować można zobaczyć wygląd przyszłego uzupełnienia protetycznego w ustach pacjenta i przekonać się, czy taki wygląd, kształt jest przez niego w pełni akceptowany. Jeśli nie ma żadnych zastrzeżeń, technik na kolejną wizytę wykonuje ostateczne uzupełnienia. Na trzecim spotkaniu licówki są cementowane w jamie ustnej pacjenta.</p>\r\n<h2>Cena licówek w Biniek Clinic Łódź</h2>\r\n<p>Cena licówek uzależniona jest od materiału z którego są one wykonywane, a ich rodzaj dobierany jest indywidualnie dla każdego pacjenta po przeprowadzeniu dokładnego wywiadu i badania stomatologicznego.</p>', '', '', '<p>Licówki to najmniej ingerujące w tkanki zęba uzupełnienie protetyczne. Cienkie płatki porcelany przyklejane są do przedniej powierzchni zębów...</p>', '', '', 'licowki-lodz.webp', '', 1, 1, 0, 'protetyka/licowki-wskazania-i-przeciwwskazania', '', '', 'licówki Łódź, rodzaje licówek, licówki ceramiczne, licówki porcelanowe, licówki kompozytowe, licówki wskazania, licówki przeciwwskazania', 'Licówki Łódź - wskazania i przeciwwskazania - Biniek Clinic Łódź', '', '', 'Licówki, jakie są wskazania i przeciwwskazania to wykonania licówek. Jakie licówki wykonać porcelanowe, ceramiczne czy kompozytowe? Na jaki rodzaj licówek się zdecydować...', '', '', '', 15, 2, 0),
(17, 5, 1, 'Leczenie kanałowe pod mikroskopem', '', '', '<h2>Leczenie kanałowe pod mikroskopem Łódź - Biniek Clinic Łódź</h2>\r\n<p>Leczenie kanałowe (endodontyczne) to metoda leczenia zęba w przypadku wystąpienia nieodwracalnego zapalenia miazgi lub jej martwicy oraz chorób tkanek okołowierzchołkowych. Polega na usunięciu miazgi z komory oraz kanałów korzeniowych, ich dezynfekcji specjalnymi środkami płuczącymi oraz wypełnieniu powstałych pustych przestrzeni specjalnym materiałem.</p>\r\n<p>Do konieczności przeleczenia zęba kanałowo dochodzi, gdy w miazdze (żywej tkance wypełniającej wnętrze zęba) pod wpływem ciągłego działania czynników drażniących powstanie stan zapalny, który stopniowo doprowadza do jej obumarcia. Czynnikami sprawczymi są najczęściej głębokie ubytki próchnicowe. Do obumarcia miazgi może dojść również w innych okolicznościach np. przy odłamaniu korony zęba, zwichnięciu zęba, przy znacznym starciu zębów u pacjentów z bruksizmem lub przy obecności zapalenia przyzębia.</p>\r\n<p>Zdarza się to również gdy dochodzi do nadmiernego obciążenia zęba siłami nieprawidłowego zgryzu, zaburzeń zwarcia lub w przypadku licznych braków zębowych. Leczenie endodontyczne jest również często koniecznością przed planowanym leczeniem protetycznym.</p>\r\n<p><strong>Ząb zakwalifikowany do leczenia kanałowego nie zawsze daje dolegliwości bólowe.</strong> Czasem są one minimalne lub nie pojawiają się wcale, a jedynym objawem może być zmiana barwy zęba na sino-szary.</p>\r\n<p>Najczęściej jednak zapalenie miazgi objawia się silnym bólem samoistnym często wybudzającymi ze snu, stałym ale o różnym natężeniu. Kiedy stan zapalny obejmie również tkanki okołowierzchołkowe zęba, pojawiają się dolegliwości bólowe na nagryzanie oraz charakterystyczne uczucie wysadzania zęba z zębodołu („ząb za wysoki”)</p>\r\n<h2>Jak przebiega leczenie kanałowe w Biniek Clinic w  Łodzi?</h2>\r\n<p>Po przeprowadzeniu wywiadu stomatologicznego, ocenie radiologicznej zęba i podaniu znieczulenia, leczony ząb izoluje się od środowiska jamy ustnej za pomocą koferdamu. Następnie lekarz usuwa próchnicę i wykonuje odpowiednie wejście w kanały zęba. W kolejnym etapie, usuwa martwą miazgę oraz oczyszcza i poszerza kanały korzeniowe w celu wyeliminowania z nich bakterii.Za pomocą specjalnego urządzenia, endometru, określa się długość kanałów. Opracowywane kanały są obficie płukane środkami dezynfekującymi, przeciwbakteryjnymi. Tak przygotowane kanały korzeniowe wypełnia się biozgodnym materiałem, gutaperką. Prawidłowość przeprowadzonego lekarz ocenia na podstawie kontrolnego zdjęcia RTG</p>\r\n<h2>Jednowizytowe leczenie kanałowe w Łodzi? - Możliwe, ale nie zawsze</h2>\r\n<p>Obecna technologia używana podczas leczenia kanałowego jest na tyle zaawansowana, że całe leczenie można przeprowadzić podczas jednej wizyty. Jeśli natomiast wystąpiło ostre zapalenie, lepsze wydaje się być leczenie kilkuwizytowe, w celu wyciszenia stanu zapalnego antybiotykiem wprowadzanym do kanału, natomiast  przy zmianach okołowierzchołkowych w kości ,należy poczekać do ich wygojenia kontrolując ich wielkość przy pomocy RTG. Długość leczenia zależy również od ilości kanałów w zębie oraz ich anatomii. Urządzenia do maszynowego opracowania kanałów, mikroskop oraz technika wypełniania kanałów na ciepło gutaperką, pozwalają znacznie zminimalizować czas pracy.</p>\r\n<h2>Czy leczenie kanałowe boli?</h2>\r\n<p>Przed rozpoczęciem każdego leczenia, lekarz wykonuje znieczulenie ,które eliminuje dolegliwości bólowe. Czasem,     w przypadku martwej miazgi, nie ma konieczności podawania  znieczulenia, ponieważ ząb nie posiada już unerwienia, które przewodzi impulsy bólowe.</p>\r\n<h2>Mikroskop - idealne rozwiązanie w problematycznych przypadkach leczenia kanałowego w Łodzi</h2>\r\n<p>Leczenie kanałowe pod mikroskopem to nowoczesna, dynamicznie rozwijająca się  i bardzo precyzyjna metoda leczenia. Wskazaniem do niego może być nietypowa anatomia zęba, ewentualne zwężenia lub perforacje. <strong>Wykorzystanie mikroskopu pozwala na niezwykle dokładne opracowanie kanałów zębowych dzięki wielokrotnemu powiększeniu oraz równomiernym i jednolitym oświetleniu pola zabiegowego.</strong> Dzięki temu lekarz ma pełny wgląd do wnętrza komory zęba  i  kanałów korzeniowych, może ocenić ich kształt i ewentualne uszkodzenia, których ze względu na małe rozmiary nie widać gołym okiem. Wszystko to przekłada się na wysoką skuteczność mikroskopowego leczenia kanałowego, w trudnych przypadkach pozwalając uniknąć ekstrakcji chorego zęba. Ten rodzaj leczenia wybitnie podnosi jakość wykonywanej pracy i zdecydowanie ułatwia postępowanie reendo.(ponowne leczenie kanałowe )</p>\r\n<h2>Wskazania do leczenia kanałowego pod mikroskopem w Łodzi</h2>\r\n<ul>\r\n<li>usuwanie złamanych narzędzi</li>\r\n<li>resorpcje korzeni zębów</li>\r\n<li>zęby po urazach</li>\r\n<li>usuwanie wkładów koronowo-korzeniowych</li>\r\n<li>udrażnianie wąskich, trudnych do zlokalizowania, zobliterowanych i zakrzywionych kanałów,</li>\r\n<li>leczenie kanałowe zębów z niezakończonym rozwojem korzeni</li>\r\n<li>zamykania perforacji dna komory i kanałów korzeniowych</li>\r\n<li>diagnostyki złamań korzenia i pęknięć dna komory zębów wielokorzeniowych.</li>\r\n</ul>\r\n<p>Zapraszamy do nas na konsultację w sprawie leczenia kanałowego.</p>', '', '', '<p>Leczenie kanałowe (endodontyczne) to metoda leczenia zęba w przypadku wystąpienia nieodwracalnego zapalenia miazgi lub jej martwicy oraz chorób...</p>', '', '', 'leczenie-kanalowe-pod-mikroskopem.webp', '', 1, 1, 0, 'endodoncja-mikroskopowa/leczenie-kanalowe-po-mikroskopem', '', '', 'leczenie endodontyczne pod mikroskopem Łódź, leczenie endodontyczne pod mikroskopem, leczenie endodontyczne pod mikroskopem Łódź, leczenie kanałowe pod mikroskopem, leczenie kanałowe pod mikroskopem Łódź, leczenie kanałowe, leczenie endodontyczne', 'Leczenie kanałowe pod mikroskopem - Jak wygląda leczenie endodontyczne - Biniek Clinic Łódź', '', '', 'Jak wygląda leczenie endodontyczne pod mikroskopem i jakie są jego zalety? Precyzyjne leczenie kanałowe z udziałem mikroskopu jest zaawansowaną techniką stomatologiczną, dzięki której...', '', '', '', 0, 0, 0),
(18, 8, 1, 'Piezochirurgia', '', '', '<h2>Piezochirurgia w Biniek Clinic Łódź</h2>\r\n<p><strong>Piezochirurgia</strong> to zagadnienie nie tylko dla specjalistów. Warto się z nim zapoznać, jeśli wkrótce czeka Cię usunięcie zęba lub myślisz o implantach!</p>\r\n<p>Urządzenie do piezochirurgii wykorzystuje ultradźwięki o niskiej częstotliwości, które prowadzą do bezpiecznego i precyzyjnego cięcia kości bez uszkodzenia struktur otaczających, takich jak nerwy, błona śluzowa i naczynia. Widoczność pola zabiegowego jest doskonała, dzięki wytworzeniu praktycznie bezkrwawego pola operacyjnego. Jednocześnie usuwane są zanieczyszczenia z rany, poprzez wewnętrzny mechanizm irygacyjny. Tkanki miękkie pozostają bezpieczne, a czynniki biologiczne, jak uwalniane podczas zabiegu cytokiny, sprzyjają gojeniu kości i przyspieszają powrót pacjentów do zdrowia.</p>\r\n<p>Technologia ta gwarantuje komfort podczas wykonywania zabiegu, zminimalizowanie krwawienia oraz obrzęków i  bólu po zakończeniu leczenia.</p>\r\n<h2>Cechy urządzenia do piezochirurgii</h2>\r\n<ul>\r\n<li>Cięcie mikrometryczne: precyzyjne cięcie kości, któremu towarzyszy wysoka wrażliwość dotykowa</li>\r\n<li>Cięcie selektywne: cięcie kości bez ryzyka uszkodzenia sąsiadujących tkanek miękkich</li>\r\n<li>Aseptyka: sterylna woda podczas zabiegu</li>\r\n<li>Efekt kawitacji: maksymalna widoczność śródoperacyjnej i wysoka przewidywalność</li>\r\n<li>Atraumatyczność: doskonałe gojenie tkanek</li>\r\n</ul>\r\n<h2>Zastosowania piezochirurgii</h2>\r\n<ul>\r\n<li><strong>w implantologii </strong>(poszerzanie wyrostka szczęki lub żuchwy, pozyskiwanie kości autogennej, przygotowywanie łoża dla implantu, plastyka kości wokół implantu)</li>\r\n<li><strong>w ortodoncji </strong>(możliwość skrócenia okresu noszenia aparatu poprzez bezbolesne nacięcie kości szczęki, co stymuluje przemianę kości i szybsze przesuwanie zębów)</li>\r\n<li><strong>w leczeniu endodontycznym</strong> (kanałowym)</li>\r\n<li><strong>w zabiegach periodontologicznych</strong></li>\r\n<li><strong>podczas ekstrakcji zęba</strong> (usunięcie zatrzymanych zębów, o skomplikowanej anatomii, korzeni, a w rezultacie mniejszy obrzęk, szybsza regeneracja dziąseł, zmniejszone ryzyko rozwoju stanu zapalnego)</li>\r\n<li><strong>w osteoplastyce</strong> (podnoszenie dna zatoki szczękowej przed wszczepieniem implantu - w przypadku zaniku wyrostka zębodołowego; rozszczepianie wyrostka zębodołowego, jeśli jest niedostatecznej szerokości; pobieranie bloków kostnych)</li>\r\n<li><strong>w osteotomii</strong>.</li>\r\n</ul>\r\n<h2>Zalety piezochirurgii</h2>\r\n<p>Piezochirurgia umożliwia ograniczenie pola zabiegowego do minimum, z nienaruszaniem zdrowych tkanek. Ponadto działanie drgań, minimalizuje krwawienie i stymuluje regenerację, dzięki czemu Pacjent po zabiegu szybciej jest w stanie powrócić do normalnego funkcjonowania. Obrzęk i ból po zabiegu są znacznie ograniczone. Technologia piezochirurgii pozwala stomatologowi pracować na wybranych strukturach anatomicznych. Zabieg staje się przez to mniej inwazyjny, a precyzja, jaką zapewnia ta technika, <strong>zwiększa skuteczność</strong> leczenia.</p>\r\n<p>Piezochirurgia nie tylko selektywnie przecina tkankę twardą, ale także wywołuje efekt hemostatyczny na otaczającą tkankę. Ponieważ chronione są otaczające tkanki miękkie, można ją stosować w obszarach, w których kość znajduje się w pobliżu ważnych i delikatnych struktur, takich jak nerwy, naczynia krwionośne lub błona śluzowa zatoki.</p>\r\n<p><strong>W Biniek Clinic Łódź zabiegi wykonywane przy użyciu piezochirurgii są delikatniejsze i bezpieczniejsze dla Pacjenta.</strong> Wykorzystanie tej technologii poza podniesieniem jakości leczenia, zapewnia Pacjentowi dużo większy komfort niż w przypadku tradycyjnych metod leczenia chirurgicznego. Dzięki temu nawet bardzo skomplikowane zabiegi chirurgiczne w naszej klinice stają się praktycznie bezbolesne.</p>', '', '', '<p><span style=\"font-weight: bolder;\">Piezochirurgia</span> to zagadnienie nie tylko dla specjalistów. Warto się z nim zapoznać, jeśli wkrótce czeka Cię usunięcie zęba lub myślisz o implantach!</p>', '', '', 'piezochirurgia-lodz.webp', '', 2, 1, 0, 'usuwanie-zebow/piezochirurgia', '', '', 'piezochirurgia co to, piezochirurgia Łódź, piezochirurgia zabieg, piezochirurgia lekarz, piezochirurgia dentysta, piezochirurgia zastosowanie, piezochirurgia zalety, zalety piezochirurgii', 'Co to jest piezochirurgia, gdzie się ją stosuje? - Klinika dentystyczna Biniek Clinic Łódź', '', '', 'Piezochirurgia to zagadnienie, z którym warto się zapoznać, jeśli wkrótce czeka Cię usunięcie zęba lub myślisz o implantach! Piezochirurgia to bezpieczne i precyzyjne cięcie kości...', '', '', '', 0, 0, 0);
INSERT INTO `artykuly` (`id`, `parent`, `g`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `tekst_krotki`, `tekst_krotkien`, `tekst_krotkide`, `img`, `data`, `nr`, `widocznosc`, `widoczny_glowna`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `keywords`, `title`, `titleen`, `titlede`, `description`, `descriptionen`, `descriptionde`, `szablon`, `artykuly_id`, `albumy_id`, `banery_id`) VALUES
(19, 15, 1, 'Czym jest korona protetyczna?', '', '', '<h2>Czym jest korona protetyczna?</h2>\r\n<p><strong>Korona protetyczna</strong> to stałe uzupełnienie protetyczne, pozwalające na odbudowę zębów, które uległy znacznemu zniszczeniu np. w wyniku zaawansowanej próchnicy lub złamania. Wykonuje się je w sytuacjach, gdy korony zęba nie można już zrekonstruować materiałem kompozytowym. Korona stanowi pewnego rodzaju \"nakładkę\", którą cementuje się do uprzednio przygotowanej w odpowiedni sposób powierzchni zęba.</p>\r\n<p>Korona protetyczna wykonywana jest z bardzo wytrzymałych materiałów, przez co zapewnia wytrzymałość mechaniczną zęba podczas rozdrabiania pokarmów, odtwarza naturalny kształt, funkcję i kolor zęba oraz estetykę uśmiechu.</p>\r\n<p>W przypadku mocno zniszczonych zębów, które nie będą mogły utrzymać korony, w korzeniu zęba po uprzednim leczeniu kanałowym umieszcza się wkład koronowo-korzeniowy (zwykle metalowy lub z włókna szklanego).</p>\r\n<h2>Rodzaje koron protetycznych, którą wybrać?</h2>\r\n<p><strong>Korona porcelanowa na metalu</strong>, jak sama nazwa wskazuje, składa się z podbudowy metalowej, na którą następnie napalana jest porcelana. Najczęściej stosowanymi materiałami do podbudowy są stopy metali nieszlachetnych (np. chrom, kobalt). Korony porcelanowe na metalu są bardzo trwałym i sprawdzonym typem koron. Dlatego idealnie sprawdzają się w odcinkach bocznych łuku zębowego. Wskazane są do wykonania prac łączonych (zatrzaski), kiedy osadzane i projektowane są wraz z protezami szkieletowymi.</p>\r\n<p>Z punktu widzenia estetyki uzupełnienia te nie zawsze spełniają oczekiwania pacjentów i lekarzy. Metal podbudowy jest nieprzezierny, nie posiada naturalnego przenikania światła przez swoją strukturę, co może powodować nieco sztuczny i matowy wygląd odbudowy. Ponadto mniejsza grubość napalanej porcelany w okolicy przyszyjkowej zęba, może z czasem powodować przeświecanie metalu przez brzeg dziąsła, powodując jego nieestetyczne, szarawe zabarwienie. Ponadto u niektórych pacjentów, metal może powodować reakcje alergiczne, objawiające się zaczerwienieniem dziąsła otaczającego koronę.</p>\r\n<h2>Korona porcelanowa na podbudowie cyrkonowej</h2>\r\n<p>W tym przypadku <strong>korony porcelanowej na podbudowie cyrkonowej</strong> czapeczka pokrywająca ząb jest wykonana z tlenku cyrkonu, na który napalana jest warstwowo porcelana. Przezierność korony porcelanowej na cyrkonie jest zbliżona do tej, jaką mają naturalne zęby. Jednocześnie cyrkon jest materiałem ceramicznym, który ma wytrzymałość metalu, a w przeciwieństwie do niego w znacznie mniejszym stopniu przyciąga osad nazębny. Zwiększa to higienę w jamie ustnej oraz minimalizuje ryzyko zapaleń przyzębia. Dlatego też nawet biorąc pod uwagę, że z wiekiem dochodzi do wędrówki dziąsła i obnażenia korzenia, <strong>korona porcelanowa na cyrkonie</strong> zachowuje cały czas swoją wysoką estetykę. Tlenek cyrkonu dodatkowo nie wywołuje żadnych niekorzystnych efektów ani odczynów alergicznych, a ponadto nie podrażnia także tkanek.</p>\r\n<p>Ze względu na to, że cyrkon jest ceramiką najwyższej klasy, charakteryzuje go niezwykła jakość i wytrzymałość. Gwarantuje on wysoki stopień szczelności korony oraz przyleganie do zęba, ponadto tlenek cyrkonu jest materiałem biozgodnym (od ponad 30 lat jest również wykorzystywany do wykonywania endoprotez stawów biodrowych), który nie wywołuje uczuleń u pacjentów.</p>\r\n<p>Cyrkon w porównaniu do standardowych koron wykonywanych z metalu i porcelany zapewnia najbardziej naturalny wygląd. Jako jedyny materiał posiada biały kolor, dzięki temu światło załamuje się na powierzchni zęba, tak samo jak w przypadku zęba naturalnego. Umożliwia to bardziej precyzyjne i efektywne dobranie koloru korony tak, aby doskonale komponowała się z resztą uzębienia. Korony cyrkonowe charakteryzują się ponadto małą przyczepnością płytki bakteryjnej, co minimalizuje w znacznym stopniu ryzyko pojawienia się próchnicy pod koroną. Dodatkowo materiał ten jest też dobrym izolatorem ciepła i zimna. Z tlenku cyrkonu można wykonać korony zarówno w odcinkach przednich, jak i w wymagających odcinkach bocznych uzębienia. Podsumowując, korony cyrkonowe, łączą jakość z doskonałym efektem estetycznym.</p>\r\n<h2>Czy korony zębowe metalowo-porcelanowe i cyrkonowo-porcelanowe ciemnieją?</h2>\r\n<p>Porcelana stomatologiczna wykorzystywana do tworzenia koron jest niezwykle odpornym materiałem i do tego mało nasiąkliwym. Sprawia to, że korona protetyczna jest znacznie bardziej odporna na działanie czynników chemicznych niż naturalne tkanki zęba. Ma także znacznie mniejszą zdolność do gromadzenia na swojej powierzchni osadów z pożywienia i napojów niż szkliwo zęba. Dlatego też nie obserwuje się przebarwień ani koron, ani licówek porcelanowych.</p>\r\n<h2>Czy korony na zębach można wybielić?</h2>\r\n<p>Niestety nie. Pacjentom marzącym o hollywoodzkim, białym uśmiechu proponujemy po okresie 2 tygodni od zakończenia wybielania, kiedy ustabilizuje się kolor zębów, wizytę kontrolną. Podczas wizyty stomatolog dokona oceny istniejących koron. Jeśli różnice w kolorze zębów i uzupełnień będą znaczące, zaplanuje ich wymianę.</p>\r\n<h2>Jak długo trwa przygotowanie zęba pod koronę i jej cementowanie?</h2>\r\n<p>Opracowanie zęba pod koronę i jej zacementowanie jest procesem zwykle dwuetapowym. Na pierwszej wizycie, szlifowany jest ząb, pobierany wycisk oraz dobierany kolor przyszłej korony. Opracowany ząb zabezpieczany jest koroną tymczasową. Ma ona za zadanie ochronić ząb przed nadwrażliwością (w przypadku zębów żywych) na zmiany temperatury. Ochrania też tkanki przyzębia i dziąsła brzeżnego przed stanem zapalnym oraz bakteriami występującymi w jamie ustnej. Przy przebudowie większej ilości zębów zastosowanie koron tymczasowych stanowi cenną wskazówkę co do ostatecznego wyglądu korony.</p>\r\n<h2>Czy szlifowanie zębów pod koronę boli?</h2>\r\n<p>Zabieg <strong>szlifowania zębów pod koronę</strong> wykonywany jest w znieczuleniu miejscowym, nie towarzyszą mu dolegliwości bólowe. Jeśli dotyczy zęba po leczeniu kanałowym, nawet znieczulenie nie jest konieczne.</p>\r\n<h2>Czy po założeniu ostatecznej korony będzie odczuwany dyskomfort?</h2>\r\n<p>Z racji, iż kształt i powierzchnia koron różni się nieznacznie od naturalnego zęba, przez pewien czas różnica może być odczuwalna. Znika ona jednak po pewnym czasie, który jest indywidualny dla każdego pacjenta.</p>', '', '', '<p><span style=\"font-weight: bolder;\">Korona protetyczna</span> to stałe uzupełnienie protetyczne, pozwalające na odbudowę zębów, które uległy znacznemu zniszczeniu...</p>', '', '', 'korona-protetyczna.webp', '', 2, 1, 0, 'protetyka/czym-jest-korona-protetyczna', '', '', 'co to korona protetyczna, korona protetyczna co to, korony protetyczne Łódź, korony protetyczne rodzaje, korony protetyczne przeciwskazania, kiedy korony protetyczne', 'Czym jest korona protetyczna? - Biniek Clinic Łódź', '', '', 'Korona protetyczna ceramiczna, porcelanowa, na podbudowie cyrkonowej, czy metalowej. Jakie są rodzaje koron protetycznych? Którą koronę zębową wybrać?', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banery`
--

CREATE TABLE `banery` (
  `id` bigint(20) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` text NOT NULL,
  `nazwade` text NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opisen` text NOT NULL,
  `opisde` text NOT NULL,
  `nr` int(11) NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `g` int(11) NOT NULL,
  `wys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `banery`
--

INSERT INTO `banery` (`id`, `nazwa`, `nazwaen`, `nazwade`, `opis`, `opisen`, `opisde`, `nr`, `widocznosc`, `parent`, `g`, `wys`) VALUES
(1, 'Strona główna', '', '', '', '', '', 1, 1, -1, 0, 300),
(3, 'Grupa sekcyjna zdjęcia odzieży i dodatków', '', '', '', '', '', 3, 0, -1, 0, 0),
(5, 'Fotografia produktowa', '', '', '', '', '', 5, 0, -1, 0, 0),
(6, 'Grupa sekcyjna zdjęcia aranżowane', '', '', '', '', '', 6, 0, -1, 0, 0),
(7, 'Nasz zespół', '', '', '', '', '', 7, 1, -1, 0, 0),
(8, 'Blog', '', '', '', '', '', 8, 1, -1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banery_img`
--

CREATE TABLE `banery_img` (
  `id` bigint(20) NOT NULL,
  `id_banery` bigint(20) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` text NOT NULL,
  `nazwade` text NOT NULL,
  `img` text NOT NULL,
  `nr` int(11) NOT NULL,
  `link` text NOT NULL,
  `widocznosc` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `banery_img`
--

INSERT INTO `banery_img` (`id`, `id_banery`, `nazwa`, `nazwaen`, `nazwade`, `img`, `nr`, `link`, `widocznosc`) VALUES
(163, 8, '', '', '', '636-Download-Wallpaper-1920x1080-tooth-man-health-dental-.jpg', 0, '', 0),
(175, 1, '<h1>Sprzedaż części hydraulicznych</h1>\r\n<h2>Witamy na stronie internetowej firmy #NAZWA_FIRMY#</h2>\r\n<p>Duże doświadczenie i znajomość potrzeb Klientów pozwalają nam na sprzedaż wysokiej jakości wyrobów i tym samym wyjście naprzeciw potrzebom Klientów</p>', '', '', '318-1536826.jpg', 5, '', 1),
(176, 1, '<h1>Sprzedaż części hydraulicznych</h1>\r\n<h2>Witamy na stronie internetowej firmy #NAZWA_FIRMY#</h2>\r\n<p>Duże doświadczenie i znajomość potrzeb Klientów pozwalają nam na sprzedaż wysokiej jakości wyrobów i tym samym wyjście naprzeciw potrzebom Klientów</p>', '', '', '658-prawo-pracy-gmf.webp', 6, '', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cechy`
--

CREATE TABLE `cechy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cechy_warianty`
--

CREATE TABLE `cechy_warianty` (
  `id` int(11) NOT NULL,
  `id_cechy` int(11) NOT NULL,
  `id_wariantu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dodatkowe`
--

CREATE TABLE `dodatkowe` (
  `id` bigint(20) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text NOT NULL,
  `tekstde` text NOT NULL,
  `style` tinytext NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `nr` int(11) NOT NULL,
  `g` tinyint(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `baner` tinytext NOT NULL,
  `baneren` tinytext NOT NULL,
  `plik` tinytext NOT NULL,
  `img` tinytext NOT NULL,
  `imgen` tinytext NOT NULL,
  `link` tinytext NOT NULL,
  `linken` tinytext NOT NULL,
  `linkde` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `dodatkowe`
--

INSERT INTO `dodatkowe` (`id`, `parent`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `style`, `widocznosc`, `nr`, `g`, `title`, `description`, `keywords`, `baner`, `baneren`, `plik`, `img`, `imgen`, `link`, `linken`, `linkde`) VALUES
(4, -1, 'Kontakt', '', '', '<div class=\"element-block\"><a href=\"mailto:#ADRES_EMAIL_FIRMY#\">#ADRES_EMAIL_FIRMY#</a></div>\r\n<div class=\"element-block\"><a href=\"tel:+#TELEFON_FIRMY#\">tel: #TELEFON_FIRMY#</a></div>', '', '', '', 1, 19, 0, '', '', '', '', '', '', 'hotel.png', '', '', '', ''),
(43, -1, 'Ciasteczka', '', '', '<p>Nasza strona korzysta z plików cookies w celach zbierania statystyk odwiedzin.</p>', '', '', '', 1, 22, 0, '', '', '', '', '', '', '', '', '', '', ''),
(75, -1, 'Zapraszamy', '', '', '<p>Poniedziałek – Piątek 8-18</p>', '', '', '', 0, 21, 0, '', '', '', '', '', '', '', '', '', '', ''),
(96, -1, 'Mapka', '', '', '<p><span>#LOKALIZACJA_GOOGLE_FIRMY#</span></p>', '', '', '', 0, 15, 0, '', '', '', '', '', '', '', '', '', '', ''),
(101, -1, 'Logotypy', '', '', '<h2 style=\"text-align: center;\">Logotypy</h2>', '', '', '', 1, 28, 0, '', '', '', '', '', '', '', '', '', '', ''),
(102, 101, '1', '', '', '<p style=\"text-align: center;\">Partner nazwa</p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', '1.jpg', '', 'https://www.akademickielo.com.pl/', '', ''),
(103, 101, '2', '', '', '<p style=\"text-align: center;\">Partner nazwa</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '2.jpg', '', 'http://technikumlodz.pl/', '', ''),
(104, 101, '3', '', '', '<p style=\"text-align: center;\">Partner nazwa</p>', '', '', '', 1, 3, 1, '', '', '', '', '', '', '3.jpg', '', 'https://www.szkolamedyczna.edu.pl/pl/', '', ''),
(105, 101, '4', '', '', '<p style=\"text-align: center;\">Partner nazwa</p>', '', '', '', 1, 4, 1, '', '', '', '', '', '', '4.jpg', '', 'https://www.szkolakosmetyczna.com.pl/', '', ''),
(106, 101, '5', '', '', '<p style=\"text-align: center;\">Partner nazwa</p>', '', '', '', 1, 5, 1, '', '', '', '', '', '', '5.jpg', '', '', '', ''),
(132, -1, 'Szybki kontakt', '', '', '', '', '', '', 1, 24, 0, '', '', '', '', '', '', '', '', '', '', ''),
(133, 132, 'Dane kontaktowe', '', '', '<p><a href=\"tel:+#TELEFON_FIRMY1#\">#TELEFON_FIRMY1#</a></p>\r\n<p><a href=\"mailto:#ADRES_EMAIL_FIRMY#\">#ADRES_EMAIL_FIRMY#</a></p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(134, 132, 'Godziny pracy', '', '', '<table>\r\n<tbody>\r\n<tr>\r\n<td>poniedziałek - piątek</td>\r\n<td>8:00 - 18:00</td>\r\n</tr>\r\n<tr>\r\n<td>sobota</td>\r\n<td>10:00 - 14:00</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p></p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '', '', '', '', ''),
(135, 132, 'Adres', '', '', '<p>Zapraszamy do salonu</p>\r\n<p>ul. #ULICA_FIRMY#</p>\r\n<p>#KOD_POCZTOWY_FIRMY# #MIASTO_FIRMY#</p>', '', '', '', 1, 3, 1, '', '', '', '', '', '', '', '', '', '', ''),
(136, -1, 'Usługi', '', '', '', '', '', '', 1, 23, 0, '', '', '', '', '', '', '', '', '', '', ''),
(137, 136, 'Wskazówki', '', '', '<p>Systemy przetwarzania i wymiany informacji między klasycznymi systemami automatyki a wyższymi systemami zarządzania. Systemy edge computing i cloud computing.</p>', '', '', '', 1, 5, 1, '', '', '', '', '', '', 'screen_icon.png', '', '', '', ''),
(138, 136, 'Częsci', '', '', '<p>Układy z wykorzystaniem skanerów oraz kamer inteligentnych 2D i 3D Cognex. Weryfikacja poprawności kodów. Analiza obrazu przez oprogramowanie Adaptive Vision. Analiza obrazu oparta na modułach sztucznej inteligencji.</p>', '', '', '', 1, 6, 1, '', '', '', '', '', '', 'socket_icon.png', '', '', '', ''),
(156, -1, 'Polityka prywatności', '', '', '<p><a href=\"#\">Regulamin</a></p>', '', '', '', 1, 32, 0, '', '', '', '', '', '', '', '', '', '', ''),
(166, 136, 'Zegary reklamowe stojące i budziki', '', '', '<p>Automatyzacja procesów i linii technologicznych z wykorzystaniem sprzętu i oprogramowania firm m. in. Siemens, Beckhoff, Turck. Systemy HMI/SCADA w oparciu o istniejący lub nowy system sterowania. Nowoczesne wizualizacje SIMATIC WinCC Unified.</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', 'drill_icon.png', '', '', '', ''),
(167, 136, 'Zegary reklamowe ścienne', '', '', '<p>Półautomatyczne i automatyczne stanowiska montażowe. Kompleksowe konstrukcje maszyn na specjalne zamówienie. Integracja urządzeń specjalnych z liniami technologicznymi.</p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', 'machine_icon.png', '', 'testowa', '', ''),
(168, 136, 'Mechanizmy do zegarów', '', '', '<p>Kompleksowa wymiana systemów sterowania łącznie z odtworzeniem oprogramowania w oparciu o wiedzę klienta. Zagadnienia związane z bezpieczeństwem maszyn: audyty bezpieczeństwa, wymagania minimalne, czynności korygujące.</p>', '', '', '', 1, 3, 1, '', '', '', '', '', '', 'connect_icon.png', '', '', '', ''),
(169, 136, 'Akcesoria do mechanizmów zegarowych', '', '', '<p>Współpraca z producentami robotów przemysłowych KUKA, ABB, Mitsubishi, FANUC. Integracja robotów współpracujących Universal Robots (kobotów) z procesami. Robotyzacja transportu i logistyki, roboty pakujące i paletyzujące, kompletne zrobotyzowane stanowiska specjalistyczne.</p>', '', '', '', 1, 4, 1, '', '', '', '', '', '', 'machin_icon.png', '', '', '', ''),
(170, -1, 'Stopka lokalizacja', '', '', '<p>#NAZWA_FIRMY#</p>\r\n<p>ul. #ULICA_FIRMY#</p>\r\n<p>#KOD_POCZTOWY_FIRMY# #MIASTO_FIRMY#</p>\r\n<p><a href=\"#TRASA_GOOGLE_FIRMY#\" target=\"_blank\" rel=\"noopener noreferrer\">Wyznacz trasę dojazdu</a></p>', '', '', '', 1, 33, 0, '', '', '', '', '', '', '', '', '', '', ''),
(171, -1, 'Stopka kontakt', '', '', '<p><a href=\"mailto:#ADRES_EMAIL_FIRMY#\">#ADRES_EMAIL_FIRMY#</a></p>\r\n<p><a href=\"mailto:#ADRES_EMAIL_FIRMY2#\">#ADRES_EMAIL_FIRMY2#</a><a href=\"mailto:serwis@bkm-control.pl\"><br /><br /></a></p>\r\n<p>Telefon: <a href=\"tel:#TELEFON_FIRMY1#\">#TELEFON_FIRMY1#</a></p>\r\n<p>Fax: <a href=\"tel:#TELEFON_FIRMY2#\">#TELEFON_FIRMY2#</a></p>', '', '', '', 1, 34, 0, '', '', '', '', '', '', '', '', '', '', ''),
(177, -1, 'Popup', '', '', '<p>Halloween popup</p>', '', '', '', 0, 36, 0, '', '', '', '', '', '', 'halloween-1743227_1920_full_width.jpg', '', '', '', ''),
(178, 177, 'Boże narodzenie', '', '', '<p>Życzenia z okazji świąt Bożego Narodzenia</p>', '', '', '', 0, 1, 1, '', '', '', '', '', '', 'i-abud-napis-drewniany-xmas-z-czapka-25x8cm.jpg', '', '', '', ''),
(179, 177, 'Wielkanoc', '', '', '<p>Życzenia z okazji Wielkanocy</p>', '', '', '', 0, 2, 1, '', '', '', '', '', '', 'wielkanoc1.jpg', '', '#', '', ''),
(180, -1, 'Komunikaty formularze', '', '', '', '', '', '', 1, 37, 0, '', '', '', '', '', '', '', '', '', '', ''),
(181, 180, 'Zgoda rodo w formularzu', '', '', '<p>* Admistratorem danych przesłanych przez ten formularz jest firma #NAZWA_FIRMY#. Dane gromadzone są jedynie celem odpowiedzi na przesłany formularz. Masz prawo poprosić Administratora o usunięcie przesłanych danych.</p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(183, -1, 'Stopka', '', '', '', '', '', '', 1, 38, 0, '', '', '', '', '', '', '', '', '', '', ''),
(184, 183, 'Nasz adres', '', '', '<h5>Nasz adres</h5>\r\n<p>#MIASTO_FIRMY#, ul. #ULICA_FIRMY#</p>\r\n<p>Godziny otwarcia</p>\r\n<p>Pon. - Pt.: 8.00 - 18.00</p>\r\n<p>Sob.: 10.00 - 14.00</p>\r\n<p><a>Trasa dojazdu do naszego salonu&gt;&gt;</a></p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(185, 183, 'Kontakt', '', '', '<h5>Kontakt</h5>\r\n<p>Tel: <a href=\"tel:#TELEFON_FIRMY1#\">#TELEFON_FIRMY_LABEL1#</a></p>\r\n<p><a href=\"mailto:#ADRES_EMAIL_FIRMY#\">#ADRES_EMAIL_FIRMY#</a></p>\r\n<p>#NAZWA_FIRMY#, #ULICA_FIRMY#, #KOD_POCZTOWY_FIRMY# #MIASTO_FIRMY#</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '', '', '', '', ''),
(186, 180, 'Kontakt telefoniczny', '', '', '<p>Kontakt telefoniczny</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '', '', '', '', ''),
(187, -1, 'Pasek reklamowy', '', '', '', '', '', '', 1, 39, 0, '', '', '', '', '', '', '', '', '', '', ''),
(188, 187, 'Gwarancja świeżości', '', '', '<p>Gwarancja świeżości</p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', 'yXrdBJK9_400x400.jpg', '', '', '', ''),
(189, 187, 'Dostawa', '', '', '<p>Dostawa nawet w ciągu 2 godzin</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '8031-yXrdBJK9_400x400.jpg', '', '', '', ''),
(190, 187, 'Darmowe potwierdzenie', '', '', '<p>Darmowe potwierdzenie sms</p>', '', '', '', 1, 3, 1, '', '', '', '', '', '', '263-yXrdBJK9_400x400.jpg', '', '', '', ''),
(191, 187, 'Doradztwo', '', '', '<p>Profesjonalne doradztwo</p>', '', '', '', 1, 4, 1, '', '', '', '', '', '', 'o_mnie2.jpg', '', '', '', ''),
(192, -1, 'Podstrony tematyczne', '', '', '', '', '', '', 1, 40, 0, '', '', '', '', '', '', '', '', '', '', ''),
(193, 192, 'Zabudowa systemowa', '', '', '<p>Posiadamy ponad 1500 m2 zabudowy systemowej Octanorm®. Jest to podstawowy system wystawienniczy na którym bazujemy. Pozwala on nie tylko na szybki montaż stoisk (co jest ważne przy dużych powierzchniach zabudowy targowej), ale także jest jednym z ładniejszych wizualnie systemów służących do budowy stoisk.</p>', '', '', '', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(194, 192, 'Zabudowa Maxima Light', '', '', '<p>Zapraszamy do wypróbowania ponad 200 m2 estetycznej i funkcjonalnej zabudowy w systemie Maxima Light®. Stoisko targowe zbudowane na bazie tego systemu jest wyjątkowo stabilną i solidną konstrukcją, pozwalającą na projektowanie dużych rozpiętości ścian stoiska.</p>', '', '', '', 1, 2, 1, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupy`
--

CREATE TABLE `grupy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupy_cechy`
--

CREATE TABLE `grupy_cechy` (
  `id` int(11) NOT NULL,
  `id_grupy` int(11) NOT NULL,
  `id_cechy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupy_sekcyjne`
--

CREATE TABLE `grupy_sekcyjne` (
  `id` bigint(20) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `naglowek` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nagloweken` text NOT NULL,
  `naglowekde` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text CHARACTER SET utf8 NOT NULL,
  `tekstde` text NOT NULL,
  `g` tinyint(4) NOT NULL DEFAULT 0,
  `parent` bigint(20) NOT NULL,
  `nr` float NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `widocznosc_linku` tinyint(4) NOT NULL,
  `widocznosc_karuzela` tinyint(4) NOT NULL,
  `widocznosc_karuzelaen` tinyint(4) NOT NULL,
  `widocznosc_karuzelade` tinyint(4) NOT NULL,
  `pelna_szerokosc` tinyint(4) NOT NULL,
  `pelna_szerokoscen` tinyint(4) NOT NULL,
  `pelna_szerokoscde` tinyint(4) NOT NULL,
  `nazwa_pliku` tinytext NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `link` tinytext NOT NULL,
  `linken` tinytext NOT NULL,
  `linkde` tinytext NOT NULL,
  `szablon` tinytext NOT NULL,
  `szablonen` tinyint(4) NOT NULL,
  `szablonde` tinyint(4) NOT NULL,
  `style` text NOT NULL,
  `img` tinytext NOT NULL,
  `img_strona` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `titleen` tinytext NOT NULL,
  `titlede` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `descriptionen` text NOT NULL,
  `descriptionde` text NOT NULL,
  `keywords` text NOT NULL,
  `keywordsen` text NOT NULL,
  `keywordsde` text NOT NULL,
  `artykuly_id` int(11) NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `dodatkowe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `grupy_sekcyjne`
--

INSERT INTO `grupy_sekcyjne` (`id`, `nazwa`, `nazwaen`, `nazwade`, `naglowek`, `nagloweken`, `naglowekde`, `tekst`, `teksten`, `tekstde`, `g`, `parent`, `nr`, `widocznosc`, `widocznosc_linku`, `widocznosc_karuzela`, `widocznosc_karuzelaen`, `widocznosc_karuzelade`, `pelna_szerokosc`, `pelna_szerokoscen`, `pelna_szerokoscde`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `link`, `linken`, `linkde`, `szablon`, `szablonen`, `szablonde`, `style`, `img`, `img_strona`, `title`, `titleen`, `titlede`, `description`, `descriptionen`, `descriptionde`, `keywords`, `keywordsen`, `keywordsde`, `artykuly_id`, `albumy_id`, `dodatkowe_id`) VALUES
(201, 'Grupa sekcyjna strona główna', '', '', '', '', '', '', '', '', 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'grupa-sekcyjna-strona-glowna', '', '', '', '', '', 'szablon.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(317, 'Oferta', '', '', '<h2 style=\"text-align: center;\">Oferta</h2>', '', '', '', '', '', 1, 201, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne317', '', '', '', '', '', 'lista_kafelkow.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 136),
(318, 'Artykuły', '', '', '<h2 style=\"text-align: center;\">Artykuły</h2>', '', '', '', '', '', 1, 201, 8, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne318', '', '', '', '', '', 'lista_artykulow.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(332, 'Opinie', '', '', '<h2 style=\"text-align: center;\">Opinie</h2>', '', '', '', '', '', 1, 201, 7, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne332', '', '', '', '', '', 'lista_opinii.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(335, 'Logotypy', '', '', '', '', '', '', '', '', 1, 201, 9, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne335', '', '', '', '', '', 'lista_logotypow.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 101),
(348, 'Szybki kontakt', '', '', '', '', '', '', '', '', 1, 201, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne348', '', '', '', '', '', 'szybki-kontakt.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 132),
(353, 'Produkty', '', '', '<h2 style=\"text-align: center;\">Produkty</h2>', '', '', '', '', '', 1, 201, 4, 1, 0, 1, 0, 0, 0, 0, 0, 'grupy_sekcyjne353', '', '', '', '', '', 'lista_produktow.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(354, 'Mapa google', '', '', '', '', '', '', '', '', 1, 201, 14, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne354', '', '', '', '', '', 'mapa_google.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(357, 'Paralaksa', '', '', '', '', '', '<h2 style=\"text-align: center;\">#NAZWA_FIRMY#</h2>\r\n<h3 style=\"text-align: center;\">Największy wybór asortymentu</h3>\r\n<p style=\"text-align: center;\">Wysokiej jakiści wykonanie</p>', '', '', 1, 201, 3, 1, 0, 0, 0, 0, 1, 0, 0, 'grupy_sekcyjne357', '', '', '', '', '', 'paralaksa.php', 0, 0, '', '2799888.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(359, 'Info', '', '', '<h2 style=\"text-align: center;\">Info</h2>', '', '', '', '', '', 1, 201, 10, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne359', '', '', '', '', '', 'szablon.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(360, 'Galeria', '', '', '<h2 style=\"text-align: center;\">Galerie</h2>', '', '', '', '', '', 1, 201, 11, 1, 0, 1, 0, 0, 0, 0, 0, 'grupy_sekcyjne360', '', '', '', '', '', 'lista_galerii.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0),
(361, 'sekcja testowa', '', '', '', '', '', '', '', '', 0, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'nowa361', '', '', '', '', '', 'szablon.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(362, 'lista galerii', '', '', '<h2 style=\"text-align: center;\">Lista galerii</h2>', '', '', '', '', '', 1, 361, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne362', '', '', '', '', '', 'lista_galerii.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(363, 'referencje', '', '', '<h2 style=\"text-align: center;\">Referemcje</h2>', '', '', '', '', '', 1, 361, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne363', '', '', '', '', '', 'lista_referencji.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 172),
(364, 'Formularz kontaktowy', '', '', '<h2 style=\"text-align: center;\">Formularz kontaktowy</h2>', '', '', '', '', '', 1, 201, 13, 1, 0, 0, 0, 0, 0, 0, 0, 'grupy_sekcyjne364', '', '', '', '', '', 'formularz_kontaktowy.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(365, 'Aktualności', '', '', '<h2 style=\"text-align: center;\">Aktualności</h2>', '', '', '', '', '', 1, 201, 12, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'lista_aktualnosci.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(366, 'test', '', '', '', '', '', '', '', '', 1, 361, 3, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(369, 'Pasek reklamowy', '', '', '', '', '', '', '', '', 1, 201, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'pasek_reklamowy.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 187),
(370, 'Formularz wizyty', '', '', '', '', '', '<h2>Zamów wizytę</h2>\r\n<p>If asyou are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', 1, 201, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'formularz_wizyty.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(371, 'Podstrony tematyczne', '', '', '', '', '', '<h2 style=\"text-align: center;\">Podstrony tematyczne</h2>', '', '', 1, 201, 6, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'tabsy.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 192),
(372, 'O firmie', '', '', '', '', '', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', 1, 201, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'szablon.php', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` bigint(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `nazwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text NOT NULL,
  `tekstde` text NOT NULL,
  `nazwa_pliku` text NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `nazwa_plikuru` tinytext NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `nr` int(11) NOT NULL,
  `g` int(11) NOT NULL,
  `szablon` text NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `id_produktu` text NOT NULL,
  `cena` float NOT NULL,
  `cena_stara` float NOT NULL,
  `nowosc` int(11) NOT NULL,
  `promocja` int(11) NOT NULL,
  `bestseller` int(11) NOT NULL,
  `widoczne_w_menu` tinyint(4) NOT NULL,
  `img` text NOT NULL,
  `artykuly_id` int(11) NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `dodatkowe_id` int(11) NOT NULL,
  `grupy_sekcyjne_id` int(11) NOT NULL,
  `banery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id`, `parent`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `nazwa_plikuru`, `widocznosc`, `nr`, `g`, `szablon`, `title`, `description`, `keywords`, `id_produktu`, `cena`, `cena_stara`, `nowosc`, `promocja`, `bestseller`, `widoczne_w_menu`, `img`, `artykuly_id`, `albumy_id`, `dodatkowe_id`, `grupy_sekcyjne_id`, `banery_id`) VALUES
(1, -1, 'Zegary Reklamowe', '', '', '', '', '', 'zegary-reklamowe', '', '', '', 1, 1, 0, 'kategorie.php', '', '', 'Zegary Reklamowe', '', 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0),
(2, -1, 'Ścienne', '', '', '', '', '', 'scienne', '', '', '', 1, 2, 0, '', 'Ścienne', 'Ścienne', 'Ścienne', '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(3, -1, 'Stojące i Budziki', '', '', '', '', '', 'stojace-i-budziki', '', '', '', 1, 3, 0, '', 'Stojące i Budziki', 'Stojące i Budziki', 'Stojące i Budziki', '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4, 2, 'Plastikowe', '', '', '', '', '', 'plastikowe', '', '', '', 1, 4, 0, '', 'Plastikowe', 'Plastikowe', 'Plastikowe', '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(5, 2, 'Aluminiowe', '', '', '', '', '', 'aluminiowe', '', '', '', 1, 5, 0, '', 'Aluminiowe', 'Aluminiowe', 'Aluminiowe', '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(6, 2, 'Drewniane', '', '', '', '', '', 'drewniane', '', '', '', 1, 6, 0, '', 'Drewniane', 'Drewniane', 'Drewniane', '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `Login` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Haslo` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `PropozycjaHasla` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Telefon` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Imie` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwa_firmy` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `NIP` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Ulica` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Miasto` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kraj` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Imie_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwa_firmy_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `NIP_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Ulica_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Miasto_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kraj_dostawa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwa_firmy_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `NIP_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Ulica_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Miasto_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Kraj_faktura` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `Login`, `Haslo`, `PropozycjaHasla`, `Email`, `Telefon`, `Imie`, `Nazwisko`, `Nazwa_firmy`, `NIP`, `Ulica`, `Kod_pocztowy`, `Miasto`, `Kraj`, `Imie_dostawa`, `Nazwisko_dostawa`, `Nazwa_firmy_dostawa`, `NIP_dostawa`, `Ulica_dostawa`, `Kod_pocztowy_dostawa`, `Miasto_dostawa`, `Kraj_dostawa`, `Nazwa_firmy_faktura`, `NIP_faktura`, `Ulica_faktura`, `Kod_pocztowy_faktura`, `Miasto_faktura`, `Kraj_faktura`) VALUES
(1, 'nawa uzytkownika', 'haslo', '', '', '23452133', 'imie', 'nazwisko', 'nazwa firmy', 'nip', 'ulica i numer', 'kod pocztowy', 'miasto', 'kraj', 'imie dos', 'nazwisko dost', 'nazwa firmy dost', 'nip dost', 'ulica i numer dost', 'kod pocztoku dost', 'miasto dost', 'kraj dost', '', '', '', '', '', ''),
(2, 'nawa uzytkownika', 'haslo', '', 'email@wp.pl', '23452133', 'imie', 'nazwisko', 'nazwa firmy', 'nip', 'ulica i numer', 'kod pocztowy', 'miasto', 'kraj', 'imie dos', 'nazwisko dost', 'nazwa firmy dost', 'nip dost', 'ulica i numer dost', 'kod pocztoku dost', 'miasto dost', 'kraj dost', '', '', '', '', '', ''),
(3, 'nawa uzytkownika', '7694f4a66316e53c8cdd9d9954bd611d', '', 'kari5wa@interia.pl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'nawa uzytkownika', '7694f4a66316e53c8cdd9d9954bd611d', '', 'kari55wa@interia.pl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'nawa uzytkownika', '006d2143154327a64d86a264aea225f3', '', 'kari5a@interia.pl', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'nawa uzytkownika', '4b43b0aee35624cd95b910189b3dc231', '', 'kari5a3@interia.pl', '23452122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'nawa uzytkownika', '328c683ae91d35414954930360fd0659', '', 'kari533a@interia.pl', '23452122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '328c683ae91d35414954930360fd0659', '', 'kariergw5a@interia.pl', '23452122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'nawa uzytkownika234', '0e311e5b9704f28b4e8557e8fa3fbe7d', '', 'karrrrrri5a@interia.pl', '23452122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'blumo', '25d55ad283aa400af464c76d713c07ad', '', 'karweerwgei5a@interia.pl', '23452122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', 'kari5ed@interia.pl', '54324535', 'imie2', 'nazwisko2', 'nazwa firmy2', '', 'ulica i numer2', 'kod pocztowy2', 'miasto2', 'kraj2', '', '', '', '', '', '', '', '', 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr'),
(12, '', '8d7e6c70aa99dd1ae675ee60a75b750c', '', 'kalafior@wp.pl', '23452122', 'imie26575', 'nazwisko2', 'nazwa firmy2', '', 'ulica i numer2', 'kod pocztowy2', 'miasto2', 'kraj2', '', '', '', '', '', '', '', '', 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr'),
(13, '', '81a282e66c1316d9f085a92c5f18039d', '', 'sebastiank24@wp.pl', '456776564', 'Krzysztof', 'Kolasiński', 'Mokota', '', 'Kurza 34', '83-234', 'Zabrze', 'Polska', '', '', '', '', '', '', '', '', 'Mokota1', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska'),
(14, '', '94b8cea57c49a3007225a0c70c475450', '', 'kari5a2@interia.pl', '5432334523', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '', '94b8cea57c49a3007225a0c70c475450', '', 'kari51a@interia.pl', '5432334524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '', '551847f2ec000d7a4f23eabb2920fec5', '', 'sebastian@blumo.pl', '987436043', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiega_gosci`
--

CREATE TABLE `ksiega_gosci` (
  `id` bigint(20) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text CHARACTER SET utf8 NOT NULL,
  `tekstde` text NOT NULL,
  `email` tinytext NOT NULL,
  `nr` int(11) NOT NULL,
  `g` int(11) NOT NULL,
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `widocznosc` int(11) NOT NULL,
  `czas` date NOT NULL,
  `link` tinytext NOT NULL,
  `ocena` float NOT NULL,
  `rodzaj` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `ksiega_gosci`
--

INSERT INTO `ksiega_gosci` (`id`, `nazwa`, `nazwaen`, `nazwade`, `tekst`, `teksten`, `tekstde`, `email`, `nr`, `g`, `parent`, `widocznosc`, `czas`, `link`, `ocena`, `rodzaj`) VALUES
(1, 'Krystyna Anna', '', '', '<p>\"Firma ADOMUS wykonała kompletne prace wykończeniowe w moim mieszkaniu; mieszkanie 60m, w stanie deweloperskim. Zakres prac obejmował przeróbki hydrauliczne, elektryczne, kładzenie gładzi, kładzenie kafelków, malowanie, tapetowanie, montaż drewnianych podłóg z listwami wykończeniowymi, montaż urządzeń sanitarnych w łazience, montaż drzwi, instalowanie oświetlenia. Wszystkie prace zostały wykonane zgodnie z dokonanymi wcześniej ustaleniami oraz moimi oczekiwaniami. Usługa zrealizowana z dużą fachowością i starannością, w ustalonym terminie. Jakość wykonanej pracy - bardzo dobra ! Wszystkie uwagi, korekty, zmiany konsultowane sprawnie i na bieżąco z panem Łukaszem. Ponadto p. Łukasz służy fachową pomocą i praktycznymi poradami. Ekipa uprzejma, prace wykonywane czysto, zarówno na bieżąco jak i na koniec wszystko dokładnie posprzątane.<br />Polecam usługi tej firmy.</p>', '', '', '', 0, 0, -1, 1, '0000-00-00', '', 5, 2),
(2, 'Joanna Konefał', '', '', '<p>\"<span><span><span>Firma Adomus remontowała mi mieszkanie 70m2. Pan Łukasz wywiązał się z terminów i wszystko zostało zrobione bardzo dokładnie. Remont obejmował całą łazienkę wraz z meblami, drzwi, podłogi, gładzie, malowanie. Były także zmiany hydrauliczne i elektryczne. Wykonawca godny zaufania.</span></span></span>\"</p>', '', '', '', 1, 0, -1, 1, '0000-00-00', 'http://google.com', 5, 3),
(4, 'Jan Worpus', '', '', '<p>\"Wysoka jakość usługi, terminowość – to podstawy oceny.<br />Przejrzystość rozliczeń, szybka, elastyczna i przyjazna klientowi reakcja w nieprzewidzianych sytuacjach będą dodatkowymi, ważnymi atutami – szczególnie dla osób planujących większe remonty.\"</p>', '', '', '', 2, 0, -1, 1, '0000-00-00', '', 5, 1),
(6, 'WOOD POL', '', '', '<p>\"<span><span><span><span class=\"review-full-text hide-focus-ring\" tabindex=\"-1\">Firmę Adomus polecił mi łódzki Architekt. Z panem Łukaszem można się szybko dogadać a ekipa jest bardzo kompetentna ,prace na budowie posuwały się szybko i bez opóźnień.</span></span></span></span>\"</p>', '', '', '', 4, 0, -1, 1, '0000-00-00', '', 5, 1),
(8, 'TheDigi007', '', '', '<p>\"Bardzo polecam prace z panem Lukaszem poniewaz mozna mu zaufac pod kazdym wzgledem. Pan Lukasz wyremontowal i zaopiekowal sie naszym mieszkaniem od poczatku do samego konca. Jestesmy bardzo wdzieczni za wszystko poniewaz nie mieszkamy w Polsce i wszystko bylo pod opieká Pana Lukasza. Jestesmy bardzo zadowoleni.\"</p>', '', '', '', 3, 0, -1, 1, '0000-00-00', '', 5, 1),
(9, 'Przemysław Mularczyk', '', '', '<p>\"<span><span><span>Firma profesionalna i rzetelna. Właściciel skoncentrowany i znający się na rzeczy. Nie konkuruje ceną ale jakością. Gorąco polecam firmę Pana Łukasza.</span></span></span>\"</p>', '', '', '', 5, 0, -1, 1, '0000-00-00', '', 5, 1),
(10, 'Izabella Bykowska', '', '', '<p>\"<span><span><span><span class=\"review-full-text hide-focus-ring\" tabindex=\"-1\">Serdecznie polecam współpracę z Panem Łukaszem ,pierwszy raz spotkałam się z tak słownym i sumiennym wykonawcą. Praca wykonana na 5 z plusem pod względem jakości jak i dotrzymania terminu.<br />Życzę każdemu remontującemu aby natrafił na takiego fachowca.<br />Jeżeli chcecie mieć pewniaka dzwońcie do firmy Adomus.<br />Dziękuje za Pana ciężka pracę i zaangażowanie.<br />Pozdrawiam.</span></span></span></span>\"</p>', '', '', '', 6, 0, -1, 1, '0000-00-00', '', 5, 1),
(11, 'Michał', '', '', '<p>\"Firma Adomus wykonała remont niewielkiej kawalerki. Remont obejmował wszystkie etapy prac od stanu \"niepełny deweloperski\" do wykończenia pod klucz. Mogę ją w pełni polecić:<br />- prace zostały zakończone przed terminem umowy,<br />- zawsze mogłem liczyć na poradę Pana Łukasza oraz przestrogę czego lepiej nie robić,<br />- cena adekwatna do jakości,<br />- zostały wykonane prace, których nie każdy się podejmie, np.: zbudowanie drewnianej antresoli.\"</p>', '', '', '', 7, 0, -1, 1, '0000-00-00', '', 5, 2),
(12, 'Natalia', '', '', '<p>\"Firma Adomus remontowała u mnie łazienke. Bardzo dobry wykonawca, wysoka jakość usług. Jestem bardzo zadowolona.\"x</p>', '', '', '', 8, 0, -1, 1, '0000-00-00', '', 5, 2),
(14, 'Sylwia', '', '', '', '', '', '', 11, 0, -1, 0, '0000-00-00', '', 5, 0),
(16, 'nowa strona', '', '', '', '', '', '', 9, 0, -1, 0, '0000-00-00', '', 0, 0),
(17, 'nowa strona', '', '', '', '', '', '', 10, 0, -1, 0, '0000-00-00', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mapa_google`
--

CREATE TABLE `mapa_google` (
  `id` int(11) NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mapa_google`
--

INSERT INTO `mapa_google` (`id`, `tytul`, `lat`, `lng`) VALUES
(1, 'Łódź', '51.7769417', '19.3508165');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platnosci_payu`
--

CREATE TABLE `platnosci_payu` (
  `oAuth` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `platnosci_payu`
--

INSERT INTO `platnosci_payu` (`oAuth`) VALUES
('{\"access_token\": \"92ad8b7b-16df-477f-bac3-9675e96c747b\",\"token_type\": \"bearer\",\"expires_in\": 43199,\"grant_type\": \"client_credentials\"}'),
('{\"access_token\": \"92ad8b7b-16df-477f-bac3-9675e96c747b\",\"token_type\": \"bearer\",\"expires_in\": 43199,\"grant_type\": \"client_credentials\"}'),
('{\"access_token\": \"92ad8b7b-16df-477f-bac3-9675e96c747b\",\"token_type\": \"bearer\",\"expires_in\": 43199,\"grant_type\": \"client_credentials\"}'),
('{\"access_token\": \"92ad8b7b-16df-477f-bac3-9675e96c747b\",\"token_type\": \"bearer\",\"expires_in\": 43199,\"grant_type\": \"client_credentials\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_kategorii` bigint(20) NOT NULL,
  `id` bigint(11) NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwade` tinytext NOT NULL,
  `nazwa_pliku` text NOT NULL,
  `nazwa_plikuen` text NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `szablon` text NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opisen` text NOT NULL,
  `opisde` text NOT NULL,
  `opis2` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis2en` text NOT NULL,
  `opis2de` text NOT NULL,
  `nr` int(11) NOT NULL,
  `widocznosc` int(1) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `titleen` tinytext NOT NULL,
  `titlede` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `widoczny_glowna` tinyint(1) NOT NULL DEFAULT 0,
  `tagi` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `tagien` tinytext NOT NULL,
  `tagide` tinytext NOT NULL,
  `dostepny` int(1) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `cena1` decimal(10,2) NOT NULL,
  `cena2` decimal(10,2) NOT NULL,
  `cena3` decimal(10,2) NOT NULL,
  `img` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `img2` tinytext NOT NULL,
  `pole_1_nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pole_1_tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pole_2_nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pole_2_tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `dodatkowe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_kategorii`, `id`, `id_produktu`, `nazwa`, `nazwaen`, `nazwade`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `szablon`, `opis`, `opisen`, `opisde`, `opis2`, `opis2en`, `opis2de`, `nr`, `widocznosc`, `title`, `titleen`, `titlede`, `description`, `keywords`, `widoczny_glowna`, `tagi`, `tagien`, `tagide`, `dostepny`, `cena`, `cena1`, `cena2`, `cena3`, `img`, `img2`, `pole_1_nazwa`, `pole_1_tekst`, `pole_2_nazwa`, `pole_2_tekst`, `dodatkowe_id`) VALUES
(1, 1, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', '', '', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '', '', '', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', '', '<p>MECHANIZM ZASILANY BATERIĄ 1,5V<br /> ŚREDNICA CYFERBLATU: 240 mm<img src=\"/demo/panel/images/kolory.jpg\" right=\"\" alt=\"/\" width=\"164\" height=\"440\" /><br /> GRUBOŚĆ: 36 mm<br /> GWARANCJA: 12 MSC<br /> <br /> ZAPEWNIAMY TRANSPORT<br /> <br /> MECHANIZM PRODUKOWANY NA CZĘŚCIACH JAPOŃSKICH.<br /> MOŻLIWOŚĆ DOBORU KOLORU OBUDOWY WG PROJEKTU KLIENTA (PANTONE).<br /> DOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU.<br /> MOŻLIWOŚĆ ZASTOSOWANIA MECHANIZMU STEROWANEGO SYGNAŁEM RADIOWYM.<br /> WSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG ZAMÓWIENIA.<br /> <br /> <span class=\"nagl\"></span></p>', '', '', 1, 1, '', '', '', '', '', 1, '', '', '', 1, '12345.00', '120.00', '134.00', '150.00', 'zegar-reklamowy-z-nadrukiem.JPG', '', 'pole nazwa 1', '<p>edff</p>', 'pole 2 nazwa', 'pole 2 tekst', 0),
(1, 2, 0, 'KWADRATOWY 280x280', '', '', 'kwadratowy-280x280', '', '', '', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', '', '', '<p>MECHANIZM ZASILANY BATERIĄ 1,5V<img src=\"/demo/panel/images/kolory.jpg\" alt=\"style=width:\" 164px=\"\" height:=\"\" 440px=\"\" float:=\"\" right=\"\" width=\"164\" height=\"440\" /><br /> ŚREDNICA CYFERBLATU: 240 mm<br /> GRUBOŚĆ: 35 mm<br /> GWARANCJA: 12 MSC<br /> ZAPEWNIAMY TRANSPORT<br /> <br /> <br /> MECHANIZM KWARCOWY PRODUKOWANY NA CZĘŚCIACH JAPOŃSKICH.</p>\r\n<p>MOŻLIWOŚĆ DOBORU KOLORU OBUDOWY WG PROJEKTU KLIENTA (PANTONE). <br /> RÓWNIEŻ KOLORY TRANSPARENTNE<br /> DOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. </p>\r\n<p>WSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG ZAMÓWIENIA</p>\r\n<p><span class=\"nagl\"></span></p>', '', '', 2, 1, '', '', '', '', '', 1, '', '', '', 1, '123.00', '345.00', '43.00', '0.00', 'zegar-kwadratowy.JPG', '', '', '0', '', '0', 0),
(1, 3, 0, 'OWALNY 370x260', '', '', 'owalny-370x260', '', '', '', 'ZEGAR REKLAMOWY OWALNY 370 x 260mm\r\nZ SZYBĄ SOCZEWKOWATĄ', '', '', 'MECHANIZM ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 245 mm<br />\r\nGRUBOŚĆ: 35 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\nMECHANIZM PRODUKOWANY NA CZĘŚCIACH JAPOŃSKICH.\r\nMOŻLIWOŚĆ DOBORU KOLORU RAMKI W/G PROJEKTU KLIENTA (PANTONE).<br />\r\nRÓWNIEŻ KOLORY\r\nTRANSPARENTNE.\r\n<br />\r\nDOWOLNY NADRUK NA CYFERBLACIE W/G PROJEKTU.\r\n<br />\r\nWSKAZÓWKI: KOLOR PODSTAWOWY CZARNY ,ZŁOTY,BIAŁY,SREBRNY SEKUNDNIK CZERWONY\r\nLUB W/G ZAMÓWIENIA\r\n<span class=nagl></span>', '', '', 3, 1, '', '', '', '', '', 1, '', '', '', 1, '12.00', '0.00', '0.00', '0.00', 'zegar-owalnyJPG.JPG', '', '', '0', '', '0', 0),
(1, 4, 0, 'Ø 260', '', '', '260', '', '', '', 'ZEGAR REKLAMOWY <span class=nagl>Ø</span> 260', '', '', 'MECHANIZM ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 216 mm<br />\r\nGRUBOŚĆ: 35 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\nMECHANIZM KWARCOWY PRODUKOWANY NA CZĘŚCIACH JAPOŃSKICH.\r\n<p>\r\nMOŻLIWOŚĆ DOBORU KOLORU OBUDOWY WG PROJEKTU KLIENTA (PANTONE). <br />\r\nDOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. \r\n</p>\r\n<p>\r\nWSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG\r\nZAMÓWIENIA\r\n</p>\r\n<span class=nagl></span>', '', '', 4, 1, '', '', '', '', '', 1, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarki.JPG', '', '', '0', '', '0', 0),
(1, 5, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', '', '', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', '', '', '', '<p>ZEGAR REKLAMOWY Ø 330 SREBRNY<br /> <span ff0000=\"\"></span></p>', '', '', '<p>MECHANIZM TYKAJĄCY LUB PŁYNNY ZASILANY BATERIĄ 1,5V</p>\r\n<p>SZYBA CERAMICZNA<br /> ŚREDNICA CYFERBLATU: 250 mm<br /> GRUBOŚĆ: 40 mm<br /> GWARANCJA: 12 MSC<br /> ZAPEWNIAMY TRANSPORT<br /> <span class=\"20\"><span 10pt=\"\" color:=\"\" ff0000=\"\"></span></span></p>\r\n<p>OBUDOWA W KOLORZE SREBRNYM<br /> DOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. </p>\r\n<p>WSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG ZAMÓWIENIA</p>\r\n<p><span class=\"nagl\"></span></p>', '', '', 5, 1, '', '', '', '', '', 1, '', '', '', 0, '23.00', '0.00', '0.00', '0.00', 'tarcza-zegara.JPG', '', '', '0', '', '0', 0),
(1, 6, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM Nr 312 Ø 300 SREBRNY', '', '', 'zegar-reklamowy-z-nadrukiem-nr-312-300-srebrny', '', '', '', '<p>ZEGAR REKLAMOWY 312 Ø 300 SREBRNY<br /> <span ff0000=\"\"></span></p>', '', '', '<p>MECHANIZM ZASILANY BATERIĄ 1,5V TYKAJĄCY LUB PŁYNNY</p>\r\n<p>SZYBA CERAMICZNA</p>\r\n<p>ŚREDNICA CYFERBLATU: 197 mm                             GRUBOŚĆ: 35 mm<br /> GWARANCJA: 12 MSC<br /> ZAPEWNIAMY TRANSPORT<br /> <span class=\"20\"><span 10pt=\"\" color:=\"\" ff0000=\"\"></span></span><br /> OBUDOWA W KOLORZE SREBRNYM</p>\r\n<p>DOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. </p>\r\n<p>WSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG ZAMÓWIENIA</p>\r\n<p> </p>\r\n<p><span class=\"nagl\"></span></p>', '', '', 6, 1, '', '', '', '', '', 0, '', '', '', 0, '234.00', '0.00', '0.00', '0.00', 'zegarek-1.JPG', '', '', '0', '', '0', 0),
(1, 7, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 61 Ø 300', '', '', 'zegar-reklamowy-z-nadrukiem-w-61-300', '', '', '', '<p>ZEGAR REKLAMOWY W-61 Ø 300 <br /> <span ff0000=\"\"></span></p>', '', '', '<p>MECHANIZM SKOKOWY LUB PŁYNNY ZASILANY BATERIĄ 1,5V<br /> ŚREDNICA CYFERBLATU: 265 mm</p>\r\n<p>SZYBA CERAMICZNA</p>\r\n<p>GRUBOŚĆ: 40 mm<br /> GWARANCJA: 12 MSC<br /> ZAPEWNIAMY TRANSPORT <a href=\"/demo/panel/gfx/6103d.gif\"></a><br /> </p>\r\n<p>OBUDOWA W KOLORZE SREBRNYM<br /> DOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. </p>\r\n<p>WSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG ZAMÓWIENI</p>', '', '', 7, 1, '', '', '', '', '', 0, '', '', '', 0, '122.00', '0.00', '0.00', '0.00', 'zegar-2.JPG', '', '', '0', '', '0', 0),
(1, 8, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 86 Ø 260', '', '', 'zegar-reklamowy-z-nadrukiem-w-86-260', '', '', '', 'ZEGAR REKLAMOWY W-86 Ø 260\r\n<br />\r\n<span style=color: #ff0000></span>', '', '', '<p>\r\nMECHANIZM SKOKOWY LUB PŁYNNY ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 222 mm\r\n</p>\r\n<p>\r\nSZYBA CERAMICZNA<br />\r\nGRUBOŚĆ: 40 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\n</p>\r\n<p>\r\nOBUDOWA W KOLORZE SREBRNYM<br />\r\nDOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU. \r\n</p>\r\n<p>\r\nWSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY LUB WG\r\nZAMÓWIENIA\r\n</p>\r\n<span class=nagl></span>', '', '', 8, 1, '', '', '', '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarek-tarcza-ozdobna.JPG', '', '', '0', '', '0', 0),
(1, 9, 0, 'ZEGAR REKLAMOWY Z NADRUKIEM W-56 28.5x28cm', '', '', 'zegar-reklamowy-z-nadrukiem-w-56-28-5x28cm', '', '', '', 'ZEGAR REKLAMOWY SREBRNY KWADRATOWY 28.5x28cm\r\n<br />\r\n<span style=color: #ff0000></span>', '', '', '<p>\r\nMECHANIZM TYKAJĄCY LUB PŁYNNY ZASILANY BATERIĄ 1,5V<br />\r\nCYFERBLAT: 210x205 mm\r\n</p>\r\n<p>\r\nSZYBA CERAMICZNA                                                           GRUBOŚĆ: 40 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\n</p>\r\n<p>\r\nOBUDOWA W KOLORZE MATOWEGO SREBRA. MOŻLIWOŚĆ POWIESZENIA ZEGARA W\r\nDWÓCH PŁASZCZYZNACH.\r\n</p>\r\n<p>\r\nDOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU<br />\r\nWSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY<br />\r\nLUB WG ZAMÓWIENIA\r\n</p>\r\n<span class=nagl></span>', '', '', 9, 1, '', '', '', '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarek-tarcza.JPG', '', '', '0', '', '0', 0),
(1, 10, 0, 'STACJA POGODY 27.5x32.5', '', '', 'stacja-pogody-27-5x32-5', '', '', '', 'ZEGAR SREBRNY STACJA POGODY 27.5x32.5\r\nZ SZYBĄ CERAMICZNĄ\r\n<br />', '', '', 'MECHANIZM ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 225 mm<br />\r\nGRUBOŚĆ: 40 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\n<p>\r\nOBUDOWA W KOLORZE MATOWEGO SREBRA.\r\n</p>\r\n<p>\r\nDOWOLNY NADRUK NA CYFERBLACIE DO UZGODNIENIA WG PROJEKTU<br />\r\nMOŻLIWOŚĆ NADRUKU NA OBUDOWIE<br />\r\nWSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY<br />\r\nLUB WG ZAMÓWIENIA\r\n</p>\r\n<span class=nagl></span>', '', '', 10, 1, '', '', '', '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarek-pogoda.JPG', '', '', '0', '', '0', 0),
(1, 11, 0, 'RAMKA CHROMOWANA Ø 380', '', '', 'ramka-chromowana-380', '', '', '', 'ZEGAR Z RAMKĄ CHROMOWANĄ\r\nØ 380 Z SZYBĄ CERAMICZNĄ\r\n<br />\r\n<span style=color: #ff0000>CENA: (KARTON-10 SZTUK) 16,50 PLN netto/szt.</span>', '', '', 'MECHANIZM ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 340 mm<br />\r\nGRUBOŚĆ: 40 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\n<p>\r\nZEGAR Z RAMKĄ PLASTIKOWĄ NA KTÓRĄ PRÓŻNIOWO NAKŁADANE ALUMINIUM DAJE EFEKT<br />\r\nPOLEROWANEGO CHROMU<br />\r\nMOŻLIWOŚĆ NADRUKU NA CYFERBLACIE METODĄ SITODRUKU LUB TAMPON DRUKU \r\n</p>\r\n<p>\r\nCYFERBLAT PLASTIKOWY Z WYPUKŁYMI CYFRAMI\r\n</p>\r\n<p>\r\nWSKAZÓWKI - KOLOR PODSTAWOWY CZARNY, ZŁOTY, BIAŁY, CZERWONY, SREBRNY LUB WG\r\nZAMÓWIENIA\r\n</p>\r\n<span class=nagl></span>', '', '', 11, 1, '', '', '', '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarek-chromowany.JPG', '', '', '0', '', '0', 0),
(1, 12, 0, 'Nr 8383 CHROMOWANA Ø 270', '', '', 'nr-8383-chromowana-270', '', '', 'kategorie.php', 'ZEGAR Z RAMKĄ CHROMOWANĄ\r\nØ 270 Z SZYBĄ CERAMICZNĄ\r\n<br />\r\n<span style=color: #ff0000></span>', '', '', 'MECHANIZM ZASILANY BATERIĄ 1,5V<br />\r\nŚREDNICA CYFERBLATU: 227 mm<br />\r\nGRUBOŚĆ: 35 mm<br />\r\nGWARANCJA: 12 MSC<br />\r\nZAPEWNIAMY TRANSPORT<br />\r\n<br />\r\nZEGAR Z RAMKĄ PLASTIKOWĄ NA KTÓRĄ PRÓŻNIOWO NAKŁADANE ALUMINIUM DAJE EFEKT POLEROWANEGO CHROMU<span class=nagl></span>', '', '', 12, 1, '', '', '', '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', '0.00', 'zegarek-tarcza-chrome.JPG', '', '', '0', '', '0', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty_img`
--

CREATE TABLE `produkty_img` (
  `id` int(11) NOT NULL,
  `id_produktu` bigint(11) NOT NULL,
  `nr` int(11) NOT NULL,
  `img` text NOT NULL,
  `nazwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `produkty_img`
--

INSERT INTO `produkty_img` (`id`, `id_produktu`, `nr`, `img`, `nazwa`) VALUES
(1, 2, 0, '2-gadzety-reklamowe.jpg', ''),
(2, 2, 1, '2-odziez-reklamowa.jpg', ''),
(3, 2, 2, '2-odziez-sportowa.jpg', ''),
(4, 2, 3, '2-odziez-szyta-premium.jpg', ''),
(5, 3, 0, '3-shutterstock_84774973-980x580.jpg', ''),
(6, 220, 0, 'pokemon-eevee-i32845.jpg', ''),
(7, 220, 1, 'pokemon.jpg', ''),
(9, 1, 1, '1-1.jpg', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty_kategorie`
--

CREATE TABLE `produkty_kategorie` (
  `id` int(11) NOT NULL,
  `id_produktu` bigint(11) NOT NULL,
  `id_kategorii` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `produkty_kategorie`
--

INSERT INTO `produkty_kategorie` (`id`, `id_produktu`, `id_kategorii`) VALUES
(1, 1, 4),
(2, 1, 1),
(3, 3, 2),
(4, 4, 2),
(5, 2, 2),
(6, 4, 4),
(7, 2, 4),
(8, 3, 4),
(9, 11, 2),
(10, 11, 5),
(11, 12, 4),
(12, 12, 2),
(13, 7, 4),
(14, 5, 2),
(15, 5, 4),
(16, 13, 2),
(17, 7, 2),
(18, 13, 5),
(19, 14, 2),
(20, 14, 5),
(21, 6, 2),
(22, 6, 4),
(23, 10, 2),
(24, 10, 4),
(25, 19, 3),
(26, 8, 2),
(27, 8, 4),
(28, 17, 6),
(29, 9, 2),
(30, 17, 2),
(31, 9, 4),
(32, 18, 2),
(33, 18, 6),
(34, 16, 2),
(35, 15, 2),
(36, 15, 6),
(37, 20, 3),
(38, 16, 6),
(39, 21, 3),
(40, 22, 3),
(41, 24, 4),
(42, 23, 3),
(43, 26, 9),
(44, 24, 2),
(45, 29, 9),
(46, 27, 9),
(47, 25, 3),
(48, 31, 9),
(49, 28, 9),
(50, 30, 9),
(51, 33, 9),
(52, 32, 9),
(53, 35, 9),
(54, 34, 9),
(55, 36, 9),
(56, 42, 12),
(57, 43, 17),
(58, 45, 16),
(59, 47, 16),
(60, 46, 16),
(61, 44, 17),
(62, 50, 10),
(63, 48, 16),
(64, 53, 20),
(65, 52, 20),
(66, 55, 20),
(67, 58, 20),
(68, 56, 20),
(69, 57, 20),
(70, 60, 20),
(71, 62, 20),
(72, 61, 20),
(73, 59, 20),
(74, 54, 20),
(75, 63, 20),
(76, 67, 20),
(77, 66, 20),
(78, 68, 20),
(79, 64, 20),
(80, 65, 20),
(81, 69, 20),
(82, 70, 20),
(83, 73, 20),
(84, 72, 19),
(85, 71, 20),
(86, 76, 18),
(87, 74, 18),
(88, 77, 18),
(89, 78, 18),
(90, 79, 9),
(91, 80, 9),
(92, 81, 9),
(93, 75, 18),
(94, 84, 19),
(95, 82, 20),
(96, 87, 19),
(97, 86, 19),
(98, 83, 19),
(99, 85, 19),
(100, 88, 19),
(102, 90, 19),
(103, 93, 19),
(104, 91, 19),
(105, 95, 19),
(106, 92, 19),
(107, 94, 19),
(108, 96, 16),
(109, 97, 16),
(110, 106, 5),
(111, 107, 2),
(112, 107, 5),
(113, 110, 5),
(114, 110, 2),
(115, 106, 2),
(116, 111, 5),
(117, 111, 2),
(118, 112, 2),
(119, 116, 2),
(120, 112, 5),
(121, 114, 8),
(122, 114, 9),
(123, 133, 9),
(124, 132, 8),
(125, 134, 9),
(126, 137, 9),
(127, 135, 9),
(128, 145, 9),
(129, 153, 9),
(130, 173, 9),
(131, 172, 9),
(132, 174, 5),
(133, 174, 2),
(134, 176, 9),
(135, 178, 9),
(136, 175, 2),
(137, 175, 4),
(138, 179, 9),
(139, 180, 5),
(140, 180, 2),
(141, 177, 19),
(142, 184, 20),
(143, 181, 2),
(144, 182, 2),
(145, 181, 5),
(146, 182, 4),
(147, 183, 20),
(148, 186, 6),
(149, 187, 2),
(150, 188, 10),
(151, 187, 4),
(152, 189, 20),
(153, 185, 20),
(154, 191, 19),
(155, 191, 20),
(156, 197, 9),
(157, 199, 9),
(158, 198, 9),
(159, 200, 9),
(160, 201, 9),
(161, 204, 19),
(162, 203, 19),
(163, 202, 19),
(164, 209, 9),
(165, 206, 9),
(166, 207, 9),
(167, 205, 11),
(168, 210, 9),
(169, 213, 9),
(170, 215, 8),
(171, 212, 9),
(172, 214, 9),
(173, 217, 9),
(174, 218, 9),
(175, 211, 9),
(176, 219, 9),
(177, 220, 9),
(178, 216, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strony`
--

CREATE TABLE `strony` (
  `id` bigint(20) NOT NULL,
  `nazwa` tinytext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwaen` tinytext NOT NULL,
  `nazwade` tinytext NOT NULL,
  `naglowek` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nagloweken` text NOT NULL,
  `naglowekde` tinytext NOT NULL,
  `tekst` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `teksten` text CHARACTER SET utf8 NOT NULL,
  `tekstde` text NOT NULL,
  `g` tinyint(4) NOT NULL DEFAULT 0,
  `parent` bigint(20) NOT NULL,
  `nr` float NOT NULL,
  `widocznosc` int(11) NOT NULL,
  `widocznosc_karuzela` tinyint(4) NOT NULL,
  `wybrane_artykuly` tinyint(1) NOT NULL DEFAULT 0,
  `wybrane_artykulyen` tinyint(4) NOT NULL,
  `wybrane_artykulyde` tinyint(4) NOT NULL,
  `nazwa_pliku` tinytext NOT NULL,
  `nazwa_plikuen` tinytext NOT NULL,
  `nazwa_plikude` tinytext NOT NULL,
  `link` tinytext NOT NULL,
  `linken` tinytext NOT NULL,
  `linkde` tinytext NOT NULL,
  `szablon` tinytext NOT NULL,
  `szablonen` tinytext NOT NULL,
  `szablonde` tinytext NOT NULL,
  `style` text NOT NULL,
  `img` tinytext NOT NULL,
  `img_strona` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `titleen` tinytext NOT NULL,
  `titlede` tinytext NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `descriptionen` text NOT NULL,
  `descriptionde` text NOT NULL,
  `keywords` text NOT NULL,
  `keywordsen` text NOT NULL,
  `keywordsde` text NOT NULL,
  `artykuly_id` int(11) NOT NULL,
  `albumy_id` int(11) NOT NULL,
  `dodatkowe_id` int(11) NOT NULL,
  `grupy_sekcyjne_id` int(11) NOT NULL,
  `banery_id` int(11) NOT NULL,
  `tlumaczen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `strony`
--

INSERT INTO `strony` (`id`, `nazwa`, `nazwaen`, `nazwade`, `naglowek`, `nagloweken`, `naglowekde`, `tekst`, `teksten`, `tekstde`, `g`, `parent`, `nr`, `widocznosc`, `widocznosc_karuzela`, `wybrane_artykuly`, `wybrane_artykulyen`, `wybrane_artykulyde`, `nazwa_pliku`, `nazwa_plikuen`, `nazwa_plikude`, `link`, `linken`, `linkde`, `szablon`, `szablonen`, `szablonde`, `style`, `img`, `img_strona`, `title`, `titleen`, `titlede`, `description`, `descriptionen`, `descriptionde`, `keywords`, `keywordsen`, `keywordsde`, `artykuly_id`, `albumy_id`, `dodatkowe_id`, `grupy_sekcyjne_id`, `banery_id`, `tlumaczen`) VALUES
(1, 'Strona główna', 'HOME', 'START', '', '<h1>HERE YOU WILL FIND AN APARTMENT FOR YOURSELF</h1>\r\n<h2>FREE APARTMENTS</h2>\r\n<p style=\"text-align: center; font-size: 18px;\"><em>minimum rental period of 5 days</em></p>', '<h1>HIER FINDEN SIE EINE PASSENDE WOHNUNG</h1>\r\n<h2>FREIE WOHNUNGEN</h2>\r\n<p style=\"font-size: 18px; text-align: center;\"><em>Die Mindestdauer der Vermietung beträgt 5 Tage</em></p>', '', '', '', 0, -1, 0, 1, 0, 0, 0, 0, 'index', 'en', 'de', '/', '0', '0', 'index.php', '', '', '', '', '', '', 'Apartments in Lodz Poland.', 'Wohnungen Lodz mieten.', '', '', '', '', '', '', 0, 0, 0, 201, 0, 1),
(129, 'Kontakt', 'Contact', '', '<h4>DANE KONTAKTOWE</h4>\r\n<p>telefon: <a href=\"tel:#TELEFON_FIRMY1#\">#TELEFON_FIRMY_LABEL1#</a></p>\r\n<p>email: <a href=\"mailto:#ADRES_EMAIL_FIRMY#\">#ADRES_EMAIL_FIRMY#</a></p>\r\n<p>Trasa dojazdu: <a href=\"#TRASA_GOOGLE_FIRMY#\" target=\"_blank\" rel=\"noopener noreferrer\">wyznacz</a></p>', '', '', '<h4>DANE ADRESOWE</h4>\r\n<p>#NAZWA_FIRMY#</p>\r\n<p>ul. #ULICA_FIRMY#</p>\r\n<p>#KOD_POCZTOWY_FIRMY# #MIASTO_FIRMY#</p>\r\n<p></p>', '', '', 0, -1, 9, 1, 0, 0, 0, 0, 'kontakt', 'en/contact', '', 'kontakt', '0', '0', 'kontakt.php', '', '', '', '', '3124518.jpg', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 1),
(193, 'O nas', 'ABOUT US', '', '', '', '', '<h2>O nas</h2>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', 0, -1, 1, 1, 1, 0, 0, 0, 'onas', 'en/about-us', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 1),
(304, 'Polityka prywatności', '', '', '', '', '', '<h3>Szanowni Państwo</h3>\r\n<p>Zgodnie z art. 13 ogólnego Rozporządzenia Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016r. o ochronie danych osobowych (RODO) chcemy poinformować Państwa o zasadach przetwarzania danych osobowych oraz o przysługujących w związku z tym prawach.</p>\r\n<p>Administratorem danych osobowych jest<span> </span>#NAZWA_FIRMY#<strong></strong><span> </span>z siedzibą w #MIASTO_FIRMY#, #KOD_POCZTOWY_FIRMY#, ul. #ULICA_FIRMY#, w sprawie ochrony Państwa danych można kontaktować się pisząc na adres administratora wskazany powyżej lub na adres e-mail #ADRES_EMAIL_FIRMY#.</p>\r\n<p><strong><span>Państwa dane osobowe przetwarzane będą w celu:</span></strong></p>\r\n<ol>\r\n<li>zawarcia, wykonania i kontynuacji umów na usługi oferowane przez Administratora,</li>\r\n<li>sprzedaży usług oferowanych przez Administratora,</li>\r\n<li>obsługi serwisowej usług oferowanych przez Administratora,</li>\r\n<li>prowadzenia działań marketingowych przez Administratora samodzielnie lub we współpracy z innymi podmiotami,</li>\r\n<li>dochodzenia roszczeń,</li>\r\n<li>archiwizacji,</li>\r\n<li>udzielania odpowiedzi na pisma i wnioski,</li>\r\n<li>prowadzenia działań związanych z zapewnieniem bezpieczeństwa,</li>\r\n<li>wypełnianie obowiązku prawnego ciążącego na Administratorze (w szczególności: wystawiania i przechowywania faktur/dokumentów sprzedaży i innych dokumentów księgowych, rozpatrywania reklamacji),</li>\r\n<li>prowadzenia analiz i statystyk w zakresie prowadzonej działalności gospodarczej.</li>\r\n</ol>\r\n<p>Państwa dane osobowe są przetwarzane w następującym zakresie: imienia i nazwiska, stanowisko, danych kontaktowych (e-mail, nr. telefonu) i adresowych, firma reprezentowanego podmiotu, w przypadku przedsiębiorców przetwarzamy dodatkowo: NIP, REGON, adres siedziby, numer rachunku bankowego.</p>\r\n<p><strong><span>Podstawą prawną przetwarzania Państwa danych może być:</span></strong></p>\r\n<ol>\r\n<li>udzielona zgoda;</li>\r\n<li>konieczność wykonania umowy lub podjęcia działań na Pani/Pana żądanie przed zawarciem umowy;</li>\r\n<li>konieczność wypełnienia obowiązku prawnego ciążącego na Administratorze;</li>\r\n<li>konieczność wynikająca z prawnie uzasadnionych interesów realizowanych przez Administratora.</li>\r\n</ol>\r\n<p><strong><span>Państwa dane mogą być przekazywane następującym podmiotom:</span></strong></p>\r\n<ol>\r\n<li>podmiotom współpracującym oraz kontrahentom, w związku ze zleconymi przez Administratora działaniami realizowanymi na jego rzecz i w jego imieniu,</li>\r\n<li>firmom kurierskim i pocztowym, które będą dostarczać do Państwa przesyłki,</li>\r\n<li>kancelariom prawnym, obsługującym Administratora w zakresie prowadzonych działań,</li>\r\n<li>podmiotom lub organom uprawnionym na podstawie przepisów prawa.</li>\r\n</ol>\r\n<p>Administrator zobowiązuje się stosować odpowiednie środki bezpieczeństwa, zarówno techniczne jak i organizacyjne, aby chronić Państwa dane osobowe.</p>\r\n<p>Państwa dane osobowe przechowywane będą przez okres adekwatny i nie dłuższy od okresów zgodnych z aktualnie obowiązującymi przepisami prawa w poszczególnych obszarach przetwarzania danych osobowych tj.</p>\r\n<ol>\r\n<li>przepisy prawa, które mogą obligować Administratora do przetwarzania danych przez określony czas (np. ustawa o rachunkowości),</li>\r\n<li>okres przez jaki są świadczone usługi,</li>\r\n<li>okres, który jest niezbędny do obrony interesów Administratora,</li>\r\n<li>okres na jaki została udzielona zgoda.</li>\r\n</ol>\r\n<p><strong><span>Ponadto informujemy, że macie Państwo prawo do:</span></strong></p>\r\n<ol>\r\n<li>żądania dostępu do dotyczących Państwa danych osobowych w celu sprostowania danych,</li>\r\n<li>żądania uzupełnienia niekompletnych danych osobowych, w tym poprzez przedstawienie dodatkowego oświadczenia,</li>\r\n<li>usunięcia danych lub ograniczenia przetwarzania,</li>\r\n<li>wniesienia sprzeciwu wobec dalszego przetwarzania danych osobowych,</li>\r\n<li>żądania usunięcia Państwa danych ze zbioru danych osobowych #NAZWA_FIRMY#,</li>\r\n<li>prawo do niepodlegania profilowaniu,</li>\r\n<li>przeniesienia swoich danych osobowych.</li>\r\n</ol>\r\n<p>Zgodnie z art.21 ust.4 RODO informujemy, iż przysługuje Państwu prawo wniesienia sprzeciwu wobec przetwarzania dotyczących Państwa danych osobowych. Sprzeciw należy złożyć inspektorowi ochrony danych. Zgodnie z art. 21 ust. 1 RODO, składając sprzeciw, należy wskazać jego przyczyny związane z Państwa szczególną sytuacją.</p>\r\n<p>W przypadku wątpliwości co do prawidłowości przetwarzania danych osobowych przez Administratora, przysługuje Państwu prawo wniesienia skargi do organu nadzorczego.</p>\r\n<p>Państwa dane nie będą przetwarzane w sposób zautomatyzowany, w tym również w formie profilowania.</p>\r\n<p></p>', '', '', 1, 329, 11, 1, 0, 0, 0, 0, 'polityka-prywatnosci', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(305, 'Polityka cookies', '', '', '', '', '', '<h3>Pliki cookies – informacja skrócona</h3>\r\n<h4>Czym są pliki „cookies”?</h4>\r\n<p></p>\r\n<p>Pliki „cookies” to dane informatyczne, w szczególności pliki tekstowe, przechowywane w urządzeniach końcowych użytkowników (komputerach, telefonach, etc.) przeznaczone do korzystania ze stron internetowych. Pliki te pozwalają rozpoznać urządzenie użytkownika i odpowiednio wyświetlić stronę internetową dostosowaną do jego indywidualnych preferencji. „Cookies” zazwyczaj zawierają nazwę strony internetowej z której pochodzą, czas przechowywania ich na urządzeniu końcowym oraz unikalny numer.</p>\r\n<h4>Do czego używamy plików „cookies”?</h4>\r\n<p></p>\r\n<p>Pliki cookie zawarte są w protokole HTTP, który służy do komunikacji serwera internetowego z przeglądarką. Składa się z: klucza określającego nazwę wartości, wartości i czasu życia po jakim przeglądarka powinna usunąć plik cookie. Ich funkcje są w większości standardowe dla przewidzianych przez przeglądarki ustawień. Pliki cookies używane są w celu ułatwienia korzystania ze strony oraz dostosowania jej zawartości, w tym naszych ofert, do preferencji użytkownika oraz zwiększenia użyteczności i personalizacji zawartości witryn internetowych.</p>\r\n<h4>Polityka prywatności a pliki „cookies”</h4>\r\n<p></p>\r\n<p>Gdy użytkownik korzysta z naszej strony stosujemy pliki cookies umożliwiające identyfikację przeglądarki lub urządzenia użytkownika - pliki „cookies” zbierają różnego rodzaju informacje, które co do zasady nie stanowią danych osobowych (nie pozwalają na identyfikację użytkownika). Niektóre informacje, w zależności od ich zawartości i sposobu wykorzystania, mogą jednak zostać powiązane z konkretną osobą, a tam samym zostać uznane za dane osobowe. W związku z polityką eobuwie.pl dane są zaszyfrowane co uniemożliwia dostęp do nich osobom nieupoważnionym.</p>\r\n<p></p>', '', '', 1, 329, 10, 1, 0, 0, 0, 0, 'polityka-cookies', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(306, 'Mapa serwisu', '', '', '', '', '', '', '', '', 0, -1, 10, 0, 0, 0, 0, 0, 'mapa-serwisu', '', '', '', '0', '0', 'mapa_strony.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(307, 'Zapytanie', 'Zapytanie EN', '', '<p>Jeśli masz pytanie, wypełnij i prześlij ten formularz, a my skontaktujemy się z Tobą jak najszybciej.</p>', '', '', '<p>Dziękujemy za przesłanie zapytania.</p>\r\n<p>Postaramy się odpowiedzieć jak najszybciej.</p>\r\n<p>Prosimy również o sprawdzenie wysłanych do nas poniższych informacji i w razie pomyłki skontaktować się znami.</p>', '', '', 0, -1, 12, 0, 0, 0, 0, 0, 'zapytanie', 'en/question', 'de/anfrage', '', '0', '0', 'zapytanie.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(308, 'testowa', '', '', '', '', '', '', '', '', 0, -1, 8, 1, 0, 0, 0, 0, '', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(309, 'testowa z sekcjami', '', '', '', '', '', '', '', '', 0, -1, 7, 0, 0, 0, 0, 0, 'testowa-z-sekcjami', '', '', '', '0', '0', 'grupy_sekcyjne.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 361, 0, 0),
(310, 'Wyszukiwarka', '', '', '', '', '', '<h3>Wyszukiwarka</h3>\r\n<p>Wyszukiwanie produktów według ustalonych kryteriów.</p>', '', '', 0, -1, 13, 0, 0, 0, 0, 0, 'szukaj', '', '', '', '0', '0', 'szukaj.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(311, 'Blog', '', '', '', '', '', '', '', '', 0, -1, 2, 1, 0, 0, 0, 0, 'blog', '', '', '', '0', '0', 'artykuly.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(312, 'podstrona testowa', '', '', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. erfgegerge</p>', '', '', 1, 308, 0, 1, 0, 1, 0, 0, 'podstrona-testowa', '', '', '', '0', '0', 'grupy_sekcyjne.php', '', '', '', '1-2.png', '', '', '', '', '', '', '', 'opróżnianie mieszkań Łódź, sprzątanie mieszkań Łódź, opróżnianie działek, sprzątanie po zalaniach, opróżnianie garaży, dezynfekcja Łódź, łódzkie, dezynsekcja, likwidacja pluskiew, wywóz gabarytów, usługi ogrodnicze', '', '', 0, 0, 0, 361, 0, 0),
(313, 'Galerie', '', '', '', '', '', '', '', '', 0, -1, 4, 1, 0, 0, 0, 0, 'galerie', '', '', '', '0', '0', 'galerie.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 0, 0, 0),
(314, 'podstrona testowa 2', '', '', '', '', '', '', '', '', 2, 312, 0, 0, 0, 0, 0, 0, 'ala-ma-kota2', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(315, 'podstrona testowa 3', '', '', '', '', '', '', '', '', 3, 314, 1.5, 0, 0, 0, 0, 0, 'strony315', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(316, 'Aktualności', '', '', '', '', '', '<h3 style=\"text-align: center;\">Aktualności</h3>', '', '', 0, -1, 3, 1, 0, 0, 0, 0, 'aktualnosci', '', '', '', '0', '0', 'aktualnosci.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(318, 'Sklep', '', '', '', '', '', '', '', '', 0, -1, 14, 0, 0, 0, 0, 0, 'sklep', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(319, 'Koszyk', '', '', '<p>Wiadomość o złożeniu zamówienia również została wysłana na adres mailowy podany w formularzu rejestracyjnym.</p>', '', '', '<p>Zamówienie zostało wysłane do administratora serwisu oraz do klienta sklepu internetowego.</p>', '', '', 1, 318, 0, 0, 0, 0, 0, 0, 'koszyk', '', '', '', '0', '0', 'sklep/koszyk.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(320, 'Logowanie', '', '', '<h2>Logowanie</h2>', '', '', '<div class=\"file-type-webp\"><img src=\"/demo/img/tinymce/Dietetyka2.webp\" width=\"\" height=\"\" /></div>', '', '', 1, 318, 1, 0, 0, 0, 0, 0, 'logowanie', '', '', '', '0', '0', 'sklep/logowanie.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(321, 'Rejestracja', '', '', '<h2>Rejestracja nowego użytkownika</h2>\r\n<p>Jakaś tam treść.</p>', '', '', '<h2>Rejestracja nowego użytkownika</h2>\r\n<p>W celu pełnej rejestracji konta potwierdź poniższy link aktywacyjny.</p>', '', '', 1, 318, 2, 0, 0, 0, 0, 0, 'rejestracja', '', '', '', '0', '0', 'sklep/rejestracja.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(322, 'Panel klienta', '', '', '', '', '', '', '', '', 1, 318, 3, 0, 0, 0, 0, 0, 'panel-klienta', '', '', '', '0', '0', 'sklep/panel_klienta.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(323, 'Płatności', '', '', '<p>Płatność została wykonana poprawnie.</p>', '', '', '<p>Za chwile zostaniesz przekierowany do płatności możesz również przyspieszyć ten proces klikając w poniższy przycisk.</p>', '', '', 1, 318, 4, 0, 0, 0, 0, 0, 'platnosci', '', '', '', '0', '0', 'sklep/platnosci.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(324, 'Tabela Produktów', '', '', '', '', '', '<p>treść</p>', '', '', 0, -1, 11, 0, 0, 0, 0, 0, 'tabela-produktow', '', '', '', '0', '0', 'tabela_produktow.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(325, 'Generowanie nowego hasła', '', '', '<p>Podaj adres skrzynki pocztowej dla której jest utworzone konto w sklepie.</p>', '', '', '<p>Poniżej przesyłamy link który umożliwia wygenerowanie hasła dla Twojego konta w sklepie internetowym.</p>', '', '', 1, 318, 5, 0, 0, 0, 0, 0, 'sklep/generowanie-nowego-hasla', '', '', '', '0', '0', 'szablon.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(326, 'Katalog', '', '', '', '', '', '', '', '', 0, -1, 6, 1, 0, 0, 0, 0, '', '', '', '', '0', '0', 'produkty.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(328, 'Partnerzy', '', '', '', '', '', '', '', '', 0, -1, 5, 1, 0, 0, 0, 0, 'partnerzy', '', '', '', '0', '0', 'logotypy.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 101, 0, 0, 0),
(329, 'Stopka dodatek', '', '', '', '', '', '', '', '', 0, -1, 15, 0, 0, 0, 0, 0, 'stopka-dodatek', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0),
(330, 'nowa strona', '', '', '', '', '', '', '', '', 0, -1, 16, 0, 0, 0, 0, 0, 'nowa330', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ustawienia`
--

CREATE TABLE `ustawienia` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `wartosc` text COLLATE utf8_polish_ci NOT NULL,
  `hasztag` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nr` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ustawienia`
--

INSERT INTO `ustawienia` (`id`, `nazwa`, `wartosc`, `hasztag`, `nr`) VALUES
(1, 'Nazwa firmy', 'WAGA s.c.', '#NAZWA_FIRMY#', 1),
(2, 'Telefon firmy 1', '0426598339', '#TELEFON_FIRMY1#', 3),
(3, 'Adres email firmy', 'waga@home.pl', '#ADRES_EMAIL_FIRMY#', 4),
(4, 'Miasto firmy', 'Łódź', '#MIASTO_FIRMY#', 5),
(5, 'Kod pocztowy firmy', '91-503', '#KOD_POCZTOWY_FIRMY#', 6),
(6, 'Ulica firmy', 'Rysia 1', '#ULICA_FIRMY#', 7),
(7, 'Lokalizacja google firmy', '<p><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2466.7041201806187!2d19.477190915781176!3d51.81156677968631!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471bca513e7c4915%3A0xabce0b80420df46d!2zUnlzaWEgMSwgOTEtNTAzIMWBw7Nkxbo!5e0!3m2!1spl!2spl!4v1623166866583!5m2!1spl!2spl\" width=\"600\" height=\"450\" style=\"border: 0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe></p>', '#LOKALIZACJA_GOOGLE_FIRMY#', 8),
(8, 'Strona www', 'http://www.waga-time.com.pl/', '#STRONA_WWW#', 9),
(9, 'Telefon firmowy 2', '0426598043', '#TELEFON_FIRMY2#', 11),
(10, 'Facebook', '#', '#FACEBOOK_LINK#', 12),
(11, 'Linkedin', '#', '#LINKEDIN_LINK#', 13),
(12, 'Adres email firmy 2', 'biuro@waga-time.com.pl', '#ADRES_EMAIL_FIRMY2#', 14),
(13, 'Telefon firmy label 1', '042 659-83-39', '#TELEFON_FIRMY_LABEL1#', 2),
(14, 'Telefon firmy label 2', '042 659-80-43', '#TELEFON_FIRMY_LABEL2#', 10),
(15, 'Pole 1', '', '#POLE_1#', 15),
(16, 'Pole 2', '', '#POLE_2#', 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `warianty`
--

CREATE TABLE `warianty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` bigint(20) NOT NULL,
  `id_klienta` tinyint(4) NOT NULL,
  `Imie` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Nazwa_firmy` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Telefon` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Email` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Miasto` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Ulica` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Kraj` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Czy_faktura` tinyint(4) NOT NULL DEFAULT 0,
  `Nazwa_firmy_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `NIP_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Ulica_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Miasto_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Kraj_faktura` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Uwagi` text COLLATE utf8_polish_ci NOT NULL,
  `Platnosc_rodzaj` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Dostawa_rodzaj` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Dostawa_koszt` decimal(10,2) NOT NULL,
  `Status` tinytext COLLATE utf8_polish_ci NOT NULL,
  `Data_zlozenia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `id_klienta`, `Imie`, `Nazwisko`, `Nazwa_firmy`, `Telefon`, `Email`, `Miasto`, `Kod_pocztowy`, `Ulica`, `Kraj`, `Czy_faktura`, `Nazwa_firmy_faktura`, `NIP_faktura`, `Ulica_faktura`, `Kod_pocztowy_faktura`, `Miasto_faktura`, `Kraj_faktura`, `Uwagi`, `Platnosc_rodzaj`, `Dostawa_rodzaj`, `Dostawa_koszt`, `Status`, `Data_zlozenia`) VALUES
(1, 0, 'imie', 'nazwisko', 'nazwa firmy', '23452122', 'kari5a@interia.pl', 'miasto', 'kod pocztowy', 'ulica i numer', 'kraj', 0, 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr', '4 g445gheyjyejy jyjyt', '', '', '0.00', 'Do zatwierdzenia', '2022-05-25 00:00:00'),
(2, 0, 'imie', 'nazwisko', 'nazwa firmy', '23452122', 'kari5a@interia.pl', 'miasto', 'kod pocztowy', 'ulica i numer', 'kraj', 0, 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr', '4 g445gheyjyejy jyjyt', '', '', '0.00', 'Do zatwierdzenia', '2022-05-25 00:00:00'),
(3, 0, 'imie', 'nazwisko', 'nazwa firmy', '23452122', 'kari5a@interia.pl', 'miasto', 'kod pocztowy', 'ulica i numer', 'kraj', 0, 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr', '4 g445gheyjyejy jyjyt', '', '', '0.00', 'Do zatwierdzenia', '2022-05-25 00:00:00'),
(4, 13, 'imie', 'nazwisko', 'nazwa firmy', '23452122', 'kari5a@interia.pl', 'miasto', 'kod pocztowy', 'ulica i numer', 'kraj', 0, 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr', '4 g445gheyjyejy jyjyt', '', '', '0.00', 'Do zatwierdzenia', '2022-05-25 00:00:00'),
(5, 13, 'imie2', 'nazwisko2', 'nazwa firmy2', '23452122', 'kari5a@interia.pl', 'miasto2', 'kod pocztowy2', 'ulica i numer2', 'kraj2', 0, 'fdss', 'nipger', 'ulicsaaew', 'kodew44', 'mistswo43', 'jkrafeewr', 'fr3 gr3ggrgr uwagi', '', '', '0.00', 'Do zatwierdzenia', '2022-05-26 00:00:00'),
(6, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 00:00:00'),
(7, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 00:00:00'),
(8, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 14:19:03'),
(9, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 14:22:31'),
(10, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 14:22:59'),
(11, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastian@blumo.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 14:46:42'),
(12, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'jakie ta uwa', '', '', '0.00', 'Do zatwierdzenia', '2022-05-31 15:35:44'),
(13, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', '', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:16:23'),
(14, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', '', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:20:42'),
(15, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', 'uuuuuuwwwwwaaaaaagggggiiiiiii', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:21:28'),
(16, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', 'uuuuuuwwwwwaaaaaagggggiiiiiii', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:26:16'),
(17, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 1, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uuuuuuwwwwwaaaaaagggggiiiiiii', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:27:25'),
(18, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 1, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uuuuuuwwwwwaaaaaagggggiiiiiii55555555555555555', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:28:42'),
(19, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', 'uuuuuuwwwwwaaaaaagggggiiiiiii55555555555555555', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:29:14'),
(20, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 1, 'Mokota1', '874535354343', 'Majowa 231', '43-234', 'Gdynia1', 'Polska', 'uuuuuuwwwwwaaaaaagggggiiiiiii55555555555555555', '', '', '0.00', 'Do zatwierdzenia', '2022-06-01 08:30:26'),
(21, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-06-01 12:30:47'),
(22, 0, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Paypal', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-06-01 12:46:59'),
(23, 13, 'Krzysztof', 'Kolasiński', 'Mokota', '456776564', 'sebastiank24@wp.pl', 'Zabrze', '83-234', 'Kurza 34', 'Polska', 1, 'Mokota', '874535354343', 'Majowa 23', '43-234', 'Gdynia', 'Polska', 'uwagi do zamówienia', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-06-01 12:49:34'),
(24, 0, 'imie2', 'nazwisko', 'nazwa firmy', '5432334523', 'kari5a@interia.pl', 'Gdańsk', '83-234', 'ulica i numer', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 12:55:31'),
(25, 0, 'imie2', 'nazwisko', 'nazwa firmy', '5432334523', 'kari5a@interia.pl', 'Gdańsk', '83-234', 'ulica i numer', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 12:57:35'),
(26, 0, 'imie2', 'nazwisko', 'nazwa firmy', '5432334523', 'kari5a@interia.pl', 'Gdańsk', '83-234', 'ulica i numer', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 14:39:34'),
(27, 0, 'imie2', 'nazwisko', 'nazwa firmy', '5432334523', 'kari5a@interia.pl', 'Gdańsk', '83-234', 'ulica i numer', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 14:43:10'),
(28, 0, 'Karolina Kuźnik', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-10 14:50:29'),
(29, 0, 'Karolina Kuźnik', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 14:54:34'),
(30, 0, 'Karolina Kuźnik', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-10 15:31:02'),
(31, 0, 'Karolina Kuźnik', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-10 15:32:25'),
(32, 0, 'imie2', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-10 15:52:27'),
(33, 0, '', '', '', '23452122', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 10:43:16'),
(34, 0, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 13:00:33'),
(35, 0, 'Karolina Kuźnik', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 13:04:47'),
(36, 0, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 13:18:44'),
(37, 0, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-16 14:06:00'),
(38, 0, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 14:08:01'),
(39, 16, '', '', '', '987436043', 'sebastian@blumo.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 14:15:54'),
(40, 16, '', '', '', '435363452', 'sebastian@blumo.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 14:50:22'),
(41, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 14:55:31'),
(42, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:20:20'),
(43, 16, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:22:26'),
(44, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:25:49'),
(45, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-16 15:27:16'),
(46, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:40:31'),
(47, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:42:31'),
(48, 16, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:44:02'),
(49, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:45:20'),
(50, 16, 'imie2', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:47:07'),
(51, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:48:04'),
(52, 16, '', '', '', '5432334524', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '0.00', 'Do zatwierdzenia', '2022-08-16 15:51:20'),
(53, 16, '', '', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:54:52'),
(54, 16, 'imie2', 'nazwisko2', '', '5432334523', 'kari5a@interia.pl', '', '', '', 'Polska', 0, '', '', '', '', '', '', '', 'Payu', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2022-08-16 15:56:21'),
(55, 0, 'Zenek', 'Kowalski', '', '436453453', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', 'Jakies tam uwagi', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:04:23'),
(56, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:26:17'),
(57, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:35:45'),
(58, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:40:20'),
(59, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:40:56'),
(60, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:41:12'),
(61, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:44:13'),
(62, 0, 'Zenek', 'Kowalski', '', '64675456', 'zenek@wp.pl', 'Kozia Wolka', '23-453', 'Dluga 3', 'Polska', 0, '', '', '', '', '', '', '', 'Przelew tradycyjny', 'Kurier DPD [ 10zł ]', '10.00', 'Do zatwierdzenia', '2023-02-27 16:54:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia_produkty`
--

CREATE TABLE `zamowienia_produkty` (
  `id` int(4) NOT NULL,
  `id_zamowienia` tinyint(4) NOT NULL,
  `nazwa` tinytext COLLATE utf8_polish_ci NOT NULL,
  `nazwa_pliku` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `wariant` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ilosc` int(11) NOT NULL,
  `cena_jedn` decimal(10,2) NOT NULL,
  `img` tinytext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia_produkty`
--

INSERT INTO `zamowienia_produkty` (`id`, `id_zamowienia`, `nazwa`, `nazwa_pliku`, `opis`, `wariant`, `ilosc`, `cena_jedn`, `img`) VALUES
(1, 1, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(2, 1, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', 'ZEGAR REKLAMOWY Ø 330 SREBRNY<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', '___330_SREBRNY_4930031e90630.jpg'),
(3, 2, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(4, 2, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', 'ZEGAR REKLAMOWY Ø 330 SREBRNY<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', '___330_SREBRNY_4930031e90630.jpg'),
(5, 3, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(6, 3, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', 'ZEGAR REKLAMOWY Ø 330 SREBRNY<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', '___330_SREBRNY_4930031e90630.jpg'),
(7, 4, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(8, 4, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', 'ZEGAR REKLAMOWY Ø 330 SREBRNY<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', '___330_SREBRNY_4930031e90630.jpg'),
(9, 5, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 86 Ø 260', 'zegar-reklamowy-z-nadrukiem-w-86-260', 'ZEGAR REKLAMOWY W-86 Ø 260\r\n<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', 'Nr_8603____260_5b5209c277209.jpg'),
(10, 5, 'Ø 260', '260', 'ZEGAR REKLAMOWY <span class=nagl>Ø</span> 260', '', 0, '0.00', 'Fi_260_48f5fba7ed4c1.jpg'),
(11, 6, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 86 Ø 260', 'zegar-reklamowy-z-nadrukiem-w-86-260', 'ZEGAR REKLAMOWY W-86 Ø 260\r\n<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', 'Nr_8603____260_5b5209c277209.jpg'),
(12, 6, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 61 Ø 300', 'zegar-reklamowy-z-nadrukiem-w-61-300', 'ZEGAR REKLAMOWY W-61 Ø 300 <br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', 'Nr_6103____300_5b520827f02d3.jpg'),
(13, 6, 'ZEGAR REKLAMOWY Z NADRUKIEM W-56 28.5x28cm', 'zegar-reklamowy-z-nadrukiem-w-56-28-5x28cm', 'ZEGAR REKLAMOWY SREBRNY KWADRATOWY 28.5x28cm\r\n<br />\r\n<span style=color: #ff0000></span>', '', 0, '0.00', 'KWADRATOWY_28.5x_4930005cc923f.jpg'),
(14, 6, 'REKLAMOWY NEONOWY', 'reklamowy-neonowy', 'ZEGAR REKLAMOWY NEONOWY', '', 0, '0.00', 'REKLAMOWY_NEONOW_48f70a97ce34f.jpg'),
(15, 8, 'KWADRATOWY 280x280', 'kwadratowy-280x280', 'ZEGAR KWADRATOWY 280x280\r\nZ SZYBĄ SOCZEWKOWATĄ', '', 0, '0.00', ''),
(16, 10, 'RAMKA CHROMOWANA Ø 380', 'ramka-chromowana-380', 'ZEGAR Z RAMKĄ CHROMOWANĄ\r\nØ 380 Z SZYBĄ CERAMICZNĄ\r\n<br />\r\n<span style=color: #ff0000>CENA: (KARTON-10 SZTUK) 16,50 PLN netto/szt.</span>', '', 0, '0.00', 'RAMKA_CHROMOWANA_48f7001c61c61.jpg'),
(17, 11, 'Ø 300 DREWNIANY 2', '300-drewniany-2', 'ZEGAR REKLAMOWY Ø 300 DREWNIANY\r\nZ SZYBĄ SOCZEWKOWATĄ', '', 0, '0.00', 'Fi_300_DREWNIANY_48f7044881ffe.jpg'),
(18, 12, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(19, 13, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(20, 14, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(21, 15, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(22, 16, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(23, 17, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(24, 18, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(25, 19, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(26, 20, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(27, 21, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '123.00', 'pokemon.jpg'),
(28, 21, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', '<p>ZEGAR REKLAMOWY Ø 330 SREBRNY<br /> <span ff0000=\"\"></span></p>', '', 0, '23.00', '___330_SREBRNY_4930031e90630.jpg'),
(29, 22, 'ZEGAR REKLAMOWY Z NADRUKIEM W- 61 Ø 300', 'zegar-reklamowy-z-nadrukiem-w-61-300', '<p>ZEGAR REKLAMOWY W-61 Ø 300 <br /> <span ff0000=\"\"></span></p>', '', 0, '122.00', 'Nr_6103____300_5b520827f02d3.jpg'),
(30, 23, 'ZEGAR REKLAMOWY Z NADRUKIEM NR 335 Ø 330 SREBRNY', 'zegar-reklamowy-z-nadrukiem-nr-335-330-srebrny', '<p>ZEGAR REKLAMOWY Ø 330 SREBRNY<br /> <span ff0000=\"\"></span></p>', '', 0, '23.00', '___330_SREBRNY_4930031e90630.jpg'),
(31, 24, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '0.00', 'pokemon.jpg'),
(32, 25, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '0.00', 'pokemon.jpg'),
(33, 26, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(34, 27, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(35, 28, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(36, 29, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(37, 30, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(38, 31, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(39, 32, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(40, 33, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(41, 34, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(42, 35, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(43, 36, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(44, 37, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(45, 38, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(46, 39, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(47, 40, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(48, 41, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(49, 42, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(50, 43, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(51, 44, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(52, 45, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(53, 46, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(54, 47, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(55, 48, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(56, 49, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(57, 50, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(58, 51, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(59, 52, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(60, 53, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(61, 54, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '12345.00', 'pokemon.jpg'),
(62, 55, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '150.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(63, 55, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', '', 0, '43.00', 'zegar-kwadratowy.JPG'),
(64, 56, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'cena1', 2, '120.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(65, 56, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'cena2', 1, '134.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(66, 56, 'OWALNY 370x260', 'owalny-370x260', 'ZEGAR REKLAMOWY OWALNY 370 x 260mm\r\nZ SZYBĄ SOCZEWKOWATĄ', 'cena', 1, '12.00', 'zegar-owalnyJPG.JPG'),
(67, 56, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', 'cena2', 1, '43.00', 'zegar-kwadratowy.JPG'),
(68, 57, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar mały', 2, '240.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(69, 57, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 1, '134.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(70, 57, 'OWALNY 370x260', 'owalny-370x260', 'ZEGAR REKLAMOWY OWALNY 370 x 260mm\r\nZ SZYBĄ SOCZEWKOWATĄ', '', 1, '12.00', 'zegar-owalnyJPG.JPG'),
(71, 57, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 1, '43.00', 'zegar-kwadratowy.JPG'),
(72, 60, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar mały', 2, '120.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(73, 60, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 1, '134.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(74, 60, 'OWALNY 370x260', 'owalny-370x260', 'ZEGAR REKLAMOWY OWALNY 370 x 260mm\r\nZ SZYBĄ SOCZEWKOWATĄ', '', 1, '12.00', 'zegar-owalnyJPG.JPG'),
(75, 60, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 1, '43.00', 'zegar-kwadratowy.JPG'),
(76, 61, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar mały', 2, '120.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(77, 61, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 3, '134.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(78, 61, 'OWALNY 370x260', 'owalny-370x260', 'ZEGAR REKLAMOWY OWALNY 370 x 260mm\r\nZ SZYBĄ SOCZEWKOWATĄ', '', 5, '12.00', 'zegar-owalnyJPG.JPG'),
(79, 61, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 8, '43.00', 'zegar-kwadratowy.JPG'),
(80, 62, 'ZEGAR REKLAMOWY Z NADRUKIEM Ø 300 PLASTIKOWY', 'zegar-reklamowy-z-nadrukiem-300-plastikowy', '<p>ZEGAR REKLAMOWY Ø 300 PLASTIKOWY Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar mały', 2, '120.00', 'zegar-reklamowy-z-nadrukiem.JPG'),
(81, 62, 'KWADRATOWY 280x280', 'kwadratowy-280x280', '<p>ZEGAR KWADRATOWY 280x280 Z SZYBĄ SOCZEWKOWATĄ</p>', 'rozmiar średni', 5, '43.00', 'zegar-kwadratowy.JPG'),
(82, 127, 'Czas Nadzieii', 'bukiety/czas-nadziei', '\r\n*****\r\n', 'rozmiar mały', 3, '249.00', '9381-czas-nadzieji.webp'),
(83, 127, 'Czas Nadzieii', 'bukiety/czas-nadziei', '\r\n*****\r\n', 'rozmiar mały', 3, '249.00', '9381-czas-nadzieji.webp'),
(84, 127, 'Czas Nadzieii', 'bukiety/czas-nadziei', '\r\n*****\r\n', 'rozmiar mały', 3, '249.00', '9381-czas-nadzieji.webp'),
(85, 120, 'Czas Nadzieii', 'bukiety/czas-nadziei', '\r\n*****\r\n', 'rozmiar mały', 3, '249.00', '9381-czas-nadzieji.webp'),
(86, 120, 'Czas Nadzieii', 'bukiety/czas-nadziei', '\r\n*****\r\n', 'rozmiar mały', 3, '249.00', '9381-czas-nadzieji.webp');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktualnosci`
--
ALTER TABLE `aktualnosci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `albumy`
--
ALTER TABLE `albumy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `albumy_img`
--
ALTER TABLE `albumy_img`
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `id_albumu` (`id_albumu`);

--
-- Indeksy dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `banery`
--
ALTER TABLE `banery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `banery_img`
--
ALTER TABLE `banery_img`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_albumu` (`id_banery`);

--
-- Indeksy dla tabeli `dodatkowe`
--
ALTER TABLE `dodatkowe`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `grupy_sekcyjne`
--
ALTER TABLE `grupy_sekcyjne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksiega_gosci`
--
ALTER TABLE `ksiega_gosci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mapa_google`
--
ALTER TABLE `mapa_google`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `id_kategorii` (`id_kategorii`);

--
-- Indeksy dla tabeli `produkty_img`
--
ALTER TABLE `produkty_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produktu` (`id_produktu`);

--
-- Indeksy dla tabeli `produkty_kategorie`
--
ALTER TABLE `produkty_kategorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produktu` (`id_produktu`);

--
-- Indeksy dla tabeli `strony`
--
ALTER TABLE `strony`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeksy dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `aktualnosci`
--
ALTER TABLE `aktualnosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `albumy`
--
ALTER TABLE `albumy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `albumy_img`
--
ALTER TABLE `albumy_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `banery`
--
ALTER TABLE `banery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `banery_img`
--
ALTER TABLE `banery_img`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT dla tabeli `dodatkowe`
--
ALTER TABLE `dodatkowe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT dla tabeli `grupy_sekcyjne`
--
ALTER TABLE `grupy_sekcyjne`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `ksiega_gosci`
--
ALTER TABLE `ksiega_gosci`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `mapa_google`
--
ALTER TABLE `mapa_google`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT dla tabeli `produkty_img`
--
ALTER TABLE `produkty_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `produkty_kategorie`
--
ALTER TABLE `produkty_kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT dla tabeli `strony`
--
ALTER TABLE `strony`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT dla tabeli `ustawienia`
--
ALTER TABLE `ustawienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_kategorii`) REFERENCES `kategorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `produkty_img`
--
ALTER TABLE `produkty_img`
  ADD CONSTRAINT `produkty_img_ibfk_1` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `produkty_kategorie`
--
ALTER TABLE `produkty_kategorie`
  ADD CONSTRAINT `produkty_kategorie_ibfk_1` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
