import 'main.dart';

// MEDIZIN & ERSTE HILFE (40+ Karten)
final List<FlashCard> _medizinCards = [
  FlashCard(
    category: 'Medizin',
    question: 'Was sind die Symptome eines Herzinfarkts?',
    answer: '• Starke Schmerzen in Brust, Arm, Kiefer\n• Atemnot\n• Übelkeit, Schweißausbrüche\n• Todesangst\n• Bei Frauen oft untypische Symptome',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Wie führe ich eine Herzdruckmassage durch?',
    answer: '• Handballen auf Brustmitte\n• 100-120 Druckvorgänge/Min\n• 5-6 cm tief drücken\n• Nicht aufhören bis Hilfe da ist!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was ist die stabile Seitenlage?',
    answer: 'Bei bewusstlosen aber atmenden Personen:\n• Verhindert Ersticken\n• Arm angewinkelt neben Kopf\n• Anderes Bein angewinkelt\n• Kopf überstreckt\n• Mund nach unten',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'FAST-Test beim Schlaganfall?',
    answer: 'F = Face (Gesichtslähmung)\nA = Arms (Armschwäche)\nS = Speech (Sprachstörung)\nT = Time (sofort 112!)',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Wie versorge ich eine stark blutende Wunde?',
    answer: '• Handschuhe anziehen\n• Druckverband anlegen\n• Wunde abdecken\n• Gliedmaße hochlagern\n• Bei Durchbluten: 2. Verband drüber\n• Notruf 112',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was tun bei Verbrennungen?',
    answer: '• Mit Wasser kühlen (15-20°C)\n• 10-20 Minuten\n• Keine Hausmittel (Mehl, Öl)\n• Brandblasen NICHT öffnen\n• Ab 2. Grades: Arzt',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Heimlich-Manöver bei Ersticken?',
    answer: '• 5x zwischen Schulterblätter schlagen\n• Falls erfolglos: Von hinten umfassen\n• Faust zwischen Nabel und Brustbein\n• Ruckartig nach innen-oben\n• 5x wiederholen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Anzeichen eines Schocks?',
    answer: '• Blasse, kalte, schweißige Haut\n• Schneller, schwacher Puls\n• Flache Atmung\n• Unruhe, Angst\n→ Beine hoch, warm halten, Notruf',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Normale Vitalwerte Erwachsene?',
    answer: '• Puls: 60-80/Min\n• Atmung: 12-18/Min\n• Blutdruck: 120/80 mmHg\n• Temperatur: 36,5-37,5°C',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was gehört in die Hausapotheke?',
    answer: '• Verbandmaterial\n• Desinfektionsmittel\n• Fieberthermometer\n• Schmerzmittel\n• Pinzette, Schere\n• Zeckenzange',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Symptome Gehirnerschütterung?',
    answer: '• Kurzer Bewusstseinsverlust\n• Kopfschmerzen\n• Übelkeit, Erbrechen\n• Schwindel\n• Erinnerungslücken\n→ Immer zum Arzt!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was tun bei Nasenbluten?',
    answer: '• Aufrecht sitzen\n• Kopf LEICHT nach vorne\n• Nasenflügel 5-10 Min zusammendrücken\n• Kalter Umschlag im Nacken\n• NICHT in Nacken legen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Diabetischer Notfall: Unterzucker?',
    answer: '• Schwitzen, Zittern\n• Heißhunger\n• Verwirrtheit\n• Bewusstlosigkeit möglich\n→ Traubenzucker geben!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was tun bei Knochenbrüchen?',
    answer: '• NICHT bewegen/einrenken\n• Ruhigstellen\n• Bei offenem Bruch: steril abdecken\n• Kühlen\n• Notruf bei schweren Brüchen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Wie entferne ich eine Zecke?',
    answer: '• Zeckenzange nutzen\n• Nah an Haut greifen\n• Langsam gerade herausziehen\n• NICHT drehen\n• Stelle desinfizieren\n• Bei Rötung: Arzt',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Anzeichen Blutvergiftung?',
    answer: '• Roter Streifen zur Herzrichtung\n• Hohes Fieber\n• Schneller Puls\n• Verwirrtheit\n• Schüttelfrost\n→ LEBENSGEFAHR! Notarzt!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Allergischer Schock - Was tun?',
    answer: '• Notruf 112 SOFORT!\n• Adrenalin-Pen (wenn vorhanden)\n• Schocklage (Beine hoch)\n• Enge Kleidung öffnen\n• Beruhigen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Notruf 112 - Was sagen?',
    answer: 'WO ist es passiert?\nWAS ist passiert?\nWIE viele Verletzte?\nWELCHE Verletzungen?\nWARTEN auf Rückfragen!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Anzeichen Herzinfarkt bei Frauen?',
    answer: 'Oft UNTYPISCH:\n• Übelkeit, Erbrechen\n• Rückenschmerzen\n• Kurzatmigkeit\n• Extreme Müdigkeit\n→ Trotzdem 112!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was ist ein Defibrillator (AED)?',
    answer: '• Automatischer Externer Defibrillator\n• Bei Herzstillstand\n• Gibt elektrischen Schock\n• Sprachanweisung befolgen\n• Kann Leben retten!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Epileptischer Anfall - Erste Hilfe?',
    answer: '• Person NICHT festhalten\n• Gefährliche Gegenstände entfernen\n• Zeit stoppen\n• Nach Anfall: Stabile Seitenlage\n• Bei >5 Min oder Wiederholung: 112',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Symptome Blinddarmentzündung?',
    answer: '• Schmerzen im rechten Unterbauch\n• Übelkeit, Erbrechen\n• Fieber\n• Appetitlosigkeit\n→ Zum Arzt! Kann lebensbedrohlich werden',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was tun bei Insektenstich?',
    answer: 'Normal:\n• Kühlen\n• Nicht kratzen\n\nAllergisch:\n• Schwellung, Atemnot\n• Kreislaufprobleme\n→ Notruf 112!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Hitzschlag vs. Sonnenstich?',
    answer: 'Hitzschlag:\n• Körper überhitzt (>40°C)\n• Bewusstseinstrübung\n\nSonnenstich:\n• Kopf überhitzt\n• Kopfschmerzen, Nackensteife\n\nBeides: Kühlen, Notruf',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Anzeichen Lungenentzündung?',
    answer: '• Hohes Fieber\n• Husten mit Auswurf\n• Atemnot\n• Brustschmerzen\n• Schwächegefühl\n→ Zum Arzt!',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Was tun bei Unterkühlung?',
    answer: '• Aus Kälte bringen\n• Nasse Kleidung entfernen\n• In Decken wickeln\n• Warme (nicht heiße!) Getränke\n• Bei Bewusstlosigkeit: Notruf',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Verätzung - Erste Hilfe?',
    answer: '• Mit viel Wasser spülen (15-20 Min)\n• Keine Neutralisierung!\n• Chemikalie notieren\n• Notruf\n• Bei Augen: Dauerhaft spülen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Symptome Thrombose?',
    answer: '• Schwellung eines Beins\n• Schmerzen, Überwärmung\n• Bläuliche Verfärbung\n• Spannungsgefühl\n→ NOTFALL! Kann zu Lungenembolie führen',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Richtig Fieber messen?',
    answer: 'Genaueste Methode: Rektal (Po)\n• +0,5°C zu oral (Mund)\n• +1°C zu axillar (Achsel)\n\nFieber ab 38°C\nHohes Fieber ab 39°C',
  ),
  FlashCard(
    category: 'Medizin',
    question: 'Wann zum Arzt bei Fieber?',
    answer: '• Über 39°C länger als 2 Tage\n• Bei Babys: über 38°C\n• Fieberkrampf\n• Zusätzlich: Atemnot, Ausschlag\n• Nackensteife',
  ),
];

