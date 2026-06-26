import 'package:flutter/material.dart';

/// Reusable SOAR-branded [AppBar].
///
/// Provides consistent styling with an optional leading icon and actions.
class SoarAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SoarAppBar({
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle,
    super.key,
  });

  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: leading,
      actions: actions,
      centerTitle: centerTitle,
    );
  }
}
