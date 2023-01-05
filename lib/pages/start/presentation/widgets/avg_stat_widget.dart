import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../../theme/app_style.dart';
import '../../domain/bloc/measuring.dart';

class AvgStatWidget extends StatelessWidget {
  const AvgStatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(S.current.speed_download),
              BlocBuilder<MeasuringBloc, MeasuringState>(
                builder: (context, state) => state.maybeWhen(
                  report: (measuring, dData, uData) => Text(
                    ((measuring.dSpeed * 100).ceil() / 100).toString(),
                    style: bigBlue,
                  ),
                  orElse: () => Text(
                    "-",
                    style: bigBlue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(S.current.speed_upload),
              BlocBuilder<MeasuringBloc, MeasuringState>(
                builder: (context, state) => state.maybeWhen(
                  report: (measuring, dData, uData) => Text(
                    ((measuring.uSpeed * 100).ceil() / 100).toString(),
                    style: bigRed,
                  ),
                  orElse: () => Text(
                    "-",
                    style: bigRed,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
