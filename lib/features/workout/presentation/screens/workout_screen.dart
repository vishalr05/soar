import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:soar/app/theme/app_colors.dart';
import 'package:soar/core/widgets/soar_scaffold.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({super.key});

  static const String routeName = '/workout';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SoarScaffold(
      icon: Icons.fitness_center_rounded,
      title: 'Workout',
      subtitle: 'Train to earn XP and level up',
      accentColor: AppColors.workout,
    );
  }
}
