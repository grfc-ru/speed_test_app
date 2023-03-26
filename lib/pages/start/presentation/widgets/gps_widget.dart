import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../domain/bloc/params.dart';
import 'spinner_widget.dart';

class GpsWidget extends StatelessWidget {
  const GpsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 5,
      child: Container(
        padding: const EdgeInsets.all(3),
        child: BlocBuilder<ParamsBloc, ParamsState>(
          builder: (context, state) => state.maybeWhen(
            update: (data) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${S.current.lat}:    ${data.lat}°',
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  '${S.current.lon}:   ${data.lon}°',
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            initial: () => const SpinnerWidget(),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
