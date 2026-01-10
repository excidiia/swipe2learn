// WISSENS-SWIPER V2.0 - Enhanced Flashcards
// Mit detaillierten Erklärungen per Info-Button

import 'main.dart';

// Enhanced Card Model
class EnhancedFlashCard {
  final String category;
  final String question;
  final String shortAnswer;
  final String? detailAnswer;

  EnhancedFlashCard({
    required this.category,
    required this.question,
    required this.shortAnswer,
    this.detailAnswer,
  });
  
  // Convert to regular FlashCard for compatibility
  FlashCard toFlashCard() => FlashCard(
    category: category,
    question: question,
    answer: shortAnswer,
  );
}

// =============================================================================
// MEDIZIN - 20 Top-Karten
// =============================================================================

final List<EnhancedFlashCard> _medizinEnhanced = [
  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was sind Herzinfarkt-Symptome?',
    shortAnswer: '• Starke Brustschmerzen\n• Atemnot, Übelkeit\n• Kalter Schweiß\n• Bei Frauen oft anders!',
    detailAnswer: 'HERZINFARKT\n\nTYPISCH:\n• Starke Schmerzen hinter Brustbein\n• Ausstrahlung: Arm, Kiefer\n• Engegefühl, Todesangst\n\nFRAUEN:\n• Übelkeit, Müdigkeit\n• Rückenschmerzen\n• Oft KEINE Brustschmerzen\n\nSOFORT:\n1. Notruf 112\n2. Oberkörper hoch\n3. Beruhigen',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Wie mache ich Herzdruckmassage?',
    shortAnswer: '• Handballen auf Brustmitte\n• 100-120/Min\n• 5-6cm tief\n• Nicht aufhören!',
    detailAnswer: 'REANIMATION\n\nTECHNIK:\n• Harter Untergrund\n• Handballen mittig\n• Arme gestreckt\n• 100-120 pro Minute\n• 5-6cm tief\n\n30:2:\n30 Druckvorgänge\n2 Beatmungen\n\nWICHTIG:\nLieber nur drücken als nichts!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was ist der FAST-Test?',
    shortAnswer: 'F=Face (Gesicht hängt)\nA=Arms (Arm sinkt)\nS=Speech (verwaschen)\nT=Time (SOFORT 112!)',
    detailAnswer: 'SCHLAGANFALL-TEST\n\nF=FACE: Lächeln → Mundwinkel hängt?\nA=ARMS: Arme hoch → Einer sinkt?\nS=SPEECH: Satz sprechen → Verwaschen?\nT=TIME: Bei EINEM Zeichen → 112!\n\nWeitere Symptome:\n• Sehstörungen\n• Schwindel\n• Starke Kopfschmerzen\n\nJede Minute zählt!\n1,9 Mio Gehirnzellen sterben/Min',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Bewusstlosigkeit?',
    shortAnswer: '1. Ansprechen, rütteln\n2. Atmung prüfen (10s)\n3. Stabile Seitenlage\n4. Notruf 112',
    detailAnswer: 'BEWUSSTLOSIGKEIT\n\nATMUNG VORHANDEN:\n→ Stabile Seitenlage\n1. Arm anwinkeln\n2. Anderen Arm über Brust\n3. Bein anwinkeln\n4. Zu dir drehen\n5. Kopf überstrecken\n\nKEINE ATMUNG:\n→ Reanimation!\n\nÜberwachen:\n• Atmung kontrollieren\n• Zudecken\n• Nicht allein lassen',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Wie stoppe ich starke Blutung?',
    shortAnswer: '1. Sauberes Tuch drauf\n2. Fest drücken (10 Min)\n3. Druckverband\n4. Hochlagern',
    detailAnswer: 'STARKE BLUTUNG\n\n1. DRUCK:\n• Sauberes Tuch auf Wunde\n• Fest drücken (10 Min)\n\n2. DRUCKVERBAND:\n• Wundauflage\n• Fest wickeln\n• Nicht zu fest!\n\n3. HOCHLAGERN:\n• Über Herzhöhe\n\n4. NOTRUF bei:\n• Starkem Blutverlust\n• Schock-Zeichen\n\nWICHTIG:\nVerband NICHT entfernen!\nFalls durchblutet: Neuen drüber',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Verschlucken?',
    shortAnswer: '• Husten lassen\n• 5x Rückenschläge\n• 5x Heimlich-Manöver\n• Abwechseln',
    detailAnswer: 'HEIMLICH-MANÖVER\n\n1. HUSTEN LASSEN\n• Falls möglich\n\n2. RÜCKENSCHLÄGE (5x)\n• Nach vorne beugen\n• Handballen zwischen Schulterblätter\n\n3. HEIMLICH (5x)\n• Von hinten umfassen\n• Faust unter Rippen\n• Kräftig nach innen-oben\n\n4. ABWECHSELN\n5 Schläge - 5 Heimlich\n\nBewusstlos:\n→ Reanimation!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Verbrennungen?',
    shortAnswer: '• 10-20 Min kühlen (15-20°C)\n• Brandblasen NICHT öffnen\n• Locker abdecken\n• Ab Handflächengröße: Arzt',
    detailAnswer: 'VERBRENNUNGEN\n\n1. GRAD:\n• Rötung\n• Kühlen, Brandsalbe\n\n2. GRAD:\n• Blasen\n• NICHT öffnen!\n• Steril abdecken\n• Arzt\n\n3. GRAD:\n• Weiß/verkohlt\n• SOFORT 112!\n• NICHT kühlen\n• Locker abdecken\n\nKÜHLEN:\n• Nur 1.+2. Grad\n• 10-20 Min\n• 15-20°C Wasser\n• Nicht Eis!\n\nNICHT:\n• Hausmittel (Mehl, Öl)\n• Blasen aufstechen\n• Watte drauf',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was ist Schock?',
    shortAnswer: '• Blasse, kalte Haut\n• Schneller, schwacher Puls\n• Unruhe, Angst\n• Bewusstseinstrübung',
    detailAnswer: 'SCHOCK - Lebensgefahr!\n\nZEICHEN:\n• Blasse, kalte, feuchte Haut\n• Schwacher, schneller Puls\n• Flache Atmung\n• Unruhe, Angst\n• Bewusstseinstrübung\n\nURSACHEN:\n• Blutverlust\n• Herzinfarkt\n• Allergie\n• Sepsis\n\nMASSNAHMEN:\n1. Notruf 112\n2. Beine hoch (Schocklage)\n3. Zudecken (warm halten)\n4. Beruhigen\n5. Überwachen\n\nNICHT bei:\n• Kopfverletzung\n• Atemnot\n• Brustschmerzen\n→ Oberkörper hoch!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Nasenbluten?',
    shortAnswer: '• Kopf NACH VORNE\n• Nasenflügel zudrücken (5-10 Min)\n• Nacken kühlen\n• Nicht nach hinten!',
    detailAnswer: 'NASENBLUTEN\n\nRICHTIG:\n1. Kopf NACH VORNE beugen\n2. Nasenflügel zudrücken (5-10 Min)\n3. Nacken kühlen (kalt, nass)\n4. Durch Mund atmen\n\nFALSCH:\n• Kopf nach hinten\n  (Blut läuft in Rachen!)\n• Taschentuch in Nase\n\nARZT wenn:\n• Nach 20 Min nicht gestoppt\n• Sehr häufig\n• Nach Schlag auf Nase\n• Bei Blutverdünner\n\nURSACHEN:\n• Trockene Luft\n• Niesen, Schnäuzen\n• Bluthochdruck\n• Medikamente',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Zeckenbiss?',
    shortAnswer: '• Zecke mit Pinzette gerade rausziehen\n• Nicht drehen!\n• Stelle desinfizieren\n• Bei Rötung: Arzt!',
    detailAnswer: 'ZECKE ENTFERNEN\n\n1. SCHNELL:\n• Je länger drin, desto gefährlicher\n\n2. ENTFERNUNG:\n• Zeckenkarte oder Pinzette\n• Nah an Haut greifen\n• Gerade rausziehen\n• NICHT drehen\n• NICHT quetschen\n\n3. DESINFIZIEREN:\n• Stelle reinigen\n• Datum notieren\n\n4. BEOBACHTEN:\n• 4 Wochen\n• Bei Rötung → ARZT!\n• Wanderröte = Borreliose\n\nKRANKHEITEN:\n• Borreliose (Antibiotika)\n• FSME (nur Impfung schützt)\n\nIMPFUNG:\n• FSME-Impfung empfohlen\n• Besonders Süddeutschland',
  ),
];

