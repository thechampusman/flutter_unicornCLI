import 'logger.dart';

final Map<String, String> commandHelp = {
  ///// Basic Commands /////
  'c': '''
Flutter Clean

Deletes the build/ and .dart_tool/ directories.

Example:
  f c
''',

  'b': '''
Flutter Build APK

Builds an Android APK file from your app.

Example:
  f b
''',

  'fp': '''
Flutter Pub Get

Gets all the dependencies listed in pubspec.yaml.

Example:
  f fp
''',

  'fr': '''
Flutter Run

Runs your Flutter app on a connected device.

Example:
  f fr
''',

  'ft': '''
Flutter Test

Runs the unit tests for your app.

Example:
  f ft
''',

  'fd': '''
Flutter Doctor

Shows information about the installed tooling.

Example:
  f fd
''',

  'fo': '''
Open Output Folder

Opens the APK output folder in file explorer.

Example:
  f fo         (opens APK folder)
  f fo win     (opens Windows EXE folder)
''',

  ///// Build Commands /////
  'fb': '''
Flutter Build

Builds your app for different platforms.

Examples:
  f fb apk     (build APK)
  f fb win     (build Windows)
  f fb web     (build Web)
  f fb ios     (build iOS)
''',

  'fbr': '''
Flutter Build APK Release

Builds a release APK optimized for distribution.

Example:
  f fbr
''',

  'fbd': '''
Flutter Build APK Debug

Builds a debug APK with debugging information.

Example:
  f fbd
''',

  'fbp': '''
Flutter Build APK Profile

Builds a profile APK for performance analysis.

Example:
  f fbp
''',

  'fbt': '''
Flutter Build APK All Targets

Builds APK for all target platforms (arm, arm64, x64).

Example:
  f fbt
''',

  'fbundle': '''
Flutter Build App Bundle Release

Builds a release Android App Bundle for Play Store.

Example:
  f fbundle
''',

  'fwebr': '''
Flutter Build Web Release

Builds a release web app optimized for production.

Example:
  f fwebr
''',

  'fwebd': '''
Flutter Build Web Debug

Builds a debug web app with debugging information.

Example:
  f fwebd
''',

  'fiosr': '''
Flutter Build iOS Release

Builds a release iOS app.

Example:
  f fiosr
''',

  'fiosd': '''
Flutter Build iOS Debug

Builds a debug iOS app.

Example:
  f fiosd
''',

  ///// Run Commands /////
  'frl': '''
Flutter Run Release

Runs your app in release mode.

Example:
  f frl
''',

  'frd': '''
Flutter Run Debug

Runs your app in debug mode.

Example:
  f frd
''',

  'frp': '''
Flutter Run Profile

Runs your app in profile mode for performance analysis.

Example:
  f frp
''',

  'fws': '''
Flutter Run Web Server

Runs your app on a web server.

Example:
  f fws
''',

  'fwc': '''
Flutter Run Chrome

Runs your app in Chrome browser.

Example:
  f fwc
''',

  'fwe': '''
Flutter Run Edge

Runs your app in Microsoft Edge browser.

Example:
  f fwe
''',

  'fgr': '''
Flutter Get and Run

Gets dependencies and runs the app in one command.

Example:
  f fgr
''',

  ///// Package Management /////
  'fa': '''
Flutter Pub Add

Adds a package to your pubspec.yaml dependencies.

Example:
  f fa http
''',

  'fadd': '''
Flutter Pub Add (Alternative)

Adds a package to your pubspec.yaml dependencies.

Example:
  f fadd provider
''',

  'fadddev': '''
Flutter Pub Add Dev Dependency

Adds a package to your dev dependencies.

Example:
  f fadddev build_runner
''',

  'fremove': '''
Flutter Pub Remove

Removes a package from your pubspec.yaml.

Example:
  f fremove http
''',

  'frm': '''
Flutter Pub Remove (Short)

Removes a package from your pubspec.yaml.

Example:
  f frm http
''',

  'fpu': '''
Flutter Pub Upgrade

Upgrades all dependencies to their latest versions.

Example:
  f fpu
''',

  'fpc': '''
Flutter Pub Cache Repair

Repairs the pub cache if corrupted.

Example:
  f fpc
''',

  'fpdry': '''
Flutter Pub Dependencies

Shows dependency tree for your project.

Example:
  f fpdry
''',

  'fpo': '''
Flutter Pub Outdated

Shows outdated dependencies.

Example:
  f fpo
''',

  ///// Project Creation /////
  'fnew': '''
Flutter Create New Project

Creates a new Flutter project.

Example:
  f fnew my_awesome_app
''',

  'fneworg': '''
Flutter Create with Organization

Creates a new Flutter project with custom organization.

Example:
  f fneworg my_app com.mycompany
''',

  'fnewpkg': '''
Flutter Create Package

Creates a new Flutter package.

Example:
  f fnewpkg my_package
''',

  'fnewplug': '''
Flutter Create Plugin

Creates a new Flutter plugin.

Example:
  f fnewplug my_plugin
''',

  ///// Testing /////
  'ftest': '''
Flutter Test

Runs all unit tests.

Example:
  f ftest
''',

  'ftestw': '''
Flutter Test Watch

Runs tests and watches for file changes.

Example:
  f ftestw
''',

  'ftestcov': '''
Flutter Test Coverage

Runs tests and generates coverage report.

Example:
  f ftestcov
''',

  'fintegration': '''
Flutter Integration Test

Runs integration tests.

Example:
  f fintegration
''',

  'fit': '''
Flutter Integration Test (Short)

Runs integration tests.

Example:
  f fit
''',

  ///// Code Quality /////
  'flint': '''
Flutter Analyze

Analyzes your code for issues and potential improvements.

Example:
  f flint
''',

  'fan': '''
Flutter Analyze (Short)

Analyzes your code for issues.

Example:
  f fan
''',

  'fformat': '''
Flutter Format

Formats all Dart files in your project.

Example:
  f fformat
''',

  'fmt': '''
Flutter Format (Short)

Formats all Dart files in your project.

Example:
  f fmt
''',

  'ffix': '''
Dart Fix Apply

Applies automated fixes to your code.

Example:
  f ffix
''',

  ///// Flutter Channel Management /////
  'fch': '''
Flutter Channel

Shows current Flutter channel.

Example:
  f fch
''',

  'fchs': '''
Flutter Channel Stable

Switches to stable channel.

Example:
  f fchs
''',

  'fchb': '''
Flutter Channel Beta

Switches to beta channel.

Example:
  f fchb
''',

  'fchd': '''
Flutter Channel Dev

Switches to dev channel.

Example:
  f fchd
''',

  'fchm': '''
Flutter Channel Master

Switches to master channel.

Example:
  f fchm
''',

  ///// Development Tools /////
  'fhr': '''
Hot Reload

Triggers hot reload in running app.

Example:
  f fhr
''',

  'fhrs': '''
Hot Restart

Triggers hot restart in running app.

Example:
  f fhrs
''',

  'fquit': '''
Quit App

Quits the running Flutter app.

Example:
  f fquit
''',

  'fdv': '''
Flutter Devices

Lists all connected devices.

Example:
  f fdv
''',

  'fcl': '''
Flutter Clean and Get

Cleans project and gets dependencies.

Example:
  f fcl
''',

  'fcache': '''
Flutter Precache

Downloads and caches Flutter artifacts.

Example:
  f fcache
''',

  'fconfig': '''
Flutter Config

Shows Flutter configuration.

Example:
  f fconfig
''',

  'fattach': '''
Flutter Attach

Attaches to a running Flutter app.

Example:
  f fattach
''',

  'fdrive': '''
Flutter Drive

Runs integration tests using Flutter Driver.

Example:
  f fdrive
''',

  'finstall': '''
Flutter Install

Installs a Flutter app to a connected device.

Example:
  f finstall
''',

  'fscreen': '''
Flutter Screenshot

Takes a screenshot of the running app.

Example:
  f fscreen
''',

  'fl10n': '''
Flutter Generate Localizations

Generates localization files.

Example:
  f fl10n
''',

  ///// Git Shortcuts /////
  'g1': '''
Git Add All

Adds all changes to git staging.

Example:
  f g1
''',

  'g2': '''
Git Commit

Commits staged changes with a message.

Example:
  f g2 "Added new feature"
''',

  'g3': '''
Git Push

Pushes commits to remote repository.

Example:
  f g3
''',

  ///// IDE Shortcuts /////
  'fvs': '''
Open VS Code

Opens current project in Visual Studio Code.

Example:
  f fvs
''',

  'fandroid': '''
Open Android Studio

Opens Android Studio.

Example:
  f fandroid
''',

  ///// System Info /////
  'info': '''
System Information

Shows system and environment information.

Example:
  f info
''',

  'version': '''
FlutterUnicorn Version

Shows FlutterUnicorn CLI version.

Example:
  f version
''',

  'about': '''
About FlutterUnicorn

Shows CLI author and links.

Example:
  f about
''',

  ///// Interactive Menu /////
  'm': '''
Interactive Menu

Opens an interactive menu with common commands.

Example:
  f m
''',

  ///// Legacy Commands /////
  'appbundle': '''
Flutter Build AppBundle

Builds an Android App Bundle (.aab) file.

Example:
  f appbundle
''',

  'web': '''
Flutter Build Web

Builds a web version of your app.

Example:
  f web
''',

  'ios': '''
Flutter Build iOS

Builds an iOS version of your app.

Example:
  f ios
''',

  'macos': '''
Flutter Build macOS

Builds a macOS version of your app.

Example:
  f macos
''',

  'linux': '''
Flutter Build Linux

Builds a Linux version of your app.

Example:
  f linux
''',

  ///// Batch Operations /////
  'batch': '''
Run Batch Operations

Execute predefined or custom batch operations that run multiple commands in sequence.

Usage:
  f batch <number>      Run batch by number
  f batch-list          Show all available batches
  f batch-create        Create custom batch
  f batch-delete <num>  Delete custom batch

Examples:
  f batch 1             # Run "Clean & Build" batch
  f batch 2             # Run "Clean & Release" batch
  f batch-list          # Show all batches
  f batch-create        # Create your own batch

Predefined Batches:
  1. Clean & Build      (clean → get → build apk)
  2. Clean & Release    (clean → get → build release apk)
  3. Full Build Suite   (clean → get → analyze → test → build all)
  4. Quick Setup        (clean → get → doctor)
  5. Git Workflow       (add → commit → push)
''',

  'batch-list': '''
List All Batch Operations

Shows all available batch operations including predefined and custom batches.

Example:
  f batch-list
''',

  'batch-create': '''
Create Custom Batch

Create your own custom batch operation by combining multiple commands.

Available commands for batches:
  c, fp, b, fb, web, fr, ft, fd, fan, fmt, fpu, fa, frm, fvs, 
  fup, fdv, fpo, g1, g2, g3, fo, appbundle

Example:
  f batch-create
  
Then follow the interactive prompts to:
  1. Enter batch name
  2. Enter batch description  
  3. Add commands one by one
  4. Type "done" when finished
''',

  'batch-delete': '''
Delete Custom Batch

Delete a custom batch operation by number.

Usage:
  f batch-delete <number>

Example:
  f batch-delete 6      # Delete custom batch #6
  
Note: Only custom batches can be deleted, predefined batches are protected.
''',
};

