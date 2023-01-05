import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stream_bloc/stream_bloc.dart';

import 'app_bloc_observer.dart';
import 'my_app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runZonedGuarded(
    () async {
      Bloc.observer = AppBlocObserver();
      if (const String.fromEnvironment('SENTRY') != "") {
        await SentryFlutter.init(
          (options) {
            options.dsn = const String.fromEnvironment('SENTRY');
            options.tracesSampleRate = 1.0;
          },
          appRunner: () => runApp(const MyApp()),
        );
      } else {
        runApp(const MyApp());
      }
    },
    (exception, stackTrace) async {
      var logger = Logger();
      logger.e(exception.toString());
      if (const String.fromEnvironment('SENTRY') != "") {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      }
    },
  );
}
