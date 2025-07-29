import 'dart:io';
import 'batch_operations.dart';

class InteractiveTerminal {
  static Future<List<String>?> showMenu() async {
    stdout.writeln('''
🦄 Choose a command to run:

📱 Basic Commands:
1.  Clean Project                   (f c)
2.  Get Dependencies                (f fp or f p)
3.  Build APK                       (f b)
4.  Build Windows EXE               (f fb windows)
5.  Build Web                       (f web)
6.  Open APK Folder                 (f fo)
7.  Open Windows EXE Folder         (f fo win)
8.  Build App Bundle                (f appbundle)

⚡ Batch Operations:
9. Clean & Build                   (Clean → Get → Build APK)
10. Clean & Release                 (Clean → Get → Build Release APK)
11. Clean & Run                     (Clean → Get → Run App)
12. Show All Batches                (List all available batches)
13. Create Custom Batch             (Create your own batch)

🛠️ Development Tools:
14.  Run App                         (f fr)
15.  Run Tests                       (f ft)
16.  Flutter Doctor                  (f fd)
17.  Analyze Code                    (f fan)
18.  Format Code                     (f fmt)

📦 Package Management:
19. Upgrade Dependencies            (f fpu)
20. Add Package                     (f fa <package>)
21. Remove Package                  (f frm <package>)
22. Open VS Code                    (f fvs)
23. Flutter Upgrade                 (f fup)
24. Check Devices                   (f fdv)
25. Show Outdated Packages          (f fpo)

🔄 Git Commands:
26. Git Add All                     (f g1)
27. Git Commit                      (f g2 "message")
28. Git Push                        (f g3)


📊 Utilities:
29. Show Time Stats                 (View productivity metrics)
30. Exit              
''');
    stdout.write('Enter your choice (1-30): ');
    final input = stdin.readLineSync();
    
    switch (input) {
      case '1':
        return ['c'];
      case '2':
        return ['p'];
      case '3':
        return ['b'];
      case '4':
        return ['fb', 'windows'];
      case '5':
        return ['web'];
      case '6':
        return ['fo'];
      case '7':
        return ['fo', 'win'];
      case '8':
        return ['appbundle'];
      
      // Batch Operations
      case '9':
        await BatchOperations.runBatch(1); // Clean & Build
        return null;
      case '10':
        await BatchOperations.runBatch(2); // Clean & Release
        return null;
      case '11':
        await BatchOperations.runBatch(3); // Clean & Run
        return null;
      case '12':
        BatchOperations.showAllBatches();
        return null;
      case '13':
        await BatchOperations.createCustomBatch();
        return null;
      
      // Development Tools
      case '14':
        return ['fr'];
      case '15':
        return ['ft'];
      case '16':
        return ['fd'];
      case '17':
        return ['fan'];
      case '18':
        return ['fmt'];
      
      // Package Management
      case '19':
        return ['fpu'];
      case '20':
        stdout.write('Enter package name: ');
        final packageName = stdin.readLineSync();
        if (packageName?.isNotEmpty == true) {
          return ['fa', packageName!];
        }
        return null;
      case '21':
        stdout.write('Enter package name to remove: ');
        final packageName = stdin.readLineSync();
        if (packageName?.isNotEmpty == true) {
          return ['frm', packageName!];
        }
        return null;
      case '22':
        return ['fvs'];
      case '23':
        return ['fup'];
      case '24':
        return ['fdv'];
      case '25':
        return ['fpo'];
      
      // Git Commands
      case '26':
        return ['g1'];
      case '27':
        stdout.write('Enter commit message: ');
        final message = stdin.readLineSync();
        if (message?.isNotEmpty == true) {
          return ['g2', message!];
        }
        return null;
      case '28':
        return ['g3'];
      
      // Utilities
      case '29':
        // Time stats will be implemented later
        print('📊 Time tracking coming soon!');
        return null;
      case '30':
      default:
        stdout.writeln('👋 Goodbye!');
        return null;
    }
  }
}
