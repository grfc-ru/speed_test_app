import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../presentation/widgets/background_widget.dart';
import '../../../presentation/widgets/text_form_widget.dart';
import '../domain/bloc/settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.current.settings_title),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              const BackgroundWidget(),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      BlocBuilder<SettingsBloc, SettingsState>(
                        builder: (context, state) => state.maybeWhen(
                          update: (settings) {
                            return TextFormWidget(
                              wValue: settings.url,
                              wIcon: Icons.devices,
                              wLabel: S.current.settings_server_addr,
                              wKey: 'url',
                              wType: NumType.tString,
                            );
                          },
                          initial: (settings) {
                            return TextFormWidget(
                              wValue: settings.url,
                              wIcon: Icons.devices,
                              wLabel: S.current.settings_server_addr,
                              wKey: 'url',
                              wType: NumType.tString,
                            );
                          },
                          orElse: () => const SizedBox.shrink(),
                        ),
                      ),
                      BlocBuilder<SettingsBloc, SettingsState>(
                        builder: (context, state) => state.maybeWhen(
                          update: (settings) {
                            return TextFormWidget(
                              wValue: settings.timeMeasure.toString(),
                              wIcon: Icons.timer,
                              wLabel: S.current.settings_time_measured,
                              wKey: 'timeMeasure',
                              wType: NumType.tInt,
                            );
                          },
                          initial: (settings) {
                            return TextFormWidget(
                              wValue: settings.timeMeasure.toString(),
                              wIcon: Icons.timer,
                              wLabel: S.current.settings_time_measured,
                              wKey: 'timeMeasure',
                              wType: NumType.tInt,
                            );
                          },
                          orElse: () => const SizedBox.shrink(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
