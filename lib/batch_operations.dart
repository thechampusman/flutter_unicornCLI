import 'dart:io';
import 'dart:convert';
import 'logger.dart';

class BatchCommand {
  final String name;
  final String description;
  final List<List<String>> commands;
  final bool isCustom;

  BatchCommand({
    required this.name,
    required this.description,
    required this.commands,
    this.isCustom = false,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'commands': commands,
    'isCustom': isCustom,
  };

  factory BatchCommand.fromJson(Map<String, dynamic> json) => BatchCommand(
    name: json['name'],
    description: json['description'],
    commands: (json['commands'] as List).map((cmd) => (cmd as List).cast<String>()).toList(),
    isCustom: json['isCustom'] ?? false,
  );
}

class BatchOperations {
  static final String _batchFilePath = 'flutterunicorn_batches.json';
  static List<BatchCommand> _predefinedBatches = [
    BatchCommand(
      name: 'Clean & Build',
      description: 'Clean project, get dependencies, and build APK',
      commands: [
        ['c'],           // flutter clean
        ['fp'],          // flutter pub get
        ['b'],           // flutter build apk
      ],
    ),
    BatchCommand(
      name: 'Clean & Release',
      description: 'Clean project, get dependencies, and build release APK',
      commands: [
        ['c'],                    // flutter clean
        ['fp'],                   // flutter pub get
        ['b', '--release'],       // flutter build apk --release
      ],
    ),
  BatchCommand(
  name: 'Clean & Run',
  description: 'Clean project, get dependencies, and run the app',
  commands: [
    ['c'],           // flutter clean
    ['fp'],          // flutter pub get
    ['fr'],          // flutter run
  ],
),
 
  
  ];

  static List<BatchCommand> _customBatches = [];

  static Future<void> loadCustomBatches() async {
    try {
      final file = File(_batchFilePath);
      if (await file.exists()) {
        final jsonString = await file.readAsString();
        final List<dynamic> jsonList = json.decode(jsonString);
        _customBatches = jsonList.map((json) => BatchCommand.fromJson(json)).toList();
      }
    } catch (e) {
      logger.warn('⚠️  Could not load custom batches: $e');
    }
  }

  static Future<void> saveCustomBatches() async {
    try {
      final file = File(_batchFilePath);
      final jsonString = json.encode(_customBatches.map((batch) => batch.toJson()).toList());
      await file.writeAsString(jsonString);
    } catch (e) {
      logger.error('❌ Could not save custom batches: $e');
    }
  }

static void showAllBatches() {
  print('\n🦄 Available Batch Operations:\n');
  
  print('📋 Predefined Batches:');
  for (int i = 0; i < _predefinedBatches.length; i++) {
    final batch = _predefinedBatches[i];
    print('${i + 1}. ${batch.name} - ${batch.description}');
  }
  
  if (_customBatches.isNotEmpty) {
    print('\n🎨 Custom Batches:');
    for (int i = 0; i < _customBatches.length; i++) {
      final batch = _customBatches[i];
      print('${_predefinedBatches.length + i + 1}. ${batch.name} - ${batch.description}');
    }
  }
  
  print('\n💡 Batch Commands:');
  print('   f batch <number>     - Run batch by number \n   f btc <number>       - Run batch (short)');
  print('   f batch-list         - Show all batches \n   f btl                - Show all batches (short)');
  print('   f batch-create       - Create custom batch \n   f btcc               - Create custom batch (short)');
  print('   f batch-delete <num> - Delete custom batch \n   f rmbtc <num>       - Delete custom batch (short)');
}

