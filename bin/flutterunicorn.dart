import 'dart:io';
import '../lib/cmd.dart';
import '../lib/logger.dart';

void main(List<String> args) {
  if (args.isEmpty) {
  logger.printBanner();
    logger.info('Welcome to FlutterUnicorn CLI!');
    logger.info('Use "f -h" to see available commands.');

    return;
  }
  
  handleCommand(args);
}