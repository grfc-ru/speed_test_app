import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinnerWidget extends StatelessWidget {
  const SpinnerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const SpinKitWave(
        color: Colors.red,
        size: 40.0,
        itemCount: 10,
      );
}
