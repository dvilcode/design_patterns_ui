import 'example_state_base.dart';

class ExampleStateWithoutSingleton extends ExampleStateBase {
  ExampleStateWithoutSingleton()
      : super(
            initialText:
                'A new "ExampleStateWithoutSingleton" instance has been created') {
    print(currentText);
  }
}
