# 🚀 GITHUB UPLOAD - SCHRITT FÜR SCHRITT

## ✅ WAS DU JETZT TUN MUSST:

### Schritt 1: Zip-Datei downloaden
- Lade `GitHub_Upload_Komplett.zip` herunter
- Entpacke die Datei

### Schritt 2: Alle Dateien auf einmal hochladen

1. **Gehe zu deinem GitHub Repo**: https://github.com/excidiia/swipe2know
2. **LÖSCHE die falsche build.yml** im Root:
   - Klicke auf `build.yml`
   - Klicke auf 🗑️ (Mülleimer-Symbol)
   - "Delete file" → Commit

3. **Lade alle neuen Dateien hoch**:
   - Klicke "Add file" → "Upload files"
   - **Ziehe ALLE Dateien aus dem entpackten Ordner rein**
     (Inklusive die Ordner `.github`, `lib`, `android`)
   - Commit changes

### Schritt 3: Actions aktivieren

1. Gehe zum **"Actions"** Tab
2. Du siehst jetzt: **"Build APK"** Workflow
3. Klicke drauf
4. Klicke **"Run workflow"** (rechts, grüner Button)
5. Klicke nochmal **"Run workflow"**

### Schritt 4: Warten & Downloaden (5-10 Min)

1. **Workflow läuft** - Du siehst den Status
2. Wenn **grünes Häkchen** ✅ erscheint: Fertig!
3. Klicke auf den Workflow-Run
4. Scrolle runter zu **"Artifacts"**
5. **Download "wissens-swiper-apk"**

### Schritt 5: APK installieren

1. Entpacke die heruntergeladene Datei
2. `app-release.apk` aufs Handy übertragen
3. Antippen → Installieren
4. **FERTIG!** 🎉

---

## 📦 WAS IM NEUEN ZIP IST:

```
GitHub_Upload_Komplett/
├── .github/
│   └── workflows/
│       └── build.yml          ✅ RICHTIGE Position!
├── lib/
│   ├── main.dart              ✅ Kompletter Code
│   ├── flashcards_data.dart   ✅ 200+ Karten
│   └── ui_components.dart     ✅ UI Komponenten
├── android/
│   └── app/
│       ├── build.gradle       ✅ Build Config
│       └── src/main/
│           └── AndroidManifest.xml ✅ App Config
├── README.md
├── INSTALLATION.md
├── SCHNELLSTART.md
└── pubspec.yaml
```

---

## 🎯 WICHTIG:

**Beim Upload auf GitHub:**
- ✅ Ziehe ALLE Dateien UND Ordner rein
- ✅ Auch den `.github` Ordner (mit Punkt am Anfang!)
- ✅ GitHub erstellt die Ordnerstruktur automatisch

**Wenn `.github` nicht erscheint beim Upload:**
- Zeige versteckte Dateien an:
  - **Windows**: Explorer → Ansicht → Versteckte Elemente ☑️
  - **Mac**: Finder → Cmd + Shift + . (Punkt)
  - **Linux**: Dateimanager → Strg + H

---

## ⚡ ALTERNATIV: Einzelne Dateien erstellen

Falls Upload nicht funktioniert, kannst du auch jede Datei einzeln erstellen:

### 1. `.github/workflows/build.yml` erstellen
- "Add file" → "Create new file"
- Name: `.github/workflows/build.yml`
- Inhalt: siehe build.yml im Zip

### 2. `lib/main.dart` erstellen
- "Add file" → "Create new file"  
- Name: `lib/main.dart`
- Inhalt: siehe main.dart im Zip

### 3. So weiter für alle Dateien...

---

## 🆘 TROUBLESHOOTING:

**"Actions Tab zeigt nichts"**
→ `.github/workflows/build.yml` fehlt oder falscher Pfad

**"Build failed"**
→ `lib/` Ordner fehlt oder Android-Dateien fehlen

**"Cannot find module"**
→ `pubspec.yaml` fehlt

**Immer noch Probleme?**
→ Schick mir Screenshot, ich helfe!

---

## 📞 NÄCHSTE SCHRITTE:

1. ✅ GitHub_Upload_Komplett.zip downloaden
2. ✅ Entpacken
3. ✅ Alte build.yml löschen
4. ✅ Alle neuen Dateien hochladen
5. ✅ Actions → Run workflow
6. ✅ APK downloaden
7. ✅ Installieren
8. ✅ **LOSLEGEN!** 🚀

---

**Bei Fragen: Einfach Screenshot schicken!** 📸
