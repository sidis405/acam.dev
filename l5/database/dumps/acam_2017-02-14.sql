# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12-0ubuntu1.1)
# Database: acam
# Generation Time: 2017-02-14 12:55:20 +0000
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
	(1,'\"Difendere la proprietà intellettuale in Architettura\"','difendere-la-proprieta-intellettuale-in-architettura','Difendere le architetture contemporanee di qualità, oggetto di pesanti manomissioni e incuria, è un argomento di rilevanza pubblica per il quale l’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma, nella persona dell\'Avv. Pietro Ilardi, hanno avviato un percorso di fattiva collaborazione.','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">L’iniziativa ha voluto riportare all’attenzione degli addetti ai lavori e della cittadinanza i temi della qualità nelle nuove costruzioni e negli interventi di recupero o trasformazione: dagli aspetti tecnici e normativi, alla regolamentazione e tutela della proprietà intellettuale nel processo di ideazione e realizzazione del progetto architettonico.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">In occasione dell’incontro, la presentazione da parte dell\'Avv. Ilardi del Disegno di Legge regionale per la qualità architettonica ha permesso di promuovere una più forte mobilitazione del mondo politico e degli addetti ai lavori, con l’obiettivo di stimolare una necessaria riflessione e conseguente revisione del quadro normativo dello Stato.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">La collaborazione tra l’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma prevede inoltre uno “Sportello Diritto d’Autore”, un luogo virtuale e fisico dove è già possibile inviare quesiti sulla materia.</p>',2,2,0,'ON',123,122,0,'2015-10-17 15:08:17','2015-12-20 12:29:54'),
	(2,'ACAM inaugura \"ACAM S.r.l.\" - Roma, ex Pastificio Cerere, il 5 Febbraio 2014','acam-inaugura-acam-srl-roma-ex-pastificio-cerere-il-5-febbraio-2014','Due opere di Amadeo Preziosi (1816 - 1882), generosamente messe a disposizione per l\'occasione da Antichità Alberto Di Castro, hanno fatto da cornice alla presentazione delle attività di consulenza e dei servizi per l’arte, la creatività e l’architettura, offerti a 360° dalla neo costituita ACAM S.r.l.','<p><span style=\"text-align: justify;\">Attraverso la costituzione della Società, l’Arch. Damiano Minozzi e l’Avv. Pietro Ilardi si pongono l’obiettivo di colmare un vuoto a livello di offerta professionale specifica nel campo dei beni artistici, architettonici e dei beni immateriali rappresentati dalla creatività e dalla proprietà intellettuale.</span></p><p><span style=\"text-align: justify;\">Il “Network”, grazie al quale ACAM Srl fornisce servizi professionali di alto livello qualitativo, allo stesso tempo assai specifici e perfettamente coordinati, opererà all’interno di quattro settori fondamentali: un’area tecnica, un’area legale ed amministrativa, un’area economica e fiscale ed infine un’area di comunicazione e marketing.&nbsp;</span><br></p>',2,4,0,'ON',127,126,0,'2015-10-17 15:09:11','2015-12-20 12:36:59'),
	(3,'\"Targhe d\' Autore\", al via a Roma il progetto dell\'O.A.R. per la tutela della proprietà intellettuale in architettura','targhe-d-autore-al-via-a-roma-il-progetto-delloar-per-la-tutela-della-proprieta-intellettuale-in-architettura','Il progetto “Targhe d’autore”, presentato per la prima volta dagli Architetti Valentina Piscitelli e Damiano Minozzi in occasione del Convegno \"Difendere la proprietà intellettuale in architettura\", tenutosi alla Casa dell\'Architettura il 12 Dicembre 2012, nasce nell’ambito di un più ampio programma sulla qualità architettonica e sul Diritto d’Autore, come iniziativa congiunta dell’Ordine degli Architetti PPC di Roma e Provincia e l’Ordine degli Avvocati di Roma.','<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">L\'iniziativa prevede l’apposizione mensile di una targa ai piedi di quegli edifici che, pur essendo dotati di un particolare carattere artistico e interpretando i valori fondamentali della qualità architettonica, non hanno ancora accesso alle tutele previste per gli edifici storici vincolati. </p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">Oltre a sottolineare la componente autoriale che sottende l\'opera di architettura, si vuole affermare l’importanza di tutelare il patrimonio architettonico moderno e contemporaneo della città di Roma, spesso poco conosciuto per il rilievo assunto dall’immenso patrimonio storico.</p><p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">La commissione “Targhe d’autore” ha inizialmente segnalato un elenco di opere che per la loro qualità possono essere considerate Patrimonio dell’Architettura Moderna della città di Roma. La valutazione, condotta da importanti esponenti del mondo della cultura e delle politiche architettoniche, ha preso in esame il carattere qualitativo e autoriale delle opere in un arco temporale e geografico ben definito. La selezione non intende costituire una graduatoria di merito, quanto piuttosto la prima tappa di un percorso avviato in collaborazione con l’Amministrazione Comunale e la cittadinanza, al fine di difendere le architetture di qualità, spesso vittime di incuria e manomissioni.</p>',2,2,0,'ON',129,128,0,'2015-10-17 15:09:55','2015-12-20 12:36:16'),
	(5,'Accertamenti catastali, ACAM S.r.l. cura numerosi ricorsi avanti la Commissione Tributaria Provinciale avverso il riclassamento degli immobili della Capitale e non soltanto','accertamenti-catastali-acam-srl-cura-numerosi-ricorsi-avanti-la-commissione-tributaria-provinciale-avverso-il-riclassamento-degli-immobili-della-capitale-e-non-soltanto','Nella sola città di Roma sta cambiando il classamento catastale di circa 175mila immobili, con un incremento complessivo calcolato in oltre 123milioni di euro di rendita catastale. L’operazione parte dall’indagine svolta dall’Agenzia del Territorio (ora incorporata nell’Agenzia delle Entrate) su input dell’Assemblea capitolina (delibera n. 5 dell’11 ottobre 2010) su più di 224mila immobili ubicati in 17 Microzone considerate “anomale”.','<p style=\"margin-top: 15px; margin-bottom: 15px;\">A sostegno dei privati proprietari e della loro richiesta di annullamento degli accertamenti catastali d\'ufficio,<span style=\"text-align: start;\">&nbsp;ACAM S.r.l. sta eseguendo s</span>u numerosi immobili della capitale e non soltanto,<span style=\"text-align: start;\">&nbsp;rilievi delle unità, ricerche d’archivio e catastali, predisposizione, redazione e giuramento di perizie tecniche di parte e, naturalmente, predisposizione, redazione e discussione in aula dei ricorsi avanti la Commissione Tributaria Provinciale.</span></p><p style=\"margin-top: 15px; margin-bottom: 15px;\">I quartieri particolarmente interessati dal provvedimento sono: Centro Storico, Aventino, Trastevere, Borgo, Prati, Flaminio, XX Settembre, Monti, San Saba, Testaccio, Gianicolo, Delle Vittorie-Trionfale, Parioli, Salario Trieste, Esquilino e Ville dell’Appia.</p><p style=\"margin-top: 15px; margin-bottom: 15px;\">Gli accertamenti catastali in questione modificano d’ufficio la Categoria e/o la Classe della singola unità immobiliare, comportando per lo stesso immobile la variazione della rendita catastale ed il conseguente incremento (a meno di una rarissima revisione a ribasso) degli oneri fiscali per il contribuente. Nel caso in cui si ritenesse che l’avviso di accertamento catastale ricevuto sia in tutto o in parte infondato, si può richiedere che questo venga riesaminato dall’amministrazione mediante la c.d. procedura dell’autotutela. La domanda di riesame in autotutela non sospende, tuttavia, i termini per un vero e proprio ricorso da intraprendere presso la Commissione Tributaria, avviabile entro e non oltre 60 giorni dalla data di notifica dell’avviso di accertamento ed al quale, se ben concepito, si potranno certamente affidare maggiori speranze di successo.</p>',2,4,0,'ON',131,130,0,'2015-10-17 15:11:02','2015-12-20 12:37:44'),
	(6,'Artribune, l\'intervista del direttore Massimiliano Tonelli','artribune-lintervista-del-direttore-massimiliano-tonelli','Il Direttore di Artribune, Massimiliano Tonelli, intervista Damiano Minozzi, amministratore di ACAM S.r.l. Dall’intenso botta e risposta emerge il vivo spirito di intraprendenza e innovazione che anima la Società. ','<p>Tovate l\'intervista integrale al seguente link...&nbsp;<a href=\"http://www.artribune.com/2014/03/gestione-e-valorizzazione-dei-beni-culturali-nasce-acam\" target=\"_blank\" style=\"color: rgb(170, 170, 170); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify; background-color: rgb(255, 255, 255);\">http://www.artribune.com</a></p>',2,4,0,'ON',135,135,0,'2015-10-17 15:11:54','2015-12-20 12:41:12'),
	(9,'\"Committenza privata e lungimiranza pubblica\"','committenza-privata-e-lungimiranza-pubblica','Martedì 2 dicembre 2014 alle ore 17:00 presso la Galleria del Cembalo di Palazzo Borghese, si è tenuto il Convegno, organizzato dall’A.D.S.I. - Sezione Lazio, “Committenza privata e lungimiranza pubblica – restauri di dimore storiche del Lazio”. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">All’incontro sono stati presentati alcuni recenti restauri di beni architettonici di interesse pubblico effettuati nel Lazio da Soci A.D.S.I., e sono stati evidenziati soprattutto le motivazioni, gli oneri, l\'iter burocratico e le aspettative che hanno accompagnato ogni restauro. Hanno partecipato ai lavori anche rappresentanti della Regione Lazio.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Tra i relatori, anche l’Arch. Damiano Minozzi, il quale ha presentato il lavoro svolto e coordinato da ACAM per la Villa Borghese (già Villa Bell’Aspetto dei Costaguti) a Nettuno.</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">La francese Annie Gondras, esperta nella valorizzazione economica del patrimonio culturale, ha chiuso i lavori presentando un’interessante resoconto sulla situazione d’oltralpe.</span><br></p>',2,3,0,'ON',134,134,0,'2015-10-17 15:13:10','2015-12-20 12:40:36'),
	(10,'\"La circolazione delle opere d\'arte, tra tutela e valorizzazione\"','la-circolazione-delle-opere-darte-tra-tutela-e-valorizzazione','Si è tenuto mercoledì 25 Marzo 2015 a Roma il convegno organizzato e promosso da ACAM “La circolazione delle opere d’arte tra tutela e valorizzazione”. ','<p><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Gentilmente ospitato da Federica di Napoli Rampolla nella straordinaria&nbsp;</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Librària Altieri</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">&nbsp;in piazza del Gesù 49, l’incontro aveva già ottenuto il patrocinio dell’Assessorato Cultura e Turismo di Roma Capitale, la partecipazione dell’Associazione Dimore Storiche Italiane ed il riconoscimento del Consiglio dell’Ordine degli Avvocati di Roma.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Dopo i saluti della padrona di casa e di Damiano Minozzi, amministratore di ACAM Srl, sul palco si sono susseguiti numerosi protagonisti delle istituzioni e del mondo professionale legato alla circolazione dei Beni Culturali, preceduti da un’interessante relazione introduttiva presentata da Moroello Diaz della Vittoria Pallavicini, Presidente dell’Associazione Dimore Storiche Italiane, sul rapporto tra la dimora e la collezione.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Tra le personalità che hanno preso parte al dibattito, abilmente diretto e moderato da Pilar Abella de Aristegui e da Federico Mazzella, vogliamo citare la Dottoressa Patrizia Micoli intervenuta in rappresentanza di Ugo Soragni (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore Generale Musei, MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), l’Architetto Francesco Scoppola (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore Generale Belle Arti e Paesaggio, MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Dottor Paolo Giorgio Ferri (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Magistrato ed ex Consigliere per il MiBACT</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), la Dottoressa Simonetta Antellini (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Direttore dell’Ufficio Esportazione Oggetti d’Antichità e d’Arte di Roma, Soprintendenza S.P.S.A.E. e per il Polo Museale della città di Roma</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) e ancora, il Dottor Alvise di Canossa (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Presidente di Arterìa e di Art Defender</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Dottor Massimo Maggio (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Consigliere Delegato, Responsabile Fine Art - Jewellery &amp; Specie presso Willis Italia S.p.A.</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">), il Notaio Emilio Rummo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Studio Notarile Rummo</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) ed i consulenti ACAM, l’Avvocato Cino Benelli (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Titolare dello studio legale Benelli</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) ed il Dottor Francesco Pelagallo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Dottore Commercialista, Revisore Legale e Dottore di Ricerca in Economia Aziendale</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">). Ha chiuso i lavori il Maestro Pietro Ruffo (</span><i style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Artista</i><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">) con un’affascinante proiezione.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">Il convegno, nel mezzo di un importante periodo di riforme per il Ministero dei Beni e delle Attività Culturali e del Turismo, ha rappresentato un’occasione unica, tanto per il pubblico quanto per gli stessi intervenuti, per confrontarsi sui molteplici aspetti che compongono il problema della circolazione delle opere d’arte in Italia e nel mondo.</span><br></p>',2,1,0,'OFF',137,136,0,'2015-10-17 15:13:38','2015-12-20 12:44:12'),
	(11,'\"Valorizzazione del patrimonio immobiliare nel territorio rurale\"','valorizzazione-del-patrimonio-immobiliare-nel-territorio-rurale','Ideato dal Gruppo LAND con la collaborazione di ACAM Srl, si è tenuto giovedì 15 Ottobre alle ore 10:30 presso la Casa dell\'Architettura, sede dell\'Ordine degli Architetti di Roma, il seminario \"Valorizzazione del patrimonio immobiliare nel territorio rurale\".','<p><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">E\' stato presentato così, anche a Roma e nel Lazio, il nuovo servizio \"Land Family Support\", dedicato all’ottimizzazione del potenziale fondiario delle aziende agricole, delle ville, dei castelli e delle dimore storiche in generale, ed all’ideazione di servizi innovativi da integrare negli edifici e nelle architetture presenti in questi luoghi, al fine di contribuire alla generale valorizzazione del patrimonio immobiliare in un ambiente notoriamente svantaggiato come quello rurale.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">ACAM Srl ha aderito alla programmazione ed all’organizzazione del seminario nell’ambito di una collaborazione professionale con il Gruppo LAND sugli specifici temi che in esso verranno trattati, quali appunto la consulenza ed i servizi per i proprietari di dimore storiche in territorio rurale.&nbsp;</span><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><br style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\"><span style=\"color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px; text-align: justify;\">L’Associazione Dimore Storiche Italiane, sezione Lazio, era presente al Seminario per un saluto ed un intervento introduttivo, rispettivamente nelle persone del Presidente Dott. Francesco Sforza Cesarini e dell’Arch. Enzo Pinci.</span><br></p>',2,4,0,'ON',139,138,0,'2015-10-17 15:14:01','2015-12-20 12:45:00'),
	(22,'Roma, Vicolo degli Orbitelli, appartamento in palazzo soggetto a vincolo archeologico','roma-vicolo-degli-orbitelli-appartamento-in-palazzo-soggetto-a-vincolo-archeologico','Assistenza tecnica e fiscale in merito alla possibilità di esercizio della prelazione da parte dello Stato in fase di compravendita dell\'unità immobiliare, presentazione della domanda di Accertamento di Conformità ex D.P.R. 380/2001 per opere edilizie in precedenza eseguite in mancanza di titolo abilitativo, manutenzione straordinaria per nuova distribuzione interna e servizi correlati all\'avvio di attività ricettiva extra-alberghiera di Casa Vacanze.','<p>Analisi della legittimità urbanistico-edilizia dello stato ante operam, assistenza in fase di compravendita, studio di fattibilità generale, rapporti con le Soprintendenze, predisposizione, redazione e presentazione di S.C.I.A. per accertamento di conformità e manutenzione straordinaria, progettazione e direzione dei lavori.</p><p>Seguente redazione e presentazione di S.C.I.A. per avvio dell’attività ricettiva extra-alberghiera con licenza di Casa Vacanze.<br></p>',2,4,0,'ON',140,140,0,'2015-12-13 16:53:54','2015-12-20 13:25:12'),
	(23,'Destinazioni turistico ricettive extra-alberghiere, ACAM S.r.l. è il Vostro intermediario unico con le Amministrazioni pubbliche e le Soprintendenze','destinazioni-turistico-ricettive-extra-alberghiere-acam-srl-e-il-vostro-intermediario-unico-con-le-amministrazioni-pubbliche-e-le-soprintendenze','ACAM S.r.l. è Società ufficialmente accreditata presso il Comune di Roma quale intermediaria per la redazione, l\'asseverazione e la presentazione telematica delle S.C.I.A. per l\'apertura di Attività Produttive e Ricettive Alberghiere e/o Extra-Alberghiere, quali Casa Vacanze, Affittacamere, Albergo Diffuso ed altre, con o senza Specificazioni aggiuntive (es. Residenza d\'Epoca).','<p>Consulenza tecnica specialistica, rilievi dello stato di fatto, studi di fattibilità su ciascuna unità immobiliare, predisposizione, redazione e presentazione di S.C.I.A. per l’avvio dell’attività ricettiva e/o produttiva.</p><p class=\"p1\"><span class=\"s1\">Come molti di Voi hanno senz\'altro già avuto modo di osservare con riferimento alla gestione immobiliare, se da un lato il mercato&nbsp;delle locazioni tradizionali sta attraversando un periodo di grave crisi,&nbsp;quello&nbsp;degli affitti&nbsp;a breve termine (mensili, settimanali, o di singole&nbsp;notti) sta invece guadagnando molte posizioni, tanto da rappresentare ormai, per stranieri e connazionali,&nbsp;una validissima&nbsp;e sempre più considerata alternativa al tradizionale soggiorno in albergo.</span></p><p class=\"p1\"><span class=\"s1\">Un&nbsp;rapporto qualità/prezzo generalmente più favorevole rispetto a quello offerto dagli&nbsp;hotel, la semplicità e la rapidità di prenotazione on-line tramite piattaforme con&nbsp;disponibilità di migliaia di alloggi in tutto il mondo, la comodità e la privacy di un vero appartamento indipendente nel cuore della città e la possibilità di vivere&nbsp;un\'esperienza più autentica,&nbsp;sono alcune delle ragioni che spiegano il successo planetario degli affitti brevi e&nbsp;di portali di promozione e prenotazione on-line, come&nbsp;Airbnb.</span></p><p class=\"p1\"><span class=\"s1\">Tuttavia, è&nbsp;opportuno ricordare che l\'iscrizione&nbsp;e&nbsp;la registrazione&nbsp;a tali&nbsp;note piattaforme&nbsp;di promozione e&nbsp;di prenotazione&nbsp;on-line&nbsp;(continuiamo con l\'esempio precedente,&nbsp;Airbnb)&nbsp;non sostituisce&nbsp;la dovuta&nbsp;categorizzazione dell\'immobile in base alla legislazione nazionale vigente&nbsp;e la necessaria&nbsp;autorizzazione allo svolgimento dell\'attività, sia essa esercitata in forma semplice che in forma imprenditoriale.</span></p><p class=\"p1\"><span class=\"s1\">Per quanto riguarda&nbsp;il Lazio, è il Regolamento Regionale n. 16 del 24 Ottobre 2008 (seguito,&nbsp;per&nbsp;il Comune di Roma, da circolari attuative ed integrative)&nbsp;la norma&nbsp;che fornisce i criteri di&nbsp;ripartizione&nbsp;dell\'Attività Ricettiva&nbsp;Extra-Alberghiera&nbsp;in sette Categorie e che definisce le modalità di presentazione della S.C.I.A. per l\'inizio dell\'attività.</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"p1\"><span class=\"s1\">Oltre al servizio&nbsp;di redazione,&nbsp;asseverazione&nbsp;e&nbsp;presentazione della S.C.I.A. telematica,&nbsp;ACAM fornirà tutta la consulenza tecnica e fiscale necessaria all\'individuazione della Categoria più conveniente a seconda del contesto&nbsp;(tipologia dell\'immobile, ma anche numero delle unità immobiliari potenzialmente da asservire all\'attività, modalità di gestione preferite e tempo&nbsp;disponibile da destinare alla ricezione,&nbsp;posizione contributiva del titolare, e molto altro).</span></p>',2,4,0,'ON',156,156,0,'2015-12-13 16:55:22','2015-12-20 13:40:14'),
	(25,'Palazzo Casali - del Drago in Via della Stelletta ed altri immobili in palazzi storici vincolati della Capitale','palazzo-casali-del-drago-in-via-della-stelletta-ed-altri-immobili-in-palazzi-storici-vincolati-della-capitale','Consulenza specialistica sulla gestione dei Beni soggetti a tutela ex D.Lgs. 42/2004, cura dei rapporti con la Soprintendenza Belle Arti e Paesaggio, con la Soprintendenza Speciale per i Beni Archeologici e con il Comune di Roma.','<p>ACAM S.r.l. sta assistendo numerosi proprietari nella complessa gestione di diverse unità immobiliari situate in palazzi storici vincolati tramite una consulenza specialistica a 360°, rilievi dello stato di fatto e restituzione grafica, ricerche d\'archivio e catastali, progettazione architettonica e del restauro, redazione e presentazione di specifiche domande di Autorizzazione presso le Soprintendenze ed il Comune, assistenza all\'individuazione ed alla selezione delle imprese più adatte, Direzione dei Lavori, consulenza fiscale ordinaria e relativa agli interventi conservativi, sicurezza ed altro ancora...<br></p>',2,3,0,'ON',144,143,0,'2015-12-13 16:57:05','2015-12-20 12:47:41'),
	(34,'Il \"Triangolo Barberini\" di Palestrina','il-triangolo-barberini-di-palestrina','Con il supporto della proprietà e la partecipazione dell\'Associazione Dimore Storiche Italiane, nell\'ambito di un concorso di idee promosso da Accenture, ACAM ha presentato una proposta per il recupero e la valorizzazione del Triangolo e dell\'annesso casale, situati nelle immediate vicinanze di Palestrina.','<p><br></p>',2,4,0,'ON',146,145,0,'2015-12-20 12:49:30','2015-12-20 13:54:34'),
	(36,'Ex Convento di Sant\'Antonio da Padova, a Tivoli','ex-convento-di-santantonio-da-padova-a-tivoli','Restauro e consolidamento statico di un soffitto ligneo cassettonato al piano primo ed interventi conservativi sugli infissi in legno e vetro piombato della facciata principale.','<p>Rilievo e valutazione dei dissesti, definizione degli interventi, domanda di Autorizzazione e rapporti con la Soprintendenza Belle Arti e Paesaggio per le Provincie del Lazio. Individuazione e selezione della ditta in categoria OG2 e Direzione dei Lavori.<br></p>',2,3,0,'ON',149,148,0,'2015-12-20 13:15:25','2015-12-20 13:25:46'),
	(39,'Il Palazzo papale di Anagni, \"Palazzo Bonifacio VIII\"','il-palazzo-papale-di-anagni-palazzo-bonifacio-viii','Approfondimenti storici e conoscitivi sul palazzo, ricostruzione delle fasi di trasformazione dalla prima edificazione ad oggi.','<p>INCARICO conferito, in RTP, nella persona dell\'Arch. Damiano Minozzi - Rilievo geometrico, architettonico e fotografico del complesso, identificazione ed analisi delle diverse fasi di trasformazione che hanno interessato il monumento nella storia.</p><p><span style=\"line-height: 1.42857;\">L\'intero progetto,&nbsp;</span><span style=\"line-height: 1.42857;\">intrapreso e portato avanti grazie alla generosità di uno Sponsor,</span><span style=\"line-height: 1.42857;\">&nbsp;mira alla generale valorizzazione del Palazzo, nell\'obiettivo di un suo rilancio nel panorama turistico-culturale della regione Lazio. I risultati di questa prima fase di lavoro saranno inseriti in&nbsp;</span><span style=\"line-height: 1.42857;\">una pubblicazione scientifica sull\'evoluzione storico-architettonica dell\'edificio.</span></p>',2,4,0,'ON',158,157,0,'2015-12-20 14:40:47','2015-12-20 14:52:32'),
	(41,'Villa Torlonia, già Albani, a Roma','villa-torlonia-gia-albani-a-roma','Intervento di Restauro e Risanamento Conservativo nella parte sommitale del palazzo, finalizzato al ripristino della completa funzionalità della copertura e degli infissi posti sui torrini e lungo scala di accesso all’altana.','<p><br></p>',2,3,0,'ON',161,162,0,'2015-12-20 15:04:33','2015-12-20 15:05:38'),
	(42,'Il Portale del Falco, già porta di Villa Falconieri, in Frascati','il-portale-del-falco-gia-porta-di-villa-falconieri-in-frascati','Consulenza tecnica e direzione dei lavori di diserbo dalla vegetazione arbustiva infestante, rilievo della struttura con strumentazione Laser Scanner 3D, diagnosi dei dissesti, valutazioni in merito alle modalità di messa in sicurezza del monumento. Rapporti con la Soprintendenza Belle Arti e Paesaggio per le Province del Lazio.','<p><br></p>',2,3,0,'ON',164,163,0,'2015-12-20 15:06:24','2015-12-20 15:07:00');

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
	(1,'Ultimato','ultimato','2015-09-09 15:35:49','2015-09-09 15:35:49'),
	(2,'In Corso','in-corso','2015-09-09 15:36:03','2015-09-09 15:36:03');

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
	(1,'Arte','arte','art',1,'2015-10-13 17:54:09','2015-10-13 17:54:09'),
	(2,'Creatività','creativita','creativity',1,'2015-10-13 17:55:58','2015-10-13 17:55:58'),
	(3,'Architettura','architettura','architecture',1,'2015-10-13 17:54:44','2015-10-13 17:54:44'),
	(4,'Management','management','management',0,'2015-10-13 17:56:17','2015-10-13 17:56:17');

