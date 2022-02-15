import 'example_state_base.dart';

class ExampleState extends ExampleStateBase {
  ExampleState._()
      : super(initialText: 'A new "ExampleState" instance has been created') {
    print(currentText);
  }

  factory ExampleState() => _instance;

  static final ExampleState _instance = ExampleState._();
}
