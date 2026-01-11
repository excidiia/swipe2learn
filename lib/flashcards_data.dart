// WISSENS-SWIPER V2.0 - 100 TOP-KARTEN
// Mit detaillierten Erklärungen
// Einfach erweiterbar!

import 'main.dart';

// Models
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
  
  FlashCard toFlashCard() => FlashCard(
    category: category,
    question: question,
    answer: shortAnswer,
  );
}

// =============================================================================
// MEDIZIN - 30 KARTEN (Notfälle & Gesundheit)
// =============================================================================

final List<EnhancedFlashCard> _medizinEnhanced = [
  // NOTFÄLLE
  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Herzinfarkt-Symptome?',
    shortAnswer: '• Starke Brustschmerzen\n• Atemnot, Übelkeit\n• Kalter Schweiß\n• Bei Frauen oft anders!',
    detailAnswer: 'HERZINFARKT\n\nTYPISCH:\n• Starke Schmerzen hinter Brustbein\n• Ausstrahlung: Arm, Kiefer\n• Engegefühl, Todesangst\n\nFRAUEN:\n• Übelkeit, Müdigkeit\n• Rückenschmerzen\n• Oft KEINE Brustschmerzen!\n\nSOFORT:\n1. Notruf 112\n2. Oberkörper hoch lagern\n3. Beruhigen\n\nJede Minute zählt!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Herzdruckmassage durchführen?',
    shortAnswer: '• Handballen auf Brustmitte\n• 100-120 pro Minute\n• 5-6cm tief drücken\n• NICHT AUFHÖREN!',
    detailAnswer: 'REANIMATION (CPR)\n\nTECHNIK:\n• Harter Untergrund\n• Handballen mittig\n• Arme gestreckt\n• Senkrecht drücken\n• 100-120/Min\n• 5-6cm tief\n\n30:2 METHODE:\n30 Druckvorgänge\n2 Beatmungen\n\nWICHTIG:\nNicht aufhören!\nLieber nur drücken als nichts!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'FAST-Test beim Schlaganfall?',
    shortAnswer: 'F=Face (Gesicht hängt)\nA=Arms (Arm sinkt)\nS=Speech (Sprache verwaschen)\nT=Time (SOFORT 112!)',
    detailAnswer: 'SCHLAGANFALL-TEST\n\nF=FACE:\nLächeln → Mundwinkel hängt?\n\nA=ARMS:\nArme hoch → Einer sinkt?\n\nS=SPEECH:\nSatz sprechen → Verwaschen?\n\nT=TIME:\nBei EINEM Zeichen → 112!\n\nWARUM EILE?\n1,9 Mio Gehirnzellen/Min sterben!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was tun bei Bewusstlosigkeit?',
    shortAnswer: '1. Ansprechen, rütteln\n2. Atmung prüfen (10s)\n3. Stabile Seitenlage\n4. Notruf 112\n5. Überwachen',
    detailAnswer: 'BEWUSSTLOSIGKEIT\n\nATMUNG VORHANDEN:\n→ Stabile Seitenlage\n\n1. Arm anwinkeln\n2. Anderen Arm über Brust\n3. Bein anwinkeln\n4. Zu dir drehen\n5. Kopf überstrecken\n\nKEINE ATMUNG:\n→ REANIMATION!\n\nÜBERWACHEN:\nAtmung kontrollieren\nNicht allein lassen!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Starke Blutung stoppen?',
    shortAnswer: '1. Sauberes Tuch drauf\n2. Fest drücken (10 Min)\n3. Druckverband anlegen\n4. Hochlagern',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Heimlich-Manöver bei Verschlucken?',
    shortAnswer: '• Husten lassen\n• 5x Rückenschläge\n• 5x Heimlich-Manöver\n• Abwechseln\n• Bei Bewusstlosigkeit: Reanimation',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Verbrennungen behandeln?',
    shortAnswer: '• 10-20 Min kühlen (15-20°C)\n• Blasen NICHT öffnen\n• Locker abdecken\n• Ab Handflächengröße: Arzt',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Schock erkennen?',
    shortAnswer: '• Blasse, kalte, feuchte Haut\n• Schneller, schwacher Puls\n• Flache Atmung\n• Unruhe, Bewusstseinstrübung',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Nasenbluten stoppen?',
    shortAnswer: '• Kopf NACH VORNE beugen\n• Nasenflügel zudrücken (5-10 Min)\n• Nacken kühlen\n• NICHT nach hinten!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Zeckenbiss - was tun?',
    shortAnswer: '• Mit Pinzette gerade rausziehen\n• NICHT drehen!\n• Stelle desinfizieren\n• Bei Rötung (Wanderröte): Arzt!',
  ),

  // GESUNDHEITSWISSEN
  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Normaler Blutdruck?',
    shortAnswer: 'Optimal: 120/80 mmHg\nHoch: Ab 140/90\nNiedrig: Unter 100/60',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Normaler Puls?',
    shortAnswer: 'Erwachsene: 60-80/Min\nSportler: 40-60/Min\nKinder: 80-120/Min',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Fieber ab wann?',
    shortAnswer: 'Normal: 36,5-37,5°C\nErhöht: 37,5-38°C\nFieber: Ab 38°C\nHohes Fieber: Ab 39°C',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Antibiotika richtig nehmen?',
    shortAnswer: '• Nur bei Bakterien (nicht Viren!)\n• IMMER fertig nehmen\n• Zeitabstände einhalten\n• Nicht mit Milch',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Ibuprofen vs Paracetamol?',
    shortAnswer: 'Ibuprofen:\n• Entzündungshemmend\n• Nicht auf leeren Magen\n\nParacetamol:\n• Nur Schmerz/Fieber\n• Magenschonender',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Wichtige Impfungen?',
    shortAnswer: '• Tetanus (alle 10 Jahre!)\n• FSME (bei Zecken-Gebieten)\n• Grippe (jährlich, Ältere)\n• COVID-19',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Wie viel Wasser trinken?',
    shortAnswer: '~2-3 Liter/Tag\n• Mehr bei Sport/Hitze\n• Urin sollte hellgelb sein\n• Durst = Bereits Mangel!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Wie viel Schlaf?',
    shortAnswer: 'Erwachsene: 7-9h\nJugendliche: 8-10h\nKinder: 9-13h\nQualität > Quantität!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Händewaschen richtig?',
    shortAnswer: '• 20-30 Sekunden\n• Mit Seife\n• Handrücken, Fingerzwischenräume\n• Gut abtrocknen',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Erkältung vs Grippe?',
    shortAnswer: 'Erkältung:\n• Langsamer Beginn\n• Schnupfen, leichtes Fieber\n\nGrippe:\n• Plötzlich!\n• Hohes Fieber, starke Gliederschmerzen',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Was ist BMI?',
    shortAnswer: 'Body Mass Index\nGewicht (kg) ÷ Größe²(m)\n\n18,5-25 = Normalgewicht\n25-30 = Übergewicht\nAb 30 = Adipositas',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Kopfschmerz-Arten?',
    shortAnswer: 'Spannungskopfschmerz: Dumpf, ganzer Kopf\nMigräne: Pochend, einseitig, Übelkeit\nCluster: Sehr stark, um Auge',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Rückenschmerzen vorbeugen?',
    shortAnswer: '• Richtig heben (Knie beugen!)\n• Regelmäßige Bewegung\n• Rumpfmuskulatur stärken\n• Ergonomischer Arbeitsplatz',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Zähneputzen richtig?',
    shortAnswer: '• 2x täglich, 2-3 Min\n• Kreisende Bewegungen\n• Zahnseide täglich!\n• Fluorid-Zahnpasta',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Vitamin D Mangel?',
    shortAnswer: '• Müdigkeit, Schwäche\n• Knochen-/Muskelschmerzen\n• Häufig in Deutschland!\n• Sonne + Supplemente',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Sonnenschutz - welcher LSF?',
    shortAnswer: 'LSF 30 = Minimum!\nLSF 50 = Besser\n• Alle 2h erneuern\n• Auch im Schatten nötig!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Alkohol - sichere Grenzwerte?',
    shortAnswer: 'Männer: Max 20g/Tag (0,5L Bier)\nFrauen: Max 10g/Tag\n\n2 alkoholfreie Tage/Woche!',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Anaphylaktischer Schock?',
    shortAnswer: '• Schwere Allergie-Reaktion!\n• Sofort 112\n• EpiPen wenn vorhanden\n• Beine hochlagern',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Sonnenstich erkennen?',
    shortAnswer: '• Roter, heißer Kopf\n• Kopfschmerzen, Übelkeit\n• Nackensteifigkeit\n→ In Schatten, Kopf kühlen',
  ),

  EnhancedFlashCard(
    category: 'Medizin',
    question: 'Knochenbruch erkennen?',
    shortAnswer: '• Starker Schmerz\n• Schwellung, Bluterguss\n• Fehlstellung sichtbar\n• Bewegungsunfähigkeit',
  ),
  
  // WEITERE MEDIZIN (50 mehr)
  EnhancedFlashCard(category: 'Medizin', question: 'Allergie-Test?', shortAnswer: 'Prick-Test: Haut\nBluttest: IgE-Antikörper\nProvokationstest: Allergen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Asthma behandeln?', shortAnswer: '• Notfallspray (blau)\n• Langzeitspray (braun/orange)\n• Auslöser meiden\n• Peak-Flow messen'),
  EnhancedFlashCard(category: 'Medizin', question: 'COPD vs Asthma?', shortAnswer: 'Asthma: Reversibel, jung\nCOPD: Irreversibel, Raucher, alt'),
  EnhancedFlashCard(category: 'Medizin', question: 'Diabetes Typ 1 vs 2?', shortAnswer: 'Typ 1: Jung, kein Insulin\nTyp 2: Alt, Übergewicht, Insulin-Resistenz'),
  EnhancedFlashCard(category: 'Medizin', question: 'Insulin spritzen?', shortAnswer: '• Bauch, Oberschenkel\n• Stelle wechseln\n• 45° Winkel\n• Vor Mahlzeiten'),
  EnhancedFlashCard(category: 'Medizin', question: 'Schilddrüse - Über/Unterfunktion?', shortAnswer: 'ÜBER: Nervös, schwitzen, abnehmen\nUNTER: Müde, frieren, zunehmen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Rheuma Symptome?', shortAnswer: '• Gelenkschmerzen morgens\n• Steifigkeit\n• Schwellung\n• Beidseitig'),
  EnhancedFlashCard(category: 'Medizin', question: 'Gicht?', shortAnswer: '• Zu viel Harnsäure\n• Plötzlich starke Schmerzen\n• Oft großer Zeh\n• Weniger Fleisch/Alkohol'),
  EnhancedFlashCard(category: 'Medizin', question: 'Arthrose?', shortAnswer: '• Gelenkverschleiß\n• Alter, Übergewicht\n• Anlaufschmerz\n• Bewegung hilft!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Osteoporose?', shortAnswer: '• Knochenschwund\n• Bruchgefahr\n• Frauen, Alter\n• Calcium, Vitamin D, Sport'),
  EnhancedFlashCard(category: 'Medizin', question: 'Multiple Sklerose?', shortAnswer: '• Autoimmun\n• Nervenschäden\n• Sehstörungen, Lähmungen\n• Schubweise'),
  EnhancedFlashCard(category: 'Medizin', question: 'Parkinson?', shortAnswer: '• Zittern (Ruhetremor)\n• Steifigkeit\n• Langsame Bewegungen\n• Dopamin-Mangel'),
  EnhancedFlashCard(category: 'Medizin', question: 'Alzheimer?', shortAnswer: '• Gedächtnisverlust\n• Orientierungslos\n• Persönlichkeit ändert sich\n• Keine Heilung'),
  EnhancedFlashCard(category: 'Medizin', question: 'Migräne-Trigger?', shortAnswer: '• Stress\n• Hormone\n• Schlafmangel\n• Bestimmte Lebensmittel\n• Wetter'),
  EnhancedFlashCard(category: 'Medizin', question: 'Migräne-Aura?', shortAnswer: '• Sehstörungen (Flimmern)\n• Vor Kopfschmerz\n• 20-60 Min\n• Kribbeln möglich'),
  EnhancedFlashCard(category: 'Medizin', question: 'Tinnitus?', shortAnswer: '• Ohrgeräusche\n• Piepen, Rauschen\n• Oft durch Lärm/Stress\n• HNO-Arzt'),
  EnhancedFlashCard(category: 'Medizin', question: 'Hörsturz?', shortAnswer: '• Plötzlicher Hörverlust\n• Einseitig\n• Sofort HNO-Notfall!\n• Durchblutungsstörung'),
  EnhancedFlashCard(category: 'Medizin', question: 'Grauer Star?', shortAnswer: '• Linsentrübung\n• Verschwommen sehen\n• Im Alter\n• OP hilft'),
  EnhancedFlashCard(category: 'Medizin', question: 'Grüner Star (Glaukom)?', shortAnswer: '• Erhöhter Augeninnendruck\n• Schädigt Sehnerv\n• Oft keine Symptome!\n• Ab 40: Check'),
  EnhancedFlashCard(category: 'Medizin', question: 'Makuladegeneration?', shortAnswer: '• Netzhaut-Mitte geschädigt\n• Zentrales Sehen verschwimmt\n• Alter\n• Früherkennung wichtig'),
  EnhancedFlashCard(category: 'Medizin', question: 'Bindehautentzündung?', shortAnswer: '• Rotes Auge\n• Juckt, brennt\n• Eitrig oder wässrig\n• Ansteckend!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Gerstenkorn?', shortAnswer: '• Eiterpickel am Lidrand\n• Schmerzhaft\n• Warme Kompressen\n• Nicht ausdrücken!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Nesselsucht (Urtikaria)?', shortAnswer: '• Rote juckende Quaddeln\n• Allergie oder Stress\n• Antihistaminika\n• Meist harmlos'),
  EnhancedFlashCard(category: 'Medizin', question: 'Neurodermitis?', shortAnswer: '• Trockene juckende Haut\n• Schübe\n• Oft Kinder\n• Cremen, Auslöser meiden'),
  EnhancedFlashCard(category: 'Medizin', question: 'Schuppenflechte (Psoriasis)?', shortAnswer: '• Rote schuppige Stellen\n• Ellenbogen, Knie, Kopf\n• Autoimmun\n• Nicht ansteckend'),
  EnhancedFlashCard(category: 'Medizin', question: 'Akne?', shortAnswer: '• Pickel, Mitesser\n• Hormone, Pubertät\n• Sanfte Reinigung\n• Nicht ausdrücken'),
  EnhancedFlashCard(category: 'Medizin', question: 'Rosazea?', shortAnswer: '• Rote Gesichtshaut\n• Äderchen sichtbar\n• Erwachsene\n• Trigger meiden'),
  EnhancedFlashCard(category: 'Medizin', question: 'Fußpilz?', shortAnswer: '• Jucken zwischen Zehen\n• Weiße Haut\n• Ansteckend (Schwimmbad)\n• Antipilz-Creme'),
  EnhancedFlashCard(category: 'Medizin', question: 'Nagelpilz?', shortAnswer: '• Gelbe dicke Nägel\n• Langwierig!\n• Lack oder Tabletten\n• Geduld (Monate)'),
  EnhancedFlashCard(category: 'Medizin', question: 'Gürtelrose?', shortAnswer: '• Schmerzhafter Ausschlag\n• Einseitig am Rumpf\n• Windpocken-Virus\n• Sofort zum Arzt!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Windpocken?', shortAnswer: '• Juckende Bläschen\n• Hochansteckend\n• Meist Kinder\n• Impfung empfohlen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Masern?', shortAnswer: '• Hohes Fieber\n• Hautausschlag\n• Sehr ansteckend\n• Impfung Pflicht!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Mumps?', shortAnswer: '• Geschwollene Ohrspeicheldrüsen\n• Fieber\n• "Hamsterbacken"\n• Impfung empfohlen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Röteln?', shortAnswer: '• Leichter Ausschlag\n• Lymphknoten\n• Gefährlich Schwangerschaft!\n• Impfung'),
  EnhancedFlashCard(category: 'Medizin', question: 'Keuchhusten?', shortAnswer: '• Stakkatoartiger Husten\n• "Keuchen"\n• Wochen/Monate\n• Impfung alle 10 Jahre'),
  EnhancedFlashCard(category: 'Medizin', question: 'Tetanus (Wundstarrkrampf)?', shortAnswer: '• Durch Wunden\n• Muskelkrämpfe\n• Tödlich!\n• Impfung alle 10 Jahre!'),
  EnhancedFlashCard(category: 'Medizin', question: 'FSME (Zecken)?', shortAnswer: '• Hirnhautentzündung\n• Durch Zeckenbiss\n• Süddeutschland\n• Impfung empfohlen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Borreliose (Zecken)?', shortAnswer: '• Wanderröte um Biss\n• Wochen später Symptome\n• Antibiotika\n• Keine Impfung'),
  EnhancedFlashCard(category: 'Medizin', question: 'Hepatitis A?', shortAnswer: '• Leberentzündung\n• Durch Nahrung/Wasser\n• Reise-Impfung\n• Heilt aus'),
  EnhancedFlashCard(category: 'Medizin', question: 'Hepatitis B?', shortAnswer: '• Durch Blut/Sex\n• Chronisch möglich\n• Impfung empfohlen\n• Leberzirrhose-Risiko'),
  EnhancedFlashCard(category: 'Medizin', question: 'Norovirus?', shortAnswer: '• Heftiger Durchfall, Erbrechen\n• Hochansteckend!\n• Flüssigkeit!\n• 1-3 Tage'),
  EnhancedFlashCard(category: 'Medizin', question: 'Salmonellen?', shortAnswer: '• Durchfall, Fieber\n• Durch Eier, Geflügel\n• Hygiene!\n• Meist selbstlimitierend'),
  EnhancedFlashCard(category: 'Medizin', question: 'Magen-Darm-Grippe?', shortAnswer: '• Übelkeit, Durchfall\n• Viren oder Bakterien\n• Ansteckend\n• Viel trinken!'),
  EnhancedFlashCard(category: 'Medizin', question: 'Reizdarm?', shortAnswer: '• Bauchschmerzen, Blähungen\n• Durchfall oder Verstopfung\n• Stress-Trigger\n• Ernährung anpassen'),
  EnhancedFlashCard(category: 'Medizin', question: 'Morbus Crohn?', shortAnswer: '• Chronisch entzündeter Darm\n• Durchfall, Schmerzen\n• Autoimmun\n• Schubweise'),
  EnhancedFlashCard(category: 'Medizin', question: 'Colitis ulcerosa?', shortAnswer: '• Entzündung Dickdarm\n• Blutiger Durchfall\n• Autoimmun\n• Schubweise'),
  EnhancedFlashCard(category: 'Medizin', question: 'Zöliakie (Glutenunverträglichkeit)?', shortAnswer: '• Autoimmun gegen Gluten\n• Durchfall, Blähungen\n• Lebenslang glutenfrei\n• Diagnose per Biopsie'),
  EnhancedFlashCard(category: 'Medizin', question: 'Laktoseintoleranz?', shortAnswer: '• Kein Enzym Laktase\n• Blähungen, Durchfall nach Milch\n• Laktosefreie Produkte\n• Nicht gefährlich'),
  EnhancedFlashCard(category: 'Medizin', question: 'Gallensteine?', shortAnswer: '• Koliken nach fettem Essen\n• Rechter Oberbauch\n• Oft keine Symptome\n• OP wenn Beschwerden'),
];

