import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:soar/app/theme/app_colors.dart';
import 'package:soar/core/widgets/soar_scaffold.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SoarScaffold(
      icon: Icons.dashboard_rounded,
      title: 'Dashboard',
      subtitle: 'Your fitness command center',
      accentColor: AppColors.dashboard,
    );
  }
}
