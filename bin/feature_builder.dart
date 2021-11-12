import 'package:args/args.dart';
import 'package:feature_builder/feature_builder.dart' as feature_builder;

void main(List<String> arguments) {
  var argParser = ArgParser();
  argParser.addOption('name', abbr: 'n');
  var results = argParser.parse(arguments);

  if (results['name'] != null) {
    feature_builder.main([results['name']]);
  } else {
    print('dart pub global run feature_builder --name ModuleName');
  }
}