// =============================================================================
// ALLGEMEINWISSEN - 15 Top-Karten
// =============================================================================

final List<EnhancedFlashCard> _allgemeinwissenEnhanced = [
  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist der Bundestag?',
    shortAnswer: '• Deutsches Parlament\n• 736 Abgeordnete\n• Wählt Bundeskanzler\n• Macht Bundesgesetze',
    detailAnswer: 'BUNDESTAG\n\nAUFGABEN:\n1. Gesetzgebung\n2. Wahl Bundeskanzler\n3. Kontrolle Regierung\n4. Haushaltsrecht\n\nZUSAMMENSETZUNG:\n• 736 Abgeordnete\n• Wahl alle 4 Jahre\n• 5%-Hürde\n• Fraktionen\n\nGEBÄUDE:\nReichstag, Berlin\nGläserne Kuppel\n\nAUSS CHÜSSE:\n• Haushalt\n• Verteidigung\n• Auswärtiges',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Bundestag vs. Bundesrat?',
    shortAnswer: '• Bundestag = Volksvertreter (gewählt)\n• Bundesrat = Ländervertreter (NICHT gewählt)',
    detailAnswer: 'UNTERSCHIED\n\nBUNDESTAG:\n• Volksvertretung\n• Direkt gewählt\n• 736 Abgeordnete\n• Wählt Kanzler\n\nBUNDESRAT:\n• Ländervertretung\n• NICHT gewählt\n• 69 Mitglieder\n• Landesregierungen\n• 3-6 Stimmen/Land\n\nZUSAMMENARBEIT:\n• Beide machen Gesetze\n• Bundesrat muss bei vielen zustimmen\n\nFÖDERALISMUS:\nLänder haben Mitsprache',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist die 5%-Hürde?',
    shortAnswer: 'Partei braucht mind. 5% der Zweitstimmen\nODER 3 Direktmandate\nSonst: Keine Sitze',
    detailAnswer: '5%-HÜRDE\n\nREGEL:\nMind. 5% Zweitstimmen bundesweit\n\nWARUM?\n• Verhindert Zersplitterung\n• Stabile Regierungen\n• Weimarer Republik hatte 60+ Parteien!\n\nAUSNAHME:\n3 Direktmandate reichen auch\n\nZWEITSTIMME:\n• Wichtiger als Erststimme!\n• Bestimmt Sitzverteilung\n\nPRO & CONTRA:\n+ Stabil\n- Kleine Parteien benachteiligt',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Mietwohnung?',
    shortAnswer: '• Mietvertrag + Kaution (max. 3 Monatsmieten)\n• Warmmiete = Kalt + Nebenkosten\n• Kündigungsfrist meist 3 Monate',
    detailAnswer: 'MIETWOHNUNG\n\nVOR EINZUG:\n• Besichtigung (Fotos!)\n• Mietvertrag lesen\n• Kaution zahlen (max. 3 Kalt)\n\nKOSTEN:\n• Kaltmiete (reine Miete)\n• Nebenkosten (Heizung, Wasser)\n• Warmmiete = Kalt + NK\n\nPFLICHTEN:\n• Miete bis 3. des Monats\n• Kleine Reparaturen selbst\n• Ruhezeiten 22-6 Uhr\n\nRECHTE:\n• Mietminderung bei Mängeln\n• Kündigung 3 Monate\n\nAUSZUG:\n• Besenrein übergeben\n• Kaution zurück',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Welche Versicherungen sind Pflicht?',
    shortAnswer: '• Krankenversicherung (PFLICHT!)\n• Kfz-Haftpflicht (bei Auto)\n• Privathaftpflicht empfohlen!',
    detailAnswer: 'VERSICHERUNGEN\n\nPFLICHT:\n1. Krankenversicherung\n2. Kfz-Haftpflicht (Auto)\n3. Sozialversicherungen (Job)\n\nSEHR EMPFOHLEN:\n• Privathaftpflicht (~5€/Mon)\n  Schützt bei Schäden an anderen\n  OHNE kann Existenz kosten!\n\n• Berufsunfähigkeit\n  Falls du nicht mehr arbeiten kannst\n\nSITUATIONSABHÄNGIG:\n• Hausrat\n• Rechtsschutz\n• Kasko (neues Auto)\n\nNICHT NÖTIG:\n• Handyversicherung\n• Brillenversicherung',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Einkommensteuer?',
    shortAnswer: 'Steuer auf dein Einkommen\n• Progressiv (mehr = höher %)\n• 0% bis 11.604€/Jahr\n• Dann 14%-45%',
    detailAnswer: 'EINKOMMENSTEUER\n\nPROGRESSIV:\n• 0% bis Grundfreibetrag (11.604€)\n• Dann 14% - 42%\n• Ab 277.826€: 45%\n\nBEISPIEL:\n30.000€ Brutto\n→ ~18% Durchschnitt\n→ ~5.400€ Steuern\n\nANGESTELLTE:\n• Lohnsteuer direkt vom Gehalt\n• Arbeitgeber überweist\n\nSELBSTSTÄNDIG:\n• Selbst zahlen\n• Quartalsweise\n\nSTEUERERKLÄRUNG:\n• Geld zurückbekommen!\n• Fahrtkosten\n• Arbeitsmittel\n• Belege aufheben',
  ),
];

