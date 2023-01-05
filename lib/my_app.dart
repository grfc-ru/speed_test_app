import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_router.dart';
import 'core/entities/measuring.dart';
import 'core/entities/settings.dart';
import 'pages/start/children/settings/domain/bloc/settings.dart';
import 'pages/start/domain/bloc/measuring.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Settings>(
          create: (context) => Settings(),
        ),
        RepositoryProvider<Measuring>(
          create: (context) => Measuring(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MeasuringBloc(
              settings: context.read<Settings>(),
              measuring: context.read<Measuring>(),
            ),
          ),
          BlocProvider(
            lazy: false,
            create: (context) =>
                SettingsBloc(settings: context.read<Settings>())
                  ..add(const SettingsEvent.started()),
          ),
        ],
        child: AppRouter(),
      ),
    );
  }
}