/*!40000 ALTER TABLE `activity_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;

INSERT INTO `attachments` (`id`, `activity_id`, `path`, `name`, `created_at`, `updated_at`)
VALUES
	(3,10,'/attachments/1445339124-direzione-generale-musei.pdf','Direzione generale musei','2015-10-20 15:05:24','2015-10-20 15:05:24'),
	(4,10,'/attachments/1445339143-gazzetta-amministrativa-n2-2014.pdf','Gazzetta amministrativa','2015-10-20 15:05:43','2015-10-20 15:05:43'),
	(5,10,'/attachments/1445339168-intervento-presidente-adsi.pdf','Intervento presidente Adsi','2015-10-20 15:06:08','2015-10-20 15:06:08'),
	(6,10,'/attachments/1445339215-mibact-capolavori-itineranti.pdf','Mibact','2015-10-20 15:06:55','2015-10-20 15:06:55'),
	(7,9,'/attachments/1445339533-invito.pdf','Invito','2015-10-20 15:12:13','2015-10-20 15:12:13'),
	(8,8,'/attachments/1445339649-articolo.pdf','No agli architetti photoshop - Italia oggi','2015-10-20 15:14:09','2015-10-20 15:14:09'),
	(9,6,'/attachments/1445339805-Intervista_Artribune_Massimiliano_Tonelli.pdf','Intervia Artribune Massimiliano Tonelli','2015-10-20 15:16:45','2015-10-20 15:16:45'),
	(10,5,'/attachments/1445339841-Articolo_Francesco_Pelagallo.pdf','Articolo Francesco Pelagallo','2015-10-20 15:17:21','2015-10-20 15:17:21'),
	(11,5,'/attachments/1445339857-Informazioni_generali.pdf','Informazioni generali','2015-10-20 15:17:37','2015-10-20 15:17:37'),
	(12,3,'/attachments/1445339947-Articolo_Artribune_Helga Marsala.pdf','Articolo Artribune','2015-10-20 15:19:07','2015-10-20 15:19:07'),
	(13,3,'/attachments/1445340000-Comunicato stampa.pdf','Comunicato stampa','2015-10-20 15:20:00','2015-10-20 15:20:00'),
	(14,3,'/attachments/1445340024-Locandina_prima posa.pdf','Locandina Prima Posa','2015-10-20 15:20:24','2015-10-20 15:20:24'),
	(15,2,'/attachments/1445340064-Articolo-Artribune_Helga-Marsala.pdf','Articolo Artribune','2015-10-20 15:21:04','2015-10-20 15:21:04'),
	(16,2,'/attachments/1445340086-Comunicato_stampa.pdf','Comunicato stampa','2015-10-20 15:21:26','2015-10-20 15:21:26'),
	(17,1,'/attachments/1445340559-Difendere-la-proprieta-intellettuale-in-architettura_Comunicato-stampa.pdf','Comunicato stampa','2015-10-20 15:29:19','2015-10-20 15:29:19'),
	(18,1,'/attachments/1445340579-Difendere-la-proprieta-intellettuale-in-architettura_Invito.pdf','Invito','2015-10-20 15:29:39','2015-10-20 15:29:39'),
	(19,1,'/attachments/1445340599-Difendere-la-proprieta-intellettuale-in-architettura_Locandina.pdf','Locandina','2015-10-20 15:29:59','2015-10-20 15:29:59'),
	(20,1,'/attachments/1445340613-Difendere-la-proprieta-intellettuale-in-architettura-cartella-stampa.zip','Cartella stampa','2015-10-20 15:30:13','2015-10-20 15:30:13'),
	(21,13,'/attachments/1445340757-Difendere-la-proprieta-intellettuale-in-architettura_Comunicato-stampa.pdf','','2015-10-20 15:32:37','2015-10-20 15:32:37'),
	(23,18,'/attachments/1448985654-ore 11 lezione di bici.docx','prova','2015-12-01 15:00:54','2015-12-01 15:00:54'),
	(26,34,'/attachments/1450623470-3+1_allegato A3 HD.pdf','3+1_Proposta per il Triangolo Barberini','2015-12-20 13:57:50','2015-12-20 13:57:50'),
	(27,11,'/attachments/1450623553-Invito_Seminario_15.10.2015.pdf','Invito','2015-12-20 13:59:13','2015-12-20 13:59:13'),
	(28,11,'/attachments/1450623591-presentazione tara.pdf','Castello di Pratica di Mare','2015-12-20 13:59:51','2015-12-20 13:59:51'),
	(29,11,'/attachments/1450623839-2015_LAND_Territorio rurale.pdf','LAND+ACAM per il territorio rurale','2015-12-20 14:03:59','2015-12-20 14:03:59');

/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table filer_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filer_attachments`;

CREATE TABLE `filer_attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_id` int(10) unsigned DEFAULT NULL,
  `model_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table filer_local_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filer_local_files`;

CREATE TABLE `filer_local_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table filer_urls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filer_urls`;

CREATE TABLE `filer_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
	(35,2,'Acam\\Models\\Pages','images','arte-main','arte-main.jpg','uploads',118396,'[]','[]',9,'2015-10-17 16:12:56','2015-10-17 16:12:56'),
	(36,3,'Acam\\Models\\Pages','images','creativity-main','creativity-main.jpg','uploads',106578,'[]','[]',10,'2015-10-17 16:13:32','2015-10-17 16:13:32'),
	(37,4,'Acam\\Models\\Pages','images','architecture-main','architecture-main.jpg','uploads',107112,'[]','[]',11,'2015-10-17 16:13:52','2015-10-17 16:13:52'),
	(49,7,'App\\Acam\\Models\\Activities','images','project7-thumb','project7-thumb.jpg','uploads',14867,'[]','[]',19,'2015-10-17 16:18:10','2015-10-17 16:18:10'),
	(55,4,'App\\Acam\\Models\\Activities','images','project4-thumb','project4-thumb.jpg','uploads',107517,'[]','[]',22,'2015-10-17 16:20:02','2015-10-17 16:20:02'),
	(64,14,'App\\Acam\\Models\\Activities','images','slider01','slider01.jpg','uploads',134391,'[]','[]',27,'2015-10-20 15:36:04','2015-10-20 15:36:04'),
	(67,4,'Acam\\Models\\Pages','images','leone','leone.jpg','uploads',10761,'[]','[]',30,'2015-10-20 15:37:44','2015-10-20 15:37:44'),
	(93,1,'Acam\\Models\\Staff','images','Foto Damiano bn','Foto Damiano bn.jpg','uploads',505006,'[]','[]',49,'2015-11-29 18:15:51','2015-11-29 18:15:51'),
	(94,4,'Acam\\Models\\Staff','images','Foto Pietro bn','Foto Pietro bn.jpg','uploads',304681,'[]','[]',50,'2015-11-29 18:16:49','2015-11-29 18:16:49'),
	(98,8,'Acam\\Models\\Staff','images','Foto Valentina bn','Foto Valentina bn.jpg','uploads',56457,'[]','[]',54,'2015-11-29 18:19:56','2015-11-29 18:19:56'),
	(99,10,'Acam\\Models\\Staff','images','Foto Aloisia bn','Foto Aloisia bn.jpg','uploads',567494,'[]','[]',55,'2015-11-29 18:20:21','2015-11-29 18:20:21'),
	(122,1,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',214956,'[]','[]',66,'2015-12-20 12:27:45','2015-12-20 12:27:45'),
	(123,1,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',433114,'[]','[]',67,'2015-12-20 12:28:59','2015-12-20 12:28:59'),
	(126,2,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',100863,'[]','[]',70,'2015-12-20 12:34:00','2015-12-20 12:34:00'),
	(127,2,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',198803,'[]','[]',71,'2015-12-20 12:34:06','2015-12-20 12:34:06'),
	(128,3,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',188181,'[]','[]',72,'2015-12-20 12:35:45','2015-12-20 12:35:45'),
	(129,3,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',332900,'[]','[]',73,'2015-12-20 12:35:59','2015-12-20 12:35:59'),
	(130,5,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',239443,'[]','[]',74,'2015-12-20 12:37:19','2015-12-20 12:37:19'),
	(131,5,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',469030,'[]','[]',75,'2015-12-20 12:37:27','2015-12-20 12:37:27'),
	(134,9,'App\\Acam\\Models\\Activities','images','Unica','Unica.jpg','uploads',604810,'[]','[]',78,'2015-12-20 12:40:16','2015-12-20 12:40:16'),
	(135,6,'App\\Acam\\Models\\Activities','images','Unica','Unica.jpg','uploads',327079,'[]','[]',79,'2015-12-20 12:41:00','2015-12-20 12:41:00'),
	(136,10,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',94286,'[]','[]',80,'2015-12-20 12:43:45','2015-12-20 12:43:45'),
	(137,10,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',293782,'[]','[]',81,'2015-12-20 12:43:53','2015-12-20 12:43:53'),
	(138,11,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',20765,'[]','[]',82,'2015-12-20 12:44:38','2015-12-20 12:44:38'),
	(139,11,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',464305,'[]','[]',83,'2015-12-20 12:44:41','2015-12-20 12:44:41'),
	(140,22,'App\\Acam\\Models\\Activities','images','Unica','Unica.jpg','uploads',643925,'[]','[]',84,'2015-12-20 12:45:45','2015-12-20 12:45:45'),
	(143,25,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',244476,'[]','[]',87,'2015-12-20 12:47:21','2015-12-20 12:47:21'),
	(144,25,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',316023,'[]','[]',88,'2015-12-20 12:47:25','2015-12-20 12:47:25'),
	(145,34,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',938687,'[]','[]',89,'2015-12-20 12:49:43','2015-12-20 12:49:43'),
	(146,34,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',264589,'[]','[]',90,'2015-12-20 12:49:51','2015-12-20 12:49:51'),
	(148,36,'App\\Acam\\Models\\Activities','images','cover','cover.jpg','uploads',461178,'[]','[]',92,'2015-12-20 13:15:45','2015-12-20 13:15:45'),
	(149,36,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',544751,'[]','[]',93,'2015-12-20 13:15:57','2015-12-20 13:15:57'),
	(156,23,'App\\Acam\\Models\\Activities','images','Unica','Unica.jpg','uploads',175901,'[]','[]',100,'2015-12-20 13:36:28','2015-12-20 13:36:28'),
	(157,39,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',481075,'[]','[]',101,'2015-12-20 14:48:59','2015-12-20 14:48:59'),
	(158,39,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',846631,'[]','[]',102,'2015-12-20 14:49:06','2015-12-20 14:49:06'),
	(161,41,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',711656,'[]','[]',105,'2015-12-20 15:05:09','2015-12-20 15:05:09'),
	(162,41,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',803820,'[]','[]',106,'2015-12-20 15:05:15','2015-12-20 15:05:15'),
	(163,42,'App\\Acam\\Models\\Activities','images','Cover','Cover.jpg','uploads',407708,'[]','[]',107,'2015-12-20 15:06:33','2015-12-20 15:06:33'),
	(164,42,'App\\Acam\\Models\\Activities','images','Slide','Slide.jpg','uploads',1380056,'[]','[]',108,'2015-12-20 15:06:41','2015-12-20 15:06:41'),
	(166,6,'Acam\\Models\\Staff','images','Foto Francesco','Foto Francesco.jpg','uploads',938255,'[]','[]',110,'2017-01-24 17:06:38','2017-01-24 17:06:38');

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
	('2015_10_12_174312_create_pages_table',1),
	('2015_04_29_130341_create_table_local_files',2),
	('2015_04_29_130846_create_table_attachments',2),
	('2015_04_29_233700_create_table_urls',2),
	('2015_10_19_150726_create_attachments_table',2),
	('2017_02_14_111836_create_staff_page_types_table',3);

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
	(1,'Chi Siamo','mission',NULL,'<p style=\"margin-top: 15px; margin-bottom: 15px;\"></p><div style=\"text-align: justify; \"><span style=\"color: rgb(156, 156, 148);\">Il patrimonio artistico ed architettonico privato italiano costituisce, nel suo complesso, una realtà di incommensurabile valore per il Paese. La sua estensione e la sua frammentazione sul territorio ne fanno un sistema unico, anche se quasi mai facile da gestire.&nbsp;</span><span style=\"color: rgb(156, 156, 148); line-height: 1.42857;\">Nonostante gli enormi sforzi di proprietari e associazioni di categoria infatti, una parte considerevole di questi Beni si trova in una condizione di generale e problematica fragilità, dovuta in gran parte all’incertezza del quadro normativo, alla burocrazia imperante ed all\'elevata imposizione fiscale complessiva.</span></div><div style=\"text-align: justify; \"><span style=\"color: rgb(156, 156, 148);\"><span style=\"line-height: 1.42857;\"><br></span></span></div><div style=\"text-align: justify; \"><span style=\"color: rgb(156, 156, 148);\"><span style=\"line-height: 1.42857;\">Attraverso la sua rete di professionisti qualificati, ACAM Srl fornisce ai proprietari tutta l’assistenza ed i servizi specialistici necessari all’ottimale gestione dei propri beni artistici e/o architettonici, al più semplice adempimento degli oneri derivanti dal loro possesso ed al pieno godimento dei conseguenti diritti e dei potenziali ritorni economici.</span></span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><br></div><span class=\"red\" style=\"color: rgb(156, 156, 148);\"><div style=\"text-align: justify;\"><span class=\"red\"><span style=\"font-weight: bold; font-style: italic;\">A-rt</span>:</span>&nbsp;Ci preoccupiamo della conservazione e della valorizzazione del patrimonio artistico e mobiliare privato italiano. A proprietari e/o detentori a vario titolo di opere d’arte o d\'antiquariato, offriamo assistenza specialistica e servizi altamente personalizzati per la conservazione, la gestione e la trasmissione tra generazioni del proprio patrimonio artistico e mobiliare.&nbsp;<a href=\"arte\" class=\"red\">Tutti i servizi per l’Arte</a>...</div></span><div style=\"text-align: justify;\"><span class=\"purple\"><span style=\"font-weight: bold; font-style: italic; color: rgb(156, 156, 148);\"><br></span></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148);\"><span class=\"purple\"><span style=\"font-weight: bold; font-style: italic;\">C-reativity</span>:</span>&nbsp;Abbiamo a cuore la tutela e la valorizzazione del processo creativo che sta dietro la realizzazione di ogni opera d’arte o di architettura. In particolare ad artisti ed architetti offriamo la necessaria consulenza tecnica, legale e fiscale in materia di&nbsp;Proprietà Intellettuale e Diritto&nbsp;d’Autore oltre che in merito al c.d. Diritto di Seguito.&nbsp;<a href=\"creativita\" class=\"purple\">Tutti i servizi per la Creatività</a>...</span></div><div style=\"text-align: justify;\"><span class=\"azure\"><span style=\"font-weight: bold; font-style: italic; color: rgb(156, 156, 148);\"><br></span></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148);\"><span class=\"azure\"><span style=\"font-weight: bold; font-style: italic;\">A-rchitecture</span>:</span>&nbsp;Siamo specializzati nella consulenza tecnica e nell’offerta di servizi dedicati</span><span style=\"color: rgb(156, 156, 148); line-height: 1.42857;\">&nbsp;a proprietari ed amministratori di beni immobili. Lavoriamo di squadra in favore di una reale conservazione e di una più semplice</span><span style=\"color: rgb(156, 156, 148); line-height: 1.42857;\">&nbsp;gestione corrente e straordinaria delle dimore storiche e degli immobili di pregio, degli edifici di culto, dei complessi monumentali e di ogni altro bene architettonico di interesse storico-artistico che si trovi sul territorio italiano.&nbsp;</span><a href=\"architettura\" class=\"azure\" style=\"line-height: 1.42857; background-color: rgb(255, 255, 255);\">Tutti i servizi per l’Architettura</a>...</div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-style: italic; color: rgb(156, 156, 148);\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-style: italic;\">M-anagement</span>:<span style=\"color: rgb(156, 156, 148);\"> La disponibilità di un team di professionisti diversi (</span><span style=\"color: rgb(156, 156, 148); font-style: italic;\">architetti e strutturisti, restauratori e storici dell\'arte, legali e fiscalisti, economisti ed esperti di comunicazione</span><span style=\"color: rgb(156, 156, 148);\">) e tutti specializzati in materia, il mantenimento di una visione ampia e globale sulla complessa problematica gestionale, l’elevata personalizzazione dei servizi sulla base delle Vostre esigenze specifiche, sono alcuni dei nostri punti di forza in questo straordinario lavoro.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148);\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(156, 156, 148);\"><br></span></div><div style=\"text-align: justify; \"><span style=\"color: rgb(156, 156, 148);\">Operando così nell’interesse dei propri Clienti, ACAM Srl è fiera di dare il suo contributo anche alla generale valorizzazione del patrimonio culturale italiano ed alla diffusione della sua conoscenza.</span><br></div><p></p>',0,'red','2015-10-16 22:47:42','2017-01-05 15:30:47'),
	(2,'Arte','arte','L\' ARTE A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); \"><span style=\"color: rgb(237, 28, 36); font-size: 24px; line-height: 1.1;\">I vostri obiettivi:</span></h1>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Approfondimento della conoscenza intorno all\'opera d\'arte.</li>\r\n<li>Recupero/restauro, tutela e conservazione dell’opera d\'arte.</li>\r\n<li>Valorizzazione dell’opera d\'arte, al fine di renderne sostenibile il possesso e la gestione.</li>\r\n<li>Gestione ordinaria e straordinaria dell\'opera d\'arte, nel pieno rispetto della Legge italiana ed internazionale.</li>\r\n<li>Tutela dei diritti e degli interessi connessi alla detenzione dell\'opera d\'arte.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); \"><span class=\"red\" style=\"color: rgb(237, 28, 36);\">i nostri STRUMENTI:</span></h3>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE TECNICO, RICERCA, RESTAURO E CONSERVAZIONE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Ricerche ed approfondimenti storico-artistici;</li>\r\n<li>Indagini dirette e strumentali sull\'opera d\'arte;</li>\r\n<li>Analisi dello stato di conservazione de<span style=\"line-height: 20.2222px;\">ll\'opera d\'arte</span>;</li>\r\n<li>Perizie di stima, inventari e valutazioni patrimoniali;</li>\r\n<li>Restauro dell’opera d’arte;</li>\r\n<li>Rapporti con le Soprintendenze e con gli Uffici Esportazione;</li>\r\n<li>Assistenza al rilascio degli Attestati di circolazione (ALC - ACT), delle Licenze di esportazione (LED - LET) e di altri certificati;</li>\r\n<li>Assistenza e consulenza tecnica in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Predisposizione di pareri legali ed assistenza giudiziale;</li>\r\n<li>Investigazioni in materia di contraffazione ed altri illeciti a danno dell’opera;</li>\r\n<li>Assistenza legale e amministrativa in caso di furto o danneggiamento dell’opera;</li>\r\n<li>Rapporti con il Comando Carabinieri Tutela Patrimonio Culturale;</li>\r\n<li>Assistenza alla compravendita dell’opera d’arte;</li>\r\n<li>Assistenza e consulenza legale-amministrativa in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE ECONOMICO, MANAGEMENT E FISCALITÀ</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Consulenza in merito alla gestione del patrimonio artistico;</li>\r\n<li>Consulenza in merito all’assicurazione di opere e collezioni;</li>\r\n<li>Consulenza fiscale in merito al “Diritto di Seguito”;</li>\r\n<li>Consulenza fiscale in merito ai passaggi di proprietà per atti tra vivi;</li>\r\n<li>Consulenza fiscale in merito ai passaggi di proprietà mortis causa;</li>\r\n<li>Consulenza fiscale in merito alla circolazione nazionale ed internazionale delle opere;</li>\r\n<li>Assistenza e consulenza economica e fiscale in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Comunicazione e marketing dei Beni Culturali;</li>\r\n<li>Rapporti con le associazioni e gli organismi di settore;</li>\r\n<li>Organizzazione di mostre, convegni ed altri eventi culturali;</li>\r\n<li><span style=\"line-height: 20.2222px;\">Assistenza al reperimento di fondi per la v</span><span style=\"line-height: 20.2222px;\">alorizzazione del patrimonio artistico.</span></li>\r\n</ul>',35,'red','2015-10-16 22:47:50','2017-02-14 12:30:20'),
	(3,'Creatività','creativita','LA CREATIVITÀ A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); \"><span style=\"color: rgb(146, 39, 143); font-size: 24px; line-height: 1.1;\">I VOSTRI OBIETTIVi:</span><br></h1>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Approfondimento circa le opportunità di tutela del progetto autoriale legato all\'Arte o all\'Architettura;</li>\r\n<li>Accesso al riconoscimento della Proprietà Intellettuale e/o&nbsp;<span style=\"line-height: 20.2222px;\">alla tutela d’Autore</span>;</li>\r\n<li>Tutela e valorizzazione&nbsp;<span style=\"line-height: 20.2222px;\">della Proprietà Intellettuale e/o del diritto</span>&nbsp;d\'Autore;</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); \"><span class=\"purple\" style=\"color: rgb(146, 39, 143);\">I NOSTRI STRUMENTI:</span></h3>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE TECNICO, RICERCA, RESTAURO E CONSERVAZIONE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Ricerche storiche ed i<span style=\"line-height: 20.2222px;\">ndagini di anteriorità;</span></li>\r\n<li>Rapporti con le Soprintendenze e la Pubblica Amministrazione;</li>\r\n<li>Assistenza al riconoscimento del “particolare carattere artistico” (ex Art. 20 Legge 633/41) dell’opera architettonica contemporanea;</li>\r\n<li>Assistenza e consulenza tecnica in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE LEGALE, AMMInISTRATIVO E GIUDIZIALE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Predisposizione di pareri legali <span style=\"line-height: 20.2222px;\">di anteriorità;</span></li>\r\n<li>Assistenza e consulenza legale in materia di Proprietà Intellettuale<span style=\"line-height: 20.2222px;\">&nbsp;di diritto d’Autore;</span></li>\r\n<li>Assistenza legale-amministrativa e giudiziale in caso di plagio e/o lesione della Proprietà Intellettuale;</li>\r\n<li>Investigazioni in materia di contraffazione ed altre violazioni a danno dell’autore;</li>\r\n<li>Rappresentanza avanti l’UIBM (Ufficio Italiano Brevetti e Marchi) e l\'<span style=\"line-height: 20.2222px;\">OMPI (Organizzazione Mondiale per la Proprietà Intellettuale);</span></li>\r\n<li>Consulenza precontrattuale e negoziazione dei contratti;</li>\r\n<li>Assistenza e consulenza legale in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE ECONOMICO, MANAGEMENT E FISCALITÀ</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Assistenza alla gestione ed alla valorizzazione del patrimonio culturale ed intellettuale;</li>\r\n<li>Assistenza e consulenza fiscale in merito al c.d. “Diritto di Seguito”;</li>\r\n<li>Assistenza e consulenza economica e fiscale in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Comunicazione e marketing del progetto autoriale;</li>\r\n<li>Rapporti con le associazioni e gli organismi di settore;</li>\r\n<li>Organizzazione di mostre, convegni ed altri eventi culturali;</li>\r\n<li><span style=\"line-height: 20.2222px;\">Assistenza al reperimento di fondi per la v</span><span style=\"line-height: 20.2222px;\">alorizzazione&nbsp;<span style=\"line-height: 20.2222px;\">del patrimonio intellettuale legato all’Arte ed all’Architettura.</span></span></li>\r\n</ul>',36,'purple','2015-10-16 22:48:15','2017-02-14 12:30:49'),
	(4,'Architettura','architettura','L\' ARCHITETTURA A 360°','<h1 style=\"font-size: 28px; margin-top: 30px; margin-bottom: 5px; font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 28px; color: rgb(69, 69, 69); \"><span style=\"color: rgb(0, 183, 171); font-size: 24px; line-height: 1.1;\">I VOSTRI OBIETTIVI:</span><br></h1>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ol class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Approfondimento della conoscenza storica ed architettonica dell\'edificio;</li>\r\n<li>Recupero/restauro, tutela e conservazione dell’edificio;</li>\r\n<li>Valorizzazione dell’edificio, al fine di renderne sostenibile il possesso e la gestione.</li>\r\n<li>Gestione ordinaria e straordinaria dell\'edificio, nel pieno rispetto della Legge, in particolare in presenza di Vincolo ex D.Lgs. 42/2004;</li>\r\n<li>Tutela dei diritti e degli interessi connessi alla detenzione dell\'edificio,&nbsp;<span style=\"line-height: 20.2222px;\">in particolare in presenza di Vincolo ex D.Lgs. 42/2004</span>.</li>\r\n</ol>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h3 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; color: rgb(69, 69, 69); \"><span class=\"azure\" style=\"color: rgb(0, 183, 171);\">I NOSTRI STRUMENTI:</span></h3>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE TECNICO, RICERCA, RESTAURO E CONSERVAZIONE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Ricerche storiche ed approfondimenti diretti ed indiretti sull\'edificio;</li>\r\n<li>Indagini dirette e strumentali sul manufatto, r<span style=\"line-height: 20.2222px;\">ilevi geometrici ed architettonici;</span></li>\r\n<li><span style=\"line-height: 20.2222px;\">Analisi dello stato di fatto, rilievi del degrado e dei dissesti statici, messa in sicurezza;</span></li>\r\n<li>Assistenza in merito ai regimi di tutela degli edifici, con particolare riferimento alla tutela ex D.Lgs. 42/2004;</li>\r\n<li>Rapporti con la Pubblica Amministrazione e con le Soprintendenze;</li>\r\n<li><span style=\"line-height: 20.2222px;\">Assistenza al rilascio dei Nulla Osta e delle autorizzazioni urbanistiche ed amministrative;</span></li>\r\n<li>Progetti di restauro e consolidamento strutturale, adeguamento funzionale, messa a norma ed efficientamento energetico;</li>\r\n<li>Direzione dei lavori, coordinamento della sicurezza in fase di progettazione ed esecuzione dei lavori;</li>\r\n<li>Assistenza e consulenza tecnica in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE LEGALE, AMMINISTRATIVO E GIUDIZIALE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Predisposizione di pareri legali ed assistenza giudiziale;</li>\r\n<li>Assistenza legale ed amministrativa in caso di domande di Sanatoria per opere edilizie;</li>\r\n<li>Consulenza legale in merito alla ri-determinazione del classamento e delle rendite catastali degli immobili;</li>\r\n<li>Investigazioni in materia di danneggiamenti ed altri illeciti a danno del patrimonio architettonico vincolato;</li>\r\n<li>Assistenza contrattuale nella locazione e compravendita di immobili;</li>\r\n<li>Assistenza e consulenza legale in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE ECONOMICO, MANAGEMENT E FISCALITÀ</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Consulenza in merito alla gestione del patrimonio architettonico;</li>\r\n<li>Consulenza in merito all’assicurazione di immobili, con particolare riferimento ad immobili di pregio;</li>\r\n<li>Consulenza fiscale in merito alle agevolazioni fiscali previste per i detentori di edifici vincolati;</li>\r\n<li>Consulenza fiscale in merito alla detraibilità degli interventi di manutenzione e di restauro e risanamento conservativo;</li>\r\n<li>Consulenza fiscale in merito alla ri-determinazione del classamento e delle rendite catastali degli immobili;</li>\r\n<li>Consulenza fiscale in merito ai passaggi di proprietà per atti tra vivi;</li>\r\n<li>Consulenza fiscale in merito ai passaggi di proprietà mortis causa;</li>\r\n<li>Assistenza e consulenza economica e fiscale in genere.</li>\r\n</ul>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<h2 style=\"font-family: \'Yanone Kaffeesatz\', Helvetica, sans-serif; line-height: 22px; color: rgb(170, 170, 170); margin: 5px 0px 15px; font-size: 22px; \">SETTORE COMUNICAZIONE, MARKETING E RELAZIONI ESTERNE</h2>\r\n<p style=\"margin-top: 15px; margin-bottom: 15px; color: rgb(69, 69, 69); text-align: justify; font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\"></p>\r\n<ul class=\"no-list\" style=\"list-style: none; padding-left: 0px; color: rgb(69, 69, 69); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px; line-height: 20.2222px;\">\r\n<li>Comunicazione e marketing dei Beni Culturali;</li>\r\n<li>Rapporti con le associazioni e gli organismi di settore;</li>\r\n<li>Organizzazione di mostre, convegni ed altri eventi culturali;</li>\r\n<li><span style=\"line-height: 20.2222px;\">Assistenza al reperimento di fondi per la v</span><span style=\"line-height: 20.2222px;\">alorizzazione del patrimonio architettonico;</span></li>\r\n<li>Promozione della c.d. “Qualità Architettonica” per le nuove costruzioni.</li>\r\n</ul>',37,'azure','2015-10-16 22:48:29','2017-02-14 12:31:07');

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
	(1,'testo_1','Testo1','<h1 style=\"text-align: center;\"><span style=\"font-size: 24px; line-height: 25.7143px; color: rgb(156, 156, 148);\">GESTIONE DEL PATRIMONIO ARTISTICO, CULTURALE ED ARCHITETTONICO ITALIANO,</span></h1><h1 style=\"text-align: center;\"><span style=\"font-family: inherit; font-size: 24px; line-height: 25.7143px; color: rgb(99, 99, 99);\">360° di Consulenza specialistica e Servizi dedicati.</span></h1><h1 style=\"text-align: center;\"><span style=\"color: rgb(206, 198, 206); font-family: inherit; font-size: 24px; line-height: 25.7143px;\"><br></span></h1>','2015-10-16 23:03:00','2017-02-14 12:41:18');

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
  `page_id` int(11) NOT NULL,
  `featured_image_id` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`id`, `name`, `intro`, `description`, `position`, `type_id`, `page_id`, `featured_image_id`, `website`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'Damiano Minozzi','Architetto, Master di II Livello in Restauro e Consolidamento dell\'Architettura','<span style=\"font-style: italic;\">Fondatore, Amministratore Unico, responsabile AR[e]A tecnica</span>',1,1,1,93,'',0,'2015-10-13 19:35:20','2017-02-14 12:23:28'),
	(4,'Pietro Ilardi','Avvocato','<p style=\"text-align: justify; \"><span style=\"font-style: italic;\">Fondatore, titolare dello Studio Legale Ilardi</span></p>',4,2,1,94,'',0,'2015-10-13 19:51:39','2017-02-14 12:24:36'),
	(6,'Francesco Pelagallo','Dottore Commercialista, Revisore Legale, Ricercatore','<p><br></p>',6,3,1,166,'',0,'2015-10-13 19:52:57','2017-02-14 12:24:41'),
	(8,'Valentina Piscitelli','Architetto, Giornalista','<p><br></p>',8,4,1,98,'',0,'2015-10-13 19:54:05','2017-02-14 12:24:50'),
	(10,'Aloisia Marzotto Caotorta','Dottore in Lettere, Master di II Livello in Management dei Beni e delle Attività Culturali','<p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"p1\"><br></p>',9,1,1,99,'',0,'2015-11-29 17:33:07','2017-02-14 12:24:59');

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff_page_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff_page_types`;

CREATE TABLE `staff_page_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `staff_page_types` WRITE;
/*!40000 ALTER TABLE `staff_page_types` DISABLE KEYS */;

