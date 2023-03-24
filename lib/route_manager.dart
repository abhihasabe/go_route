import 'package:go_routers/detail_screen.dart';
import 'package:go_routers/error_screen.dart';
import 'package:go_routers/home_screen.dart';
import 'package:go_routers/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_routers/screen_one_screen.dart';
import 'package:go_routers/screen_two_screen.dart';

class Routes {
  static GoRouter router = GoRouter(
    errorBuilder: (context, state) => const ErrorScreen(),
    routes: <RouteBase>[
      GoRoute(
        name: RouteNames.dashboard,
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        name: RouteNames.detail,
        path: '/details/:name',
        builder: (BuildContext context, GoRouterState state) {
          return DetailsScreen(param: state.params['name']);
        },
      ),
      GoRoute(
        name: RouteNames.screenOne,
        path: '/screenOne',
        builder: (BuildContext context, GoRouterState state) {
          return ScreenOneScreen();
        },
      ),
      GoRoute(
        name: RouteNames.screenTwo,
        path: '/screenTwo',
        builder: (BuildContext context, GoRouterState state) {
          return ScreenTwoScreen(param: state.queryParams['name']);
        },
      ),
    ],
  );
}
