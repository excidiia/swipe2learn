# 🧠 Wissens-Swiper - TikTok-Style Learning App

Eine **vollständig offline-fähige** Android Lern-App im TikTok-Stil mit **200+ Karteikarten** und wissenschaftlich fundiertem **Spaced Repetition System**.

## ✨ Features

- 📱 **TikTok-Style Interface** - Endloses Scrollen & Swipen
- 🧠 **Spaced Repetition** - Optimiert fürs Langzeitgedächtnis
- 📚 **200+ Karteikarten** in 8 Kategorien
- 🔥 **Streak-Counter** - Tägliche Motivation
- 📊 **Detaillierte Statistiken**
- 💾 **Komplett offline** - Keine Internetverbindung nötig
- 🎨 **Moderne UI** - Farbcodierte Kategorien

## 📚 Kategorien

- 🏥 **Medizin & Erste Hilfe** (40+ Karten) - Notfallwissen, Erste Hilfe
- 🌍 **Allgemeinwissen** (50+ Karten) - Einstellungstest-relevant
- 📜 **Deutsche Geschichte** (30+ Karten) - Wichtige Epochen & Ereignisse
- ⚛️ **Physik & Wissenschaft** (25+ Karten) - Alltagsphänomene erklärt
- 🤠 **Cowboys & Wilder Westen** (15+ Karten) - Fakten vs. Hollywood
- 🎭 **Kultur** (20+ Karten) - Literatur, Musik, Architektur
- 💼 **Wirtschaft** (20+ Karten) - BIP, Inflation, Börse
- ⚙️ **Technik** (15+ Karten) - Computer, Internet, Cloud

## 📲 Installation - 3 Methoden

### Methode 1: APK direkt installieren (EINFACHSTE)

1. **APK herunterladen** von GitHub Releases
2. Auf Android-Handy **übertragen** (USB, Cloud, E-Mail)
3. APK **antippen** und installieren
4. Bei Warnung: "Aus unbekannten Quellen installieren" **erlauben**
5. **Fertig!** App ist installiert

### Methode 2: Mit Android Studio bauen

#### Voraussetzungen

- **Flutter SDK** (3.0+): https://flutter.dev/docs/get-started/install
- **Android Studio**: https://developer.android.com/studio
- **Git**: https://git-scm.com/

#### Schritte

```bash
# 1. Repository klonen
git clone https://github.com/DEIN-USERNAME/wissens-swiper.git
cd wissens-swiper

# 2. Flutter installieren (falls nicht vorhanden)
# Folge: https://flutter.dev/docs/get-started/install

# 3. Dependencies installieren
flutter pub get

# 4. Android Emulator starten ODER Handy per USB verbinden
# USB-Debugging muss aktiviert sein!

# 5. App bauen und installieren
flutter run

# ODER APK bauen:
flutter build apk --release

# APK findest du in: build/app/outputs/flutter-apk/app-release.apk
```

### Methode 3: Mit GitHub Actions (automatisch)

1. **Fork** dieses Repository
2. Gehe zu **Actions** → **Build APK**
3. Klicke auf **Run workflow**
4. Nach ~5 Minuten: **Download APK** aus Artifacts
5. Auf Handy installieren

## 🚀 Verwendung

### Erste Schritte

1. **App öffnen** - Du siehst sofort die erste Karte
2. **Frage lesen** und nachdenken
3. **Auf Karte tippen** um Antwort zu sehen
4. **Bewerten**:
   - 😓 **Schwer** → Wiederholung in 1 Tag
   - 😊 **Gut** → Wiederholung in 3 Tagen
   - 😎 **Leicht** → Wiederholung in 7 Tagen
5. **Nach oben swipen** für nächste Karte

### Bottom Navigation

- 🏠 **Home** - Hauptansicht mit Karten
- 📂 **Kategorien** - Übersicht aller Kategorien
- 📊 **Stats** - Deine Fortschritte & Streak
- ⚙️ **Einstellungen** - App-Konfiguration

### Tipps

- 📅 **Täglich üben** - Auch nur 5 Minuten helfen!
- 🔥 **Streak aufbauen** - Jeden Tag dazulernen
- ✅ **Ehrlich bewerten** - Nur so funktioniert Spaced Repetition
- 🔄 **Mischen** - Verschiedene Kategorien abwechseln

## 🛠️ Entwicklung

### Projektstruktur

```
lib/
├── main.dart              # App-Einstieg, UI-Logik
├── flashcards_data.dart   # 200+ Karteikarten-Daten
└── ui_components.dart     # Stats, Kategorien, Einstellungen
```

### Dependencies

```yaml
flutter:
  sdk: flutter
flutter_card_swiper: ^6.0.0        # Swipe-Funktionalität
shared_preferences: ^2.2.2         # Lokaler Speicher
provider: ^6.1.1                   # State Management
```

### Eigene Karten hinzufügen

Bearbeite `lib/flashcards_data.dart`:

```dart
FlashCard(
  category: 'Deine Kategorie',
  question: 'Deine Frage?',
  answer: 'Deine Antwort mit\n• Bullet Points\n• Möglich',
),
```

### Neue Farben/Kategorien

In `main.dart` → `_getGradientForCategory()`:

```dart
case 'deine_kategorie':
  return LinearGradient(
    colors: [Color(0xFFFFFF00), Color(0xFFFF0000)],
  );
```

## 🔧 Troubleshooting

### "App wurde nicht installiert"

- **Lösung**: In Einstellungen → Sicherheit → "Installation aus unbekannten Quellen" erlauben

### "Gradle build failed"

```bash
# Cache löschen und neu bauen
flutter clean
flutter pub get
flutter build apk --release
```

### USB-Debugging funktioniert nicht

1. Handy → Einstellungen → Über das Telefon
2. **7x auf Build-Nummer tippen** (Entwickleroptionen aktivieren)
3. Zurück → Entwickleroptionen → **USB-Debugging AN**

### Flutter Version falsch

```bash
# Flutter upgraden
flutter upgrade

# Version checken
flutter --version
```

## 📝 Changelog

### Version 1.0.0 (2024)

- ✅ Initial Release
- ✅ 200+ Karteikarten
- ✅ TikTok-Style Interface
- ✅ Spaced Repetition System
- ✅ Offline-Modus
- ✅ Statistiken & Streak

## 🤝 Contributing

Beiträge sind willkommen!

1. Fork das Projekt
2. Feature Branch erstellen (`git checkout -b feature/AmazingFeature`)
3. Commit (`git commit -m 'Add some AmazingFeature'`)
4. Push (`git push origin feature/AmazingFeature`)
5. Pull Request öffnen

### Ideen für Contributions

- 🌍 **Mehr Karten** - Weitere Kategorien hinzufügen
- 🎨 **Themes** - Dark/Light Mode
- 🔊 **Audio** - Vorlesen der Karten
- 📈 **Erweiterte Stats** - Detailliertere Analysen
- 🌐 **Mehrsprachigkeit** - Englische Version

## 📄 Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei

## 💬 Support

- 🐛 **Bugs**: Issues auf GitHub öffnen
- 💡 **Feature-Requests**: Issues mit Label "enhancement"
- 📧 **Kontakt**: [Deine E-Mail]

## 🙏 Credits

- **Flutter** - UI Framework
- **Material Design** - Design System
- **Community** - Für Feedback & Contributions

---

**Viel Erfolg beim Lernen! 🚀📚**

*Made with ❤️ and Flutter*
