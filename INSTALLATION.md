# 📲 Installation - Schritt-für-Schritt Anleitung

## 🚀 Methode 1: Fertige APK installieren (EMPFOHLEN - 5 Minuten)

Diese Methode ist die einfachste und funktioniert **ohne Programmierkenntnisse**!

### Schritt 1: APK herunterladen

**Option A: Von GitHub Releases (wenn verfügbar)**
1. Gehe zu: https://github.com/DEIN-USERNAME/wissens-swiper/releases
2. Klicke auf die neueste Version
3. Klicke auf `wissens-swiper-apk.apk` zum Download

**Option B: Selbst bauen (siehe Methode 2 weiter unten)**

### Schritt 2: APK auf dein Handy übertragen

**Via USB-Kabel:**
1. Handy per USB an Computer anschließen
2. APK-Datei in den "Downloads" Ordner des Handys kopieren

**Via Cloud:**
1. APK in Google Drive / Dropbox hochladen
2. Auf Handy: Google Drive / Dropbox App öffnen
3. APK herunterladen

**Via E-Mail:**
1. APK als E-Mail-Anhang an dich selbst senden
2. E-Mail auf Handy öffnen
3. Anhang herunterladen

### Schritt 3: Installation erlauben

Beim ersten Mal musst du die Installation aus unbekannten Quellen erlauben:

1. **APK-Datei antippen** (in Downloads oder Dateimanager)
2. Es erscheint: "Installation blockiert"
3. Tippe auf **"Einstellungen"**
4. Aktiviere **"Aus dieser Quelle zulassen"**
5. Gehe zurück zur APK
6. Tippe auf **"Installieren"**

### Schritt 4: App öffnen

- Fertig! 🎉
- Die App erscheint in deinem App-Menü
- Öffnen und loslegen!

---

## 💻 Methode 2: Mit Flutter selbst bauen (30-60 Minuten)

Für alle, die die App selbst kompilieren möchten oder eigene Änderungen vornehmen wollen.

### Voraussetzungen installieren

#### 1️⃣ Flutter SDK installieren

**Windows:**
```bash
# Download Flutter von: https://flutter.dev/docs/get-started/install/windows
# Entpacke die ZIP-Datei nach C:\src\flutter

# Füge zu PATH hinzu:
# Systemsteuerung → System → Erweiterte Systemeinstellungen
# → Umgebungsvariablen → Path → Bearbeiten
# Hinzufügen: C:\src\flutter\bin

# Terminal öffnen und testen:
flutter doctor
```

**macOS:**
```bash
# Mit Homebrew:
brew install flutter

# ODER manuell:
cd ~/development
unzip ~/Downloads/flutter_macos_3.16.0-stable.zip

# Zu .zshrc oder .bash_profile hinzufügen:
export PATH="$PATH:`pwd`/flutter/bin"

# Terminal neu starten und testen:
flutter doctor
```

**Linux:**
```bash
cd ~/development
tar xf ~/Downloads/flutter_linux_3.16.0-stable.tar.xz

# Zu .bashrc hinzufügen:
export PATH="$PATH:$HOME/development/flutter/bin"

source ~/.bashrc
flutter doctor
```

#### 2️⃣ Android Studio installieren

1. Download: https://developer.android.com/studio
2. Installieren und öffnen
3. **Android SDK installieren**:
   - Configure → SDK Manager
   - Android 13.0 (API 33) installieren
   - Android SDK Command-line Tools installieren

#### 3️⃣ Git installieren

**Windows:**
- Download: https://git-scm.com/download/win
- Installieren mit Standardeinstellungen

**macOS:**
```bash
brew install git
```

**Linux:**
```bash
sudo apt install git
```

### App bauen

#### Schritt 1: Repository klonen

```bash
# Terminal / Eingabeaufforderung öffnen
cd Desktop  # oder ein anderer Ordner deiner Wahl

# Repository klonen
git clone https://github.com/DEIN-USERNAME/wissens-swiper.git
cd wissens-swiper
```

#### Schritt 2: Dependencies installieren

```bash
flutter pub get
```

Das lädt alle benötigten Pakete herunter.

#### Schritt 3: APK bauen

```bash
flutter build apk --release
```

**Wichtig:** Dieser Schritt dauert 5-10 Minuten beim ersten Mal!