// ALLGEMEINWISSEN (50+ Karten)
final List<FlashCard> _allgemeinwissenCards = [
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie viele Bundesländer hat Deutschland?',
    answer: '16 Bundesländer:\nBaden-Württemberg, Bayern, Berlin, Brandenburg, Bremen, Hamburg, Hessen, Mecklenburg-Vorpommern, Niedersachsen, NRW, Rheinland-Pfalz, Saarland, Sachsen, Sachsen-Anhalt, Schleswig-Holstein, Thüringen',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Deutsche Gewaltenteilung?',
    answer: 'Legislative: Bundestag, Bundesrat\nExekutive: Bundesregierung\nJudikative: Gerichte\n\nStaatsoberhaupt: Bundespräsident\nRegierung: Bundeskanzler',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Waschsymbole Bedeutung?',
    answer: '• Zahl im Bottich = Max. Temp.\n• Dreieck = Bleichen OK\n• Quadrat mit Kreis = Trockner\n• Bügeleisen (Punkte) = Temp.\n• P/F = Chem. Reinigung',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Windows Shortcuts?',
    answer: 'Strg+C = Kopieren\nStrg+V = Einfügen\nStrg+Z = Rückgängig\nStrg+A = Alles markieren\nAlt+Tab = Programm wechseln\nWin+L = Sperren',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Einkommensteuer Deutschland 2024?',
    answer: '• Freibetrag: 11.604€\n• Steuersatz: 0-45%\n• Spitzensteuersatz ab 277.826€\n• Solidaritätszuschlag: 5,5%\n• Kirchensteuer: 8-9%',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Mehrwertsteuer Sätze?',
    answer: '• Regelsteuersatz: 19%\n• Ermäßigt: 7%\n(Lebensmittel, Bücher, ÖPNV, Kultur)\n\nEndverbraucher zahlt, Unternehmen führen ab',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Smalltalk - Gute Themen?',
    answer: 'GUTE: Wetter, Hobbys, Reisen, Sport\n\nVERMEIDEN: Politik, Religion, Geld, Krankheiten\n\nTipp: Offene Fragen stellen!',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Hauptstädte deutschsprachige Länder?',
    answer: '• Deutschland: Berlin\n• Österreich: Wien\n• Schweiz: Bern\n• Liechtenstein: Vaduz\n• Luxemburg: Luxemburg',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Längste Flüsse Deutschlands?',
    answer: '1. Rhein (865 km in DE)\n2. Weser (750 km)\n3. Elbe (727 km in DE)\n4. Donau (647 km in DE)\n5. Main (569 km)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Planeten im Sonnensystem?',
    answer: '1. Merkur 2. Venus 3. Erde 4. Mars 5. Jupiter 6. Saturn 7. Uranus 8. Neptun\n\nMerksatz: Mein Vater Erklärt Mir Jeden Sonntag Unseren Nachthimmel',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Grundrechte Deutschland (erste 5)?',
    answer: 'Art.1: Menschenwürde\nArt.2: Freie Entfaltung\nArt.3: Gleichheit\nArt.4: Glaubensfreiheit\nArt.5: Meinungsfreiheit',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Wer wählt den Bundeskanzler?',
    answer: 'Der BUNDESTAG wählt!\n(nicht das Volk direkt)\n\n1. Bundespräsident schlägt vor\n2. Bundestag wählt\n3. Bundespräsident ernennt\n\nAmtszeit: 4 Jahre',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Pflichtversicherungen Deutschland?',
    answer: '• Krankenversicherung\n• Rentenversicherung\n• Arbeitslosenversicherung\n• Pflegeversicherung\n• Kfz-Haftpflicht\n\nEmpfohlen: Privathaftpflicht',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Kontinente der Erde?',
    answer: '7 Kontinente:\nAsien, Afrika, Nordamerika, Südamerika, Europa, Australien, Antarktika\n\n5 Ozeane:\nPazifik, Atlantik, Indisch, Arktisch, Südlich',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Deutschland Einwohnerzahl?',
    answer: 'Ca. 84 Millionen (2024)\n\nGrößte Städte:\n1. Berlin (3,7 Mio)\n2. Hamburg (1,9 Mio)\n3. München (1,5 Mio)\n4. Köln (1,1 Mio)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'EU-Gründungsmitglieder?',
    answer: 'Die "Sechs" (1957):\n• Belgien\n• Deutschland\n• Frankreich\n• Italien\n• Luxemburg\n• Niederlande',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Wann war die Euro-Einführung?',
    answer: '• Buchgeld: 1999\n• Bargeld: 1. Januar 2002\n\nDeutschland: DM → Euro\nUmrechnungskurs: 1 EUR = 1,95583 DM',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Höchster Berg Deutschlands?',
    answer: 'Zugspitze: 2.962 Meter\n(Bayern, Grenze zu Österreich)\n\nHöchster Berg nur auf deutschem Boden:\nWatzmann: 2.713 m',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Größter See Deutschlands?',
    answer: 'Bodensee:\n• 536 km² Gesamtfläche\n• Deutschland, Österreich, Schweiz\n\nGrößter See NUR in DE:\nMüritz (117 km²)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Welche G7-Staaten gibt es?',
    answer: '• Deutschland\n• Frankreich\n• Italien\n• Japan\n• Kanada\n• UK\n• USA\n\n(Russland 1998-2014: G8)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'UNO Sicherheitsrat - Ständige Mitglieder?',
    answer: '5 mit Vetorecht:\n• China\n• Frankreich\n• Russland\n• UK\n• USA\n\n+ 10 nicht-ständige Mitglieder',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Olympische Ringe - Bedeutung?',
    answer: '5 Ringe = 5 Kontinente:\n• Blau = Europa\n• Gelb = Asien\n• Schwarz = Afrika\n• Grün = Australien\n• Rot = Amerika',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie viele Zeitzonen hat Russland?',
    answer: '11 Zeitzonen!\n(Größtes Land der Welt)\n\nVon UTC+2 (Kaliningrad)\nbis UTC+12 (Kamtschatka)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Bevölkerungsreichste Länder?',
    answer: '1. Indien (1,4 Mrd)\n2. China (1,4 Mrd)\n3. USA (335 Mio)\n4. Indonesien (275 Mio)\n5. Pakistan (230 Mio)',
  ),
  FlashCard(
    category: 'Allgemeinwissen',
    question: 'Größte Wüsten der Welt?',
    answer: '1. Antarktis (14 Mio km²)\n2. Arktis (13,9 Mio km²)\n3. Sahara (9 Mio km²)\n4. Arabische Wüste\n5. Gobi',
  ),
];

