import 'dart:developer';
import 'dart:io';

import 'cmd_help.dart';
import 'logger.dart';

String? _cachedFlutterPath;



Future<String?> getFlutterPath() async {
  if (_cachedFlutterPath != null) return _cachedFlutterPath;

  // Use platform-specific command to find Flutter
  List<String> probe;
  if (Platform.isWindows) {
    probe = ['where', 'flutter'];
  } else if (Platform.isMacOS || Platform.isLinux) {
    probe = ['which', 'flutter'];
  } else {
    logger.error('❌ Unsupported platform: ${Platform.operatingSystem}');
    exit(1);
  }
  try {
    final result = await Process.run(probe.first, probe.sublist(1));
    if (result.exitCode == 0) {
      final path = result.stdout
          .toString()
          .split(RegExp(r'\r?\n'))
          .first
          .trim();
      _cachedFlutterPath = path;
      return path;
    }
  } catch (_) {}
  return null;
}

Future<void> handleCommand(List<String> args) async {
  if (args.isEmpty) {
    logger.warn('🚨 No command provided. Try: fc, fb apk, fb win, fa <pkg>, fo, fo win');
    exit(64);
  }
  if (args[0] == 'flutter' || args[0] == 'git') {
    logger.info('💡 Tip: You can also use shorthand. Example:');
    logger.info('   f fb apk   // instead of: flutter build apk');
  }

  final flutter = await getFlutterPath();
  if (flutter == null) {
    logger.error('❌ Flutter not found in system PATH.');
    exit(1);
  }

  final cmd = args[0];

  if (cmd == '-h' || cmd == '--help') {
  printUsage();
  exit(0);
}
    final helpSuffix = RegExp(r'-h$|--help$');
  if (helpSuffix.hasMatch(cmd)) {
    final baseCmd = cmd.replaceAll(helpSuffix, '');
    final desc = commandHelp[baseCmd] ?? 'No detailed help available for this command.';
    logger.info('\n$desc');
    exit(0);
  }


  switch (cmd) {
    case 'fc':
      await _run([flutter, 'clean']);
      break;

        case 'c': // f c = flutter clean
      await _run([flutter, 'clean']);
      break;

    case 'b': // f b = flutter build apk
      await _run([flutter, 'build', 'apk']);
      break;

    case 'o': // f o = open APK output folder
      final folder = 'build${Platform.pathSeparator}app${Platform.pathSeparator}outputs${Platform.pathSeparator}flutter-apk';
      final opener = Platform.isWindows
          ? 'explorer'
          : Platform.isMacOS
              ? 'open'
              : 'xdg-open';
      await _run([opener, folder]);
      break;

    case 'fb':
      if (args.length < 2) {
        logger.warn('🚨 Use: fb apk | fb win');
        exit(64);
      }
      await _run([flutter, 'build', args[1]]);
      break;

    case 'fa':
      if (args.length < 2) {
        logger.warn('🚨 Use: fa <package_name>');
        exit(64);
      }
      await _run([flutter, 'pub', 'add', args[1]]);
      break;

    case 'fo':
      final isWin = args.length > 1 && args[1] == 'win';
      final folder = isWin
          ? 'build${Platform.pathSeparator}windows${Platform.pathSeparator}runner${Platform.pathSeparator}Release'
          : 'build${Platform.pathSeparator}app${Platform.pathSeparator}outputs${Platform.pathSeparator}flutter-apk';

      final opener = Platform.isWindows
          ? 'explorer'
          : Platform.isMacOS
              ? 'open'
              : 'xdg-open';

      await _run([opener, folder]);
      break;

    case 'fp':
    await _run([flutter, 'pub', 'get']);

      break;
        case 'fr':
      await _run([flutter, 'run']);
      break;

    case 'ft':
      await _run([flutter, 'test']);
      break;

    case 'fd':
      await _run([flutter, 'doctor']);
      break;

    case 'fup':
      await _run([flutter, 'upgrade']);
      break;

    case 'fl':
      await _run([flutter, 'logs']);
      break;

    case 'f':
      if (args.length < 2) {
        logger.warn('🚨 Use: f <command> [args]');
        exit(64);
      }
      final subCommand = args.sublist(1);
      await handleCommand(subCommand);
      break;
    
    case 'about':
  print('''
🦄 FlutterUnicorn CLI
Author: Usman Gour (The Champ)
🔗 GitHub: https://github.com/thechampusman
💼 LinkedIn: https://linkedin.com/in/thechampusman/
Version: 1.0.0
''');
  break;

  case 'version':
      logger.info('FlutterUnicorn CLI v1.0.0');
      break;
  case 'new':
  if (args.length < 2) {
    logger.warn('🚨 Project name is required. Try: f new my_app');
    exit(64);
  }
  await _run([flutter, 'create', args[1]]);
  break;

  case 'info':
  logger.info('''
🔍 System Info:
  OS     : ${Platform.operatingSystem}
  Dart   : ${Platform.version}
  Shell  : ${Platform.environment['SHELL'] ?? Platform.environment['ComSpec']}
  ''');
  break;

  case 'frm':
      if (args.length < 2) {
        logger.warn('🚨 Use: frm <package_name>');
        exit(64);
      }
      await _run([flutter, 'pub', 'remove', args[1]]);
  break;
    
    case 'fdv':
      await _run([flutter, 'devices']);
      break;

    case 'fan':
      await _run([flutter, 'analyze']);
      break;

    case 'fmt':
      await _run([flutter, 'format', '.']);
      break;
    case 'fpo':
      await _run([flutter, 'pub', 'outdated']); 
      break;
    
case 'fvs':
  await _run(['code', '.']);
  break;

case 'fandroid':
  await _run(['studio', 'android']);
  break;

    case 'fl10n':
      await _run([flutter, 'gen-l10n']);
      break;  
    case 'fit':
      await _run([flutter, 'test', 'integration_test']);  
      break;

    case 'fpu':
      await _run([flutter, 'pub', 'upgrade']);
      break;

    case 'fenv':
      await _run([flutter, 'env']); 
      break;
    
     case 'appbundle':
      await _run([flutter, 'build', 'appbundle']);
      break;

    case 'web':
      await _run([flutter, 'build', 'web']);
      break;

    case 'm':
  stdout.writeln('''
🦄 Choose a command to run:
1. Clean                            (fc OR c)
2. Build APK                        (fb apk OR b)
3. Build Windows                    (fb win)
4. Open APK Output Folder           (fo OR o)  
5. Flutter Pub Get                  (fp) 
6. Open Windows EXE Output Folder   (fo win)
7. Exit              
''');
  stdout.write('Enter your choice (1-7): ');
  final input = stdin.readLineSync();
  switch (input) {
    case '1':
      await handleCommand(['fc']);
      break;
    case '2':
      await handleCommand(['fb', 'apk']);
      break;
    case '3':
      await handleCommand(['fb', 'win']);
      break;
    case '4':
      await handleCommand(['fo']);
      break;
    case '5':
      await handleCommand(['fp']);
      break;
    case '6':
      await handleCommand(['fo', 'win']);
      break;
    default:
      stdout.writeln('Goodbye!');
      exit(0);
  }
  break;
 case 'g1':
  await _run(['git', 'add', '.']);
  break;

case 'g2':
  if (args.length < 2) {
    logger.warn('🚨 Please provide a commit message.\n💡 Example: f g2 "your commit message"');
    exit(64);
  }
  final message = args.sublist(1).join(' ');
  await _run(['git', 'commit', '-m', message]);
  break;

case 'g3':
  await _run(['git', 'push']);
  break;


    default:
      logger.error('❌ Unknown command: $cmd');
      printUsage();
      exit(64);
  }
}

Future<void> _run(List<String> command) async {
  logger.command(' ${command.join(' ')}');

  final process = await Process.start(
    command[0],
    command.sublist(1),
    runInShell: true,
    mode: ProcessStartMode.inheritStdio,
  );
  final code = await process.exitCode;

  // ✅ Ignore explorer's weird exit code
  if (code != 0 && command[0].toLowerCase() != 'explorer') {
    logger.warn('⚠️ Command failed with exit code $code');
  }
}



