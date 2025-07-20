class Logger {
  void info(String message) {
    print('\x1B[34mℹ️  $message\x1B[0m'); // Blue
  }

  void success(String message) {
    print('\x1B[32m✅ $message\x1B[0m'); // Green
  }

  void warn(String message) {
    print('\x1B[33m⚠️  $message\x1B[0m'); // Yellow
  }

  void error(String message) {
    print('\x1B[31m❌ $message\x1B[0m'); // Red
  }

  void command(String cmd) {
    print('\x1B[36m▶️  Running: $cmd\x1B[0m'); // Cyan
  }

    void printBanner() {
  print('''
╔════════════════════════════════════════════════════════════════════════╗
║      🦄 FlutterUnicorn CLI (a magic dev tool) by Usman (The Champ)     ║
║     🔗 GitHub: https://github.com/thechampusman                        ║
║     💼 LinkedIn: https://www.linkedin.com/in/thechampusman/            ║
╚════════════════════════════════════════════════════════════════════════╝
''');
}
}

final logger = Logger();

