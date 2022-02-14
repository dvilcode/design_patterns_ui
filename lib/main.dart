import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'router.dart' as app;
import 'themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Design Patterns App',
      theme: lightTheme(context),
      onGenerateRoute: app.Router.generateRoute,
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() => runApp(App());
