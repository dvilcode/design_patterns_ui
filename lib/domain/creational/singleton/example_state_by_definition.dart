import 'example_state_base.dart';

class ExampleStateByDefinition extends ExampleStateBase {
  ExampleStateByDefinition._()
      : super(
            initialText:
                'A new "ExampleStateByDefinition" instance has been created') {
    print(currentText);
  }

  factory ExampleStateByDefinition.instance() =>
      _instance ??= ExampleStateByDefinition._();

  static ExampleStateByDefinition? _instance;
}