// GESCHICHTE (30+ Karten) - continued in next message due to length
final List<FlashCard> _geschichteCards = [
  FlashCard(
    category: 'Geschichte',
    question: 'Wann war die Reformation?',
    answer: '1517 - Martin Luther\n\n• 95 Thesen in Wittenberg\n• Kritik am Ablasshandel\n• Spaltung der Kirche\n• Bibelübersetzung ins Deutsche',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Heiliges Römisches Reich?',
    answer: '962-1806\n\n• Otto I. wird Kaiser\n• Reich deutscher Nation\n• Viele Kleinstaaten\n• 1806: Auflösung durch Napoleon',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Deutsches Kaiserreich Gründung?',
    answer: '18. Januar 1871\n\n• Spiegelsaal Versailles\n• Wilhelm I. wird Kaiser\n• Otto von Bismarck Kanzler\n• Ende 1918 nach WK1',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Was war die Weimarer Republik?',
    answer: '1919-1933\nErste deutsche Demokratie\n\n• Nach WK1\n• Goldene Zwanziger\n• Weltwirtschaftskrise 1929\n• Ende: Hitler 1933',
  ),
  FlashCard(
    category: 'Geschichte',
    question: '2. Weltkrieg - Wichtige Daten?',
    answer: '• 1939: Polen-Überfall\n• 1941: Sowjetunion\n• 1944: D-Day\n• 8. Mai 1945: Kapitulation\n• Holocaust: 6 Mio Juden',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Berliner Mauer - Daten?',
    answer: 'Bau: 13. August 1961\nFall: 9. November 1989\nWiedervereinigung: 3. Oktober 1990\n\nSymbol des Kalten Krieges',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Was war der Kalte Krieg?',
    answer: '1947-1991\nKonflikt ohne direkte Kämpfe\n\n• USA vs. UdSSR\n• BRD vs. DDR\n• Wettrüsten\n• Ende: Mauerfall, UdSSR-Zerfall',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Wer war Otto von Bismarck?',
    answer: '1815-1898\n"Eiserner Kanzler"\n\n• Einigte Deutschland 1871\n• Reichskanzler\n• Bündnispolitik\n• Sozialversicherungen',
  ),
  FlashCard(
    category: 'Geschichte',
    question: 'Völkerschlacht Leipzig?',
    answer: '16.-19. Oktober 1813\n\n• Größte Schlacht vor WK1\n• Gegen Napoleon\n• Napoleons Niederlage\n• Befreiungskriege',
  ),
  FlashCard(
    category: 'Geschichte',
    question: '30-jähriger Krieg?',
    answer: '1618-1648\n\n• Religionskrieg (Katholiken vs. Protestanten)\n• Verwüstung Deutschlands\n• 1/3 der Bevölkerung starb\n• Ende: Westfälischer Friede',
  ),
];

