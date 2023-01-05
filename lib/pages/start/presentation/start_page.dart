import 'package:another_flushbar/flushbar.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/l10n.dart';
import '../children/settings/domain/bloc/settings.dart';
import '../domain/bloc/measuring.dart';
import 'widgets/avg_stat_widget.dart';
import 'widgets/background_widget.dart';
import 'widgets/chart_widget.dart';
import 'widgets/gauge_widget.dart';
import 'widgets/generate_widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.main_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              context.goNamed("settings");
            },
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              context.goNamed("info");
            },
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const BackgroundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const AvgStatWidget(),
              const ChartWidget(),
              const GaugeWidget(),
              BlocBuilder<MeasuringBloc, MeasuringState>(
                builder: (context, state) => state.maybeWhen(
                  update: (speed, dData, uData) => AvatarGlow(
                    glowColor: Colors.green,
                    endRadius: 100.0,
                    duration: const Duration(seconds: 5),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: const Duration(milliseconds: 200),
                    child: Material(
                      elevation: 8.0,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 60.0,
                        child: Text(
                          S.current.measuring,
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  orElse: () => AvatarGlow(
                    glowColor: Colors.blue,
                    endRadius: 100.0,
                    duration: const Duration(seconds: 5),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: const Duration(milliseconds: 200),
                    child: Material(
                      elevation: 8.0,
                      shape: const CircleBorder(),
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<MeasuringBloc>()
                              .add(const MeasuringEvent.started());
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 60.0,
                          child: Text(
                            S.current.measure,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          BlocListener<MeasuringBloc, MeasuringState>(
            listener: (context, state) => state.maybeWhen(
              error: (error) {
                Flushbar(
                  message: error,
                  icon: const Icon(
                    Icons.info_outline,
                    size: 28.0,
                    color: Colors.red,
                  ),
                  leftBarIndicatorColor: Colors.red,
                  duration: const Duration(seconds: 3),
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                ).show(context);

                return null;
              },
              block: (message) {
                Flushbar(
                  message: message,
                  icon: const Icon(
                    Icons.info_outline,
                    size: 28.0,
                    color: Colors.red,
                  ),
                  leftBarIndicatorColor: Colors.red,
                  duration: const Duration(seconds: 3),
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                ).show(context);

                return null;
              },
              orElse: () {
                return null;
              },
            ),
            child: const SizedBox.shrink(),
          ),
          BlocListener<SettingsBloc, SettingsState>(
            listener: (context, state) => state.maybeWhen(
              generate: () {
                Flushbar(
                  message: S.current.flush_generate,
                  icon: const Icon(
                    Icons.info_outline,
                    size: 28.0,
                    color: Colors.red,
                  ),
                  leftBarIndicatorColor: Colors.red,
                  duration: const Duration(seconds: 3),
                  margin: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                ).show(context);

                return null;
              },
              orElse: () {
                return null;
              },
            ),
            child: const SizedBox.shrink(),
          ),
          const GenerateWidget(),
        ],
      ),
    );
  }
}
