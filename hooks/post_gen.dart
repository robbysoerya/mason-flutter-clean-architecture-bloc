import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  String flutterVersion = context.vars['flutter_version'];
  var progress =
      context.logger.progress('Installing... flutter version: $flutterVersion');
  await Process.run('fvm', ['install', '$flutterVersion'], runInShell: true);
  await Process.run('fvm', ['use', '$flutterVersion'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Executing... pubspec update');
  await Process.run(
      'fvm',
      [
        'flutter',
        'pub',
        'add',
        'dartz: ^0.10.1',
        'dio: ^4.0.6',
        'equatable: ^2.0.5',
        'flutter_bloc: ^8.1.1',
        'freezed: ^2.3.2',
        'freezed_annotation: ^2.2.0',
        'get_it: ^7.2.0',
        'go_router: ^6.0.2',
        'hive_flutter: ^1.1.0',
        'internet_connection_checker: ^1.0.0+1',
        'intl: ^0.17.0',
      ],
      runInShell: true);
  await Process.run(
      'fvm',
      [
        'flutter',
        'pub',
        'add',
        '--dev',
        'build_runner: ^2.3.3',
        'dart_code_metrics: ^5.5.1',
        'flutter_gen_runner: ^5.1.0+1',
        'flutter_lints: ^2.0.1',
        'json_serializable: ^6.6.0',
      ],
      runInShell: true);
  progress.complete();

  progress = context.logger.progress('Updating... pod repo');
  await Process.run('pod', ['repo', 'update'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Cleaning bricks...');
  await Process.run('mason', ['remove', 'hello'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Generate model');
  await Process.run(
      'fvm', ['flutter', 'pub', 'run', 'build_runner', 'build', '-d'],
      runInShell: true);
  progress.complete();

  progress = context.logger.progress('Updating... files structure');
  await Process.run('dart', ['format', '.'], runInShell: true);
  progress.complete();
}
