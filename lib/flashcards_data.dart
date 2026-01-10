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
];

final List<FlashCard> kulturCards = [
  FlashCard(category: 'Kultur', question: 'Wer war Goethe?', answer: 'Deutscher Dichter\n1749-1832\nFaust, Werther'),
];

final List<FlashCard> wirtschaftCards = [
  FlashCard(category: 'Wirtschaft', question: 'Was ist BIP?', answer: 'Bruttoinlandsprodukt\nGesamtwert aller Güter'),
];

final List<FlashCard> technikCards = [
  FlashCard(category: 'Technik', question: 'Was ist WiFi?', answer: 'Wireless Fidelity\nKabellose Internetverbindung'),
];
