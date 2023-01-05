import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onError(
    BlocBase bloc,
    Object error,
    StackTrace stackTrace,
  ) async {
    var logger = Logger();
    logger.e(error.toString());
    if (const String.fromEnvironment('SENTRY') != "") {
      await Sentry.captureException(error, stackTrace: stackTrace);
    }
    super.onError(bloc, error, stackTrace);
  }
}
