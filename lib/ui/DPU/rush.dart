import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Rush extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Rush(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory Rush.withSampleData() {
    return Rush(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Feb 1', 0.037),
      OrdinalSales('Feb 2', 0.010),
      OrdinalSales('Feb 3', 0.009),
      OrdinalSales('Feb 4', 0.0103),
      OrdinalSales('Feb 5', 0.0025),
      OrdinalSales('Feb 6', 0.0077),
      OrdinalSales('Feb 7', 0.0062),

    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.date,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String date;
  final double sales;

  OrdinalSales(this.date, this.sales);
}
