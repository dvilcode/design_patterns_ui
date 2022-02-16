import 'package:flutter/material.dart';

import 'constants.dart';
import 'data/models/design_pattern.dart';
import 'data/models/design_pattern_category.dart';
import 'screens/category/category.dart';
import 'screens/creational/singleton/singleton_example.dart';
import 'screens/design_pattern_details/design_pattern_details.dart';
import 'screens/main_menu/main_menu.dart';
import 'screens/structural/adapter/adapter_example.dart';
import 'widgets/introduction/introduction.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => MainMenu(),
        );
      case categoryRoute:
        var category = settings.arguments as DesignPatternCategory;
        return MaterialPageRoute(
          builder: (_) => Category(
            category: category,
          ),
        );
      case _DesignPatternRoutes.introductionRoute:
        var designPattern = settings.arguments as DesignPattern;
        return MaterialPageRoute(
          builder: (_) => DesignPatternDetails(
            designPattern: designPattern,
            example: Introduction(),
          ),
        );
      case _DesignPatternRoutes.singletonRoute:
        var designPattern = settings.arguments as DesignPattern;
        return MaterialPageRoute(
          builder: (_) => DesignPatternDetails(
            designPattern: designPattern,
            example: const SingletonExample(),
          ),
        );
      case _DesignPatternRoutes.adapterRoute:
        var designPattern = settings.arguments as DesignPattern;
        return MaterialPageRoute(
          builder: (_) => DesignPatternDetails(
            designPattern: designPattern,
            example: const AdapterExample(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => MainMenu(),
        );
    }
  }
}

class _DesignPatternRoutes {
  static const String introductionRoute = '/introduction';
  static const String singletonRoute = '/singleton';
  static const String adapterRoute = '/adapter';
}
