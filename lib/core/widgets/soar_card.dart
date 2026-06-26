import 'package:flutter/material.dart';

import 'package:soar/app/theme/app_spacing.dart';

/// Themed card with consistent padding and border radius.
///
/// Wraps Material 3 [Card] with the SOAR design system defaults.
class SoarCard extends StatelessWidget {
  const SoarCard({
    required this.child,
    this.padding,
    this.margin,
    this.onTap,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(AppSpacing.md),
          child: child,
        ),
      ),
    );
  }
}
