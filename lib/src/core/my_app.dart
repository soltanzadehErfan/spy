import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spy/src/modules/home/home_screen.dart';
import 'package:spy/src/modules/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'SPY',
      locale: const Locale('_fa', 'IR'),
      darkTheme: ThemeData.dark(useMaterial3: true),
      routerConfig: _router,
    );
  }

  GoRouter get _router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const SplashScreen();
            },
          ),
          GoRoute(
            path: '/home_screen',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
        ],
      );
}
