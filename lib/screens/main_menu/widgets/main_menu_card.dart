import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../data/models/design_pattern_category.dart';
import '../../../widgets/selection_card.dart';

class MainMenuCard extends StatelessWidget {
  final DesignPatternCategory category;

  const MainMenuCard({
    required this.category,
  }) : assert(category != null);

  @override
  Widget build(BuildContext context) {
    var contentHeader = Text(
      category.title,
      style: Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: 26.0,
            color: Colors.white,
          ),
      overflow: TextOverflow.ellipsis,
    );
    var contentText = Text(
      category.patterns.length == 1
          ? '${category.patterns.length} pattern'
          : '${category.patterns.length} patterns',
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: Colors.white,
          ),
    );
    var onSelectionCardTap = () => Navigator.pushNamed(
          context,
          categoryRoute,
          arguments: category,
        );

    return SelectionCard(
      backgroundColor: Color(category.color),
      backgroundHeroTag: "${category.id}_background",
      contentHeader: contentHeader,
      contentText: contentText,
      onTap: onSelectionCardTap,
    );
  }
}
