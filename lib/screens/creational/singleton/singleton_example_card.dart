import 'package:flutter/material.dart';

import '../../../../constants.dart';

class SingletonExampleCard extends StatelessWidget {
  const SingletonExampleCard(
    {required this.text, Key? key}
  ) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 64.0,
        padding: const EdgeInsets.all(paddingL),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}