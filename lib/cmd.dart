import 'dart:developer';
import 'dart:io';

import 'cmd_help.dart';
import 'interactive_terminal.dart';
import 'logger.dart';
import 'batch_operations.dart';

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
case 'p': // f p = flutter pub get
  await _run([flutter, 'pub', 'get']);
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
    case 'p': // f p = flutter pub get
      await _run([flutter, 'pub', 'get']);
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

    case 'ios':
      await _run([flutter, 'build', 'ios']);
      break;

    case 'macos':
      await _run([flutter, 'build', 'macos']);
      break;

    case 'linux':
      await _run([flutter, 'build', 'linux']);
      break;

    case 'fws':
      await _run([flutter, 'run', '-d', 'web-server']);
      break;

    case 'fwc':
      await _run([flutter, 'run', '-d', 'chrome']);
      break;

    case 'fwe':
      await _run([flutter, 'run', '-d', 'edge']);
      break;

    case 'frl':
      await _run([flutter, 'run', '--release']);
      break;

    case 'frd':
      await _run([flutter, 'run', '--debug']);
      break;

    case 'frp':
      await _run([flutter, 'run', '--profile']);
      break;

    case 'fcl':
      await _run([flutter, 'clean']);
      await _run([flutter, 'pub', 'get']);
      break;

    case 'fbt':
      await _run([flutter, 'build', 'apk', '--target-platform', 'android-arm,android-arm64,android-x64']);
      break;

    case 'fbr':
      await _run([flutter, 'build', 'apk', '--release']);
      break;

    case 'fbd':
      await _run([flutter, 'build', 'apk', '--debug']);
      break;

    case 'fbp':
      await _run([flutter, 'build', 'apk', '--profile']);
      break;

    case 'fgr':
      await _run([flutter, 'pub', 'get']);
      await _run([flutter, 'run']);
      break;

    case 'fpc':
      await _run([flutter, 'pub', 'cache', 'repair']);
      break;

    case 'fpdry':
      await _run([flutter, 'pub', 'deps']);
      break;

    case 'fcache':
      await _run([flutter, 'precache']);
      break;

    case 'fconfig':
      await _run([flutter, 'config']);
      break;

    case 'fassemble':
      await _run([flutter, 'assemble', '--help']);
      break;

    case 'fattach':
      await _run([flutter, 'attach']);
      break;

    case 'fdrive':
      await _run([flutter, 'drive']);
      break;

    case 'finstall':
      await _run([flutter, 'install']);
      break;

    case 'fscreen':
      await _run([flutter, 'screenshot']);
      break;

    case 'fsymbol':
      await _run([flutter, 'symbolize']);
      break;

    case 'ftrack':
      await _run([flutter, 'downgrade']);
      break;

    case 'fch':
      await _run([flutter, 'channel']);
      break;

    case 'fchb':
      await _run([flutter, 'channel', 'beta']);
      break;

    case 'fchs':
      await _run([flutter, 'channel', 'stable']);
      break;

    case 'fchd':
      await _run([flutter, 'channel', 'dev']);
      break;

    case 'fchm':
      await _run([flutter, 'channel', 'master']);
      break;

    // Package management shortcuts
    case 'fadd':
      if (args.length < 2) {
        logger.warn('🚨 Use: fadd <package_name>');
        exit(64);
      }
      await _run([flutter, 'pub', 'add', args[1]]);
      break;

    case 'fadddev':
      if (args.length < 2) {
        logger.warn('🚨 Use: fadddev <package_name>');
        exit(64);
      }
      await _run([flutter, 'pub', 'add', 'dev:${args[1]}']);
      break;

    case 'fremove':
      if (args.length < 2) {
        logger.warn('🚨 Use: fremove <package_name>');
        exit(64);
      }
      await _run([flutter, 'pub', 'remove', args[1]]);
      break;

    // Development shortcuts
    case 'fhr':
      logger.info('🔥 Hot reload triggered');
      stdout.write('r');
      break;

    case 'fhrs':
      logger.info('🔥 Hot restart triggered');
      stdout.write('R');
      break;

    case 'fquit':
      logger.info('👋 Quitting app');
      stdout.write('q');
      break;

    // Project creation shortcuts
    case 'fnew':
      if (args.length < 2) {
        logger.warn('🚨 Project name is required. Try: fnew my_app');
        exit(64);
      }
      await _run([flutter, 'create', args[1]]);
      break;

    case 'fneworg':
      if (args.length < 3) {
        logger.warn('🚨 Use: fneworg <project_name> <org_name>');
        exit(64);
      }
      await _run([flutter, 'create', '--org', args[2], args[1]]);
      break;

    case 'fnewpkg':
      if (args.length < 2) {
        logger.warn('🚨 Package name is required. Try: fnewpkg my_package');
        exit(64);
      }
      await _run([flutter, 'create', '--template=package', args[1]]);
      break;

    case 'fnewplug':
      if (args.length < 2) {
        logger.warn('🚨 Plugin name is required. Try: fnewplug my_plugin');
        exit(64);
      }
      await _run([flutter, 'create', '--template=plugin', args[1]]);
      break;

    // Testing shortcuts
    case 'ftest':
      await _run([flutter, 'test']);
      break;

    case 'ftestw':
      await _run([flutter, 'test', '--watch']);
      break;

    case 'ftestcov':
      await _run([flutter, 'test', '--coverage']);
      break;

    case 'fintegration':
      await _run([flutter, 'test', 'integration_test']);
      break;

    // Code quality shortcuts
    case 'flint':
      await _run([flutter, 'analyze']);
      break;

    case 'fformat':
      await _run([flutter, 'format', '.']);
      break;

    case 'ffix':
      await _run(['dart', 'fix', '--apply']);
      break;

    // Build shortcuts with specific options
    case 'fbundle':
      await _run([flutter, 'build', 'appbundle', '--release']);
      break;

    case 'fwebr':
      await _run([flutter, 'build', 'web', '--release']);
      break;

    case 'fwebd':
      await _run([flutter, 'build', 'web', '--debug']);
      break;

    case 'fiosr':
      await _run([flutter, 'build', 'ios', '--release']);
      break;

    case 'fiosd':
      await _run([flutter, 'build', 'ios', '--debug']);
      break;

    case 'm':
      final command = await InteractiveTerminal.showMenu();
      if (command != null) {
        await handleCommand(command);
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

    // Batch Operations
   

  // Batch Operations
case 'batch':
case 'btc':
  if (args.length < 2) {
    BatchOperations.showAllBatches();
    exit(0);
  }
  final batchNumber = int.tryParse(args[1]);
  if (batchNumber == null) {
    logger.error('❌ Invalid batch number. Use "f batch-list" to see available batches.');
    exit(64);
  }
  await BatchOperations.runBatch(batchNumber);
  break;

case 'batch-list':
case 'btcl':
  BatchOperations.showAllBatches();
  break;

case 'batch-create':
case 'btcc':
  await BatchOperations.createCustomBatch();
  break;

case 'batch-delete':
case 'rmbtc':
  if (args.length < 2) {
    logger.warn('🚨 Please provide batch number to delete.\n💡 Example: f batch-delete 6');
    exit(64);
  }
  final batchNumber = int.tryParse(args[1]);
  if (batchNumber == null) {
    logger.error('❌ Invalid batch number.');
    exit(64);
  }
  await BatchOperations.deleteCustomBatch(batchNumber);
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