// =============================================================================
// ALLGEMEINWISSEN - 30 KARTEN (Politik, Geld, Leben)
// =============================================================================

final List<EnhancedFlashCard> _allgemeinwissenEnhanced = [
  // POLITIK
  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist der Bundestag?',
    shortAnswer: '• Deutsches Parlament\n• 736 Abgeordnete\n• Wählt Bundeskanzler\n• Macht Bundesgesetze',
    detailAnswer: 'BUNDESTAG\n\nAUFGABEN:\n1. Gesetzgebung\n2. Wahl Bundeskanzler\n3. Kontrolle Regierung\n4. Haushaltsrecht\n\nZUSAMMENSETZUNG:\n• 736 Abgeordnete\n• Alle 4 Jahre Wahl\n• 5%-Hürde\n• Fraktionen\n\nGEBÄUDE:\nReichstag, Berlin\nGläserne Kuppel',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Bundestag vs Bundesrat?',
    shortAnswer: '• Bundestag = Volksvertreter (gewählt)\n• Bundesrat = Ländervertreter (NICHT gewählt)\n• Beide machen Gesetze',
    detailAnswer: 'UNTERSCHIED\n\nBUNDESTAG:\n• Volksvertretung\n• Direkt gewählt\n• 736 Abgeordnete\n• Wählt Kanzler\n\nBUNDESRAT:\n• Ländervertretung\n• NICHT gewählt\n• 69 Mitglieder\n• Landesregierungen\n\nFÖDERALISMUS:\nLänder haben Mitsprache',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist die 5%-Hürde?',
    shortAnswer: '• Partei braucht mind. 5% Zweitstimmen\n• ODER 3 Direktmandate\n• Sonst: Keine Sitze im Bundestag\n• Verhindert Zersplitterung',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wer wählt den Bundeskanzler?',
    shortAnswer: 'Der BUNDESTAG wählt!\n• Nicht das Volk direkt\n• Auf Vorschlag des Bundespräsidenten\n• Absolute Mehrheit nötig',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was macht der Bundespräsident?',
    shortAnswer: '• Staatsoberhaupt (repräsentativ)\n• Unterschreibt Gesetze\n• Ernennt Bundeskanzler\n• Kann Bundestag auflösen',
  ),

  // GELD & FINANZEN
  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Mietwohnung?',
    shortAnswer: '• Mietvertrag + Kaution (max. 3 Kaltmieten)\n• Warmmiete = Kalt + Nebenkosten\n• Kündigungsfrist meist 3 Monate\n• Kleine Reparaturen selbst',
    detailAnswer: 'MIETWOHNUNG\n\nKOSTEN:\n• Kaltmiete (reine Miete)\n• Nebenkosten (Heizung, Wasser)\n• Warmmiete = Kalt + NK\n\nKAUTION:\n• Max. 3 Kaltmieten\n• Wird verzinst\n• Zurück bei Auszug\n\nPFLICHTEN:\n• Miete bis 3. des Monats\n• Ruhezeiten 22-6 Uhr\n\nRECHTE:\n• Mietminderung bei Mängeln',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Welche Versicherungen sind Pflicht?',
    shortAnswer: 'PFLICHT:\n• Krankenversicherung\n• Kfz-Haftpflicht (bei Auto)\n\nSEHR EMPFOHLEN:\n• Privathaftpflicht (~5€/Mon)\nKann Existenz retten!',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Einkommensteuer?',
    shortAnswer: 'Steuer auf dein Einkommen\n• Progressiv (mehr = höher %)\n• 0% bis 11.604€/Jahr\n• Dann 14%-45%\n• Arbeitgeber führt ab',
    detailAnswer: 'EINKOMMENSTEUER\n\nPROGRESSIV:\n• 0% bis 11.604€\n• Dann 14%-42%\n• Ab 277.826€: 45%\n\nBEISPIEL:\n30.000€ Brutto\n→ ~18% Durchschnitt\n→ ~5.400€ Steuern\n\nSTEUERERKLÄRUNG:\nGeld zurückbekommen:\n• Fahrtkosten\n• Arbeitsmittel',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Mehrwertsteuer?',
    shortAnswer: '19% Regelsteuersatz\n7% ermäßigt (Lebensmittel, Bücher)\n• Zahlt der Endverbraucher\n• Staat bekommt es',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was sind Sozialabgaben?',
    shortAnswer: '• Rentenversicherung (~9,3%)\n• Krankenversicherung (~7,3%)\n• Pflegeversicherung (~1,5%)\n• Arbeitslosenversicherung (~1,2%)\n\nArbeitgeber zahlt gleichviel!',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Brutto vs Netto Gehalt?',
    shortAnswer: 'Brutto: Vor Abzügen\nNetto: Was du bekommst\n\nAbzüge:\n• Steuern (~20-40%)\n• Sozialabgaben (~20%)\n\nFaustregel: Netto ≈ 60-70% vom Brutto',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Schufa?',
    shortAnswer: '• Sammelt Daten zu deiner Kreditwürdigkeit\n• Score: 0-100%\n• Wichtig für Kredite, Wohnung\n• Einmal jährlich kostenlos einsehen!',
  ),

  // ALLTAG
  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Abfallentsorgung?',
    shortAnswer: 'Restmüll: Schwarz\nBio: Braun\nPapier: Blau\nWertstoffe (Plastik): Gelb/Orange\nGlas: Container (nach Farben)',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Pfand?',
    shortAnswer: 'Einweg: 25 Cent (Plastikflasche)\nMehrweg: 8/15 Cent (Glasflasche)\n• In jedem Supermarkt zurückgeben\n• Automat gibt Bon',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Wahl in Deutschland?',
    shortAnswer: '• Ab 18 Jahre\n• Erststimme: Direktkandidat\n• Zweitstimme: Partei (wichtiger!)\n• Briefwahl möglich',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was sind Grundrechte?',
    shortAnswer: '• Menschenwürde (Art. 1)\n• Freie Entfaltung\n• Gleichheit vor Gesetz\n• Meinungsfreiheit\n• Versammlungsfreiheit\n\nStehen im Grundgesetz!',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Gewaltenteilung - was ist das?',
    shortAnswer: 'Legislative: Macht Gesetze (Bundestag)\nExekutive: Führt aus (Regierung)\nJudikative: Urteilt (Gerichte)\n\nKontrollieren sich gegenseitig!',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist die EU?',
    shortAnswer: '• Europäische Union\n• 27 Mitgliedsstaaten\n• Gemeinsamer Markt\n• Euro (nicht alle!)\n• Freizügigkeit',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Krankenkasse?',
    shortAnswer: 'Gesetzlich:\n• Beitrag nach Einkommen\n• Familienmitversicherung\n\nPrivat:\n• Beitrag nach Risiko\n• Oft teurer im Alter',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Kündigungsschutz?',
    shortAnswer: '• Ab 6 Monate im Betrieb\n• Ab 10 Mitarbeitern\n• Kündigung braucht Grund\n• Sozialauswahl bei Massenentlassung',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Urlaubsanspruch in Deutschland?',
    shortAnswer: '• Mindestens 20 Tage (bei 5-Tage-Woche)\n• Oft 25-30 Tage\n• Muss genommen werden!\n• Verfällt nach 15 Monaten',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Mindestlohn?',
    shortAnswer: 'Aktuell: 12,41€/Stunde (2024)\n• Gilt für fast alle\n• Auch Minijobber\n• Wird regelmäßig angepasst',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Führerschein?',
    shortAnswer: 'Klasse B (PKW):\n• Ab 18 Jahre (17 mit BF17)\n• Theorie + Praxis\n• Kosten: ~2.000-3.000€\n• Lebenslang gültig',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was tun bei Unfall?',
    shortAnswer: '1. Absichern (Warndreieck)\n2. Erste Hilfe\n3. Notruf 112 (bei Verletzten)\n4. Polizei (bei Sachschaden >1.000€)\n5. Fotos machen',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Garantie vs Gewährleistung?',
    shortAnswer: 'Gewährleistung:\n• Gesetzlich, 2 Jahre\n• Verkäufer haftet\n\nGarantie:\n• Freiwillig, Hersteller\n• Extra Leistung',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Elternzeit?',
    shortAnswer: '• Bis zu 3 Jahre\n• Kündigungsschutz\n• Elterngeld: 65-67% vom Netto\n• 12-14 Monate (mit Partner-Monate)\n• Auch Väter!',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Rente?',
    shortAnswer: '• Umlageverfahren (Junge zahlen für Alte)\n• Renteneintrittsalter: 67\n• Höhe nach Einzahlungen\n• Durchschnitt: ~1.500€/Monat',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Was ist Rundfunkbeitrag?',
    shortAnswer: '• 18,36€/Monat pro Haushalt\n• Finanziert ARD, ZDF, etc.\n• Pflicht (auch ohne TV!)\n• BAföG-Empfänger befreit',
  ),

  EnhancedFlashCard(
    category: 'Allgemeinwissen',
    question: 'Wie funktioniert Anmeldung (Wohnsitz)?',
    shortAnswer: '• Innerhalb 2 Wochen nach Einzug\n• Beim Bürgeramt/Einwohnermeldeamt\n• Wohnungsgeberbestätigung nötig\n• Strafe bei Versäumnis!',
  ),
  
  // WEITERE ALLGEMEINWISSEN (50 mehr)
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Was ist GEZ/Rundfunkbeitrag?', shortAnswer: '18,36€/Monat pro Haushalt\nFür ARD, ZDF, Radio\nPflicht!\nBAföG: Befreiung möglich'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Kindergeld?', shortAnswer: '250€/Monat (1.+2. Kind)\nBis 18 (oder 25 bei Ausbildung)\nAutomatisch bei Geburt\nSteuerfrei'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'BAföG?', shortAnswer: 'Für Studenten/Azubis\nHälfte Zuschuss, Hälfte Kredit\nElternabhängig\nMax. ~934€/Monat'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Hartz IV / Bürgergeld?', shortAnswer: 'Arbeitslosengeld II\nAktuell ~563€ + Miete\nBei Langzeitarbeitslosigkeit\nVerpflichtungen!'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Arbeitslosengeld I?', shortAnswer: '~60% vom Netto\n12 Monate (länger bei älter)\nMuss gearbeitet haben\nArbeitsagentur'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Wohngeld?', shortAnswer: 'Zuschuss zur Miete\nFür Geringverdiener\nEinkommensabhängig\nWohngeldstelle'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Nebenjob - wie viel?', shortAnswer: 'Minijob: 538€/Monat steuerfrei\nMidijob: 538-2.000€ reduziert\nDarüber: Voll steuerpflichtig'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Steuererklärung Pflicht?', shortAnswer: 'Ja wenn:\n• Selbstständig\n• Mehrere Jobs\n• Ehepaare (Steuerklasse)\nSonst: Freiwillig (lohnt!)'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Steuerklassen?', shortAnswer: 'I: Ledig\nII: Alleinerziehend\nIII/V: Verheiratet (Kombi)\nIV: Verheiratet (gleich)\nVI: Zweitjob'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Freibetrag Einkommen?', shortAnswer: '11.604€/Jahr steuerfrei\n= 967€/Monat\nGrundfreibetrag\nFür alle'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Werbungskosten?', shortAnswer: '• Fahrtkosten\n• Arbeitsmittel\n• Fortbildung\n• Bewerbung\nSenkt Steuern!'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Pendlerpauschale?', shortAnswer: '0,30€ pro km (einfach)\nAb 21 km: 0,38€\nNur Arbeitstage\nSteuererklärung'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Riester-Rente?', shortAnswer: 'Private Altersvorsorge\nStaatlich gefördert\nZulagen + Steuervorteile\nUmstritten'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Betriebsrente?', shortAnswer: 'Vom Arbeitgeber\nEntgeltumwandlung möglich\nSteuervorteil jetzt\nBesteuert bei Rente'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Private Altersvorsorge?', shortAnswer: 'ETF-Sparplan\nLebensversicherung\nImmobilien\nGesetzliche reicht NICHT'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Was ist Inflation?', shortAnswer: 'Geld verliert Wert\nPreise steigen\nZiel: ~2%\nZu hoch: Enteignung'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'EZB - was macht die?', shortAnswer: 'Europäische Zentralbank\nSteuert Geldmenge\nZinssätze\nInflation bekämpfen'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Was ist BIP?', shortAnswer: 'Bruttoinlandsprodukt\nGesamtwert aller Güter\nWirtschaftsleistung\nDeutschland: ~4 Bio €'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Bundesländer Deutschland?', shortAnswer: '16 Bundesländer\nGrößtes: Bayern\nKleinstes: Bremen\nEinwohner: NRW'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Hauptstädte Bundesländer?', shortAnswer: 'Bayern: München\nNRW: Düsseldorf\nBaden-Württemberg: Stuttgart\nNiedersachsen: Hannover'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Nachbarländer Deutschland?', shortAnswer: '9 Nachbarn:\nDänemark, Polen, Tschechien\nÖsterreich, Schweiz\nFrankreich, Luxemburg\nBelgien, Niederlande'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Längstes Fluss Deutschland?', shortAnswer: 'Rhein (865 km in D)\nDonau (647 km)\nElbe (727 km)\nWeser, Main'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Höchster Berg Deutschland?', shortAnswer: 'Zugspitze (2.962m)\nBayern\nDeutschlands Dach\nGanzjährig Schnee'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Einwohnerzahl Deutschland?', shortAnswer: '~84 Millionen\n4. größte EU\nNach Russland, Türkei, UK\nSchrumpft (Geburten)'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Wann Deutsche Einheit?', shortAnswer: '3. Oktober 1990\nNationalfeiertag\nTag der Deutschen Einheit\nWiedervereinigung'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Deutsche Nationalhymne?', shortAnswer: 'Einigkeit und Recht und Freiheit\nNur 3. Strophe\nText: Hoffmann von Fallersleben\nMelodie: Haydn'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Deutsche Flagge?', shortAnswer: 'Schwarz-Rot-Gold\nSeit 1949 (BRD)\n1848 Paulskirche\nDemokratie-Symbol'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'UN - was ist das?', shortAnswer: 'Vereinte Nationen\n193 Mitglieder\nFrieden, Menschenrechte\nNew York'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'NATO?', shortAnswer: 'Militärbündnis\n31 Mitglieder\nGemeinsame Verteidigung\nUSA führend'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'WHO?', shortAnswer: 'Weltgesundheitsorganisation\nUN-Organisation\nGesundheit global\nGenf'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Wie funktioniert Wählen?', shortAnswer: 'Ab 18 (EU: 16)\nErststimme: Kandidat\nZweitstimme: Partei\nGeheim, frei'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Wahlbeteiligung wichtig?', shortAnswer: 'Demokratie lebt von Teilnahme\nExtreme profitieren bei niedriger\nDeine Stimme zählt!\nWahlpflicht: Nein'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Briefwahl?', shortAnswer: 'Zuhause wählen\nBeantragen bis 6 Tage vorher\nZurück per Post\nOder persönlich abgeben'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Petitionsrecht?', shortAnswer: 'An Bundestag/Landtag\nBeschwerden, Bitten\nGrundrecht!\nOnline möglich'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Demonstrationsrecht?', shortAnswer: 'Versammlungsfreiheit\nAnmelden!\nFriedlich\nPolizei kann Auflagen machen'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Meinungsfreiheit Grenzen?', shortAnswer: 'Keine Volksverhetzung\nKeine Beleidigung\nKein Aufruf Gewalt\nKeine Lügen über Personen'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Datenschutz DSGVO?', shortAnswer: 'EU-weit\nRecht auf Löschung\nRecht auf Auskunft\nEinwilligung nötig'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Impressumspflicht?', shortAnswer: 'Für geschäftliche Websites\nName, Adresse, Kontakt\nAbmahnungen möglich\nPrivat: Nein'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Urheberrecht?', shortAnswer: 'Schutz geistiger Werke\n70 Jahre nach Tod\nZitieren erlaubt\nDownloads illegal'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Schwarzfahren Strafe?', shortAnswer: '60€ erhöhtes Beförderungsentgelt\nWiederholungstäter: Anzeige\nErschl. Leistungen (Straftat)\nBis 1 Jahr Gefängnis'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Falschparken?', shortAnswer: '10-70€\nAbschleppen: +150€\nPrivatparkplatz: Abschleppen\nNotstand: Manchmal OK'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Geschwindigkeitsüberschreitung?', shortAnswer: 'Innerorts: Schneller teurer\n21-25 km/h: 80€, 1 Punkt\nAb 31: Fahrverbot\nOuterorts: Milder'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Alkohol am Steuer?', shortAnswer: '0,5‰ Grenze\nAb 0,3‰ mit Auffälligkeit\nFahrverbot, MPU\n>1,1‰: Straftat'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Punkte Flensburg?', shortAnswer: '1-3 Punkte: Vormerkung\n4-5: Ermahnung\n6-7: Verwarnung\n8: Führerschein weg'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'MPU (Idiotentest)?', shortAnswer: 'Medizinisch-Psychologische Untersuchung\nBei Alkohol, Drogen, Punkten\nTeuer (~1.500€)\nDurchfallquote hoch'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Handy am Steuer?', shortAnswer: '100€ + 1 Punkt\nFreisprechanlage OK\nBlitzer-Apps illegal\nFahrverbot möglich'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Rettungsgasse?', shortAnswer: 'Bei Stau auf Autobahn\nZwischen linker + Rest\nPflicht!\n200€ + Punkt'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'TÜV/HU?', shortAnswer: 'Alle 2 Jahre\nNeuwagen: Erst nach 3 Jahren\nÜberziehen: Bußgeld\nPlakette hinten'),
  EnhancedFlashCard(category: 'Allgemeinwissen', question: 'Versicherung Auto?', shortAnswer: 'Haftpflicht: PFLICHT\nTeilkasko: Diebstahl, Hagel\nVollkasko: Selbst verschuldet\nSF-Klasse spart'),
];

