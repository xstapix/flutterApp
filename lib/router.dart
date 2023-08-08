import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './page/home_page.dart';
import 'page/login_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      }
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      }
    )
  ]
);