# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: acam
# Generation Time: 2015-10-17 12:42:27 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '2',
  `type_id` int(11) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '0',
  `featured` enum('OFF','ON') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OFF',
  `featured_image_id` int(11) DEFAULT NULL,
  `cover_image_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;

INSERT INTO `activities` (`id`, `title`, `slug`, `subtitle`, `description`, `status_id`, `type_id`, `position`, `featured`, `featured_image_id`, `cover_image_id`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'Difendere la proprietà intellettuale in Architettura','difendere-la-proprieta-intellettuale-in-architettura','Difendere le architetture contemporanee di qualità, oggetto di pesanti manomissioni e incuria, è un argomento di rilevanza pubblica per il quale l’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma hanno avviato un percorso di fattiva collaborazione.','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">L’iniziativa ha voluto riportare all’attenzione degli addetti ai lavori e della cittadinanza i temi della qualità nelle nuove costruzioni e negli interventi di recupero o trasformazione: dagli aspetti tecnici e normativi, alla regolamentazione e tutela della proprietà intellettuale nel processo di ideazione e realizzazione del progetto architettonico. In occasione dell’incontro, la presentazione del Disegno di Legge regionale per la qualità architettonica ha permesso di promuovere una più forte mobilitazione del mondo politico e degli addetti ai lavori, con l’obiettivo di stimolare una necessaria riflessione e conseguente revisione del quadro normativo dello Stato.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">La collaborazione tra l’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma prevede inoltre uno “Sportello Diritto d’Autore”, un luogo virtuale e fisico dove è già possibile inviare quesiti sulla materia.</p>',2,2,0,'ON',60,61,0,'2015-10-17 11:08:17','2015-10-17 12:21:38'),
	(2,'Acam inaugura \"Acam Srl\", Pastificio Cerere il 5 Febbraio 2014','acam-inaugura-acam-srl-pastificio-cerere-il-5-febbraio-2014','Amadeo Preziosi (1816 - 1882) messe a disposizione da Antichità Alberto Di Castro, hanno fatto da cornice alla presentazione delle attività di consulenza e dei servizi per l’arte, la creatività e l’architettura, offerti a 360° da ACAM Srl.','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Attraverso la costituzione della società, l’Arch. Damiano Minozzi e l’Avv. Pietro Ilardi si pongono l’obiettivo di colmare un vuoto a livello di offerta professionale specifica nel campo dei beni artistici, architettonici e dei beni immateriali rappresentati dalla creatività e dalla proprietà intellettuale. Il c.d. “Network”, grazie al quale ACAM Srl fornisce servizi professionali di alto livello qualitativo, allo stesso tempo assai specifici e perfettamente coordinati, opera all’interno di quattro settori fondamentali: un’area tecnica, un’area legale ed amministrativa, un’area economica e fiscale ed infine un’area di comunicazione e marketing.&nbsp;</span><br></p>',2,4,0,'OFF',59,58,0,'2015-10-17 11:09:11','2015-10-17 12:21:12'),
	(3,'Targhe d\' Autore, al via a Roma il progetto dell\'OAR','targhe-d-autore-al-via-a-roma-il-progetto-delloar','Il progetto “Targhe d’autore” nasce nell’ambito di un più ampio programma sulla qualità architettonica e sul Diritto d’Autore e la tutela della Proprietà Intellettuale degli architetti, come iniziativa congiunta dell’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma.','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">L’iniziativa prevede l’apposizione mensile di una targa ai piedi di quegli edifici che, pur essendo dotati di un particolare carattere artistico e interpretando i valori fondamentali della qualità architettonica, non hanno ancora accesso alle tutele previste per gli edifici storici vincolati. Oltre a sottolineare la componente autoriale che sottende l\'opera di architettura, si vuole affermare l’importanza di tutelare il patrimonio architettonico moderno e contemporaneo della città di Roma, spesso poco conosciuto per il rilievo assunto dall’immenso patrimonio storico.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">La commissione “Targhe d’autore” ha inizialmente segnalato un elenco di opere che per la loro qualità possono essere considerate Patrimonio dell’Architettura Moderna della città di Roma. La valutazione, condotta da importanti esponenti del mondo della cultura e delle politiche architettoniche, ha preso in esame il carattere qualitativo e autoriale delle opere in un arco temporale e geografico ben definito. La selezione non intende costituire una graduatoria di merito, quanto piuttosto la prima tappa di un percorso avviato in collaborazione con l’Amministrazione Comunale e la cittadinanza, al fine di difendere le architetture di qualità, spesso vittime di incuria e manomissioni.</p>',2,3,0,'ON',56,57,0,'2015-10-17 11:09:55','2015-10-17 12:20:50'),
	(4,'La Villa Borghese di Nettuno, Assistenza a 360°','la-villa-borghese-di-nettuno-assistenza-a-360','La Villa Borghese di Nettuno, già Villa Bell’Aspetto dei Costaguti, è attribuita a Giovanni Antonio De Rossi (1616-1695). Nel 1925, l’intera area nella quale sorge la costruzione è sottoposta a Vincolo Panoramico dal Ministero della Pubblica Istruzione e i Borghese vi accolgono la visita del Capo del Governo, Benito Mussolini. Oggi, l’intero complesso costituito dalla villa e dal parco, risulta assoggettato a vincolo di cui al DM del 21.01.1965 n° 23324, trascritto in data 01.07.1965 con il n° 31042.','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Nell’ambito di un programma di riqualificazione ad ampio respiro intrapreso dagli attuali eredi e proprietari della villa, ACAM è impegnata nella gestione e nel coordinamento delle diverse forze in gioco, spendendosi tanto per la riuscita degli interventi tecnici e di restauro architettonico, quanto per la conduzione dei rapporti con le Soprintendenze e le amministrazioni comunali, per la soluzione di questioni legali e para-legali concernenti il vincolo, per l’esercizio virtuoso degli aspetti economici e fiscali.</span><br></p>',2,2,0,'ON',54,55,0,'2015-10-17 11:10:26','2015-10-17 12:20:18'),
	(5,'Accertamenti catastali, gli strumenti per difendersi','accertamenti-catastali-gli-strumenti-per-difendersi','Nella sola città di Roma sta cambiando il classamento catastale di circa 175mila immobili, con un incremento complessivo calcolato in oltre 123milioni di euro di rendita catastale. L’operazione parte dall’indagine svolta dall’Agenzia del Territorio (ora incorporata nell’Agenzia delle Entrate) su input dell’Assemblea capitolina (delibera n. 5 dell’11 ottobre 2010) su più di 224mila immobili ubicati in 17 Microzone considerate “anomale”.','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">I quartieri particolarmente interessati dal provvedimento sono: Centro Storico, Aventino, Trastevere, Borgo, Prati, Flaminio, XX Settembre, Monti, San Saba, Testaccio, Gianicolo, Delle Vittorie-Trionfale, Parioli, Salario Trieste, Esquilino e Ville dell’Appia.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">Gli accertamenti catastali in questione modificano d’ufficio la Categoria e/o la Classe della singola unità immobiliare, comportando per lo stesso immobile la variazione della rendita catastale ed il conseguente incremento (a meno di una rarissima revisione a ribasso) degli oneri fiscali per il contribuente. Nel caso in cui si ritenesse che l’avviso di accertamento catastale ricevuto sia in tutto o in parte infondato, si può richiedere che questo venga riesaminato dall’amministrazione mediante la c.d. procedura dell’autotutela. La domanda di riesame in autotutela non sospende, tuttavia, i termini per un vero e proprio ricorso da intraprendere presso la Commissione Tributaria, avviabile entro e non oltre 60 giorni dalla data di notifica dell’avviso di accertamento ed al quale, se ben concepito, si potranno certamente affidare maggiori speranze di successo.</p>',2,2,0,'OFF',52,53,0,'2015-10-17 11:11:02','2015-10-17 12:19:50'),
	(6,'Artribune, l\'intervista del direttore','artribune-lintervista-del-direttore','Il Direttore di Artribune, Massimiliano Tonelli, intervista l’Amministratore di ACAM Srl. Dall’intenso botta e risposta emerge il vivo spirito di intraprendenza e innovazione che anima la società. ','<p>&nbsp;<a href=\"http://www.artribune.com/2014/03/gestione-e-valorizzazione-dei-beni-culturali-nasce-acam\" target=\"_blank\" style=\"color: rgb(170, 170, 170); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify; background-color: rgb(255, 255, 255);\">http://www.artribune.com</a></p>',2,4,0,'OFF',50,51,0,'2015-10-17 11:11:54','2015-10-17 12:19:10'),
	(7,'La proprietà intelletuale in Cina','la-proprieta-intelletuale-in-cina','Tutelare l’originalità e la creatività delle imprese italiane che hanno deciso di investire nel mercato più grande del mondo ora è possibile. Design, brevetti, marchi e diritti d’autore sono gli strumenti per difendere la Proprietà Intellettuale dentro e fuori il territorio nazionale. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Il convegno del 28 Maggio p.v., organizzato e promosso dall’Avvocato Pietro Ilardi (Studio Legale Ilardi) presso la sede dell’Ordine degli Architetti PPC di Roma e Provincia, è il momento ideale per esaminare, discutere e riflettere su quanto accade nel mondo dell’imprenditoria italiana in Cina.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">I temi, analizzati da un parterre di illustri professionisti del settore, sono quelli della Proprietà Intellettuale nel mercato cinese, le sue linee evolutive e la nuova Legge Marchi. Inoltre, la contraffazione di segni distintivi registrati e non registrati e le strategie di difesa contro il parassitismo nel mondo reale e nel web; l’esercizio reale delle azioni di anticontraffazione e la collaborazione con le autorità locali. Per finire, l’esperienza di successo di BULGARI S.p.A. in Cina.</span><br></p>',2,4,0,'OFF',48,49,0,'2015-10-17 11:12:18','2015-10-17 12:18:46'),
	(8,'No agli architetti Photoshop','no-agli-architetti-photoshop','Architettura e design sempre più nel mirino della contraffazione. Specie di quella cinese. Non solo prodotti di largo consumo ma anche monumenti come la Sfinge e la Tour Eiffel, fino ad edifici più recenti firmati da architetti del calibro di Zaha Hadid, sono sempre più oggetto di plagio in Cina. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">È uno dei temi su cui si è discusso a Roma in occasione di un convegno su \"L\'efficacia di design, brevetti e marchi per tutelare le grandi imprese italiane sul mercato più grande del mondo\", organizzato dallo Studio legale Ilardi, ospitato dall\'Ordine degli architetti, pianificatori, paesaggisti e conservatori di Roma e con il patrocinio dell\'Ordine degli avvocati di Roma.</span><br></p>',2,2,0,'OFF',44,45,0,'2015-10-17 11:12:48','2015-10-17 12:17:39'),
	(9,'Committenza privata e lungimiranza pubblica','committenza-privata-e-lungimiranza-pubblica','Martedì 2 dicembre 2014 alle ore 17:00 presso la Galleria del Cembalo di Palazzo Borghese, si è tenuto il Convegno, organizzato dall’A.D.S.I.-Lazio, “Committenza privata e lungimiranza pubblica – restauri di dimore storiche del Lazio”. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">All’incontro sono stati presentati alcuni recenti restauri di beni architettonici di interesse pubblico effettuati nel Lazio da Soci A.D.S.I., e sono stati evidenziati soprattutto le motivazioni, gli oneri, l\'iter burocratico e le aspettative che hanno accompagnato ogni restauro. Hanno partecipato ai lavori anche rappresentanti della Regione Lazio.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Tra i relatori, anche l’Arch. Damiano Minozzi, il quale ha presentato il lavoro svolto e coordinato da ACAM per la Villa Borghese (già Villa Bell’Aspetto dei Costaguti) a Nettuno.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">La francese Annie Gondras, esperta nella valorizzazione economica del patrimonio culturale, ha chiuso i lavori presentando un’interessante resoconto sulla situazione d’oltralpe.</span><br></p>',2,2,0,'ON',42,43,0,'2015-10-17 11:13:10','2015-10-17 12:16:55'),
	(10,'La circolazione delle opere d\'arte tra tutela e valorizzazione','la-circolazione-delle-opere-darte-tra-tutela-e-valorizzazione','Si è tenuto mercoledì 25 Marzo 2015 a Roma il convegno organizzato e promosso da ACAM “La circolazione delle opere d’arte tra tutela e valorizzazione”. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Ospitato da Donna Federica di Napoli Rampolla nella straordinaria&nbsp;</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Librària Altieri</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">&nbsp;in piazza del Gesù 49, l’incontro aveva già ottenuto il patrocinio dell’Assessorato Cultura e Turismo di Roma Capitale, la partecipazione dell’Associazione Dimore Storiche Italiane ed il riconoscimento del Consiglio dell’Ordine degli Avvocati di Roma.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Dopo i saluti della padrona di casa e di Damiano Minozzi, amministratore di ACAM, sul palco si sono susseguiti numerosi protagonisti delle istituzioni e del mondo professionale legato alla circolazione dei Beni Culturali, preceduti da un’interessante relazione introduttiva presentata da Moroello Diaz della Vittoria Pallavicini, Presidente dell’Associazione Dimore Storiche Italiane, sul rapporto tra la dimora e la collezione.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Tra le personalità che hanno preso parte al dibattito, abilmente diretto e moderato da Pilar Abella de Aristegui e da Federico Mazzella, vogliamo citare la Dottoressa Patrizia Micoli intervenuta in rappresentanza di Ugo Soragni (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore Generale Musei, MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), l’Architetto Francesco Scoppola (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore Generale Belle Arti e Paesaggio, MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Dottor Paolo Giorgio Ferri (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Magistrato ed ex Consigliere per il MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), la Dottoressa Simonetta Antellini (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore dell’Ufficio Esportazione Oggetti d’Antichità e d’Arte di Roma, Soprintendenza S.P.S.A.E. e per il Polo Museale della città di Roma</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) e ancora, il Dottor Alvise di Canossa (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Presidente di Arterìa e di Art Defender</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Dottor Massimo Maggio (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Consigliere Delegato, Responsabile Fine Art - Jewellery &amp; Specie presso Willis Italia S.p.A.</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Notaio Emilio Rummo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Studio Notarile Rummo</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) ed i consulenti ACAM, l’Avvocato Cino Benelli (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Titolare dello studio legale Benelli</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) ed il Dottor Francesco Pelagallo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Dottore Commercialista, Revisore Legale e Dottore di Ricerca in Economia Aziendale</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">). Ha chiuso i lavori il Maestro Pietro Ruffo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Artista</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) con un’affascinante proiezione.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Il convegno, nel mezzo di un importante periodo di riforme per il Ministero dei Beni e delle Attività Culturali e del Turismo, ha rappresentato un’occasione unica, tanto per il pubblico quanto per gli stessi intervenuti, per confrontarsi sui molteplici aspetti che compongono il problema della circolazione delle opere d’arte in Italia e nel mondo.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Roma, il 27 Marzo 2015</span><br></p>',2,1,0,'OFF',40,41,0,'2015-10-17 11:13:38','2015-10-17 12:16:20'),
	(11,'Valorizzazione del patrimonio immobiliare nel territorio rurale','valorizzazione-del-patrimonio-immobiliare-nel-territorio-rurale','Si terrà giovedì 15 Ottobre alle ore 10:30 presso la Casa dell\'Architettura, sede dell\'Ordine degli Architetti di Roma, il seminario \"Valorizzazione del patrimonio immobiliare nel territorio rurale\". ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Ideato dal Gruppo LAND con la collaborazione di ACAM Srl, l\'evento si terrà in occasione della chiusura della mostra LAND 25+1, esposizione che celebra i 25 anni di attività di LAND nel settore della progettazione del paesaggio in tutta Italia.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Sarà presentato così, anche a Roma e nel Lazio, il nuovo servizio \"Land Family Support\", dedicato all’ottimizzazione del potenziale fondiario delle aziende agricole, delle ville, dei castelli e delle dimore storiche in generale, ed all’ideazione di servizi innovativi da integrare negli edifici e nelle architetture presenti in questi luoghi, al fine di contribuire alla generale valorizzazione del patrimonio immobiliare in un ambiente notoriamente svantaggiato come quello rurale.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">ACAM Srl ha aderito alla programmazione ed all’organizzazione del seminario nell’ambito di una collaborazione professionale con il Gruppo LAND sugli specifici temi che in esso verranno trattati, quali appunto la consulenza ed i servizi per i proprietari di dimore storiche in territorio rurale.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">L’Associazione Dimore Storiche Italiane, sezione Lazio, sarà presente al Seminario per un saluto ed un intervento introduttivo, rispettivamente nelle persone del Presidente Dott. Francesco Sforza Cesarini e dell’Arch. Enzo Pinci.</span><br></p>',2,2,0,'OFF',38,39,0,'2015-10-17 11:14:01','2015-10-17 12:14:58');

/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table activities_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities_statuses`;