Die fertige APK findest du dann hier:
```
build/app/outputs/flutter-apk/app-release.apk
```

#### Schritt 4: APK installieren

Folge nun **Methode 1, Schritt 2-4** oben.

---

## 🔧 Methode 3: Direkt auf Handy testen (für Entwickler)

### Voraussetzungen

1. **USB-Debugging aktivieren** auf deinem Handy:
   - Einstellungen → Über das Telefon
   - **7x auf "Build-Nummer"** tippen
   - Zurück → Entwickleroptionen
   - **USB-Debugging** aktivieren

2. **Handy per USB verbinden**

### App starten

```bash
# Im wissens-swiper Ordner:
flutter run

# ODER für Release-Version:
flutter run --release
```

Die App wird direkt auf deinem Handy installiert und gestartet!

---

## 🆘 Troubleshooting

### Problem: "flutter: command not found"

**Lösung:** Flutter nicht im PATH

**Windows:**
```bash
# Überprüfe:
echo %PATH%

# Sollte C:\src\flutter\bin enthalten
# Falls nicht, siehe Schritt 1 oben
```

**macOS/Linux:**
```bash
# Überprüfe:
echo $PATH

# Sollte /path/to/flutter/bin enthalten
# Falls nicht, zu .bashrc/.zshrc hinzufügen:
export PATH="$PATH:/path/to/flutter/bin"
source ~/.bashrc  # oder source ~/.zshrc
```

### Problem: "Android license status unknown"

```bash
flutter doctor --android-licenses

# Alle Lizenzen mit "y" akzeptieren
```

### Problem: "Gradle build failed"

```bash
# Cache löschen
flutter clean
flutter pub get

# Neu bauen
flutter build apk --release
```

### Problem: "No connected devices"

**Wenn du auf echtem Handy testen willst:**
1. USB-Debugging aktiviert? (siehe oben)
2. Handy entsperrt?
3. Kabel funktioniert? (Probiere anderes Kabel)
4. Am Computer: Tippe auf "Diesem Computer vertrauen" am Handy

**Oder nutze Emulator:**
```bash
# Android Studio öffnen
# Tools → AVD Manager
# Create Virtual Device
# Handy-Modell wählen (z.B. Pixel 6)
# System Image downloaden (Android 13)
# AVD erstellen und starten

# Dann:
flutter run
```

### Problem: "Unsupported class file major version 61"

Java-Version zu neu. Nutze Java 11 oder 17:

**Windows:**
```bash
# Java 17 downloaden:
# https://adoptium.net/

# JAVA_HOME setzen:
# Systemumgebungsvariablen → Neu → JAVA_HOME → C:\Program Files\Java\jdk-17
```

**macOS:**
```bash
# Mit Homebrew:
brew install openjdk@17
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
```

### Problem: App stürzt ab beim Start

```bash
# Logs anschauen:
flutter logs

# ODER direkt beim Testen:
flutter run --debug
```

---

## 📱 Verschiedene Android-Versionen

### Mindestanforderungen

- **Android 5.0 (Lollipop)** oder höher
- **100 MB freier Speicher**
- **Keine Internet-Verbindung nötig**

### Getestet auf

- ✅ Android 13 (Pixel 6)
- ✅ Android 12 (Samsung Galaxy S21)
- ✅ Android 11 (OnePlus 9)
- ✅ Android 10 (Xiaomi Mi 10)
- ✅ Android 9 (Huawei P30)

---

## 🎯 Nach der Installation

1. **App öffnen**
2. Erste Karte erscheint sofort
3. **Tippen** um Antwort zu sehen
4. **Bewerten** (Schwer/Gut/Leicht)
5. **Nach oben swipen** für nächste Karte

### Tipps für den Start

- 📚 Lies zuerst 5-10 Karten ohne zu bewerten
- 🎯 Dann fang an, ehrlich zu bewerten
- 🔥 Bau deinen Streak auf - jeden Tag ein paar Karten!
- 📊 Schau dir deine Stats an (unten rechts)

---

## 🤝 Hilfe benötigt?

- 🐛 **Bug gefunden?** → GitHub Issue öffnen
- ❓ **Frage zur Installation?** → Issue mit Label "installation"
- 💡 **Feature-Idee?** → Issue mit Label "enhancement"

---

**Viel Erfolg! 🚀**

Bei Problemen: Einfach ein Issue auf GitHub öffnen!
