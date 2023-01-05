import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../domain/bloc/measuring.dart';

/// {@template gauge_widget.gauge_widget}
/// GaugeWidget widget
/// {@endtemplate}
class GaugeWidget extends StatelessWidget {
  /// {@macro gauge_widget.gauge_widget}
  const GaugeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MeasuringBloc, MeasuringState>(
        builder: (context, state) => state.maybeWhen(
          update: (speed, dData, uData) => SizedBox(
            height: 250,
            child: SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 1000,
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 150,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 20,
                      color: Colors.red,
                      startWidth: 1,
                      endWidth: 5,
                    ),
                    GaugeRange(
                      startValue: 20,
                      endValue: 50,
                      color: Colors.orange,
                      startWidth: 5,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 50,
                      endValue: 150,
                      color: Colors.green,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: speed,
                      enableAnimation: true,
                      needleEndWidth: 8,
                      animationDuration: 5000,
                      animationType: AnimationType.easeInCirc,
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        speed.toStringAsFixed(2),
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.7,
                    ),
                  ],
                ),
              ],
            ),
          ),
          orElse: () => SizedBox(
            height: 250,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 150,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 20,
                      color: Colors.red,
                      startWidth: 1,
                      endWidth: 5,
                    ),
                    GaugeRange(
                      startValue: 20,
                      endValue: 50,
                      color: Colors.orange,
                      startWidth: 5,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 50,
                      endValue: 150,
                      color: Colors.green,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                  ],
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                      value: 0,
                      enableAnimation: true,
                      needleEndWidth: 8,
                      animationType: AnimationType.slowMiddle,
                    ),
                  ],
                  annotations: const <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.7,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
} // GaugeWidget
