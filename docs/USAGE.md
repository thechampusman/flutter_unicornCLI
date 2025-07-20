# FlutterUnicorn CLI — Comprehensive Documentation

---

## Table of Contents
1. Introduction
2. Features
3. Installation
    - Windows
    - Linux & macOS
    - From Source
4. Getting Started
5. Command Reference
    - Flutter Shortcuts
    - Git Shortcuts
    - Interactive Menu
6. Advanced Usage
    - Aliases & Customization
    - Templates (Coming Soon)
7. Troubleshooting
8. Contributing
9. License
10. FAQ
11. Contact & Community

---

## 1. Introduction

**FlutterUnicorn CLI** is a blazing-fast, cross-platform command-line tool designed to supercharge your Flutter and Git workflow. It provides intuitive, one-letter shortcuts for common Flutter and Git commands, an interactive menu for beginners, and a privacy-first experience.

---

## 2. Features

- 🚀 One-letter shorthand for all major Flutter commands
- 🛠️ Git integration: add, commit, push with a single keystroke
- 🧩 Interactive menu for beginners (`f m`)
- 🖍️ Colorful, readable output (no external dependencies)
- 🖥️ Cross-platform: Windows, Linux, macOS
- 🏗️ VS Code & Android Studio integration
- 🔒 No tracking, no data collection—your privacy is 100% yours
- 📦 Single binary for each platform (`f.exe` or `f`)
- 📚 Extensive help: `f -h` or `f <cmd>-h` for command-specific help

---

## 3. Installation

### Windows
1. Download `f.exe` from the [Releases](https://github.com/thechampusman/flutter_unicornCLI/releases) page.
2. Place it in a folder like `C:\tools\flutter_unicorn\`.
3. Add that folder to your system **PATH**.
4. Open any terminal and run:
    ```sh
    f -h
    ```

### Linux & macOS
1. Download the `f` binary for your OS from [Releases](https://github.com/thechampusman/flutter_unicornCLI/releases)
   *(or compile it yourself with `dart compile exe bin/flutterunicorn.dart -o f` on your platform)*
2. Move it to a folder in your PATH, e.g.:
    ```sh
    sudo mv f /usr/local/bin/
    ```
    or (if you have a `~/bin` in your PATH):
    ```sh
    mv f ~/bin/
    ```
3. Make it executable:
    ```sh
    chmod +x /usr/local/bin/f
    ```
4. Use from any terminal:
    ```sh
    f -h
    ```

### From Source
1. Clone the repository:
    ```sh
    git clone https://github.com/thechampusman/flutter_unicornCLI.git
    cd flutter_unicornCLI
    ```
2. Compile for your platform:
    ```sh
    dart compile exe bin/flutterunicorn.dart -o f
    ```
3. Move the binary to your PATH as above.

---

## 4. Getting Started

After installation, open a terminal and type:
```sh
f -h
```
This will show the main help menu with all available commands and usage examples.

---

## 5. Command Reference

### Flutter Shortcuts
| Command         | Description                               |
|-----------------|-------------------------------------------|
| f c             | Flutter clean                             |
| f b             | Build Android APK                         |
| f fb win        | Build Windows executable                  |
| f o             | Open APK output folder                    |
| f fo win        | Open Windows exe output folder            |
| f appbundle     | Build Android AppBundle (.aab)            |
| f fr            | Run the app                               |
| f ft            | Run all tests                             |
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
| f fa <pkg>      | Flutter pub add <pkg>                     |
| f far <pkg>     | Flutter pub remove <pkg>                  |
| f frm <pkg>     | Flutter pub remove <pkg> (alias)          |
| f fp            | Flutter pub get                           |
| f new <name>    | Create new Flutter project                |
| f fvs           | Open project in VS Code                   |
| f fandroid      | Open Android folder in Android Studio     |
| f web           | Build Flutter web                         |
| f about         | Show author and links                     |
| f info          | Show system info                          |
| f version       | Show CLI version                          |
| f m             | Launch interactive menu                   |
| f -h            | Show usage/help                           |
| f <cmd>-h       | Help for any specific command             |

### Git Shortcuts
| Command         | Description                |
|-----------------|---------------------------|
| f g1            | git add .                 |
| f g2 "msg"      | git commit -m "msg"       |
| f g3            | git push                  |

### Interactive Menu
Run:
```sh
f m
```
You’ll see a menu with numbered options for common tasks. Just enter the number to run the command—perfect for beginners!

---

## 6. Advanced Usage

### Aliases & Customization
*Coming soon!*  
You’ll be able to define your own command aliases and templates for even faster workflows.

### Templates (Coming Soon)
*Planned feature:*  
Generate new pages, widgets, or services with a single command, using built-in or user-defined templates.

---

## 7. Troubleshooting
- **Flutter not found in system PATH:**  
  Make sure Flutter is installed and added to your PATH.  
  Run `flutter --version` to check.
- **Permission denied (Linux/macOS):**  
  Make sure the binary is executable:  
  `chmod +x /usr/local/bin/f`
- **Unknown command:**  
  Run `f -h` to see all available commands.
- **Still stuck?**  
  Open an issue on [GitHub](https://github.com/thechampusman/flutter_unicornCLI/issues).

---

## 8. Contributing
We welcome all contributions, bug fixes, feature requests, and improvements!
See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.

---

## 9. License
This project is licensed under the GNU General Public License v3.0.

---

## 10. FAQ
**Q: Does this tool collect any data?**  
A: No. Your privacy is 100% respected. No data is collected, transmitted, or stored.

**Q: Can I use this on macOS/Linux?**  
A: Yes! Download the correct binary or compile from source.

**Q: How do I update the CLI?**  
A: Download the latest release from GitHub and replace your binary.

**Q: Can I suggest a feature?**  
A: Absolutely! Open an issue or email the author.

---

## 11. Contact & Community
- 📧 Email: usmangourworkid@gmail.com  
- 🕸️ GitHub: [thechampusman](https://github.com/thechampusman/flutter_unicornCLI)  
- 🔗 LinkedIn: [thechampusman](https://linkedin.com/in/thechampusman/)

---

**Happy Fluttering! 🦄**
