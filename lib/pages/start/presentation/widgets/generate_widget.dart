import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../theme/app_colors.dart';
import '../../children/settings/domain/bloc/settings.dart';

class GenerateWidget extends StatelessWidget {
  const GenerateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => state.maybeWhen(
        generate: () => SizedBox.expand(
          child: Container(
            color: transGray,
            child: const Center(
              child: SpinKitFadingCircle(
                color: Colors.red,
                size: 50.0,
              ),
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