void printUsage() {
  logger.info('''
🦄 FlutterUnicorn CLI - The Ultimate Flutter Developer Tool

USAGE:
  f <command> [arguments]

BASIC COMMANDS:
  c                     Clean project (flutter clean)
  b                     Build APK (flutter build apk)
  fp                    Get dependencies (flutter pub get)
  fr                    Run app (flutter run)
  ft                    Run tests (flutter test)
  fd                    Flutter doctor
  fo [win]              Open output folder (APK or Windows EXE)

BUILD COMMANDS:
  fb <platform>         Build for platform (apk, win, web, ios, macos, linux)
  fbr                   Build release APK
  fbd                   Build debug APK
  fbp                   Build profile APK
  fbt                   Build APK for all targets
  fbundle               Build release App Bundle
  fwebr                 Build release web
  fwebd                 Build debug web
  fiosr                 Build release iOS
  fiosd                 Build debug iOS

RUN COMMANDS:
  frl                   Run in release mode
  frd                   Run in debug mode
  frp                   Run in profile mode
  fws                   Run on web server
  fwc                   Run in Chrome
  fwe                   Run in Edge
  fgr                   Get dependencies and run

PACKAGE MANAGEMENT:
  fa <package>          Add package
  fadd <package>        Add package (alternative)
  fadddev <package>     Add dev dependency
  fremove <package>     Remove package
  frm <package>         Remove package (short)
  fpu                   Upgrade dependencies
  fpc                   Repair pub cache
  fpdry                 Show dependency tree
  fpo                   Show outdated packages

PROJECT CREATION:
  fnew <name>           Create new Flutter project
  fneworg <name> <org>  Create project with custom organization
  fnewpkg <name>        Create new package
  fnewplug <name>       Create new plugin

TESTING:
  ftest                 Run unit tests
  ftestw                Run tests in watch mode
  ftestcov              Run tests with coverage
  fintegration          Run integration tests
  fit                   Run integration tests (short)

CODE QUALITY:
  flint                 Analyze code
  fan                   Analyze code (short)
  fformat               Format all code
  fmt                   Format code (short)
  ffix                  Apply automated fixes

FLUTTER CHANNELS:
  fch                   Show current channel
  fchs                  Switch to stable
  fchb                  Switch to beta
  fchd                  Switch to dev
  fchm                  Switch to master

DEVELOPMENT TOOLS:
  fhr                   Hot reload
  fhrs                  Hot restart
  fquit                 Quit app
  fdv                   List devices
  fcl                   Clean and get dependencies
  fcache                Precache artifacts
  fconfig               Show Flutter config
  fattach               Attach to running app
  fdrive                Run driver tests
  finstall              Install app to device
  fscreen               Take screenshot
  fl10n                 Generate localizations

GIT SHORTCUTS:
  g1                    Git add all
  g2 "<message>"        Git commit with message
  g3                    Git push

⚡ BATCH OPERATIONS:
  batch <number>        Run batch operation by number
  batch-list            Show all available batches
  batch-create          Create custom batch operation
  batch-delete <num>    Delete custom batch

IDE SHORTCUTS:
  fvs                   Open VS Code
  fandroid              Open Android Studio

SYSTEM INFO:
  info                  Show system information
  version               Show FlutterUnicorn version
  about                 Show author and links

INTERACTIVE:
  m                     Open interactive menu

HELP:
  -h, --help            Show this help
  <command>-h           Show help for specific command

EXAMPLES:
  f c                   # Clean project
  f fb apk              # Build APK
  f fa provider         # Add provider package
  f fnew my_app         # Create new project
  f g2 "Initial commit" # Git commit
  f batch 1             # Run "Clean & Build" batch
  f batch-create        # Create custom batch
  f m                   # Interactive menu

For detailed help on any command, use: f <command>-h
Example: f fb-h

🌟 FlutterUnicorn makes Flutter development faster and more enjoyable!
Website: https://flutterunicorncli.netlify.app/
''');
}