// =============================================================================
// NATURWISSENSCHAFTEN - 10 Top-Karten
// =============================================================================

final List<EnhancedFlashCard> _naturwissenschaftenEnhanced = [
  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Satz des Pythagoras?',
    shortAnswer: 'a² + b² = c²\n\nRechtwinkliges Dreieck:\nKatheten² = Hypotenuse²',
    detailAnswer: 'PYTHAGORAS\n\na² + b² = c²\n\na, b = Katheten (kurze Seiten)\nc = Hypotenuse (längste)\n\nBEISPIEL:\n3cm + 4cm Seiten\n3² + 4² = c²\n9 + 16 = 25\nc = 5cm\n\nNUTZUNG:\n• Leiter-Länge\n• GPS-Entfernung\n• Bildschirmdiagonale\n\nTRIPEL:\n3-4-5\n5-12-13\n8-15-17',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Wie rechne ich Prozent?',
    shortAnswer: 'Grundwert × Prozentsatz\n\n20% von 50€:\n50 × 0,20 = 10€',
    detailAnswer: 'PROZENTRECHNUNG\n\nGRUNDFORMEL:\nProzentwert = Grundwert × (Prozent/100)\n\nBEISPIELE:\n20% von 50€?\n50 × 0,20 = 10€\n\n15% Rabatt auf 80€?\n80 × 0,15 = 12€\n→ Zahlen: 68€\n\nTRICKS:\n10% = durch 10\n5% = durch 20\n20% = durch 5\n50% = halbieren\n\nWie viel % ist 20 von 80?\n(20 ÷ 80) × 100 = 25%',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Photosynthese?',
    shortAnswer: 'Pflanzen machen:\nLicht + CO₂ + Wasser\n→ Zucker + Sauerstoff',
    detailAnswer: 'PHOTOSYNTHESE\n\n6CO₂ + 6H₂O + Licht\n→ C₆H₁₂O₆ + 6O₂\n\nWO?\n• Chloroplasten (grüne Teile)\n• Chlorophyll fängt Licht\n\nWICHTIG:\n• Produziert unseren Sauerstoff!\n• Bindet CO₂\n• Basis aller Nahrung\n\nOHNE:\nKein Leben auf Erde!',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum ist Himmel blau?',
    shortAnswer: '• Sonnenlicht = alle Farben\n• Luftmoleküle streuen blaues Licht\n• Rotes geht gerade durch',
    detailAnswer: 'BLAUER HIMMEL\n\nSONNENLICHT:\n• Weiß (alle Farben)\n\nLUFT STREUT:\n• Blaues Licht → stark\n• Rotes Licht → kaum\n\nDESHALB:\n• Himmel blau (blaues Licht überall)\n• Sonnenuntergang rot (rotes kommt an)\n\nAUF MOND:\n• Keine Atmosphäre\n• Himmel SCHWARZ\n• Auch bei Tag!',
  ),
];

