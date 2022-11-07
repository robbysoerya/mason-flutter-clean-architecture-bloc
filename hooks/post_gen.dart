import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {

  var progress = context.logger.progress('Installing... flutter version: {{flutter_version}}');
  await Process.run('fvm', ['install', '{{flutter_version}}'], runInShell: true);
  await Process.run('fvm', ['use', '{{flutter_version}}'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Executing... pubspec update');
  await Process.run(
      'fvm',
      [
        'flutter',
        'pub',
        'add',
        'dartz',
        'equatable',
        'flutter_bloc',
        'get_it',
        'json_annotation',
        'shared_preferences',
        'dio',
      ],
      runInShell: true);
  await Process.run(
      'fvm',
      [
        'flutter',
        'pub',
        'add',
        '--dev',
        'build_runner',
        'dart_code_metrics',
        'flutter_gen_runner',
        'flutter_lints',
        'json_serializable',
      ],
      runInShell: true);
  progress.complete();

  progress = context.logger.progress('Updating... pod repo');
  await Process.run('pod', ['repo', 'update'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Cleaning bricks...');
  await Process.run('mason', ['remove', 'hello'], runInShell: true);
  progress.complete();

  progress = context.logger.progress('Updating... files structure');
  await Process.run('rm', ['lib/main.dart'], runInShell: true);
  await Process.run('rm', ['.idea/runConfigurations/main_dart.xml'], runInShell: true);
  progress.complete();
}
