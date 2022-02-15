import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  const PlatformButton({
    required this.child,
    required this.color,
    required this.textColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    switch (Platform.isAndroid) {
      case true:
        return MaterialButton(
          child: child,
          color: color,
          textColor: textColor,
          onPressed: onPressed,
        );
      default:
        return CupertinoButton.filled(
          child: child,
          onPressed: onPressed,
        );
    }
  }
}
