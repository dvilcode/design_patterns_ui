import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../constants.dart';
import '../models/design_pattern_category.dart';

class DesignPatternCategoriesRepository {
  Future<List<DesignPatternCategory>> get() async {
    var menuJson = await rootBundle.loadString(designPatternsJsonPath);
    var designPatternCategoryJsonList = json.decode(menuJson) as List;
    var mainMenuSections = designPatternCategoryJsonList
        .map((categoryJson) => DesignPatternCategory.fromJson(categoryJson))
        .toList();

    return mainMenuSections;
  }
}