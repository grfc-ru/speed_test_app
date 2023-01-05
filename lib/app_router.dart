import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import 'generated/l10n.dart';
import 'pages/start/children/info/presentation/info_page.dart';
import 'pages/start/children/settings/presentation/settings_page.dart';
import 'pages/start/presentation/start_page.dart';
import 'theme/app_theme.dart';

class AppRouter extends StatelessWidget {
  final _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'start',
        path: '/',
        builder: (context, state) => const StartPage(),
        routes: [
          GoRoute(
            name: 'settings',
            path: 'settings',
            builder: (context, state) => const SettingsPage(),
          ),
          GoRoute(
            name: 'info',
            path: 'info',
            builder: (context, state) => const InfoPage(),
          ),
        ],
      ),
    ],
  );

  AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'GSMSpeed',
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        theme: AppTheme.lightTheme,
      );
}
