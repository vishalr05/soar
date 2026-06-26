import 'package:flutter/material.dart';

/// SOAR custom color palette built on Material 3 dark scheme.
///
/// Provides the app-wide [ColorScheme] and per-feature accent colors
/// used throughout the design system.
class AppColors {
  AppColors._();

  // ── Seed & Brand ──────────────────────────────────────────────────────
  static const Color seed = Color(0xFF6C5CE7);

  // ── Feature Accents ───────────────────────────────────────────────────
  static const Color dashboard = Color(0xFF74B9FF);
  static const Color workout = Color(0xFF00E676);
  static const Color avatar = Color(0xFFA29BFE);
  static const Color arena = Color(0xFFFF7675);
  static const Color profile = Color(0xFF00CEC9);

  // ── Surface helpers ───────────────────────────────────────────────────
  static const Color surfaceDim = Color(0xFF121212);
  static const Color surfaceBright = Color(0xFF1E1E2C);
  static const Color cardBackground = Color(0xFF1A1A2E);

  // ── Dark ColorScheme from seed ────────────────────────────────────────
  static ColorScheme get darkScheme => ColorScheme.fromSeed(
        seedColor: seed,
        brightness: Brightness.dark,
        surface: surfaceDim,
      );
}
