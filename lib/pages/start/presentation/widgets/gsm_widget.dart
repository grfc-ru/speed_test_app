import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../domain/bloc/params.dart';
import 'spinner_widget.dart';

class GsmWidget extends StatelessWidget {
  const GsmWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 5,
      child: Container(
        padding: const EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ParamsBloc, ParamsState>(
              builder: (context, state) => state.maybeWhen(
                update: (data) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${S.current.gsm_name}: ${data.opName}',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      // Text(
                      //   'CID: ${data.cid.toString()}',
                      //   style: const TextStyle(
                      //     fontSize: 10,
                      //   ),
                      // ),
                      Text(
                        '${S.current.gsm_code_op}: ${data.opCode}',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '${S.current.gsm_type}: ${data.netType.toString()}',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '${S.current.gsm_class}: ${data.netClass.toString()}',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      // Text(
                      //   '${S.current.gsm_level}: ${data.rssi.toString()} ${S.current.gsm_dbm}',
                      //   style: const TextStyle(
                      //     fontSize: 10,
                      //   ),
                      // ),
                    ],
                  );
                },
                initial: () => const SpinnerWidget(),
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