CREATE TABLE `activities_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `activities_statuses` WRITE;
/*!40000 ALTER TABLE `activities_statuses` DISABLE KEYS */;

INSERT INTO `activities_statuses` (`id`, `title`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Ultimato','ultimato','2015-09-09 11:35:49','2015-09-09 11:35:49'),
	(2,'In Corso','in-corso','2015-09-09 11:36:03','2015-09-09 11:36:03');

/*!40000 ALTER TABLE `activities_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table activity_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_types`;

CREATE TABLE `activity_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `in_menu` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `activity_types` WRITE;
/*!40000 ALTER TABLE `activity_types` DISABLE KEYS */;

INSERT INTO `activity_types` (`id`, `type`, `slug`, `class`, `in_menu`, `created_at`, `updated_at`)
VALUES
	(1,'Arte','arte','art',1,'2015-10-13 13:54:09','2015-10-13 13:54:09'),
	(2,'Architettura','architettura','architecture',1,'2015-10-13 13:54:44','2015-10-13 13:54:44'),
	(3,'Creativita','creativita','creativity',1,'2015-10-13 13:55:58','2015-10-13 13:55:58'),
	(4,'Management','management','management',0,'2015-10-13 13:56:17','2015-10-13 13:56:17');

/*!40000 ALTER TABLE `activity_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8_unicode_ci NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `media_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`)
VALUES
	(1,1,'Acam\\Models\\Staff','images','DamianoMinozzi','DamianoMinozzi.jpg','uploads',10289,'[]','[]',1,'2015-10-17 10:21:09','2015-10-17 10:21:09'),
	(2,2,'Acam\\Models\\Staff','images','MariaCristinaGiustideMarle','MariaCristinaGiustideMarle.jpg','uploads',9107,'[]','[]',2,'2015-10-17 10:21:25','2015-10-17 10:21:25'),
	(3,3,'Acam\\Models\\Staff','images','MichelaTorniellidiCrestvolant','MichelaTorniellidiCrestvolant.jpg','uploads',5804,'[]','[]',3,'2015-10-17 10:21:43','2015-10-17 10:21:43'),
	(4,4,'Acam\\Models\\Staff','images','PietroIlardi','PietroIlardi.jpg','uploads',9367,'[]','[]',4,'2015-10-17 10:22:01','2015-10-17 10:22:01'),
	(5,5,'Acam\\Models\\Staff','images','CinoBenelli','CinoBenelli.jpg','uploads',8524,'[]','[]',5,'2015-10-17 10:22:26','2015-10-17 10:22:26'),
	(6,6,'Acam\\Models\\Staff','images','FrancescoPelagallo','FrancescoPelagallo.jpg','uploads',9859,'[]','[]',6,'2015-10-17 10:22:59','2015-10-17 10:22:59'),
	(7,7,'Acam\\Models\\Staff','images','LeoneRossidiMontelera','LeoneRossidiMontelera.jpg','uploads',10761,'[]','[]',7,'2015-10-17 10:23:15','2015-10-17 10:23:15'),
	(8,8,'Acam\\Models\\Staff','images','ValentinaPiscitelli','ValentinaPiscitelli.jpg','uploads',10519,'[]','[]',8,'2015-10-17 10:23:35','2015-10-17 10:23:35'),
	(35,2,'Acam\\Models\\Pages','images','arte-main','arte-main.jpg','uploads',118396,'[]','[]',9,'2015-10-17 12:12:56','2015-10-17 12:12:56'),
	(36,3,'Acam\\Models\\Pages','images','creativity-main','creativity-main.jpg','uploads',106578,'[]','[]',10,'2015-10-17 12:13:32','2015-10-17 12:13:32'),
	(37,4,'Acam\\Models\\Pages','images','architecture-main','architecture-main.jpg','uploads',107112,'[]','[]',11,'2015-10-17 12:13:52','2015-10-17 12:13:52'),
	(38,11,'App\\Acam\\Models\\Activities','images','project11-slide','project11-slide.jpg','uploads',111451,'[]','[]',12,'2015-10-17 12:14:42','2015-10-17 12:14:42'),
	(39,11,'App\\Acam\\Models\\Activities','images','project11-thumb','project11-thumb.jpg','uploads',33506,'[]','[]',13,'2015-10-17 12:14:42','2015-10-17 12:14:42'),
	(40,10,'App\\Acam\\Models\\Activities','images','project-10-slide1','project-10-slide1.jpg','uploads',100546,'[]','[]',14,'2015-10-17 12:16:10','2015-10-17 12:16:10'),
	(41,10,'App\\Acam\\Models\\Activities','images','project10-thumb','project10-thumb.jpg','uploads',37016,'[]','[]',14,'2015-10-17 12:16:10','2015-10-17 12:16:10'),
	(42,9,'App\\Acam\\Models\\Activities','images','project9-slide1','project9-slide1.jpg','uploads',138019,'[]','[]',15,'2015-10-17 12:16:40','2015-10-17 12:16:40'),
	(43,9,'App\\Acam\\Models\\Activities','images','project9-thumb','project9-thumb.jpg','uploads',38941,'[]','[]',15,'2015-10-17 12:16:40','2015-10-17 12:16:40'),
	(44,8,'App\\Acam\\Models\\Activities','images','project8-slide1','project8-slide1.jpg','uploads',92222,'[]','[]',16,'2015-10-17 12:17:14','2015-10-17 12:17:14'),
	(45,8,'App\\Acam\\Models\\Activities','images','project8-thumb','project8-thumb.jpg','uploads',23135,'[]','[]',16,'2015-10-17 12:17:14','2015-10-17 12:17:14'),
	(48,7,'App\\Acam\\Models\\Activities','images','project7-slide1','project7-slide1.jpg','uploads',31407,'[]','[]',19,'2015-10-17 12:18:10','2015-10-17 12:18:10'),
	(49,7,'App\\Acam\\Models\\Activities','images','project7-thumb','project7-thumb.jpg','uploads',14867,'[]','[]',19,'2015-10-17 12:18:10','2015-10-17 12:18:10'),
	(50,6,'App\\Acam\\Models\\Activities','images','project6-slide1','project6-slide1.jpg','uploads',133367,'[]','[]',20,'2015-10-17 12:19:00','2015-10-17 12:19:00'),
	(51,6,'App\\Acam\\Models\\Activities','images','project6-thumb2','project6-thumb2.jpg','uploads',25641,'[]','[]',20,'2015-10-17 12:19:00','2015-10-17 12:19:00'),
	(52,5,'App\\Acam\\Models\\Activities','images','project5-slide1','project5-slide1.jpg','uploads',424136,'[]','[]',21,'2015-10-17 12:19:22','2015-10-17 12:19:22'),
	(53,5,'App\\Acam\\Models\\Activities','images','project5-thumb','project5-thumb.jpg','uploads',186746,'[]','[]',21,'2015-10-17 12:19:22','2015-10-17 12:19:22'),
	(54,4,'App\\Acam\\Models\\Activities','images','project4-slide1','project4-slide1.jpg','uploads',377998,'[]','[]',22,'2015-10-17 12:20:02','2015-10-17 12:20:02'),
	(55,4,'App\\Acam\\Models\\Activities','images','project4-thumb','project4-thumb.jpg','uploads',107517,'[]','[]',22,'2015-10-17 12:20:02','2015-10-17 12:20:02'),
	(56,3,'App\\Acam\\Models\\Activities','images','project3-slide1','project3-slide1.jpg','uploads',98282,'[]','[]',23,'2015-10-17 12:20:35','2015-10-17 12:20:35'),
	(57,3,'App\\Acam\\Models\\Activities','images','project3-thumb','project3-thumb.jpg','uploads',68986,'[]','[]',23,'2015-10-17 12:20:35','2015-10-17 12:20:35'),
	(58,2,'App\\Acam\\Models\\Activities','images','project2-thumb','project2-thumb.jpg','uploads',32423,'[]','[]',24,'2015-10-17 12:21:02','2015-10-17 12:21:02'),
	(59,2,'App\\Acam\\Models\\Activities','images','project2-slide1','project2-slide1.jpg','uploads',40075,'[]','[]',24,'2015-10-17 12:21:02','2015-10-17 12:21:02'),
	(60,1,'App\\Acam\\Models\\Activities','images','project1-slide1','project1-slide1.jpg','uploads',138803,'[]','[]',25,'2015-10-17 12:21:25','2015-10-17 12:21:25'),
	(61,1,'App\\Acam\\Models\\Activities','images','project1-thumb','project1-thumb.jpg','uploads',90062,'[]','[]',25,'2015-10-17 12:21:25','2015-10-17 12:21:25');

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2015_10_12_160148_create_activities_table',1),
	('2015_10_12_160211_create_activities_statuses_table',1),
	('2015_10_12_160338_create_pages_texts_table',1),
	('2015_10_12_160352_create_staff_table',1),
	('2015_10_12_161630_create_attachments_table',1),
	('2015_10_12_161708_create_media_table',1),
	('2015_10_12_164149_create_activity_types_table',1),
	('2015_10_12_164348_create_staff_types_table',1),
	('2015_10_12_174312_create_pages_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image_id` int(11) DEFAULT NULL,
  `class` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `name`, `slug`, `title`, `content`, `featured_image_id`, `class`, `created_at`, `updated_at`)
VALUES
	(1,'Chi Siamo','mission',NULL,'<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">Il patrimonio artistico ed architettonico italiano rappresenta, nell’interesse generale, una dote di incommensurabile valore. La sua diffusione, nonché la sua frammentazione sul territorio nazionale, ne fanno una realtà tanto unica quanto problematica.<br><br>Infatti, nonostante gli sforzi di privati proprietari, associazioni ed organismi di settore, una parte considerevole di questi Beni si trova in una condizione di fragilità, tanto fisica quanto amministrativa e gestionale, le cui ragioni sono facilmente riconoscibili nella complessità e nell’incertezza del quadro normativo, nella burocrazia e nella scarsità delle risorse economiche.<br><br>La gestione di un Bene Culturale - artistico o architettonico - rappresenta oggi un onere complesso, da affrontare con il supporto di competenze specifiche, opportunamente guidate e coordinate fra loro.</p><h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); text-transform: uppercase;\">ACAM_LA RISPOSTA:</h1><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">Grazie alla regìa ed al coordinamento di una rete di professionisti qualificati, ACAM S.r.l. (<i>Art, Creativity &amp; Architecture Management</i>) fornisce - a proprietari e aventi causa - tutta l’assistenza, la consulenza professionale ed i servizi necessari all’ottimale gestione di beni artistici ed architettonici, al completo adempimento degli oneri derivanti dal loro possesso ed alla tutela dei relativi diritti ed interessi.<br><br><span class=\"red\" style=\"color: rgb(237, 28, 36);\">A_Arte:</span>&nbsp;a proprietari, collezionisti e detentori di opere d’arte, offriamo assistenza e servizi personalizzati per la perfetta gestione - sia corrente che straordinaria - dei dipinti, delle sculture, delle stampe e di qualsiasi altra forma di espressione prettamente artistica, di qualsiasi epoca e sorta, con attinenza al patrimonio italiano.&nbsp;<a href=\"http://localhost/acam.static/art.html\" class=\"red\" style=\"color: rgb(237, 28, 36);\">Tutti i servizi per l’Arte &gt;</a>&nbsp;<br><br><span class=\"purple\" style=\"color: rgb(146, 39, 143);\">C_Creatività:</span>&nbsp;ci preoccupiamo della tutela e della valorizzazione del processo creativo intellettuale che si conclude nella realizzazione dell’opera d’Arte o di Architettura. Ad artisti, architetti e gallerie, forniamo la consulenza tecnica e l’assistenza legale in materia di&nbsp;<i>Diritto d’Autore</i>&nbsp;e della&nbsp;<i>Proprietà Intellettuale</i>, oltre che la necessaria consulenza fiscale, con particolare riferimento al c.d.<i>Diritto di Seguito</i>.&nbsp;<a href=\"http://localhost/acam.static/creativity.html\" class=\"purple\" style=\"color: rgb(146, 39, 143);\">Tutti i servizi per la Creatività &gt;</a>&nbsp;<br><br><span class=\"azure\" style=\"color: rgb(0, 183, 171);\">A_Architettura:</span>&nbsp;siamo specializzati nella consulenza e nell’offerta di servizi personalizzati, utili a proprietari ed amministratori per migliorare e facilitare la gestione - sia corrente che straordinaria - delle dimore storiche e comunque di pregio, degli edifici di culto, dei complessi monumentali e di ogni altra struttura architettonica di interesse storico-artistico, di qualsiasi epoca e sorta, che si trovi sul territorio italiano.&nbsp;<a href=\"http://localhost/acam.static/architecture.html\" class=\"azure\" style=\"color: rgb(0, 183, 171);\">Tutti i servizi per l’Architettura &gt;</a>&nbsp;<br><br><span style=\"font-weight: 700;\">M_Management:</span>&nbsp;a Noi, la perfetta organizzazione del lavoro, la regìa di un team di collaboratori e professionisti appartenenti ai diversi Ordini (Architetti, Ingegneri, Restauratori, Geometri, Avvocati, Commercialisti, …), il mantenimento costante di una visione globale della problematica e l’elevata personalizzazione dei servizi, caso per caso, sulle Vostre esigenze. A Voi, l’ottimale gestione di beni artistici ed architettonici, nel pieno rispetto della normativa, degli oneri e degli adempimenti amministrativi, nel totale godimento dei relativi diritti ed interessi e nella completa sostenibilità economica.<br><br><i>Così operando nell’interesse dei propri clienti, ACAM contribuisce alla generale valorizzazione del patrimonio culturale italiano ed alla diffusione della sua conoscenza, nell’interesse collettivo.</i></p>',NULL,'red','2015-10-16 18:47:42','2015-10-16 17:27:29'),
	(2,'Arte','arte','L\' ARTE A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); text-transform: uppercase;\"><span style=\"color: rgb(237, 28, 36); font-size: 24px; line-height: 1.1;\">PER QUALI OBIETTIVI:</span></h1><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Acquisizione di una completa e profonda conoscenza dell’opera;</li><li>Recupero, restauro e conservazione dell’opera;</li><li>Tutela dell’opera e dei diritti ed interessi ad essa collegati;</li><li>Valorizzazione dell’opera e completa sostenibilità economica di gestione;</li><li>Pieno rispetto della normativa e degli adempimenti amministrativi previsti;</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); text-transform: uppercase;\"><span class=\"red\" style=\"color: rgb(237, 28, 36);\">CON QUALI STRUMENTI:</span></h3><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE TECNICO, RICERCA, PROGETTAZIONE E RESTAURO</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Ricerche storiche;</li><li>Indagini dirette e strumentali;</li><li>Restauro dell’opera d’arte;</li><li>Rapporti con le Soprintendenze e con gli Uffici Esportazione;</li><li>Assistenza al rilascio degli Attestati di circolazione (ALC - ACT), delle Licenze di esportazione (LED - LET) e di altri certificati;</li><li>Assistenza e consulenza tecnica in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Predisposizione di pareri legali;</li><li>Rapporti con la Pubblica Amministrazione;</li><li>Assistenza legale e amministrativa in caso di furto o danneggiamento dell’opera;</li><li>Investigazioni in materia di contraffazione ed altri illeciti a danno dell’opera;</li><li>Rapporti con il Comando Carabinieri Tutela Patrimonio Culturale;</li><li>Assistenza giudiziale;</li><li>Assistenza alla compravendita dell’opera d’arte;</li><li>Assistenza e consulenza legale-amministrativa in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE ECONOMICO, SOSTENIBILITÀ GESTIONALE E FISCALITÀ</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Consulenza in merito alla gestione del patrimonio artistico;</li><li>Consulenza in merito all’assicurazione di opere e collezioni;</li><li>Consulenza fiscale in merito ai passaggi di proprietà per atti tra vivi;</li><li>Consulenza fiscale in merito ai passaggi di proprietà mortis causa;</li><li>Consulenza fiscale in merito al c.d. “Diritto di Seguito”;</li><li>Consulenza fiscale in merito alla circolazione nazionale ed internazionale delle opere;</li><li>Assistenza al reperimento di fondi da destinare alla valorizzazione del patrimonio artistico;</li><li>Assistenza e consulenza economica e fiscale in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Comunicazione e marketing dei Beni Culturali;</li><li>Organizzazione di mostre, convegni ed altri eventi culturali;</li><li>Rapporti con le associazioni e gli organismi di settore;</li><li>Valorizzazione del patrimonio artistico;</li><li>Foundraising.</li></ul>',35,'red','2015-10-16 18:47:50','2015-10-17 12:13:08'),
	(3,'Creatività','creativita','LA CREATIVITÀ A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); text-transform: uppercase;\"><span style=\"color: rgb(146, 39, 143); font-size: 24px; line-height: 1.1;\">PER QUALI OBIETTIVI:</span><br></h1><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Conoscenza completa circa le opportunità di tutela del progetto autoriale;</li><li>Tutela d’Autore e della Proprietà Intellettuale;</li><li>Valorizzazione del progetto autoriale e dei diritti ed interessi ad esso collegati;</li><li>Tutela degli interessi economici legati al progetto autoriale;</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); text-transform: uppercase;\"><span class=\"purple\" style=\"color: rgb(146, 39, 143);\">CON QUALI STRUMENTI:</span></h3><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE TECNICO, RICERCA, PROGETTAZIONE E RESTAURO</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Ricerche storiche</li><li>Indagini di anteriorità;</li><li>Rapporti con le Soprintendenze;</li><li>Assistenza al riconoscimento del “particolare carattere artistico” (ex Art. 20 Legge 633/41) dell’opera architettonica contemporanea per l’accesso alle relative tutele autoriali;</li><li>Assistenza e consulenza tecnica in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Predisposizione di pareri legali;</li><li>Predisposizione di pareri di anteriorità;</li><li>Assistenza e consulenza legale in materia di Proprietà Intellettuale;</li><li>Assistenza e consulenza legale in materia di Diritto d’Autore;</li><li>Assistenza legale-amministrativa in caso di plagio e/o lesione della Proprietà Intellettuale;</li><li>Investigazioni in materia di contraffazione ed altre violazioni a danno dell’autore;</li><li>Rappresentanza avanti l’UIBM (Ufficio Italiano Brevetti e Marchi);</li><li>Rappresentanza avanti l’OMPI (Organizzazione Mondiale per la Proprietà Intellettuale);</li><li>Consulenza precontrattuale e negoziazione dei contratti;</li><li>Assistenza giudiziale;</li><li>Assistenza e consulenza tecnica in genere;</li><li>Assistenza e consulenza legale in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE ECONOMICO, SOSTENIBILITÀ GESTIONALE E FISCALITÀ</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Gestione del patrimonio culturale ed intellettuale;</li><li>Assistenza e consulenza fiscale in merito al c.d. “Diritto di Seguito”;</li><li>Assistenza e consulenza economica e fiscale in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Comunicazione e marketing del progetto autoriale artistico ed architettonico;</li><li>Organizzazione di mostre, convegni ed altri eventi culturali;</li><li>Rapporti con le associazioni e gli organismi di settore;</li><li>Valorizzazione del patrimonio intellettuale legato all’Arte ed all’Architettura;</li><li><i>Foundraising.</i></li></ul>',36,'purple','2015-10-16 18:48:15','2015-10-17 12:13:36'),
	(4,'Architettura','architettura','L\' ARCHITETTURA A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); text-transform: uppercase;\"><span style=\"color: rgb(0, 183, 171); font-size: 24px; line-height: 1.1;\">PER QUALI OBIETTIVI:</span><br></h1><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ol class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Acquisizione di una completa e profonda conoscenza della fabbrica;</li><li>Recupero, restauro e conservazione dell’immobile;</li><li>Tutela del bene e dei diritti ed interessi ad esso collegati;</li><li>Valorizzazione dell’immobile e completa sostenibilità economica di gestione;</li><li>Pieno rispetto della normativa e degli adempimenti amministrativi previsti;</li></ol><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); text-transform: uppercase;\"><span class=\"azure\" style=\"color: rgb(0, 183, 171);\">CON QUALI STRUMENTI:</span></h3><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE TECNICO, RICERCA, PROGETTAZIONE E RESTAURO</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Ricerche storiche;</li><li>Rilevi geometrici, architettonici e del degrado;</li><li>Indagini dirette e strumentali sul manufatto;</li><li>Assistenza tecnica in merito ai regimi di tutela degli edifici;</li><li>Rapporti con la Pubblica Amministrazione e le Soprintendenze;</li><li>Progettazione architettonica e strutturale;</li><li>Assistenza al rilascio dei Nulla Osta e delle autorizzazioni urbanistiche ed amministrative;</li><li>Restauro e consolidamento degli edifici e delle superfici architettoniche;</li><li>Direzione dei Lavori e Coordinamento della Sicurezza di cantiere;</li><li>Assistenza e consulenza tecnica in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Predisposizione di pareri legali;</li><li>Rapporti con la Pubblica Amministrazione;</li><li>Assistenza legale ed amministrativa in caso di domande di Sanatoria;</li><li>Investigazioni in materia di danneggiamenti ed altri illeciti a danno del monumento;</li><li>Rapporti con il Comando Carabinieri Tutela Patrimonio Culturale;</li><li>Assistenza giudiziale;</li><li>Assistenza alla compravendita di immobili;</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE ECONOMICO, SOSTENIBILITÀ GESTIONALE E FISCALITÀ</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Consulenza in merito alla gestione del patrimonio architettonico;</li><li>Consulenza in merito all’assicurazione di immobili;</li><li>Consulenza fiscale in merito ai regimi agevolati per gli edifici c.d. vincolati;</li><li>Consulenza fiscale in merito alla detraibilità degli interventi di restauro;</li><li>Consulenza fiscale in merito alla ri-determinazione delle rendite catastali;</li><li>Consulenza fiscale in merito ai passaggi di proprietà per atti tra vivi;</li><li>Consulenza fiscale in merito ai passaggi di proprietà mortis causa;</li><li>Assistenza al reperimento di fondi da destinare alla valorizzazione degli immobili;</li><li>Assistenza e consulenza economica e fiscale in genere.</li></ul><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; text-transform: uppercase;\">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p><ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"><li>Comunicazione e marketing dei Beni Culturali;</li><li>Organizzazione di mostre, convegni ed altri eventi culturali;</li><li>Rapporti con le associazioni e gli organismi di settore;</li><li>Valorizzazione del patrimonio architettonico esistente;</li><li>Promozione della c.d. “Qualità Architettonica” per le nuove costruzioni;</li><li><i>Foundraising.</i></li></ul>',37,'azure','2015-10-16 18:48:29','2015-10-17 12:13:57');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages_texts`;

CREATE TABLE `pages_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages_texts` WRITE;
/*!40000 ALTER TABLE `pages_texts` DISABLE KEYS */;

