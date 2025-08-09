

<!-- Visitor counter -->
![Visitor Count](https://visitor-badge.laobi.icu/badge?page_id=thechampusman.flutter_unicornCLI)




# 🦄 FlutterUnicorn CLI



## 🖼️ Banners

<p align="center">
  <img src="images/flutter_clibanner.png" alt="FlutterUnicorn CLI Banner Light" width="80%">
</p>
<p align="center">
  <img src="images/flutterCLI_banner.png" alt="FlutterUnicorn CLI Banner Dark" width="80%">
</p>

---

<p align="center">
  <a href="docs/USAGE.md" style="font-size:1.3em; font-weight:bold;">
    <img src="https://img.shields.io/badge/📖%20Full%20Usage%20Guide-blueviolet?style=for-the-badge" alt="Full Usage Guide"/>
  </a>
</p>

---

## ✨ Some Glimpses

<p align="center">
  <img src="images/1.png" alt="FlutterUnicorn CLI Screenshot 1" width="70%">
  <img src="images/2.png" alt="FlutterUnicorn CLI Screenshot 2" width="70%">
    <em>Comprehensive interactive menu with 24+ commands in action</em>
  <img src="images/3.png" alt="FlutterUnicorn CLI Screenshot 3" width="70%">
</p>

> **Blazing-fast custom CLI for Flutter developers.**  
> **🚀 NEW: Comprehensive Interactive Menu with 24+ Commands!**  
> Interactive menu, color output, and powerful shortcuts.  
> Speed up your daily Flutter and Git workflow with intuitive commands like `f fc`, `f fb apk`, `f g2 "commit message"` and the powerful interactive menu `f m`.

---

## 📦 Features

- ✅ One-letter shorthand for Flutter commands  
- ✅ Git shortcuts (add, commit, push)  
- ✅ **Comprehensive interactive menu with 30 commands (`f m`)**  
- ✅ **Powerful batch operations with custom batch creation**  
- ✅ Command-specific help (`f fc-h`)  
- ✅ Colorful output (no external packages used)  
- ✅ Fully cross-platform source: works on Windows, Linux, macOS  
- ✅ VS Code / Android Studio integration  
- ✅ Complete Flutter workflow coverage (build, test, analyze, format, packages)  
- ✅ Just one lightweight binary (`f.exe`) for Windows  

---

## 🚀 Quick Start (Windows)

   1. **Download `f.exe`** from the [Releases](https://github.com/thechampusman/flutter_unicorn/releases) page.
   2. Place it somewhere like `C:\tools\flutter_unicorn\`
   3. Add that folder to your system **PATH**   
   4. Open any terminal and run:
   ```sh
   f -h
   ```
## OR (Use with out adding to PATH)

   1. **Download `f.exe`** 
   2. Place it in flutter/bin folder (locate your flutter SDK)
      And All DONE !!


## Linux & MacOS 

   1. Download the f binary for your OS from Releases
        (or compile it yourself with dart compile exe bin/flutterunicorn.dart -o f on your platform)
   2. Place it in a folder like `~/bin` or `/usr/local/bin`
   3. Make it executable:
      ``` ** chmod +x f **
      ```
   4. Add that folder to your PATH if needed
   5. Use from any terminal!. (same commands)

## Setup using Terminal (Linux & MacOS)

   (** assuming that you are in download folder and already downloaded f binary file from release**)
   1. Move f to a directory in your PATH, such as /usr/local/bin or ~/bin:
      ``` sudo mv f/usr/local/bin/ ```
       or (if you have a ~/bin in your PATH):
      ``` mv f ~/bin/ ```
   2. Make sure it's executable:
      ``` chmod +x /usr/local/bin/f ``` 
   3. Use any commands for any terminal.
---

## 📚 All Commands

### 🧩 Flutter Shortcuts

| Command         | Description                               |
|-----------------|-------------------------------------------|
| f fc            | Flutter clean                             |
| f fb apk        | Build Android APK                         |
| f ft            | Run all tests                             |
| f fb win        | Build Windows executable                  |
| f batch 1       | Run "Clean & Build" batch operation       |
| f batch-create  | Create custom batch operation             |
| f batch-list    | Show all batch operations                 |
| f appbundle     | Build Android AppBundle (.aab)            |
| f fr            | Run the app                               |
| f fit           | Run integration tests                     |
| f fan           | Flutter analyze                           |
| f fmt           | Format all Dart files                     |
| f fenv          | Show Flutter environment                  |
| f fpo           | Show outdated packages                    |
| f fpu           | Upgrade all packages                      |
| f fup           | Upgrade Flutter SDK                       |
| f fd            | Flutter doctor                            |
| f fdv           | List connected devices                    |
| f fl            | Show Flutter logs                         |
| f fl10n         | Generate localization files               |
| f fo            | Open APK output folder                    |
| f fo win        | Open Windows exe output folder            |
| f fa <pkg>      | Flutter pub add <pkg>                     |
| f far <pkg>     | Flutter pub remove <pkg>                  |
| f frm <pkg>     | Flutter pub remove <pkg> (alias)          |
| f fp            | Flutter pub get                           |
| f new <name>    | Create new Flutter project                |
| f fvs           | Open project in VS Code                   |
| f fandroid      | Open Android folder in Android Studio      |
| f web           | Build Flutter web                         |
| f about         | Show author and links                     |
| f info          | Show system info                          |
| f version       | Show CLI version                          |
| f m             | Launch comprehensive interactive menu (30 commands) |
| f -h            | Show usage/help                           |
| f <cmd>-h       | Help for any specific command             |

---

### 🛠️ Git Commands

| Command         | Description                |
|-----------------|---------------------------|
| f g1            | git add .                 |
| f g2 "msg"      | git commit -m "msg"       |
| f g3            | git push                  |

---

## 💡 Usage Examples

```sh
f fc                         # Clean project
f fb apk                     # Build Android APK
f fa http                    # Add 'http' package
f fo win                     # Open Windows build output
f g2 "initial commit"        # Commit code
f g3                         # Push to remote
f m                          # Launch interactive menu (30 commands)
f btc 1                      # Run "Clean & Build" batch
f btl                        # List all batches
f btcr                       # Create custom batch operation
```

### 🗂️ Interactive Menu

The interactive menu (`f m`) provides a user-friendly interface with **30 comprehensive commands** covering your entire Flutter development workflow:

#### 📱 **Basic Commands (1-8)**
- **Project Management**: Clean, dependencies, build operations
- **Build Operations**: APK, Windows EXE, Web, App Bundle
- **Folder Access**: Quick access to build output folders

#### ⚡ **Batch Operations (9-13)**
- **Clean & Build**: `flutter clean` → `flutter pub get` → `flutter build apk`
- **Clean & Release**: `flutter clean` → `flutter pub get` → `flutter build apk --release`
- **Clean & Run**: `flutter clean` → `flutter pub get` → `flutter run`
- **Show All Batches**: List all available batch operations
- **Create Custom Batch**: Build your own automation workflows

#### 🛠️ **Development Tools (14-18)**
- **Testing & Analysis**: Run app, tests, doctor, analyze, format

#### 📦 **Package Management (19-25)**
- **Dependencies**: Add, remove, upgrade packages
- **Tools**: VS Code integration, Flutter upgrade, device management

#### 🔄 **Git Integration (26-28)**
- **Version Control**: Add, commit, push workflows

#### 📊 **Utilities (29-30)**
- **Productivity**: Time tracking and analytics

Simply run `f m` and choose from 1-30 to execute any command instantly!

### ⚡ **Batch Operations - NEW!**

Automate your workflow with powerful batch operations:

**🔧 Pre-defined Batches:**
1. **Clean & Build** - `flutter clean` → `flutter pub get` → `flutter build apk`
2. **Clean & Release** - `flutter clean` → `flutter pub get` → `flutter build apk --release`
3. **Full Build Suite** - Complete workflow with analyze, test, and multi-platform builds
4. **Quick Setup** - Essential setup commands for development
5. **Git Workflow** - Add, commit, and push in one command

**🎨 Custom Batches:**
- Create your own batch operations with `f batch-create`
- Combine any commands into reusable workflows
- Save time on repetitive tasks
- Share batch configurations with your team

**Commands:**
- `f btc <number>` - Run batch by number
- `f btl` - Show all available batches
- `f btcr` - Create custom batch
- `f btd <number>` - Delete custom batch

---

## 🛡️ Privacy & Trust

> **Your privacy is 100% respected.**
>
> - This tool does **not** collect, transmit, or store any of your data.
> - No analytics, no tracking, no "improve experience" popups—**nothing leaves your machine**.
> - All your code, commands, and workflow are **yours and yours alone**.

Enjoy full peace of mind while boosting your productivity!


---

## 📬 Feedback

💬 Want to suggest a new feature or command?  
📧 Email: usmangourworkid@gmail.com  
🕸️ GitHub: https://github.com/thechampusman/  
🔗 LinkedIn: https://linkedin.com/in/thechampusman/
✈️ Telegram: [@thechampusman](https://t.me/thechampusman)
🌐 Website: [flutterunicorncli.netlify.app](https://flutterunicorncli.netlify.app/)  


---

## 🔗 Source & Updates

🔐 This CLI is private & not open-source.  
🚀 Download updates at: https://github.com/thechampusman/flutter_unicorn/releases

---

## 🧠 Author

**Usman Gour**  
Mobile & Windows App Developer (Flutter Expert)  
🦄 Creator of FlutterUnicorn CLI  
🔗 [GitHub: @thechampusman](https://github.com/thechampusman)
  

---