// =============================================================================
// NATURWISSENSCHAFTEN - 25 KARTEN (Mathe, Physik, Chemie)
// =============================================================================

final List<EnhancedFlashCard> _naturwissenschaftenEnhanced = [
  // MATHEMATIK
  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Satz des Pythagoras?',
    shortAnswer: 'a² + b² = c²\n\nRechtwinkliges Dreieck:\nKatheten² = Hypotenuse²',
    detailAnswer: 'PYTHAGORAS\n\na² + b² = c²\n\na, b = Katheten (kurz)\nc = Hypotenuse (lang)\n\nBEISPIEL:\n3cm + 4cm\n3² + 4² = c²\n9 + 16 = 25\nc = 5cm\n\nNUTZUNG:\n• Leiter-Länge\n• GPS\n• Bildschirmdiagonale',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Prozentrechnung?',
    shortAnswer: 'Grundwert × Prozentsatz = Prozentwert\n\n20% von 50€:\n50 × 0,20 = 10€',
    detailAnswer: 'PROZENT\n\nFORMEL:\nProzentwert = Grundwert × (Prozent/100)\n\nTRICKS:\n10% = durch 10\n5% = durch 20\n20% = durch 5\n50% = halbieren\n\nWie viel % ist 20 von 80?\n(20 ÷ 80) × 100 = 25%',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Dreisatz berechnen?',
    shortAnswer: '3 Äpfel kosten 2€\nWas kosten 7 Äpfel?\n\n3 → 2€\n1 → 2€ ÷ 3 = 0,67€\n7 → 0,67€ × 7 = 4,69€',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Fläche Rechteck?',
    shortAnswer: 'Länge × Breite\n\n5m × 3m = 15m²',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Fläche Dreieck?',
    shortAnswer: '(Grundseite × Höhe) ÷ 2\n\n(6m × 4m) ÷ 2 = 12m²',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Fläche Kreis?',
    shortAnswer: 'π × r²\n\nRadius 3m:\n3,14 × 3² = 28,26m²',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Volumen Quader?',
    shortAnswer: 'Länge × Breite × Höhe\n\n2m × 3m × 4m = 24m³',
  ),

  // PHYSIK
  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Photosynthese?',
    shortAnswer: 'Pflanzen machen:\nLicht + CO₂ + Wasser\n→ Zucker + Sauerstoff\n\nUnsere Luft kommt daher!',
    detailAnswer: 'PHOTOSYNTHESE\n\n6CO₂ + 6H₂O + Licht\n→ C₆H₁₂O₆ + 6O₂\n\nWO?\n• Chloroplasten\n• Chlorophyll fängt Licht\n\nWICHTIG:\n• Produziert Sauerstoff!\n• Bindet CO₂\n• Basis aller Nahrung\n\nOHNE:\nKein Leben auf Erde!',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum ist Himmel blau?',
    shortAnswer: '• Sonnenlicht = alle Farben\n• Luftmoleküle streuen blaues Licht\n• Rotes geht gerade durch\n→ Himmel blau, Sonnenuntergang rot',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum schwimmt Eis?',
    shortAnswer: '• Eis hat weniger Dichte als Wasser\n• Moleküle ordnen sich beim Gefrieren\n• Nehmen mehr Platz ein\n→ Deshalb platzen Flaschen im Gefrierfach!',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Gravitation?',
    shortAnswer: 'Anziehungskraft zwischen Massen\n• Hält uns auf Erde\n• Mond umkreist Erde\n• Je schwerer & näher, desto stärker',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Lichtgeschwindigkeit?',
    shortAnswer: '300.000 km/s\n• Schnellste möglich\n• Licht von Sonne zu Erde: 8 Min\n• Nichts ist schneller!',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum fallen Dinge runter?',
    shortAnswer: 'Erdanziehungskraft!\n• Alles mit Masse zieht an\n• Erde ist schwer → Zieht uns an\n• Beschleunigung: 9,81 m/s²',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Strom?',
    shortAnswer: 'Fließende Elektronen\n• Volt (V) = Spannung\n• Ampere (A) = Stromstärke\n• Watt (W) = Leistung',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Aggregatzustände?',
    shortAnswer: 'Fest: Moleküle dicht, starr\nFlüssig: Beweglich, nicht komprimierbar\nGasförmig: Sehr beweglich, komprimierbar',
  ),

  // CHEMIE
  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist pH-Wert?',
    shortAnswer: '0-6 = Sauer\n7 = Neutral\n8-14 = Basisch\n\nZitrone: 2\nWasser: 7\nSeife: 9',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was sind Moleküle?',
    shortAnswer: 'Verbindung aus Atomen\n• H₂O = Wassermolekül (2 H + 1 O)\n• CO₂ = Kohlendioxid (1 C + 2 O)',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum rostet Eisen?',
    shortAnswer: 'Eisen + Sauerstoff + Wasser\n→ Eisenoxid (Rost)\n\nSchutz:\n• Lackieren\n• Verzinken\n• Ölen',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist beim Kochen Chemie?',
    shortAnswer: '• Backen: Chemische Reaktionen\n• Karamellisieren: Zucker verändert sich\n• Braten: Maillard-Reaktion (Bräunung)\n• Säure + Milch = Gerinnung',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Warum schäumt Seife?',
    shortAnswer: 'Seifenmoleküle:\n• Eine Seite liebt Wasser\n• Andere Seite liebt Fett\n→ Umschließen Schmutz\n→ Schaum = Luftblasen + Seife',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Säure?',
    shortAnswer: '• Gibt Wasserstoff-Ionen ab\n• pH < 7\n• Beispiele: Zitrone, Essig, Salzsäure\n• Greift Metalle an',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Base/Lauge?',
    shortAnswer: '• Nimmt Wasserstoff-Ionen auf\n• pH > 7\n• Beispiele: Seife, Natron, Ammoniak\n• Fühlt sich seifig an',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Wie funktioniert Batterie?',
    shortAnswer: 'Chemische Energie → Elektrische Energie\n• Zwei verschiedene Metalle\n• Chemische Reaktion\n→ Elektronen fließen',
  ),

  EnhancedFlashCard(
    category: 'Naturwissenschaften',
    question: 'Was ist Periodensystem?',
    shortAnswer: 'Tabelle aller chemischen Elemente\n• 118 Elemente\n• Nach Eigenschaften sortiert\n• H (Wasserstoff) = Nr. 1\n• Au (Gold) = Nr. 79',
  ),
  
  // WEITERE NATURWISSENSCHAFTEN (35 mehr)
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Newtons Gesetze?', shortAnswer: '1. Trägheit\n2. F = m × a\n3. Actio = Reactio\nGrundlage Mechanik'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Energie-Erhaltung?', shortAnswer: 'Energie geht nicht verloren\nNur Umwandlung\nPotentiell ↔ Kinetisch\nThermodynamik'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Geschwindigkeit berechnen?', shortAnswer: 'v = s / t\nWeg ÷ Zeit\n100 km in 2h = 50 km/h'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Beschleunigung?', shortAnswer: 'a = Δv / t\nGeschwindigkeitsänderung\nEinheit: m/s²\nErde: 9,81 m/s²'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Umfang Kreis?', shortAnswer: 'U = 2 × π × r\nOder: π × d\nRadius 5cm: ~31,4 cm'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Volumen Kugel?', shortAnswer: 'V = 4/3 × π × r³\nRadius 3cm: ~113 cm³'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Quadratische Gleichung lösen?', shortAnswer: 'ax² + bx + c = 0\nMitternachtsformel:\nx = (-b ± √(b²-4ac)) / 2a'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Potenzregeln?', shortAnswer: 'a^m × a^n = a^(m+n)\na^m ÷ a^n = a^(m-n)\n(a^m)^n = a^(m×n)'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Wurzelziehen?', shortAnswer: '√(a×b) = √a × √b\n√(a/b) = √a / √b\n√16 = 4'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Brüche addieren?', shortAnswer: 'Gleicher Nenner nötig!\n1/2 + 1/3 = 3/6 + 2/6 = 5/6\nErweitern'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Brüche multiplizieren?', shortAnswer: 'Zähler × Zähler\nNenner × Nenner\n2/3 × 3/4 = 6/12 = 1/2'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Primzahlen?', shortAnswer: 'Nur durch 1 und sich teilbar\n2, 3, 5, 7, 11, 13...\n1 ist KEINE Primzahl'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Was ist π (Pi)?', shortAnswer: '~3,14159...\nUmfang ÷ Durchmesser\nKreiszahl\nUnendlich viele Stellen'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Mittelwert/Durchschnitt?', shortAnswer: 'Alle Werte addieren\nDurch Anzahl teilen\n(2+4+6) ÷ 3 = 4'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Median?', shortAnswer: 'Mittlerer Wert\nSortieren, mittlerer nehmen\n1,2,3,4,5 → 3\nBei Ausreißern besser'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Wahrscheinlichkeit?', shortAnswer: 'Günstige ÷ Mögliche\nWürfel 6: 1/6\nIn Prozent: × 100'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Dichte berechnen?', shortAnswer: 'ρ = m / V\nMasse ÷ Volumen\nWasser: 1 g/cm³\nEisen: 7,9 g/cm³'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Atombau?', shortAnswer: 'Kern: Protonen (+), Neutronen\nHülle: Elektronen (-)\nMeist leer!'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Isotope?', shortAnswer: 'Gleiche Protonen\nVerschiedene Neutronen\nC-12, C-13, C-14\nManche radioaktiv'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Radioaktivität?', shortAnswer: 'Zerfall Atomkerne\nAlpha, Beta, Gamma\nGefährlich!\nHalbwertszeit'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'DNA - was ist das?', shortAnswer: 'Desoxyribonukleinsäure\nErbinformation\nDoppelhelix\nA, T, G, C'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Zellteilung?', shortAnswer: 'Mitose: Körperzellen\nMeiose: Geschlechtszellen\nChromosomen verdoppeln'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Evolution - wie?', shortAnswer: 'Mutation\nSelektion\nVererbung\nAnpassung über Generationen'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Ökosystem?', shortAnswer: 'Lebewesen + Umwelt\nProduzenten (Pflanzen)\nKonsumenten (Tiere)\nZersetzer'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Treibhauseffekt?', shortAnswer: 'CO₂, Methan halten Wärme\nNatürlich: Gut\nZu viel: Erderwärmung\nMenschengemacht'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Ozonloch?', shortAnswer: 'Schutzschicht dünner\nFCKW schuld\nMontreal-Protokoll hilft\nErholt sich'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Erneuerbare Energien?', shortAnswer: 'Solar, Wind, Wasser\nBiomasse, Geothermie\nUnbegrenzt\nKlimaschutz'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Kernenergie?', shortAnswer: 'Spaltung Uran\nViel Energie\nAtommüll Problem\nDeutschland: Ausstieg'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Brennstoffzelle?', shortAnswer: 'Wasserstoff + Sauerstoff\n→ Strom + Wasser\nEmissionsfrei\nZukunft?'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Magnetismus?', shortAnswer: 'Nord- und Südpol\nGleich: Abstoßen\nUngleich: Anziehen\nErdmagnetfeld'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Elektromagnetismus?', shortAnswer: 'Strom erzeugt Magnetfeld\nSpule = Elektromagnet\nElektromotor\nGenerator'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Ohmsches Gesetz?', shortAnswer: 'U = R × I\nSpannung = Widerstand × Strom\nGrundlage Elektrik'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Leistung elektrisch?', shortAnswer: 'P = U × I\nWatt = Volt × Ampere\n100W Glühbirne\nkWh Stromzähler'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Schall?', shortAnswer: 'Luftschwingungen\nFrequenz: Hz (Tonhöhe)\nLautstärke: dB\nSchallmauer: 343 m/s'),
  EnhancedFlashCard(category: 'Naturwissenschaften', question: 'Licht - Welle oder Teilchen?', shortAnswer: 'BEIDES!\nWelle-Teilchen-Dualismus\nQuantenphysik\nPhotonen'),
];

