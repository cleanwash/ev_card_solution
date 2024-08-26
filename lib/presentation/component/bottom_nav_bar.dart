import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required bool atBottom,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return NavigationView(
      onChangePage: (changed) {},
      curve: Curves.fastEaseInToSlowEaseOut,
      durationAnimation: const Duration(milliseconds: 400),
      backgroundColor: Colors.black54,
      borderTopColor: Colors.black26,
      color: Colors.orange.withOpacity(.4),
      items: [
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.profile,
              color: Colors.orange.withOpacity(.5),
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.profile,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.chart,
              color: Colors.orange.withOpacity(.5),
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.chart,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.category,
              color: Colors.orange.withOpacity(.5),
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.category,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
        ItemNavigationView(
            childAfter: Icon(
              IconlyBold.home,
              color: Colors.orange.withOpacity(.5),
              size: 35,
            ),
            childBefore: Icon(
              IconlyBroken.home,
              color: theme.dialogBackgroundColor,
              size: 30,
            )),
      ],
    );
  }
}
