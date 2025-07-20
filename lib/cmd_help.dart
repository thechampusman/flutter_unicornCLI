import 'logger.dart';

final Map<String, String> commandHelp = {
  ///// about /////
  'about': '''
About

Shows CLI author and links.

Example:
  f about
''',

  ///// appbundle /////
  'appbundle': '''
Flutter Build AppBundle

Builds an Android App Bundle (.aab) file from your app, which is required for Play Store uploads.

Example:
  f appbundle
''',

  ///// fa /////
  'fa': '''
Flutter Pub Add

Adds a package to your pubspec.yaml dependencies.

Example:
  f fa http
''',

  ///// fan /////
  'fan': '''
Flutter Analyze

Analyzes your project for errors and warnings.

Example:
  f fan
''',

  ///// far /////
  'far': '''
Flutter Pub Remove

Removes a package from your pubspec.yaml dependencies.

Example:
  f far http
''',

  ///// fandroid /////
  'fandroid': '''
Open in Android Studio

Opens the android folder in Android Studio.

Example:
  f fandroid
''',

  ///// fb /////
  'fb': '''
Flutter Build

Builds your Flutter project for a specific platform.

Examples:
  f fb apk      # Build Android APK
  f fb win      # Build Windows executable
''',

  ///// fc /////
  'fc': '''
Flutter Clean

Removes the build/ and .dart_tool/ directories, cleaning the project.
Useful when you want to rebuild everything from scratch.

Example:
  f fc
''',

  ///// fd /////
  'fd': '''
Flutter Doctor

Checks your environment and displays a report of the status of your Flutter installation.

Example:
  f fd
''',

  ///// fdv /////
  'fdv': '''
Flutter Devices

Lists all connected devices.

Example:
  f fdv
''',

  ///// fenv /////
  'fenv': '''
Flutter Env

Shows Flutter environment information.

Example:
  f fenv
''',

  ///// fit /////
  'fit': '''
Flutter Integration Test

Runs integration tests in the integration_test directory.

Example:
  f fit
''',

  ///// fl /////
  'fl': '''
Flutter Logs

Shows log output for your running Flutter app.

Example:
  f fl
''',

  ///// fl10n /////
  'fl10n': '''
Flutter gen-l10n

Generates localizations for your project.

Example:
  f fl10n
''',

  ///// fmt /////
  'fmt': '''
Flutter Format

Formats your Dart code according to style guidelines.

Example:
  f fmt
''',

  ///// fo /////
  'fo': '''
Open Output Folder

Opens the folder containing your built APK or executable.

Examples:
  f fo         # Open APK output folder
  f fo win     # Open Windows .exe output folder
''',

  ///// fp /////
  'fp': '''
Flutter Pub Get

Fetches dependencies listed in your pubspec.yaml.

Example:
  f fp
''',

  ///// fpo /////
  'fpo': '''
Flutter Pub Outdated

Shows outdated dependencies in your pubspec.yaml.

Example:
  f fpo
''',

  ///// fpu /////
  'fpu': '''
Flutter Pub Upgrade

Upgrades all dependencies listed in your pubspec.yaml.

Example:
  f fpu
''',

  ///// fr /////
  'fr': '''
Flutter Run

Runs your Flutter app on the connected device or emulator.

Example:
  f fr
''',

  ///// frm /////
  'frm': '''
Flutter Pub Remove (Alias)

Removes a package from your pubspec.yaml dependencies.

Example:
  f frm http
''',

  ///// ft /////
  'ft': '''
Flutter Test

Runs all unit and widget tests in your project.

Example:
  f ft
''',

  ///// fup /////
  'fup': '''
Flutter Upgrade

Upgrades your Flutter SDK to the latest version.

Example:
  f fup
''',

  ///// fvs /////
  'fvs': '''
Open in VS Code

Opens the current project in Visual Studio Code.

Example:
  f fvs
''',

  ///// g1 /////
  'g1': '''
Git Add

Stages all changes in the current directory.

Example:
  f g1
''',

  ///// g2 /////
  'g2': '''
Git Commit

Commits staged changes with a message.

Example:
  f g2 "your commit message"
''',

  ///// g3 /////
  'g3': '''
Git Push

Pushes committed changes to the remote repository.

Example:
  f g3
''',

  ///// info /////
  'info': '''
System Info

Shows information about your OS, Dart version, and shell.

Example:
  f info
''',

  ///// m /////
  'm': '''
Interactive Menu

Shows a beginner-friendly menu to run common commands.

Example:
  f m
''',

  ///// new /////
  'new': '''
Flutter Create

Creates a new Flutter project.

Example:
  f new my_app
''',

  ///// version /////
  'version': '''
Version

Shows the FlutterUnicorn CLI version.

Example:
  f version
''',

  ///// web /////
  'web': '''
Flutter Build Web

Builds a web application bundle for deployment.

Example:
  f web
''',
};

void printUsage() {
  logger.printBanner();
  logger.info('''
\x1B[36m🦄Usage:\x1B[0m
  f <command> [args]
  f <command>-h / <command>--help  (for command-specific help)

\x1B[36m✔️Available Commands:\x1B[0m
  m             Interactive menu
  about         Show CLI author and links
  appbundle     Flutter build appbundle (.aab)
  fan           Flutter analyze
  fa <pkg>      Flutter pub add <pkg>
  fb apk  OR b  Flutter build apk
  fb win        Flutter build windows
  fc  OR c      Flutter clean
  fd            Flutter doctor
  fdv           Flutter devices
  fenv          Flutter env
  fit           Flutter integration_test
  fl            Flutter logs
  fl10n         Flutter gen-l10n
  fmt           Flutter format .
  fo  OR o      Open APK output folder
  fo win        Open Windows .exe output folder
  fp            Flutter pub get
  fpo           Flutter pub outdated
  fpu           Flutter pub upgrade
  fr            Flutter run
  frm <pkg>     Flutter pub remove <package>
  ft            Flutter test
  fup           Flutter upgrade
  fvs           Open project in VS Code
  fandroid      Open android folder in Android Studio
  info          Show system info
  new <name>    Flutter create <name>
  version       Show CLI version
  web           Flutter build web
  -h, --help    Show help menu
  

\x1B[36m🛠️ Git Commands:\x1B[0m
  g1            git add .
  g2            git commit -m "message"
  g3            git push

\x1B[36m💡 Examples:\x1B[0m
  f fc
  f fb apk
  f fa http
  f fo win
  f g1
  f g2 "Initial commit"
  f g3

\x1B[36m📬 Feedback:\x1B[0m
  💬 Want to suggest a new feature or command?
  📧 Email: usmangourworkid@gmail.com
  🕸️ GitHub: https://github.com/thechampusman/
  🔗 LinkedIn: https://linkedin.com/in/thechampusman/

\x1B[36m🔗 Source & Updates:\x1B[0m
  🔐 This CLI is private & not open-source.
  🚀 Download updates at: https://github.com/thechampusman/flutter_unicorn/releases
''');
}