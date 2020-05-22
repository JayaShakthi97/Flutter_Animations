import 'package:flutter/material.dart';

import 'colors.dart';

class Menu extends StatelessWidget {
  final List<String> items = ['Home', 'Screen 1', 'Screen 2', 'Settings'];

  Widget _buildCategory(BuildContext context, String item) {
    final categoryString = item.toUpperCase();
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      //onTap: () => onCategoryTap(category),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          categoryString,
          style: theme.textTheme.bodyText1
              .copyWith(color: kShrineBrown900.withAlpha(153)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: kShrinePink100,
        child: ListView(
            children:
                items.map((item) => _buildCategory(context, item)).toList()),
      ),
    );
  }
}
