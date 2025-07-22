<div align="center">
  <h1 style="color: #6366f1; font-size: 3em; margin-bottom: 10px;">🦄 FlutterUnicorn CLI</h1>
  <p style="font-size: 1.3em; color: #64748b; margin-bottom: 30px;">Comprehensive Documentation</p>
</div>

<div style="background: linear-gradient(90deg, #667eea 0%, #764ba2 100%); padding: 20p### 🗂️ Interactive Menu

<div style="background: #dbeafe; border: 2px solid #93c5fd; border-radius: 12px; padding: 20px; margin: 20px 0;">
  <p style="margin: 0; color: #1e40af; font-size: 1.1em;"><strong>💡 Tip:</strong> Run <code style="background: #f1f5f9; padding: 4px 8px; border-radius: 4px; color: #3b82f6;">f m</code> to launch the interactive menu!</p>
</div>

Run:
```sh
f m
```
You'll see a menu with numbered options for common tasks. Just enter the number to run the command—perfect for beginners!"
  <h2 style="margin: 0; color: white;">🚀 Blazing-fast Flutter & Git CLI</h2>
  <p style="margin: 10px 0 0 0; color: #f1f5f9;">One-letter shortcuts • Cross-platform • Privacy-first • Open Source</p>
</div>

---

<div style="background: #f8fafc; border: 2px solid #e2e8f0; border-radius: 12px; padding: 25px; margin: 25px 0;">
  <h2 style="color: #1e293b; margin-top: 0; text-align: center;">📚 Table of Contents</h2>
  
  1. [🦄 Introduction](#1--introduction)
  2. [✨ Features](#2--features)
  3. [💻 Installation](#3--installation)
      - [🪟 Windows](#-windows) 
      - [🐧 Linux & 🍏 macOS](#-linux---macos)
      - [🛠️ From Source](#-from-source)
  4. [� Getting Started](#4--getting-started)
  5. [📚 Command Reference](#5--command-reference)
      - [🧩 Flutter Shortcuts](#-flutter-shortcuts)
      - [🔧 Git Shortcuts](#-git-shortcuts)
      - [�️ Interactive Menu](#-interactive-menu)
  6. [⚡ Advanced Usage](#6--advanced-usage)
      - [🔗 Aliases & Customization](#-aliases--customization)
      - [📦 Templates (Coming Soon)](#-templates-coming-soon)
  7. [🛠️ Troubleshooting](#7--troubleshooting)
  8. [🤝 Contributing](#8--contributing)
  9. [📝 License](#9--license)
  10. [❓ FAQ](#10--faq)
  11. [💬 Contact & Community](#11--contact--community)
  
</div>


---

## 1. 🦄 Introduction

**FlutterUnicorn CLI** is a blazing-fast, cross-platform command-line tool designed to supercharge your Flutter and Git workflow. It provides intuitive, one-letter shortcuts for common Flutter and Git commands, an interactive menu for beginners, and a privacy-first experience.

---

## 2. ✨ Features

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 20px; margin: 25px 0;">
  <div style="border: 2px solid #e2e8f0; border-radius: 12px; padding: 20px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;">
    <h3 style="color: white; margin-top: 0; font-size: 1.3em;">🚀 Lightning Fast</h3>
    <p style="margin-bottom: 0; color: #f1f5f9;">One-letter shortcuts for all major Flutter commands</p>
  </div>
  <div style="border: 2px solid #e2e8f0; border-radius: 12px; padding: 20px; background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%); color: white;">
    <h3 style="color: white; margin-top: 0; font-size: 1.3em;">🛡️ Privacy First</h3>
    <p style="margin-bottom: 0; color: #f1f5f9;">No tracking, no data collection—your workflow is yours</p>
  </div>
  <div style="border: 2px solid #e2e8f0; border-radius: 12px; padding: 20px; background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%); color: white;">
    <h3 style="color: white; margin-top: 0; font-size: 1.3em;">🧩 Beginner Friendly</h3>
    <p style="margin-bottom: 0; color: #f1f5f9;">Interactive menu and command-specific help</p>
  </div>
  <div style="border: 2px solid #e2e8f0; border-radius: 12px; padding: 20px; background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%); color: white;">
    <h3 style="color: white; margin-top: 0; font-size: 1.3em;">🖥️ Cross-Platform</h3>
    <p style="margin-bottom: 0; color: #f1f5f9;">Works on Windows, Linux, macOS seamlessly</p>
  </div>
</div>

**Additional Features:**
- 🛠️ Git integration: add, commit, push with a single keystroke
- 🖍️ Colorful, readable output (no external dependencies)
- 🏗️ VS Code & Android Studio integration
- 📦 Single binary for each platform (`f.exe` or `f`)
- 📚 Extensive help: `f -h` or `f <cmd>-h` for command-specific help

---

## 3. 💻 Installation

<div align="center" style="margin: 30px 0;">
  <a href="https://github.com/thechampusman/flutter_unicornCLI/releases" 
     style="background: linear-gradient(45deg, #667eea, #764ba2); color: white; padding: 15px 30px; border-radius: 25px; text-decoration: none; font-weight: bold; margin: 10px; display: inline-block; font-size: 1.1em;">
    📥 Download Latest Release
  </a>
  <a href="https://flutterunicorncli.netlify.app/" 
     style="background: linear-gradient(45deg, #f093fb, #f5576c); color: white; padding: 15px 30px; border-radius: 25px; text-decoration: none; font-weight: bold; margin: 10px; display: inline-block; font-size: 1.1em;">
    🌐 Visit Website
  </a>
</div>

### 🪟 Windows
1. Download `f.exe` from the [Releases](https://github.com/thechampusman/flutter_unicornCLI/releases) page.
2. Place it in a folder like `C:\tools\flutter_unicorn\`.
3. Add that folder to your system **PATH**.
4. Open any terminal and run:
    ```sh
    f -h
    ```

### 🐧 Linux & 🍏 macOS
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

### 🛠️ From Source
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

## 4. 🚀 Getting Started

After installation, open a terminal and type:
```sh
f -h
```
This will show the main help menu with all available commands and usage examples.

---

## 5. 📚 Command Reference

### 🧩 Flutter Shortcuts

<table style="width: 100%; border-collapse: collapse; margin: 20px 0; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); border-radius: 8px; overflow: hidden;">
  <thead>
    <tr style="background: linear-gradient(90deg, #667eea 0%, #764ba2 100%); color: white;">
      <th style="padding: 15px; text-align: left; font-size: 1.1em;">Command</th>
      <th style="padding: 15px; text-align: left; font-size: 1.1em;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f c</code></td>
      <td style="padding: 12px;">Flutter clean</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f b</code></td>
      <td style="padding: 12px;">Build Android APK</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fb win</code></td>
      <td style="padding: 12px;">Build Windows executable</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f o</code></td>
      <td style="padding: 12px;">Open APK output folder</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fo win</code></td>
      <td style="padding: 12px;">Open Windows exe output folder</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f appbundle</code></td>
      <td style="padding: 12px;">Build Android AppBundle (.aab)</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fr</code></td>
      <td style="padding: 12px;">Run the app</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f ft</code></td>
      <td style="padding: 12px;">Run all tests</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fit</code></td>
      <td style="padding: 12px;">Run integration tests</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fan</code></td>
      <td style="padding: 12px;">Flutter analyze</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fmt</code></td>
      <td style="padding: 12px;">Format all Dart files</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fenv</code></td>
      <td style="padding: 12px;">Show Flutter environment</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fpo</code></td>
      <td style="padding: 12px;">Show outdated packages</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fpu</code></td>
      <td style="padding: 12px;">Upgrade all packages</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fup</code></td>
      <td style="padding: 12px;">Upgrade Flutter SDK</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fd</code></td>
      <td style="padding: 12px;">Flutter doctor</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fdv</code></td>
      <td style="padding: 12px;">List connected devices</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fl</code></td>
      <td style="padding: 12px;">Show Flutter logs</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fl10n</code></td>
      <td style="padding: 12px;">Generate localization files</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fa &lt;pkg&gt;</code></td>
      <td style="padding: 12px;">Flutter pub add &lt;pkg&gt;</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f far &lt;pkg&gt;</code></td>
      <td style="padding: 12px;">Flutter pub remove &lt;pkg&gt;</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f frm &lt;pkg&gt;</code></td>
      <td style="padding: 12px;">Flutter pub remove &lt;pkg&gt; (alias)</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fp</code></td>
      <td style="padding: 12px;">Flutter pub get</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f new &lt;name&gt;</code></td>
      <td style="padding: 12px;">Create new Flutter project</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fvs</code></td>
      <td style="padding: 12px;">Open project in VS Code</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f fandroid</code></td>
      <td style="padding: 12px;">Open Android folder in Android Studio</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f web</code></td>
      <td style="padding: 12px;">Build Flutter web</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f about</code></td>
      <td style="padding: 12px;">Show author and links</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f info</code></td>
      <td style="padding: 12px;">Show system info</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f version</code></td>
      <td style="padding: 12px;">Show CLI version</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f m</code></td>
      <td style="padding: 12px;">Launch interactive menu</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f -h</code></td>
      <td style="padding: 12px;">Show usage/help</td>
    </tr>
    <tr style="background: #f8fafc;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #3b82f6;"><code>f &lt;cmd&gt;-h</code></td>
      <td style="padding: 12px;">Help for any specific command</td>
    </tr>
  </tbody>
</table>

### 🔧 Git Shortcuts

<table style="width: 100%; border-collapse: collapse; margin: 20px 0; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); border-radius: 8px; overflow: hidden;">
  <thead>
    <tr style="background: linear-gradient(90deg, #43e97b 0%, #38f9d7 100%); color: white;">
      <th style="padding: 15px; text-align: left; font-size: 1.1em;">Command</th>
      <th style="padding: 15px; text-align: left; font-size: 1.1em;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background: #f0fdfa;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #059669;"><code>f g1</code></td>
      <td style="padding: 12px;">git add .</td>
    </tr>
    <tr style="background: #ffffff;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #059669;"><code>f g2 "msg"</code></td>
      <td style="padding: 12px;">git commit -m "msg"</td>
    </tr>
    <tr style="background: #f0fdfa;">
      <td style="padding: 12px; font-family: 'Courier New', monospace; font-weight: bold; color: #059669;"><code>f g3</code></td>
      <td style="padding: 12px;">git push</td>
    </tr>
  </tbody>
</table>

### 🗂️ Interactive Menu
Run:
```sh
f m
```
You’ll see a menu with numbered options for common tasks. Just enter the number to run the command—perfect for beginners!

---

## 6. ⚡ Advanced Usage

### 🔗 Aliases & Customization
*Coming soon!*  
You’ll be able to define your own command aliases and templates for even faster workflows.

### 📦 Templates (Coming Soon)
*Planned feature:*  
Generate new pages, widgets, or services with a single command, using built-in or user-defined templates.

---

## 7. 🛠️ Troubleshooting

<div style="background: #fef3cd; border: 2px solid #fde68a; border-radius: 12px; padding: 20px; margin: 20px 0;">
  <p style="margin: 0; color: #92400e; font-size: 1.1em;"><strong>⚠️ Common Issues & Solutions</strong></p>
</div>

<div style="background: #ffffff; border: 1px solid #e2e8f0; border-radius: 8px; padding: 16px; margin: 15px 0;">
  <strong style="color: #dc2626;">• Flutter not found in system PATH:</strong><br>
  Make sure Flutter is installed and added to your PATH.<br>
  Run <code style="background: #f1f5f9; padding: 2px 6px; border-radius: 4px;">flutter --version</code> to check.
</div>

<div style="background: #ffffff; border: 1px solid #e2e8f0; border-radius: 8px; padding: 16px; margin: 15px 0;">
  <strong style="color: #dc2626;">• Permission denied (Linux/macOS):</strong><br>
  Make sure the binary is executable:<br>
  <code style="background: #f1f5f9; padding: 2px 6px; border-radius: 4px;">chmod +x /usr/local/bin/f</code>
</div>

<div style="background: #ffffff; border: 1px solid #e2e8f0; border-radius: 8px; padding: 16px; margin: 15px 0;">
  <strong style="color: #dc2626;">• Unknown command:</strong><br>
  Run <code style="background: #f1f5f9; padding: 2px 6px; border-radius: 4px;">f -h</code> to see all available commands.
</div>

<div style="background: #ffffff; border: 1px solid #e2e8f0; border-radius: 8px; padding: 16px; margin: 15px 0;">
  <strong style="color: #dc2626;">• Still stuck?</strong><br>
  Open an issue on <a href="https://github.com/thechampusman/flutter_unicornCLI/issues" style="color: #3b82f6; text-decoration: none;">GitHub</a> or contact us via <a href="https://t.me/thechampusman" style="color: #3b82f6; text-decoration: none;">Telegram</a>.
</div>

---

## 8. 🤝 Contributing
We welcome all contributions, bug fixes, feature requests, and improvements!
See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.

---

## 9. 📝 License
This project is licensed under the GNU General Public License v3.0.

---

## 10. ❓ FAQ
**Q: Does this tool collect any data?**  
A: No. Your privacy is 100% respected. No data is collected, transmitted, or stored.

**Q: Can I use this on macOS/Linux?**  
A: Yes! Download the correct binary or compile from source.

**Q: How do I update the CLI?**  
A: Download the latest release from GitHub and replace your binary.

**Q: Can I suggest a feature?**  
A: Absolutely! Open an issue or email the author.

---


## 11. 💬 Contact & Community
- 🌐 Website: [flutterunicorncli.netlify.app](https://flutterunicorncli.netlify.app/)  
- 📧 Email: usmangourworkid@gmail.com  
- 🕸️ GitHub: [thechampusman](https://github.com/thechampusman/flutter_unicornCLI)  
- 🔗 LinkedIn: [thechampusman](https://linkedin.com/in/thechampusman/)
- ✈️ Telegram: [@thechampusman](https://t.me/thechampusman)

---

<div align="center" style="background: linear-gradient(90deg, #667eea 0%, #764ba2 100%); padding: 30px; border-radius: 15px; margin: 30px 0;">
  <h2 style="color: white; font-size: 2em; margin: 0;">**Happy Fluttering! 🦄**</h2>
  <p style="color: #f1f5f9; margin: 10px 0 0 0; font-size: 1.1em;">Thank you for using FlutterUnicorn CLI!</p>
</div>
