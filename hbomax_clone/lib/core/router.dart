import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../features/landing/landing_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LandingScreen();
      },
    ),
  ],
);
