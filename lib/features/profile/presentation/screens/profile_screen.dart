import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:soar/app/theme/app_colors.dart';
import 'package:soar/core/widgets/soar_scaffold.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SoarScaffold(
      icon: Icons.account_circle_rounded,
      title: 'Profile',
      subtitle: 'Track your progress and stats',
      accentColor: AppColors.profile,
    );
  }
}