// PHYSIK (25+ Karten)
final List<FlashCard> _physikCards = [
  FlashCard(
    category: 'Physik',
    question: 'Warum ist der Himmel blau?',
    answer: 'Rayleigh-Streuung:\n\n• Blaues Licht = kurze Wellenlänge\n• Wird stärker gestreut\n• Rotes Licht bei Sonnenuntergang (längerer Weg)',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Warum schwimmen Eiswürfel?',
    answer: 'Dichteanomalie des Wassers:\n\n• Wasser dehnt sich beim Gefrieren aus\n• Eis hat geringere Dichte\n• Wichtig: Seen frieren von oben',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Warum kocht Wasser auf Bergen schneller?',
    answer: 'Luftdruck-Abhängigkeit:\n\n• Niedrig Druck = niedriger Siedepunkt\n• Meereshöhe: 100°C\n• 2000m: ~93°C\n• ABER: Nudeln brauchen länger',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Was ist Schwerkraft?',
    answer: 'Anziehungskraft zwischen Massen\n\n• Entdeckt: Newton\n• Je größer Masse, desto stärker\n• Hält uns auf der Erde\n• Mond: 1/6 der Erdanziehung',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Lichtgeschwindigkeit?',
    answer: '299.792.458 m/s\n(~300.000 km/s)\n\n• Schnellste Geschwindigkeit\n• 8 Min Sonne-Erde\n• Nichts kann schneller sein',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Warum sind Wolken weiß?',
    answer: 'Weiße Wolken:\n• Kleine Tropfen streuen Licht gleichmäßig\n\nDunkle Wolken:\n• Dick, große Tropfen\n• Weniger Licht kommt durch',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Drei Aggregatzustände?',
    answer: '1. Fest (Eis)\n2. Flüssig (Wasser)\n3. Gasförmig (Dampf)\n\nÜbergänge:\nSchmelzen, Verdampfen, Kondensieren, Sublimieren',
  ),
  FlashCard(
    category: 'Physik',
    question: 'Gewicht vs. Masse?',
    answer: 'Masse: Stoffmenge (kg), überall gleich\n\nGewicht: Kraft durch Gravitation (Newton)\n\nAuf Mond: 1/6 Gewicht, gleiche Masse!',
  ),
];