// =============================================================================
// EXPORT
// =============================================================================

// Convert to regular FlashCard
final List<FlashCard> medizinCards = _medizinEnhanced.map((e) => e.toFlashCard()).toList();
final List<FlashCard> allgemeinwissenCards = _allgemeinwissenEnhanced.map((e) => e.toFlashCard()).toList();
final List<FlashCard> physikCards = _naturwissenschaftenEnhanced.map((e) => e.toFlashCard()).toList();

// Keep enhanced versions for UI
final List<EnhancedFlashCard> medizinCardsEnhanced = _medizinEnhanced;
final List<EnhancedFlashCard> allgemeinwissenCardsEnhanced = _allgemeinwissenEnhanced;
final List<EnhancedFlashCard> naturwissenschaftenCardsEnhanced = _naturwissenschaftenEnhanced;

// Placeholder for other categories (add your own!)
final List<FlashCard> geschichteCards = [
  FlashCard(category: 'Geschichte', question: 'Wann fiel die Berliner Mauer?', answer: '9. November 1989'),
  FlashCard(category: 'Geschichte', question: 'Wann war der 2. Weltkrieg?', answer: '1939-1945'),
];
final List<FlashCard> cowboysCards = [
  FlashCard(category: 'Cowboys', question: 'Was war der Wilde Westen?', answer: 'US-Territorien westlich des Mississippi\n~1867-1890'),
];
final List<FlashCard> kulturCards = [
  FlashCard(category: 'Kultur', question: 'Wer war Goethe?', answer: 'Deutscher Dichter\n1749-1832\nFaust, Werther'),
];
final List<FlashCard> wirtschaftCards = [
  FlashCard(category: 'Wirtschaft', question: 'Was ist BIP?', answer: 'Bruttoinlandsprodukt\nGesamtwert aller Güter & Dienstleistungen'),
];
final List<FlashCard> technikCards = [
  FlashCard(category: 'Technik', question: 'Was ist WiFi?', answer: 'Wireless Fidelity\nKabellose Internetverbindung\n2,4 oder 5 GHz'),
];