// =============================================================================
// GESCHICHTE - 15 KARTEN
// =============================================================================

final List<EnhancedFlashCard> _geschichteEnhanced = [
  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann fiel die Berliner Mauer?',
    shortAnswer: '9. November 1989\n\n"Die Mauer ist weg!"',
    detailAnswer: 'MAUERFALL\n\n9. November 1989\n18:57 Uhr: Pressekonferenz\n"Sofort, unverzüglich"\n\n23:30 Uhr: Grenze öffnet\nJubel, Tränen, Sekt\n\nVORHER:\n• Seit 1961 Mauer\n• Mindestens 140 Tote\n\nFOLGE:\nWiedervereinigung 3.10.1990',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann war der 2. Weltkrieg?',
    shortAnswer: '1939-1945\n\n• Hitler-Deutschland\n• ~60 Mio Tote\n• Holocaust\n• Atombomben auf Japan',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann war der 1. Weltkrieg?',
    shortAnswer: '1914-1918\n\n• Attentat Sarajevo\n• Stellungskrieg\n• ~17 Mio Tote\n• Versailler Vertrag',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war die DDR?',
    shortAnswer: 'Deutsche Demokratische Republik\n1949-1990\n• Sozialismus\n• Ostdeutschland\n• Berliner Mauer',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann wurde Deutschland gegründet?',
    shortAnswer: '1871\n• Deutsches Kaiserreich\n• Otto von Bismarck\n• Wilhelm I. Kaiser',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war die Reformation?',
    shortAnswer: '1517: Martin Luther\n• 95 Thesen\n• Gegen katholische Kirche\n• Beginn Protestantismus',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war die Französische Revolution?',
    shortAnswer: '1789\n• "Liberté, Égalité, Fraternité"\n• Sturm auf Bastille\n• Ende Monarchie\n• Hinrichtung König',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wer war Napoleon?',
    shortAnswer: 'Kaiser der Franzosen\n1804-1815\n• Eroberte Europa\n• Niederlage Waterloo\n• Exil auf St. Helena',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war Kalter Krieg?',
    shortAnswer: '1947-1991\n• USA vs Sowjetunion\n• Kein direkter Krieg\n• Wettrüsten\n• Stellvertreterkriege',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war die Titanic?',
    shortAnswer: 'Luxusdampfer\n• Sank 1912\n• Eisberg\n• 1.500 Tote\n• "Unsinkbar"',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann landete Mensch auf Mond?',
    shortAnswer: '20. Juli 1969\n• Neil Armstrong\n• Apollo 11\n• "One small step..."',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was war die Industrielle Revolution?',
    shortAnswer: 'Ab ~1750\n• Dampfmaschine\n• Fabriken statt Handwerk\n• Eisenbahn\n• Massenproduktion',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wer war Julius Caesar?',
    shortAnswer: 'Römischer Feldherr & Diktator\n100-44 v.Chr.\n• Eroberte Gallien\n• Ermordet von Brutus\n• "Et tu, Brute?"',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Was waren die Kreuzzüge?',
    shortAnswer: '1096-1291\n• Christen vs Muslime\n• Kampf um Jerusalem\n• Viele Tote\n• 7 Kreuzzüge',
  ),

  EnhancedFlashCard(
    category: 'Geschichte',
    question: 'Wann entdeckte Kolumbus Amerika?',
    shortAnswer: '1492\n• Suchte Indien\n• Fand Bahamas\n• Dachte es ist Asien\n• Startete Kolonisierung',
  ),
  
  // WEITERE GESCHICHTE (25 mehr)
  EnhancedFlashCard(category: 'Geschichte', question: 'Römisches Reich Dauer?', shortAnswer: '753 v.Chr. - 476 n.Chr.\n~1200 Jahre\nRom, Antike\nWestrom fiel 476'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Mittelalter wann?', shortAnswer: '~500-1500\n1000 Jahre\nRitter, Burgen\nDunkles Zeitalter'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Renaissance?', shortAnswer: '14.-17. Jahrhundert\nWiedergeburt Antike\nKunst, Wissenschaft\nLeonardo da Vinci'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Gutenberg Buchdruck?', shortAnswer: '1450\nBewegliche Lettern\nBibel gedruckt\nWissensrevolution'),
  EnhancedFlashCard(category: 'Geschichte', question: '30-jähriger Krieg?', shortAnswer: '1618-1648\nReligionskrieg\nDeutschland verwüstet\nWestfälischer Frieden'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Absolutismus?', shortAnswer: 'Alleinherrschaft König\n"L\'État c\'est moi"\nLudwig XIV (Sonnenkönig)\nVersailles'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Aufklärung?', shortAnswer: '17./18. Jahrhundert\nVernunft, Wissenschaft\nKant, Voltaire\n"Sapere aude!"'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Amerikanische Revolution?', shortAnswer: '1776\nUnabhängigkeit von England\n"No taxation without representation"\nUSA entsteht'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Wiener Kongress?', shortAnswer: '1814/15\nNach Napoleon\nNeuordnung Europa\nRestaurierung'),
  EnhancedFlashCard(category: 'Geschichte', question: '1848 Revolution?', shortAnswer: 'Märzrevolution\nPaulskirche Frankfurt\nScheitert\nAber: Ideen bleiben'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Bismarck wer?', shortAnswer: 'Reichskanzler\nEiserner Kanzler\nDeutsche Einigung 1871\nRealpolitik'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Imperialismus?', shortAnswer: '19. Jahrhundert\nKolonialismus\nWettlauf um Afrika\nAusbeutung'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Weimarer Republik?', shortAnswer: '1919-1933\nErste deutsche Demokratie\nGoldene Zwanziger\nInstabil, scheitert'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Versailler Vertrag?', shortAnswer: '1919 nach WW1\nDeutschland Kriegsschuld\nReparationen\nDemütigung'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Hitler Machtergreifung?', shortAnswer: '30. Januar 1933\nErnennung Reichskanzler\nErmächtigungsgesetz\nDiktatur beginnt'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Holocaust?', shortAnswer: 'Völkermord an Juden\n~6 Millionen Opfer\nKonzentrationslager\nNie vergessen!'),
  EnhancedFlashCard(category: 'Geschichte', question: 'D-Day Normandie?', shortAnswer: '6. Juni 1944\nAllied invasion\nWendepunkt WW2\nBefreiung Europas'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Atombomben Japan?', shortAnswer: 'Hiroshima: 6. Aug 1945\nNagasaki: 9. Aug 1945\n>200.000 Tote\nJapan kapituliert'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Nürnberger Prozesse?', shortAnswer: '1945-1946\nNazi-Kriegsverbrecher\nVölkerrecht\nVerbrechen gegen Menschlichkeit'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Marshall-Plan?', shortAnswer: '1948\nUSA hilft Europa\n13 Mrd Dollar\nWiederaufbau\nGegen Kommunismus'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Berliner Luftbrücke?', shortAnswer: '1948/49\nSowjet blockiert Berlin\nAliierte fliegen Versorgung\n"Rosinenbomber"'),
  EnhancedFlashCard(category: 'Geschichte', question: 'BRD + DDR Gründung?', shortAnswer: 'BRD: 23. Mai 1949\nDDR: 7. Okt 1949\nDeutschland geteilt\nBis 1990'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Wirtschaftswunder?', shortAnswer: '1950er BRD\nLudwig Erhard\nSchnelles Wachstum\nWohlstand für alle'),
  EnhancedFlashCard(category: 'Geschichte', question: 'Mauerbau Berlin?', shortAnswer: '13. August 1961\nÜber Nacht\nTrennt Familien\n28 Jahre'),
  EnhancedFlashCard(category: 'Geschichte', question: '68er Bewegung?', shortAnswer: 'Studentenproteste\nGegen Establishment\nVietnamkrieg\nSexuelle Revolution'),
];

// =============================================================================
// EXPORT LISTS
// =============================================================================

final List<FlashCard> medizinCards = _medizinEnhanced.map((e) => e.toFlashCard()).toList();
final List<FlashCard> allgemeinwissenCards = _allgemeinwissenEnhanced.map((e) => e.toFlashCard()).toList();
final List<FlashCard> physikCards = _naturwissenschaftenEnhanced.map((e) => e.toFlashCard()).toList();
final List<FlashCard> geschichteCards = _geschichteEnhanced.map((e) => e.toFlashCard()).toList();

// Enhanced versions
final List<EnhancedFlashCard> medizinCardsEnhanced = _medizinEnhanced;
final List<EnhancedFlashCard> allgemeinwissenCardsEnhanced = _allgemeinwissenEnhanced;
final List<EnhancedFlashCard> naturwissenschaftenCardsEnhanced = _naturwissenschaftenEnhanced;
final List<EnhancedFlashCard> geschichteCardsEnhanced = _geschichteEnhanced;

// Placeholder categories (add your own!)
final List<FlashCard> cowboysCards = [
  FlashCard(category: 'Cowboys', question: 'Was war der Wilde Westen?', answer: 'US-Territorien westlich Mississippi\n~1867-1890'),
  FlashCard(category: 'Cowboys', question: 'Was machten Cowboys?', answer: 'Viehtrieb\nRinder von Texas nach Norden\nLange Trails\nHarte Arbeit'),
  FlashCard(category: 'Cowboys', question: 'Berühmte Cowboys?', answer: 'Billy the Kid\nWyatt Earp\nBuffalo Bill\nJesse James'),
  FlashCard(category: 'Cowboys', question: 'Was war ein Rodeo?', answer: 'Wettkampf\nReiten, Lasso\nBull Riding\nCowboy-Skills'),
  FlashCard(category: 'Cowboys', question: 'Indianer vs Siedler?', answer: 'Landkonflikt\nVerdrängt\nReservate\nKultur zerstört'),
  FlashCard(category: 'Cowboys', question: 'Goldrausch?', answer: '1849 Kalifornien\n49ers\nSchnell reich?\nMeist Pleite'),
  FlashCard(category: 'Cowboys', question: 'Eisenbahn Westen?', answer: 'Transcontinental Railroad\n1869 fertig\nVerbindet Küsten\nEnde Wilder Westen'),
  FlashCard(category: 'Cowboys', question: 'Revolver?', answer: 'Colt Peacemaker\n6-Schüssig\nDuell-Waffe\n"Equalizer"'),
  FlashCard(category: 'Cowboys', question: 'Sheriff?', answer: 'Gesetzeshüter\nGewählt\nGefährlich\nDuell am Mittag'),
  FlashCard(category: 'Cowboys', question: 'Saloon?', answer: 'Western-Bar\nPoker, Whisky\nSchlägereien\nPianist'),
];

final List<FlashCard> kulturCards = [
  FlashCard(category: 'Kultur', question: 'Wer war Goethe?', answer: 'Deutscher Dichter\n1749-1832\nFaust, Werther'),
  FlashCard(category: 'Kultur', question: 'Wer war Schiller?', answer: 'Deutscher Dichter\n1759-1805\nWilhelm Tell, Räuber'),
  FlashCard(category: 'Kultur', question: 'Wer war Mozart?', answer: 'Komponist\n1756-1791\nWunderkind\nZauberflöte, Requiem'),
  FlashCard(category: 'Kultur', question: 'Wer war Beethoven?', answer: 'Komponist\n1770-1827\nTaub!\n9. Sinfonie (Ode an Freude)'),
  FlashCard(category: 'Kultur', question: 'Wer war Bach?', answer: 'Komponist\n1685-1750\nBarock\nOrgel, Kantaten'),
  FlashCard(category: 'Kultur', question: 'Wer war Picasso?', answer: 'Maler\n1881-1973\nKubismus\nGuernica'),
  FlashCard(category: 'Kultur', question: 'Wer war Van Gogh?', answer: 'Maler\n1853-1890\nImpressionismus\nSonnenblumen, Sternennacht'),
  FlashCard(category: 'Kultur', question: 'Wer war Shakespeare?', answer: 'Dramatiker\n1564-1616\nHamlet, Romeo & Julia\nEnglisch'),
  FlashCard(category: 'Kultur', question: 'Kunstepoche Renaissance?', answer: '14.-17. Jh\nWiedergeburt\nHumanismus\nMichelangelo, da Vinci'),
  FlashCard(category: 'Kultur', question: 'Kunstepoche Barock?', answer: '17.-18. Jh\nPrunk, Verzierungen\nVersailles\nRubens'),
  FlashCard(category: 'Kultur', question: 'Kunstepoche Romantik?', answer: '18.-19. Jh\nGefühl, Natur\nCaspar David Friedrich'),
  FlashCard(category: 'Kultur', question: 'Kunstepoche Impressionismus?', answer: '19. Jh\nLicht, Farbe\nMonet, Renoir\nParis'),
  FlashCard(category: 'Kultur', question: 'Was ist Oper?', answer: 'Musiktheater\nGesungen\nOrchester\nVerdi, Wagner'),
  FlashCard(category: 'Kultur', question: 'Was ist Ballett?', answer: 'Tanz-Aufführung\nKlassisch\nTschaikowsky (Schwanensee)\nSpitzenschuhe'),
  FlashCard(category: 'Kultur', question: 'Größte Museen Welt?', answer: 'Louvre (Paris)\nBritish Museum (London)\nMetropolitan (NY)\nErmitage (Petersburg)'),
  FlashCard(category: 'Kultur', question: 'Weltwunder Antike?', answer: 'Pyramiden Gizeh (einzig erhaltenes)\nHängende Gärten Babylon\nZeus-Statue\n+ 4 weitere'),
  FlashCard(category: 'Kultur', question: 'Weltwunder Neuzeit?', answer: 'Chinesische Mauer\nTaj Mahal\nColosseum\nChichén Itzá\nMachu Picchu\nChristus-Statue\nPetra'),
  FlashCard(category: 'Kultur', question: 'Nobel-Preise welche?', answer: 'Physik, Chemie\nMedizin\nLiteratur\nFrieden\n+ Wirtschaft'),
  FlashCard(category: 'Kultur', question: 'Wer war Einstein?', answer: 'Physiker\n1879-1955\nRelativitätstheorie\nE=mc²\nNobel 1921'),
  FlashCard(category: 'Kultur', question: 'Wer war Marie Curie?', answer: 'Physikerin/Chemikerin\n1867-1934\nRadioaktivität\n2x Nobelpreis!'),
];

final List<FlashCard> wirtschaftCards = [
  FlashCard(category: 'Wirtschaft', question: 'Was ist BIP?', answer: 'Bruttoinlandsprodukt\nGesamtwert aller Güter\nWirtschaftsleistung'),
  FlashCard(category: 'Wirtschaft', question: 'BIP Deutschland?', answer: '~4 Billionen €\n4. weltweit\nNach USA, China, Japan'),
  FlashCard(category: 'Wirtschaft', question: 'Was ist Aktie?', answer: 'Unternehmensanteil\nWertsteigerung + Dividende\nBörse\nRisiko!'),
  FlashCard(category: 'Wirtschaft', question: 'DAX?', answer: 'Deutscher Aktienindex\n40 größte Unternehmen\nBarometer Wirtschaft\nFrankfurt'),
  FlashCard(category: 'Wirtschaft', question: 'Dow Jones?', answer: 'US-Aktienindex\n30 größte Unternehmen\nNew York\nÄltester Index'),
  FlashCard(category: 'Wirtschaft', question: 'Was ist ETF?', answer: 'Exchange Traded Fund\nPassiv\nBreit gestreut\nGünstig, empfohlen'),
  FlashCard(category: 'Wirtschaft', question: 'Anleihen?', answer: 'Staatsanleihe = Kredit an Staat\nZins\nSicherer als Aktien\nAber weniger Rendite'),
  FlashCard(category: 'Wirtschaft', question: 'Inflation berechnen?', answer: 'Preissteigerung %\nVerbraucherpreisindex\nZiel ~2%\nZu hoch: Problem'),
  FlashCard(category: 'Wirtschaft', question: 'Angebot und Nachfrage?', answer: 'Viel Nachfrage → Preis steigt\nViel Angebot → Preis sinkt\nMarktwirtschaft\nGleichgewicht'),
  FlashCard(category: 'Wirtschaft', question: 'Monopol?', answer: 'Ein Anbieter\nKeine Konkurrenz\nKann Preise diktieren\nVerboten oft'),
  FlashCard(category: 'Wirtschaft', question: 'Kartell?', answer: 'Firmen sprechen ab\nPreise, Marktaufteilung\nIllegal!\nBußgelder'),
  FlashCard(category: 'Wirtschaft', question: 'StartUp?', answer: 'Junges Unternehmen\nInnovation\nSkalierbares Modell\nRisikokapital'),
  FlashCard(category: 'Wirtschaft', question: 'Unicorn?', answer: 'StartUp >1 Mrd \$ Wert\nSelten wie Einhorn\nBerlin: N26, Zalando'),
  FlashCard(category: 'Wirtschaft', question: 'Venture Capital?', answer: 'Risikokapital\nFür StartUps\nBeteiligung\nExit = Verkauf'),
  FlashCard(category: 'Wirtschaft', question: 'Börsengang (IPO)?', answer: 'Initial Public Offering\nAktien öffentlich\nKapital sammeln\nTransparenz nötig'),
  FlashCard(category: 'Wirtschaft', question: 'Bitcoin?', answer: 'Kryptowährung\nDezentral\nBlockchain\nSehr volatil'),
  FlashCard(category: 'Wirtschaft', question: 'Blockchain?', answer: 'Verteilte Datenbank\nManipulationssicher\nTransparent\nBitcoin-Basis'),
  FlashCard(category: 'Wirtschaft', question: 'GmbH vs AG?', answer: 'GmbH: Privat, min 25k€\nAG: Börse möglich, min 50k€\nHaftung beschränkt'),
  FlashCard(category: 'Wirtschaft', question: 'Insolvenz?', answer: 'Zahlungsunfähig\nÜberschuldung\nInsolvenzverfahren\nGläubiger anteilig'),
  FlashCard(category: 'Wirtschaft', question: 'Quartalszahlen?', answer: 'Ergebnis 3 Monate\nPflicht börsennotierte\nKursrelevant\nTransparenz'),
];

final List<FlashCard> technikCards = [
  FlashCard(category: 'Technik', question: 'Was ist WiFi?', answer: 'Wireless Fidelity\nKabellose Internetverbindung\n2,4/5 GHz\nRouter'),
  FlashCard(category: 'Technik', question: 'Was ist Bluetooth?', answer: 'Kurzstrecken-Funk\nBis ~10m\nKopfhörer, Maus\nEnergiearm'),
  FlashCard(category: 'Technik', question: 'Was ist LTE/5G?', answer: 'Mobilfunk\nLTE: 4. Generation\n5G: 5. Generation, schneller\nBreitband mobil'),
  FlashCard(category: 'Technik', question: 'Was ist Cloud?', answer: 'Speicher im Internet\nGoogle Drive, iCloud\nVon überall zugreifen\nSicherheit?'),
  FlashCard(category: 'Technik', question: 'Was ist Verschlüsselung?', answer: 'Daten unleserlich machen\nNur mit Schlüssel\nEnd-to-End (WhatsApp)\nSicherheit'),
  FlashCard(category: 'Technik', question: 'Was ist VPN?', answer: 'Virtual Private Network\nVerschlüsselt\nIP-Adresse verbergen\nSicherheit, Privatsphäre'),
  FlashCard(category: 'Technik', question: 'Was ist Firewall?', answer: 'Schutzwall\nBlockiert unerlaubten Zugriff\nSoftware oder Hardware\nSicherheit'),
  FlashCard(category: 'Technik', question: 'Was ist Malware?', answer: 'Schadsoftware\nViren, Trojaner, Ransomware\nDaten klauen\nAntivirus nutzen!'),
  FlashCard(category: 'Technik', question: 'Was ist Phishing?', answer: 'Betrug per Mail/SMS\nFake-Webseiten\nPasswörter klauen\nNie Daten eingeben!'),
  FlashCard(category: 'Technik', question: 'Sichere Passwörter?', answer: 'Min 12 Zeichen\nGross, klein, Zahlen, Sonder\nVerschieden!\nPasswortmanager'),
  FlashCard(category: 'Technik', question: '2-Faktor-Authentifizierung?', answer: 'Passwort + Code (SMS/App)\nViel sicherer!\nEmpfohlen\nGoogle, Banking'),
  FlashCard(category: 'Technik', question: 'Was ist KI?', answer: 'Künstliche Intelligenz\nMaschinelles Lernen\nChatGPT, Bildererkennung\nZukunft'),
  FlashCard(category: 'Technik', question: 'Was ist Algorithmus?', answer: 'Handlungsvorschrift\nSchritt-für-Schritt\nRezept für Computer\nSoftware-Basis'),
  FlashCard(category: 'Technik', question: 'Was ist Open Source?', answer: 'Quellcode offen\nLinux, Firefox\nKostenlos oft\nCommunity entwickelt'),
  FlashCard(category: 'Technik', question: 'Was ist RAM?', answer: 'Arbeitsspeicher\nSchnell, temporär\n8-32 GB typisch\nMehr = schneller'),
  FlashCard(category: 'Technik', question: 'SSD vs HDD?', answer: 'SSD: Schnell, teuer, keine Mechanik\nHDD: Langsam, günstig, Magnet\nSSD empfohlen'),
  FlashCard(category: 'Technik', question: 'Was ist GPU?', answer: 'Grafikprozessor\nFür 3D, Spiele\nNvidia, AMD\nAuch KI'),
  FlashCard(category: 'Technik', question: 'Was ist Prozessor (CPU)?', answer: 'Zentrale Recheneinheit\nIntel, AMD\nGHz = Taktrate\nHerzstück PC'),
  FlashCard(category: 'Technik', question: 'Was ist Betriebssystem?', answer: 'Windows, macOS, Linux\nVerwaltet Hardware\nProgramme laufen darauf\nGrundlage'),
  FlashCard(category: 'Technik', question: 'Was ist HTML?', answer: 'HyperText Markup Language\nStruktur Webseiten\n<html>, <body>\nKeine Programmiersprache'),
];
