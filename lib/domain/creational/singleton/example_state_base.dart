import 'package:meta/meta.dart';

abstract class ExampleStateBase {
  ExampleStateBase({required String initialText})
      : _initialText = initialText,
        _stateText = initialText;

  final String _initialText;

  @protected
  late String _stateText;

  String get currentText => _stateText;
  set updateText(String text) => _stateText = text;

  void reset() => _stateText = _initialText;
}
