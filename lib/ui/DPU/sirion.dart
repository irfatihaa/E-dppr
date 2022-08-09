// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
//
// class Rush extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//
//   Rush(this.seriesList, {this.animate});
//
//   /// Creates a [BarChart] with sample data and no transition.
//   factory Rush.withSampleData() {
//     return Rush(
//       _createSampleData(),
//       // Disable animations for image tests.
//       animate: false,
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     // final decimalFormatter =
//     // charts.BasicNumericTickFormatterSpec.fromNumberFormat(
//     //    NumberFormat.decimalPattern());
//     // // final customTickFormatter =
//     // charts.BasicNumericTickFormatterSpec((num value) => 'MyValue: $value');
//
//
//     return
//         charts.BarChart(
//           seriesList,
//           animate: animate
//         );
//             // // Sets up a currency formatter for the measure axis.
//             // primaryMeasureAxis: charts.NumericAxisSpec(
//             //     tickFormatterSpec: decimalFormatter),
//             //
//             // /// Customizes the date tick formatter. It will print the day of month
//             // /// as the default format, but include the month and year if it
//             // /// transitions to a new month.
//             // ///
//             // /// minute, hour, day, month, and year are all provided by default and
//             // /// you can override them following this pattern.
//             // domainAxis: charts.DateTimeAxisSpec(
//             //     tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
//             //         day: charts.TimeFormatterSpec(
//             //             format: 'd', transitionFormat: 'MM/dd'))));
//   }
//
//   /// Create one series with sample hard coded data.
//   static List<charts.Series<RushDPU, String>> _createSampleData() {
//     final data = [
//       RushDPU('Feb1', 0.037),
//       RushDPU('2', 0.010),
//       RushDPU('3', 0.09),
//       RushDPU('4', 0.013),
//       RushDPU('5', 0.025),
//
//     ];
//
//     return [
//       charts.Series<RushDPU, String>(
//         id: 'Defect',
//         colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//         domainFn: (RushDPU defect, _) => defect.date,
//         measureFn: (RushDPU defect, _) => defect.defect,
//         data: data,
//       )
//     ];
//   }
// }
//
// // List<charts.TickSpec<num>> _createTickSpec() {
// //   List<charts.TickSpec<num>> _tickProvidSpecs = <charts.TickSpec<num>>[];
// //   double minVal = 0.00;
// //   double maxVal = 0.10;
// //   double d = minVal;
// //   while (d <= maxVal) {
// //     _tickProvidSpecs.add(new charts.TickSpec(d,
// //         label: '$d%', style: charts.TextStyleSpec(fontSize: 8)));
// //     d += 0.2;
// //   }
// // }
//
//
// /// Sample ordinal data type.
// class RushDPU {
//   final String date;
//   final double defect;
//
//   RushDPU(this.date, this.defect);
// }


import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sirion extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Sirion(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory Sirion.withSampleData() {
    return Sirion(
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


  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
    TimeSeriesSales(DateTime(2022, 5, 1), 0.031),
    TimeSeriesSales(DateTime(2022, 5, 2), 0.025),
    TimeSeriesSales(DateTime(2022, 5, 3), 0.021),
    TimeSeriesSales(DateTime(2022, 5, 4), 0.024),
    TimeSeriesSales(DateTime(2022, 5, 5), 0.028),
    //TimeSeriesSales(DateTime(2022, 5, 6), 0.030),
    //TimeSeriesSales(DateTime(2022, 5, 7), 0.028),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Defect',
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}


class TimeSeriesSales {
final DateTime time;
final double sales;

TimeSeriesSales(this.time, this.sales);
}