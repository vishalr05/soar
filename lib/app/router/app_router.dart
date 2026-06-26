import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:soar/core/widgets/app_shell.dart';
import 'package:soar/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:soar/features/workout/presentation/screens/workout_screen.dart';
import 'package:soar/features/avatar/presentation/screens/avatar_screen.dart';
import 'package:soar/features/arena/presentation/screens/arena_screen.dart';
import 'package:soar/features/profile/presentation/screens/profile_screen.dart';

import 'route_names.dart';

/// Global navigator keys for each bottom-nav branch.
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _dashboardNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'dashboard');
final _workoutNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'workout');
final _avatarNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'avatar');
final _arenaNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'arena');
final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

/// Riverpod provider that exposes the [GoRouter] instance.
///
/// Using a provider allows the router to be easily accessible throughout
/// the widget tree and enables future integration with auth state for
/// redirect logic.
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteNames.dashboardPath,
    routes: [
      // ── Main App Shell (bottom navigation) ──────────────────────────
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppShell(navigationShell: navigationShell);
        },
        branches: [
          // Dashboard
          StatefulShellBranch(
            navigatorKey: _dashboardNavigatorKey,
            routes: [
              GoRoute(
                name: RouteNames.dashboard,
                path: RouteNames.dashboardPath,
                builder: (context, state) => const DashboardScreen(),
              ),
            ],
          ),

          // Workout
          StatefulShellBranch(
            navigatorKey: _workoutNavigatorKey,
            routes: [
              GoRoute(
                name: RouteNames.workout,
                path: RouteNames.workoutPath,
                builder: (context, state) => const WorkoutScreen(),
              ),
            ],
          ),

          // Avatar
          StatefulShellBranch(
            navigatorKey: _avatarNavigatorKey,
            routes: [
              GoRoute(
                name: RouteNames.avatar,
                path: RouteNames.avatarPath,
                builder: (context, state) => const AvatarScreen(),
              ),
            ],
          ),

          // Arena
          StatefulShellBranch(
            navigatorKey: _arenaNavigatorKey,
            routes: [
              GoRoute(
                name: RouteNames.arena,
                path: RouteNames.arenaPath,
                builder: (context, state) => const ArenaScreen(),
              ),
            ],
          ),

          // Profile
          StatefulShellBranch(
            navigatorKey: _profileNavigatorKey,
            routes: [
              GoRoute(
                name: RouteNames.profile,
                path: RouteNames.profilePath,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