  static Future<void> runBatch(int batchNumber) async {
    await loadCustomBatches();
    
    final allBatches = [..._predefinedBatches, ..._customBatches];
    
    if (batchNumber < 1 || batchNumber > allBatches.length) {
      logger.error('❌ Invalid batch number. Use "f batch-list" to see available batches.');
      return;
    }
    
    final batch = allBatches[batchNumber - 1];
    logger.info('🚀 Starting batch: ${batch.name}');
    logger.info('📝 ${batch.description}');
    print('');
    
    for (int i = 0; i < batch.commands.length; i++) {
      final command = batch.commands[i];
      logger.info('📋 Step ${i + 1}/${batch.commands.length}: ${_getCommandDescription(command)}');
      
      // Handle special cases for git commit
      if (command[0] == 'g2' && command.length == 1) {
        stdout.write('Enter commit message: ');
        final message = stdin.readLineSync();
        if (message?.isNotEmpty == true) {
          command.add(message!);
        } else {
          logger.warn('⚠️  Skipping commit - no message provided');
          continue;
        }
      }
      
      // Simulate command execution (replace with actual command handler)
      await _executeCommand(command);
    }
    
    logger.success('✅ Batch "${batch.name}" completed successfully!');
  }

static Future<void> createCustomBatch() async {
  await loadCustomBatches();
  
  print('🎨 Create Custom Batch');
  
  stdout.write('Enter batch name: ');
  final name = stdin.readLineSync();
  if (name?.isEmpty == true) {
    logger.error('❌ Batch name cannot be empty.');
    return;
  }
  
  stdout.write('Enter batch description: ');
  final description = stdin.readLineSync();
  if (description?.isEmpty == true) {
    logger.error('❌ Batch description cannot be empty.');
    return;
  }
  
  print('\n📋 Add commands to your batch (enter "done" when finished):');
  print('');
  print('💡 You can use either:');
  print('   Short commands: c, fp, b, fr, ft, fd, fan, fmt, etc.');
  print('   Full commands: flutter clean, flutter pub get, flutter build apk, etc.');
  print('');
  print('📚 Available commands:');
  _showAvailableCommands();
  print('');
  
  final List<List<String>> commands = [];
  
  while (true) {
    stdout.write('Command ${commands.length + 1} (or "done"): ');
    final input = stdin.readLineSync();
    
    if (input?.toLowerCase() == 'done') {
      break;
    }
    
    if (input?.isEmpty == true) {
      continue;
    }
    
    final mappedCommand = _mapFullCommandToShort(input!.trim());
    if (mappedCommand != null) {
      commands.add(mappedCommand);
      print('  ✅ Added: ${_getCommandDescription(mappedCommand)}');
    } else {
      print('  ❌ Unknown command: $input');
      print('  💡 Use "flutter clean" or "c" for cleaning, etc.');
    }
  }
  
  if (commands.isEmpty) {
    logger.error('❌ Cannot create batch with no commands.');
    return;
  }
  
  final customBatch = BatchCommand(
    name: name!,
    description: description!,
    commands: commands,
    isCustom: true,
  );
  
  _customBatches.add(customBatch);
  await saveCustomBatches();
  
  logger.success('✅ Custom batch "${name}" created successfully!');
  print('💡 Run it with: f batch ${_predefinedBatches.length + _customBatches.length}');
  print('💡 Or use short: f btc ${_predefinedBatches.length + _customBatches.length}');
}

static void _showAvailableCommands() {
  final commands = [
    'flutter clean                → c',
    'flutter pub get             → fp',
    'flutter build apk           → b',
    'flutter build apk --release → b --release',
    'flutter build windows       → fb windows',
    'flutter build web           → web',
    'flutter run                 → fr',
    'flutter test                → ft',
    'flutter doctor              → fd',
    'flutter analyze             → fan',
    'flutter format              → fmt',
    'flutter pub upgrade         → fpu',
    'flutter pub add <package>   → fa <package>',
    'flutter pub remove <pkg>    → frm <package>',
    'flutter upgrade             → fup',
    'flutter devices             → fdv',
    'flutter pub outdated        → fpo',
    'open folder                 → fo',
    'open vs code                → fvs',
    'build app bundle            → appbundle',
    'git add .                   → g1',
    'git commit -m "message"     → g2 "message"',
    'git push                    → g3',
  ];
  
  for (final cmd in commands) {
    print('   $cmd');
  }
}

static List<String>? _mapFullCommandToShort(String input) {
  final trimmed = input.toLowerCase().trim();
  
  // Flutter commands
  if (trimmed == 'flutter clean') return ['c'];
  if (trimmed == 'flutter pub get') return ['fp'];
  if (trimmed == 'flutter build apk') return ['b'];
  if (trimmed == 'flutter build apk --release') return ['b', '--release'];
  if (trimmed == 'flutter build windows') return ['fb', 'windows'];
  if (trimmed == 'flutter build web') return ['web'];
  if (trimmed == 'flutter run') return ['fr'];
  if (trimmed == 'flutter test') return ['ft'];
  if (trimmed == 'flutter doctor') return ['fd'];
  if (trimmed == 'flutter analyze') return ['fan'];
  if (trimmed == 'flutter format') return ['fmt'];
  if (trimmed == 'flutter pub upgrade') return ['fpu'];
  if (trimmed == 'flutter upgrade') return ['fup'];
  if (trimmed == 'flutter devices') return ['fdv'];
  if (trimmed == 'flutter pub outdated') return ['fpo'];
  
  // Other commands
  if (trimmed == 'open folder') return ['fo'];
  if (trimmed == 'open vs code') return ['fvs'];
  if (trimmed == 'build app bundle') return ['appbundle'];
  
  // Git commands
  if (trimmed == 'git add .') return ['g1'];
  if (trimmed.startsWith('git commit -m ')) {
    final message = trimmed.substring('git commit -m '.length).replaceAll('"', '');
    return ['g2', message];
  }
  if (trimmed == 'git push') return ['g3'];
  
  // Package commands with parameters
  if (trimmed.startsWith('flutter pub add ')) {
    final package = trimmed.substring('flutter pub add '.length);
    return ['fa', package];
  }
  if (trimmed.startsWith('flutter pub remove ')) {
    final package = trimmed.substring('flutter pub remove '.length);
    return ['frm', package];
  }
  
  // Check if it's already a short command
  final parts = input.split(' ');
  if (_isValidShortCommand(parts[0])) {
    return parts;
  }
  
  return null;
}

static bool _isValidShortCommand(String cmd) {
  const validCommands = [
    'c', 'fp', 'b', 'fb', 'web', 'fr', 'ft', 'fd', 'fan', 'fmt',
    'fpu', 'fa', 'frm', 'fvs', 'fup', 'fdv', 'fpo', 'g1', 'g2', 'g3',
    'fo', 'appbundle'
  ];
  return validCommands.contains(cmd);
}



