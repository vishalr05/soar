import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:soar/app/theme/app_colors.dart';
import 'package:soar/core/widgets/soar_scaffold.dart';

class ArenaScreen extends ConsumerWidget {
  const ArenaScreen({super.key});

  static const String routeName = '/arena';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SoarScaffold(
      icon: Icons.local_fire_department_rounded,
      title: 'Arena',
      subtitle: 'Compete and climb the ranks',
      accentColor: AppColors.arena,
    );
  }
}
