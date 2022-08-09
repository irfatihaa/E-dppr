import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Alza extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Alza(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory Alza.withSampleData() {
    return Alza(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    final simpleFormatter =
    charts.BasicNumericTickFormatterSpec.fromNumberFormat(NumberFormat.decimalPattern());
    return charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      domainAxis: const charts.DateTimeAxisSpec(
        tickProviderSpec: charts.DayTickProviderSpec(increments: [1]),
        tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
            day: charts.TimeFormatterSpec(
              format: 'd', transitionFormat: 'MMM d',)),
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
          tickFormatterSpec: simpleFormatter,
          tickProviderSpec: const charts.BasicNumericTickProviderSpec(
            desiredTickCount: 5,
            dataIsInWholeNumbers: false,)),
      // Set the default renderer to a bar renderer.
      defaultRenderer: charts.BarRendererConfig<DateTime>(),
      defaultInteractions: false,
      behaviors: [charts.SelectNearest(), charts.DomainHighlighter()],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<AlzaDPU, DateTime>> _createSampleData() {
    final data = [
      AlzaDPU(DateTime(2022, 5, 1), 0.031),
      AlzaDPU(DateTime(2022, 5, 2), 0.025),
      AlzaDPU(DateTime(2022, 5, 3), 0.021),
      AlzaDPU(DateTime(2022, 5, 4), 0.024),
      AlzaDPU(DateTime(2022, 5, 5), 0.028),

    ];

    return [
      charts.Series<AlzaDPU, DateTime>(
        id: 'Defect',
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        domainFn: (AlzaDPU defect, _) => defect.date,
        measureFn: (AlzaDPU defect, _) => defect.defect,
        data: data,
      )
    ];
  }
}


//   static List<charts.Series<MyviDPU, String>> _createSampleData() {
//     final data = [
//       MyviDPU('Feb1', 0.019),
//       MyviDPU('Feb2', 0.010),
//       MyviDPU('Feb3', 0.059),
//       MyviDPU('Feb4', 0.032),
//       MyviDPU('Feb5', 0.025),
//
//     ];
//
//     return [
//       charts.Series<MyviDPU, String>(
//         id: 'Defect',
//         colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//         domainFn: (MyviDPU defect, _) => defect.date,
//         measureFn: (MyviDPU defect, _) => defect.defect,
//         data: data,
//       )
//     ];
//   }
// }

// List<charts.TickSpec<num>> _createTickSpec() {
//
//   List<charts.TickSpec<num>> _tickProvideSpecs = List<charts.TickSpec<num>>();
//   List<charts.TickSpec<num>>();
//   var minVal = 0.01;
//   var maxVal = 0.10;
//   double d = minVal;
//   while (d <= maxVal) {
//     _tickProvideSpecs.add(charts.TickSpec(d,
//         label: '$d%', style: charts.TextStyleSpec(fontSize: 14)));
//       d += 0.01;
//   }
// }

/// Sample ordinal data type.
class AlzaDPU {

  final DateTime date;
  final double defect;

  AlzaDPU(this.date, this.defect);
}
