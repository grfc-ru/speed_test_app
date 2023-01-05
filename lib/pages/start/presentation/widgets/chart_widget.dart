import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/entities/char_data.dart';
import '../../domain/bloc/measuring.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MeasuringBloc, MeasuringState>(
        builder: (context, state) => state.maybeWhen(
          update: (speed, dData, uData) {
            return SizedBox(
              height: 100,
              child: SfCartesianChart(
                series: <ChartSeries>[
                  SplineSeries<ChartData, int>(
                    color: Colors.blue,
                    dataSource: dData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                  SplineSeries<ChartData, int>(
                    color: Colors.red,
                    dataSource: uData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ],
              ),
            );
          },
          report: (data, dData, uData) {
            return SizedBox(
              height: 100,
              child: SfCartesianChart(
                series: <ChartSeries>[
                  SplineSeries<ChartData, int>(
                    color: Colors.blue,
                    dataSource: dData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                  SplineSeries<ChartData, int>(
                    color: Colors.red,
                    dataSource: uData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ],
              ),
            );
          },
          orElse: () {
            final List<ChartData> chartData = [
              ChartData(0, 0),
            ];

            return SizedBox(
              height: 100,
              child: SfCartesianChart(
                series: <ChartSeries>[
                  SplineSeries<ChartData, int>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ],
              ),
            );
          },
        ),
      );
}
