import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:soar/app/theme/app_colors.dart';
import 'package:soar/core/widgets/soar_scaffold.dart';

class AvatarScreen extends ConsumerWidget {
  const AvatarScreen({super.key});

  static const String routeName = '/avatar';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SoarScaffold(
      icon: Icons.person_rounded,
      title: 'Avatar',
      subtitle: 'Customize your character',
      accentColor: AppColors.avatar,
    );
  }
}