  static Future<void> deleteCustomBatch(int batchNumber) async {
    await loadCustomBatches();
    
    final customBatchIndex = batchNumber - _predefinedBatches.length - 1;
    
    if (customBatchIndex < 0 || customBatchIndex >= _customBatches.length) {
      logger.error('❌ Invalid custom batch number. Use "f batch-list" to see custom batches.');
      return;
    }
    
    final batch = _customBatches[customBatchIndex];
    _customBatches.removeAt(customBatchIndex);
    await saveCustomBatches();
    
    logger.success('✅ Custom batch "${batch.name}" deleted successfully!');
  }

  static String _getCommandDescription(List<String> command) {
    switch (command[0]) {
      case 'c': return 'Clean project';
      case 'fp': return 'Get dependencies';
      case 'b': 
        if (command.contains('--release')) {
          return 'Build release APK';
        }
        return 'Build APK';
      case 'fb': return 'Build ${command.length > 1 ? command[1] : 'app'}';
      case 'web': return 'Build web';
      case 'fr': return 'Run app';
      case 'ft': return 'Run tests';
      case 'fd': return 'Flutter doctor';
      case 'fan': return 'Analyze code';
      case 'fmt': return 'Format code';
      case 'fpu': return 'Upgrade dependencies';
      case 'fa': return 'Add package';
      case 'frm': return 'Remove package';
      case 'fvs': return 'Open VS Code';
      case 'fup': return 'Flutter upgrade';
      case 'fdv': return 'Check devices';
      case 'fpo': return 'Show outdated packages';
      case 'g1': return 'Git add all';
      case 'g2': return 'Git commit';
      case 'g3': return 'Git push';
      case 'fo': return 'Open folder';
      case 'appbundle': return 'Build app bundle';
      default: return 'Execute ${command.join(' ')}';
    }
  }

  static Future<void> _executeCommand(List<String> command) async {
    try {
      // Execute the command using the FlutterUnicorn CLI
      final process = await Process.start('f', command);
      await process.exitCode;
      print('   ✅ ${_getCommandDescription(command)} completed');
    } catch (e) {
      print('   ❌ ${_getCommandDescription(command)} failed: $e');
    }
  }




  
}
