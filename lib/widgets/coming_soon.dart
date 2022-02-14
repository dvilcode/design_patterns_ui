import 'package:flutter/material.dart';

import '../constants.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: paddingXL,
      ),
      child: Center(
        child: Text(
          'Coming Soon!',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.white70,
              ),
        ),
      ),
    );
  }
}
