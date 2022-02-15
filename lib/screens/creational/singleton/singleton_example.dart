import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../domain/creational/singleton/example_state.dart';
import '../../../../domain/creational/singleton/example_state_base.dart';
import '../../../../domain/creational/singleton/example_state_by_definition.dart';
import '../../../../domain/creational/singleton/example_state_without_sinngleton.dart';
import '../../../../widgets/platform_button.dart';
import 'singleton_example_card.dart';

class SingletonExample extends StatefulWidget {
  const SingletonExample({Key? key}) : super(key: key);
  @override
  _SingletonExampleState createState() => _SingletonExampleState();
}

class _SingletonExampleState extends State<SingletonExample> {
  final List<ExampleStateBase> stateList = [
    ExampleState(),
    ExampleStateByDefinition.instance(),
    ExampleStateWithoutSingleton(),
  ];

  void _setTextValues([String text = 'singleton']) {
    for (final state in stateList) {
      state.updateText = text;
    }
    setState(() {});
  }

  void _reset() {
    for (final state in stateList) {
      state.reset();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: paddingL),
        child: Column(
          children: [
            for (final state in stateList)
              Padding(
                padding: const EdgeInsets.only(bottom: paddingL),
                child: SingletonExampleCard(
                  text: state.currentText,
                ),
              ),
            const SizedBox(height: spaceL),
            PlatformButton(
              child: const Text(
                'Change states\" text to "Singleton"',
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: _setTextValues,
            ),
            PlatformButton(
              child: const Text(
                'Reset',
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: _reset,
            ),
            const SizedBox(height: spaceXL),
            const Text(
              'Note: change states\' text and navigate the application (e.g. go to the tab "description" or main menu, then go back to this example) to see how the Singleton state behaves!',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
