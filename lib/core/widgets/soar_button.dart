import 'package:flutter/material.dart';

/// SOAR button variants — primary (filled) and secondary (outlined).
///
/// Both use full-width sizing from the theme and expose a consistent API.
enum SoarButtonVariant { primary, secondary }

class SoarButton extends StatelessWidget {
  const SoarButton({
    required this.label,
    required this.onPressed,
    this.variant = SoarButtonVariant.primary,
    this.icon,
    this.isLoading = false,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final SoarButtonVariant variant;
  final IconData? icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(label);

    switch (variant) {
      case SoarButtonVariant.primary:
        if (icon != null && !isLoading) {
          return FilledButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: child,
          );
        }
        return FilledButton(
          onPressed: isLoading ? null : onPressed,
          child: child,
        );

      case SoarButtonVariant.secondary:
        if (icon != null && !isLoading) {
          return OutlinedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: child,
          );
        }
        return OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          child: child,
        );
    }
  }
}
