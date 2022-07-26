import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Myvi extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Myvi(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory Myvi.withSampleData() {
    return Myvi(
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
      OrdinalSales('Feb 1', 0.00037),
      OrdinalSales('Feb 2', 0.00010),
      OrdinalSales('Feb 3', 0.00059),
      OrdinalSales('Feb 4', 0.00103),
      OrdinalSales('Feb 5', 0.00025),
      OrdinalSales('Feb 6', 0.00077),
      OrdinalSales('Feb 7', 0.00062),

    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final double sales;

  OrdinalSales(this.year, this.sales);
}
