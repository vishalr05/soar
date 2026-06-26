import 'package:flutter/material.dart';

import 'package:soar/app/theme/app_spacing.dart';

/// Visually rich "coming soon" placeholder screen.
///
/// Displays a large icon, feature title, and subtitle centered on screen
/// with a subtle glow effect behind the icon.
class SoarScaffold extends StatelessWidget {
  const SoarScaffold({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.accentColor,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color? accentColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = accentColor ?? theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Glowing icon container
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withAlpha(25),
                  boxShadow: [
                    BoxShadow(
                      color: color.withAlpha(40),
                      blurRadius: 40,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Icon(icon, size: 56, color: color),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Title
              Text(
                title,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),

              // Subtitle
              Text(
                subtitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.xl),

              // Coming soon chip
              Chip(
                avatar: Icon(Icons.rocket_launch_rounded, size: 16, color: color),
                label: Text(
                  'Coming Soon',
                  style: theme.textTheme.labelMedium?.copyWith(color: color),
                ),
                backgroundColor: color.withAlpha(20),
                side: BorderSide(color: color.withAlpha(60)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