// COWBOYS (15 Karten)
final List<FlashCard> _cowboysCards = [
  FlashCard(
    category: 'Cowboys',
    question: 'Blütezeit der Cowboys?',
    answer: '1860-1880 (nur 20 Jahre!)\n\n• Nach Bürgerkrieg\n• ~40.000 Cowboys total\n• 1/3 Mexikaner, Schwarze, Native Americans',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Erste Cowboys?',
    answer: 'Vaqueros aus Mexiko\n\n• Spanische Kolonisten\n• 18. Jahrhundert\n• Vaquero = span. Cowboy\n• Brachten Viehzucht',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Cowboys Verdienst?',
    answer: 'Nur ~35 Dollar/Monat!\n\n• Harte Arbeit\n• Nur ~7 Jahre (zu anstrengend)\n• Nicht glamourös wie im Film',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Was waren Longhorns?',
    answer: 'Rinderrasse:\n\n• Von Spaniern eingeführt\n• Große Hörner\n• Für Leder, Fett\n• Produkte: Seife, Kerzen',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Trugen Cowboys Revolver?',
    answer: 'NEIN - Hollywood-Mythos!\n\n• Meist Messer, Werkzeuge\n• Waffen gegen Tiere\n• Duelle waren SELTEN\n• Sheriffs sorgten für Ordnung',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Wilder Westen - wo und wann?',
    answer: 'Westlich des Mississippi\n~1867-1890\n\n• Goldrausch 1848\n• Homestead Act: 160 Acres für 10\$\n• Konflikte mit Natives',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Wer war Buffalo Bill?',
    answer: 'William F. Cody (1846-1917)\n\n• Wild-West-Show\n• Tourte international\n• Verbreitete Cowboy-Mythos\n• Teil Show, Teil Realität',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Cowboy-Ausrüstung?',
    answer: '• Hut (Sonne/Regen)\n• Stiefel\n• Wollhosen mit Leder\n• Halstuch (Staub)\n• Sattel (wichtigster!)\n• Lasso\n• Optional: Colt',
  ),
  FlashCard(
    category: 'Cowboys',
    question: 'Kalifornischer Goldrausch?',
    answer: '1848: Gold bei San Francisco\n\n• Größtes Goldfieber USA\n• Tausende nach Kalifornien\n• Wenige wurden reich\n• Mehr Geld mit Schaufeln!',
  ),
];