INSERT INTO `staff_page_types` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Professionisti','/network/professionisti','2017-02-14 11:21:14','2017-02-14 11:21:14'),
	(2,'Studi e società','/network/studi-societa','2017-02-14 11:21:41','2017-02-14 11:21:41'),
	(3,'Imprese','/network/imprese','2017-02-14 11:21:56','2017-02-14 11:21:56');

/*!40000 ALTER TABLE `staff_page_types` ENABLE KEYS */;
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
	(1,'Settore TECNICO, RICERCA, RESTAURO E CONSERVAZIONE','2015-10-13 21:25:05','2017-02-14 12:17:58'),
	(2,'Settore LEGALE, AMMINISTRATIVO E GIUDIZIALE','2015-10-13 21:25:17','2017-02-14 12:17:58'),
	(3,'Settore ECONOMICO, MANAGEMENT E FISCALITÀ','2015-10-13 21:25:28','2017-02-14 12:17:58'),
	(4,'Settore COMUNICAZIONE, MARKETING E RELAZIONE ESTERNE','2015-10-13 21:25:41','2017-02-14 12:17:58');

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
	(1,'Acam Admin','info@acamprovides.com','$2y$10$H7kby43SedC2V6ApxreyjuKmhX3zk82fMrhEheDpclnNCwC6ik1va','6PrMuuSwm0VLTnynFVga4dXsW2UgJOSQrZLCFVKPUzEirPbXuh7byJwsdcDF','2015-10-13 15:53:13','2016-02-20 10:05:13');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
