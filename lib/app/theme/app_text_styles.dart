import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// SOAR text style definitions using Google Fonts.
///
/// - **Outfit** for display / headline / title styles.
/// - **Inter** for body / label styles.
class AppTextStyles {
  AppTextStyles._();

  static TextTheme get textTheme {
    final outfitTheme = GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme);
    final interTheme = GoogleFonts.interTextTheme(ThemeData.dark().textTheme);

    return outfitTheme.copyWith(
      // Body & label tiers come from Inter
      bodyLarge: interTheme.bodyLarge,
      bodyMedium: interTheme.bodyMedium,
      bodySmall: interTheme.bodySmall,
      labelLarge: interTheme.labelLarge,
      labelMedium: interTheme.labelMedium,
      labelSmall: interTheme.labelSmall,
    );
  }
}
