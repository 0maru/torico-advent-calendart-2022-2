import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser();
  parser.addFlag(
    'help',
    abbr: 'h',
    help: 'Show usage information',
  );
  parser.addFlag(
    'version',
    abbr: 'v',
    help: 'Show version number',
  );
  parser.addOption(
    'target',
    abbr: 't',
  );
  final result = parser.parse(arguments);
  print('help: ${result['help']}');
  print('version: ${result['version']}');
  print('target: ${result['target']}');
}