INSERT INTO `pages_texts` (`id`, `name`, `title`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'testo_1','Testo1','<h1 style=\"text-align: center;\"><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-size: 28px;\">MANAGEMENT DELL\' ARTE, DELLA CREATIVITÀ E DELL\' ARCHITETTURA</span></span></h1>\r\n<p style=\"text-align: center;\"><span style=\"color: rgb(206, 198, 206); font-size: 18px; background-color: rgb(255, 255, 255);\">Servizi a 360° per non farti perdere la bussola.</span></p>','2015-10-16 19:03:00','2015-10-16 17:14:50');

/*!40000 ALTER TABLE `pages_texts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `featured_image_id` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`id`, `name`, `intro`, `description`, `position`, `type_id`, `featured_image_id`, `website`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'Damiano Minozzi','Architetto, Master di II Livello in Restauro e Consolidamento \r\n','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px;\">Iscritto alla Sezione A dell’Albo degli Architetti, P.P.C. di Roma e Provincia, laureato a pieni voti presso l’Università degli Studi di Roma La Sapienza. Dal 2011 al 2013 lavora a Roma come progettista presso lo studio degli architetti Tommaso e Filippo Pignatti Morano e Fabrizio Pratesi. Nel 2013, presso l’Università degli Studi di Roma La Sapienza, consegue il Master di II Livello in Restauri e consolidamenti ad alta complessità, progetto e cantiere nelle architetture civili e religiose. A partire dal gennaio 2014 avvia a Roma la sua attività professionale in proprio e, insieme all’Avvocato Pietro Ilardi, fonda la società ACAM - Art, Creativity, Architecture Management. Amministratore di ACAM Srl, è responsabile per tutte le questioni riguardanti il recupero, la conservazione e la valorizzazione del patrimonio architettonico, sia storico che contemporaneo, per i rapporti con i privati proprietari oltre che con le Soprintendenze e le Pubbliche amministrazioni in generale.</p><div><br></div><a href=\"http://www.areea.it/\" target=\"_blank\" style=\"color: rgb(170, 170, 170); display: inline-block; margin-bottom: 10px; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"></a>',1,1,1,'www.areea.it',0,'2015-10-13 15:35:20','2015-10-17 10:21:14'),
	(2,'Maria Cristina Giusti de Marle','Dottoressa in Studi Storico Artistici','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Appassionata studiosa nel campo dei Beni Culturali in genere, si occupa personalmente della gestione, della tutela e della valorizzazione a 360° di un’importante dimora storica nel centro di Roma. E’ collaboratrice ACAM per le questioni riguardanti il recupero, la conservazione e la valorizzazione delle opere artistiche, oltre che per gli aspetti connessi all’organizzazione degli eventi espositivi e di divulgazione della cultura in generale.</span><br></p>',2,1,2,'',0,'2015-10-13 15:49:30','2015-10-17 10:21:29'),
	(3,'Michela Tornielli di Crestvolant','Storico dell\'Arte','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Lavora a Roma come Assistant Curator per Nomas Foundation. Nel 2008 lavora presso la galleria La Nuvola. Nel 2011 è Contributing Editor per Artribune e per il Corriere dell’Arte e, nel 2012, diventa collaboratrice presso Skira Editore. Appassionata di arte pubblica, è esperta nelle dinamiche di mercato e nella cura dei rapporti con le gallerie, oltre che nell’assistenza alla crescita professionale dei giovani artisti. E’ collaboratrice ACAM per le questioni inerenti la tutela, la valorizzazione e la diffusione dell’arte e della cultura in generale (consulenza in ambito storico-artistico, rapporti con le gallerie e le case d’asta, assistenza ad autori e collezionisti, …).</span><br></p>',3,1,3,'',0,'2015-10-13 15:50:08','2015-10-17 10:21:48'),
	(4,'Pietro Ilardi','Studio legale Ilardi \r\nKnowledge Management ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Esperto nella consulenza giudiziale e stragiudiziale nell’ambito del diritto civile, del diritto commerciale e del diritto della proprietà intellettuale, a livello nazionale ed internazionale. Consulente Intellectual Property Italia-Cina presso l’UIBM - Ufficio Italiano Brevetti e Marchi. Dal 2012, è consulente legale del Consiglio dell’Ordine degli Architetti P.P.C. di Roma e Provincia quale responsabile e componente della Commissione nominata congiuntamente dal medesimo Consiglio e dal Consiglio dell’Ordine degli Avvocati di Roma, per la redazione di un Disegno di Legge Regionale sulla “Qualità Architettonica”. Socio di ACAM Srl, è responsabile per tutte le questioni inerenti il diritto civile, commerciale e per la Proprietà Intellettuale, oltre che per tutte le questioni riguardanti i Beni Culturali ed i regimi vincolistici nella sfera dei beni mobili ed immobili.</span><br></p>',4,2,4,'www.studiolegaleilardi.it',0,'2015-10-13 15:51:39','2015-10-17 10:22:06'),
	(5,'Cino Benelli','Avvocato\r\nStudio legale Cino Benelli','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Nato a Firenze il 24 luglio 1972. Laureato&nbsp;</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">cum laude</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">&nbsp;nell’anno 1999 presso la Facoltà di Giurisprudenza dell’Università degli Studi di Firenze, si abilita all’esercizio della professione di avvocato nell’anno 2002. Dopo un periodo di collaborazione presso il Dipartimento di Diritto Penale e Comparato dell’Università degli Studi di Firenze, si dedica alla professione forense, occupandosi principalmente di questioni giuridiche relative alla materie degli appalti e delle concessioni, del commercio, dell’ordine e della sicurezza pubblica. Impegnato quotidianamente nel contenzioso civile ed amministrativo dinanzi ai Tribunali italiani, assiste numerosi operatori nel settore dei Beni Culturali. Insieme all’avvocato Federico Mazzella, è autore del Redazionale “Attestati di libera circolazione e licenza di esportazione alla luce del diritto dell’Unione Europea”, pubblicato sulla Gazzetta Amministrativa della Repubblica Italiana, n°2/2014.</span><br></p>',5,2,5,'www.cinobenelli.com',0,'2015-10-13 15:52:26','2015-10-17 10:22:31'),
	(6,'Francesco Pelagallo','Dottore Commercialista, Revisore Legale, Dottore di Ricerca in Economia Aziendale','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Dottore di Ricerca in Economia Aziendale, assistente alla cattedra di Economia Aziendale presso la Facoltà di Economia dell’Università degli Studi Roma Tre. Lavora a Roma presso lo studio di consulenza fiscale e tributaria AB Advisory di Antonio Bertani, assistendo, tra gli altri, numerosi privati nella gestione di importanti Beni Culturali mobiliari ed immobiliari. E’ collaboratore ACAM per tutte le questioni inerenti la gestione dei patrimoni mobiliari ed immobiliari (consulenza fiscale e tributaria, amministrativa, finanziaria, organizzativa-societaria, ...).</span><br></p>',6,3,6,'',0,'2015-10-13 15:52:57','2015-10-17 10:23:04'),
	(7,'Leone Rossi di Montelera','Dottore in Economia','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Laureato in Economia con il massimo dei voti, ha lavorato per la Deutsche Bank nella sezione Private Wealth Management, come responsabile della gestione e della definizione dell’asset allocation di patrimoni di medie e grandi dimensioni. Nel 2011 e nel 2012 è consulente presso The Boston Consulting Group. Nel 2013 fonda la World Hunting Society. E’ collaboratore ACAM per le questioni economiche e gestionali (valutazioni di convenienza e scelte strategiche, business plan, assistenza all’ottenimento dei finanziamenti e delle coperture assicurative, …).</span><br></p>',7,3,7,'',0,'2015-10-13 15:53:25','2015-10-17 10:23:22'),
	(8,'Valentina Piscitelli','Architetto, Giornalista','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 18.2px; text-align: justify;\">Laureata a pieni voti presso l’Università degli Studi di Roma La Sapienza. Con borsa di studio di merito consegue il Master Progettare per tutti. Nel 2006 vince il 1° premio agli Holcim European Awards e il 2° premio ai Global Awards di Bangkok. Giornalista pubblicista, responsabile della comunicazione nel settore architettura e ingegneria, autrice televisiva, cura programmi come Vivere l’architettura. Segretario dell’Istituto Nazionale di Architettura sezione Lazio è delegata presso l’Ordine degli Architetti P.P.C. di Roma e Provincia per le questioni inerenti il Diritto d’Autore. Autrice di testi di critica d’arte e d’architettura. È addetta alle pubbliche relazioni presso il Consiglio Nazionale degli Architetti P.P.C. E’ collaboratrice ACAM per le questioni inerenti la comunicazione, il marketing e le relazioni esterne, oltre che per i rapporti con l’Ordine degli Architetti P.P.C. di Roma e Provincia, con l’INARCH Lazio e con il Consiglio Nazionale degli Architetti.</span><br></p>',8,4,8,'www.valentinapiscitelli.it',0,'2015-10-13 15:54:05','2015-10-17 10:23:40');

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff_types`;

CREATE TABLE `staff_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `staff_types` WRITE;
/*!40000 ALTER TABLE `staff_types` DISABLE KEYS */;

INSERT INTO `staff_types` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'SETTORE TECNICO, PROGETTAZIONE, RESTAURO','2015-10-13 17:25:05','2015-10-13 17:25:05'),
	(2,'SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE','2015-10-13 17:25:17','2015-10-13 17:25:17'),
	(3,'SETTORE ECONOMICO, MANAGEMENT E FISCALITÀ','2015-10-13 17:25:28','2015-10-13 17:25:28'),
	(4,'SETTORE COMUNICAZIONE, MARKETING E RELAZIONE ESTERNE','2015-10-13 17:25:41','2015-10-13 17:25:41');

/*!40000 ALTER TABLE `staff_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Acam Admin','info@acamprovides.com','$2y$10$0AGJJKUT5BQLGlPC/jvi3eEeYqdzvUfSueggHiiewn.Dyu/Wo4m5S','pujX0DAdum0zX9x2xsz5NXu66OnghNdC58ujOqGr9LQNzR8pzxl7fjMYU39i','2015-10-13 11:53:13','2015-10-17 09:28:44');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