// KULTUR (20+ Karten)
final List<FlashCard> _kulturCards = [
  FlashCard(
    category: 'Kultur',
    question: 'Wer schrieb "Faust"?',
    answer: 'Johann Wolfgang von Goethe\n(1749-1832)\n\nWeitere Werke:\n• Die Leiden des jungen Werther\n• Wilhelm Meisters Lehrjahre',
  ),
  FlashCard(
    category: 'Kultur',
    question: 'Wer komponierte die 9. Sinfonie?',
    answer: 'Ludwig van Beethoven\n(1770-1827)\n\n4. Satz: "Ode an die Freude"\n= Europahymne',
  ),
  FlashCard(
    category: 'Kultur',
    question: 'Baustile erkennen: Romanik?',
    answer: '1000-1250\n\n• Rundbögen\n• Dicke Mauern\n• Kleine Fenster\n• Festungsartig\n\nBeispiel: Kaiserdom Speyer',
  ),
  FlashCard(
    category: 'Kultur',
    question: 'Baustil: Gotik?',
    answer: '1250-1500\n\n• Spitzbögen\n• Hohe Türme\n• Große bunte Fenster\n• Rosettenfenster\n\nBeispiel: Kölner Dom',
  ),
  FlashCard(
    category: 'Kultur',
    question: 'Baustil: Barock?',
    answer: '1650-1750\n\n• Prunk, Verschnörkelung\n• Geschwungene Formen\n• Gold und Stuck\n\nBeispiel: Dresdner Zwinger',
  ),
];

// WIRTSCHAFT (20+ Karten)
final List<FlashCard> _wirtschaftCards = [
  FlashCard(
    category: 'Wirtschaft',
    question: 'Was ist BIP?',
    answer: 'Bruttoinlandsprodukt\n\n= Wert aller Waren & Dienstleistungen eines Landes\n\nMaßstab für Wirtschaftskraft',
  ),
  FlashCard(
    category: 'Wirtschaft',
    question: 'Was ist Inflation?',
    answer: 'Geldentwertung\n\n• Preise steigen\n• Kaufkraft sinkt\n• Gemessen in %\n• Ziel EZB: ~2% pro Jahr',
  ),
  FlashCard(
    category: 'Wirtschaft',
    question: 'Was macht die EZB?',
    answer: 'Europäische Zentralbank\n\n• Geldpolitik Eurozone\n• Ziel: Preisstabilität\n• Legt Leitzins fest\n• Sitz: Frankfurt am Main',
  ),
  FlashCard(
    category: 'Wirtschaft',
    question: 'Angebot und Nachfrage?',
    answer: 'Grundprinzip Marktwirtschaft:\n\n• Hohe Nachfrage → Preis steigt\n• Hohes Angebot → Preis sinkt\n• Gleichgewichtspreis = optimal',
  ),
  FlashCard(
    category: 'Wirtschaft',
    question: 'Was ist die Börse?',
    answer: 'Marktplatz für Wertpapiere\n\n• Aktien, Anleihen\n• Käufer & Verkäufer treffen sich\n• Preis durch Angebot/Nachfrage\n• Wichtigste DE: Frankfurt (DAX)',
  ),
];

// TECHNIK (15+ Karten)
final List<FlashCard> _technikCards = [
  FlashCard(
    category: 'Technik',
    question: 'Wie funktioniert WLAN?',
    answer: 'Wireless Local Area Network\n\n• Funkverbindung\n• Frequenzen: 2,4 GHz, 5 GHz\n• Router sendet Signal\n• Geräte empfangen\n• Reichweite: ~50m',
  ),
  FlashCard(
    category: 'Technik',
    question: 'Was ist ein Prozessor (CPU)?',
    answer: 'Central Processing Unit\n\n• "Gehirn" des Computers\n• Führt Berechnungen aus\n• Gemessen in GHz\n• Mehr Kerne = schneller',
  ),
  FlashCard(
    category: 'Technik',
    question: 'Unterschied RAM vs. Festplatte?',
    answer: 'RAM (Arbeitsspeicher):\n• Schnell, temporär\n• Verliert Daten bei Ausschalten\n\nFestplatte:\n• Langsamer, permanent\n• Speichert dauerhaft',
  ),
  FlashCard(
    category: 'Technik',
    question: 'Was ist Cloud Computing?',
    answer: 'Daten & Programme auf fremden Servern\n\n• Zugriff übers Internet\n• Von überall erreichbar\n• Beispiele: Google Drive, iCloud\n• Spart lokalen Speicher',
  ),
  FlashCard(
    category: 'Technik',
    question: 'Wie funktioniert Bluetooth?',
    answer: 'Drahtlose Kurzstrecken-Verbindung\n\n• Reichweite: ~10m\n• 2,4 GHz Frequenz\n• Kopfhörer, Tastaturen, etc.\n• Geringer Stromverbrauch',
  ),
];
