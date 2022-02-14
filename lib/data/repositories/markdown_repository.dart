import 'package:flutter/services.dart' show rootBundle;

import 'package:design_patterns_ui/constants.dart';

class MarkdownRepository {
  Future<String> get(String designPatternId) async {
    var path = '$markdownPath$designPatternId.md';
    var markdownString = await rootBundle.loadString(path);

    return markdownString;
  }
}
