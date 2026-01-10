# 🚀 Schnellstart - In 5 Minuten zur fertigen App!

## Option 1: Fertige APK nutzen (EINFACHSTE Methode)

### Für dich als Nutzer:

1. **APK-Datei bekommen:**
   - Warte auf Release oder
   - Lass jemanden die App für dich bauen

2. **Auf Handy installieren:**
   - APK-Datei aufs Handy übertragen
   - Antippen
   - "Installation aus unbekannten Quellen" erlauben
   - Installieren
   - Fertig! 🎉

---

## Option 2: Selbst bauen mit Flutter

### Voraussetzungen (einmalig, ~30 Min):

```bash
# 1. Flutter installieren
# Windows: https://flutter.dev/docs/get-started/install/windows
# macOS: brew install flutter
# Linux: https://flutter.dev/docs/get-started/install/linux

# 2. Prüfen ob alles klappt
flutter doctor

# 3. Android Lizenz akzeptieren
flutter doctor --android-licenses
```

### App bauen (jedes Mal, ~5 Min):

```bash
# 1. Ins Projekt-Verzeichnis
cd wissens-swiper

# 2. Dependencies laden
flutter pub get

# 3. APK bauen
flutter build apk --release

# 4. Fertig!
# APK ist hier: build/app/outputs/flutter-apk/app-release.apk
```

---

## Option 3: Direkt auf Handy testen

```bash
# 1. USB-Debugging am Handy aktivieren:
#    Einstellungen → Über das Telefon → 7x auf Build-Nummer
#    → Entwickleroptionen → USB-Debugging AN

# 2. Handy per USB verbinden

# 3. App starten
flutter run
```

Die App wird direkt installiert und gestartet!

---

## 🎯 Was die App kann:

- ✅ 200+ Karteikarten zum Lernen
- ✅ TikTok-Style Swipen
- ✅ Spaced Repetition System
- ✅ Komplett offline
- ✅ Streak-Counter
- ✅ Detaillierte Stats

## 📚 Kategorien:

- 🏥 Medizin & Erste Hilfe
- 🌍 Allgemeinwissen
- 📜 Geschichte
- ⚛️ Physik
- 🤠 Cowboys
- 🎭 Kultur
- 💼 Wirtschaft
- ⚙️ Technik

---

## 🆘 Probleme?

**"flutter: command not found"**
→ Flutter nicht im PATH, siehe INSTALLATION.md

**"Gradle build failed"**
```bash
flutter clean
flutter pub get
flutter build apk --release
```

**"No devices"**
→ USB-Debugging aktivieren oder Emulator starten

**Andere Probleme?**
→ Siehe INSTALLATION.md für detaillierte Lösungen

---

## 📖 Mehr Infos:

- **README.md** - Vollständige Dokumentation
- **INSTALLATION.md** - Detaillierte Installationsanleitung
- **GitHub Issues** - Für Fragen und Bugs

---

**Los geht's! 🚀**
