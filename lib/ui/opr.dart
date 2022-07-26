import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'dart:math';
//import 'package:charts_flutter/flutter.dart';
// import 'package:charts_flutter/src/text_element.dart' as TextElement;
// import 'package:charts_flutter/src/text_style.dart' as style;

class Operation extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Operation(this.seriesList, {this.animate});

  factory Operation.withSampleData() {
    return Operation(
      _createSampleLineData(),
      animate: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 1000, height: 450,
          child: charts.TimeSeriesChart(
          seriesList,
          animate: animate,
          domainAxis: const charts.DateTimeAxisSpec(
          tickProviderSpec: charts.DayTickProviderSpec(increments: [1]),
          tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
            day: charts.TimeFormatterSpec(
              format: 'dd', transitionFormat: 'MMM dd',)),
          ),
          primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.GridlineRendererSpec(
          lineStyle: charts.LineStyleSpec(
          dashPattern: [4, 4],
          color: charts.ColorUtil.fromDartColor(Colors.grey.shade300))),
          tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          desiredMinTickCount: 5,
          desiredTickCount: 5,
          dataIsInWholeNumbers: true,
          zeroBound: true,
          )),
          // defaultRenderer: charts.BarRendererConfig<DateTime>(
          //     barRendererDecorator: charts.BarLabelDecorator<DateTime>() // charts.BarLabelDecorator
          // ),
          //dateTimeFactory: const charts.LocalDateTimeFactory(),
          behaviors: [
            // LinePointHighlighter(
            //   symbolRenderer: CustomCircleSymbolRenderer()),
            charts.SeriesLegend(position: charts.BehaviorPosition.bottom,
            entryTextStyle: const charts.TextStyleSpec(
              color: const charts.Color(r: 19, g: 9, b: 29),
              fontSize: 12),),
          ],
      // selectionModels: [
      //   SelectionModelConfig(
      //   changedListener: (SelectionModel model) {
      //   if(model.hasDatumSelection){
      //   final value = model.selectedSeries[0].measureFn(model.selectedDatum[0].index);
      //   CustomCircleSymbolRenderer.value = value as String;  // paints the tapped value
      //   }}
      //   )
      // ]
    ))));
    //));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleLineData() {
    final plan = [
      TimeSeriesSales(DateTime(2021, 2,1), 0),
      TimeSeriesSales(DateTime(2021, 2,2), 0),
      TimeSeriesSales(DateTime(2021, 2,3), 0),
      TimeSeriesSales(DateTime(2021, 2,4), 0),
      TimeSeriesSales(DateTime(2021, 2,5), 0),
      TimeSeriesSales(DateTime(2021, 2,6), 0),
      TimeSeriesSales(DateTime(2021, 2,7), 92),
      TimeSeriesSales(DateTime(2021, 2,8), 92),
      TimeSeriesSales(DateTime(2021, 2,9), 92),
      TimeSeriesSales(DateTime(2021, 2,10), 79),
      TimeSeriesSales(DateTime(2021, 2,11), 79),
      TimeSeriesSales(DateTime(2021, 2,12), 79),
      TimeSeriesSales(DateTime(2021, 2,13), 79),
      TimeSeriesSales(DateTime(2021, 2,14), 77),
      TimeSeriesSales(DateTime(2021, 2,15), 92),
      TimeSeriesSales(DateTime(2021, 2,16), 92),
      TimeSeriesSales(DateTime(2021, 2,17), 92),
      TimeSeriesSales(DateTime(2021, 2,18), 92),
      TimeSeriesSales(DateTime(2021, 2,19), 0),
      TimeSeriesSales(DateTime(2021, 2,20), 0),
      TimeSeriesSales(DateTime(2021, 2,21), 92),
      TimeSeriesSales(DateTime(2021, 2,22), 92),
      TimeSeriesSales(DateTime(2021, 2,23), 92),
      TimeSeriesSales(DateTime(2021, 2,24), 92),
      TimeSeriesSales(DateTime(2021, 2,25), 92),
      TimeSeriesSales(DateTime(2021, 2,26), 0),
      TimeSeriesSales(DateTime(2021, 2,27), 0),
      TimeSeriesSales(DateTime(2021, 2,28), 92),
    ];

    final actual = [
      TimeSeriesSales(DateTime(2021, 2,1), 0),
      TimeSeriesSales(DateTime(2021, 2,2), 0),
      TimeSeriesSales(DateTime(2021, 2,3), 0),
      TimeSeriesSales(DateTime(2021, 2,4), 0),
      TimeSeriesSales(DateTime(2021, 2,5), 0),
      TimeSeriesSales(DateTime(2021, 2,6), 0),
      TimeSeriesSales(DateTime(2021, 2,7), 77),
      TimeSeriesSales(DateTime(2021, 2,8), 73),
      TimeSeriesSales(DateTime(2021, 2,9), 78),
      TimeSeriesSales(DateTime(2021, 2,10), 95),
      TimeSeriesSales(DateTime(2021, 2,11), 78),
      TimeSeriesSales(DateTime(2021, 2,12), 76),
      TimeSeriesSales(DateTime(2021, 2,13), 77),
      TimeSeriesSales(DateTime(2021, 2,14), 84),
      TimeSeriesSales(DateTime(2021, 2,15), 82),
      TimeSeriesSales(DateTime(2021, 2,16), 86),
      TimeSeriesSales(DateTime(2021, 2,17), 86),
      TimeSeriesSales(DateTime(2021, 2,18), 89),
      TimeSeriesSales(DateTime(2021, 2,19), 0),
      TimeSeriesSales(DateTime(2021, 2,20), 0),
      TimeSeriesSales(DateTime(2021, 2,21), 91),
      TimeSeriesSales(DateTime(2021, 2,22), 77),
      TimeSeriesSales(DateTime(2021, 2,23), 78),
      TimeSeriesSales(DateTime(2021, 2,24), 40),
      TimeSeriesSales(DateTime(2021, 2,25), 87),
      TimeSeriesSales(DateTime(2021, 2,26), 76),
      TimeSeriesSales(DateTime(2021, 2,27), 69),
      TimeSeriesSales(DateTime(2021, 2,28), 61),
    ];


    return [
      charts.Series<TimeSeriesSales, DateTime>(
        //domainAxis: charts.NumericAxisSpec(tickFormatterSpec:charts.BasicNumericTickFormatterSpec.fromNumberFormat(numberFormat),
        //),
        id: 'Plan',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        //dashPatternFn: [2,2],
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: plan,
      ),
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Actual',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: actual,
      )
    ];
  }
}

// class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
//   static String value;
//   @override
//   void paint(ChartCanvas canvas, Rectangle<num> bounds, {List<int> dashPattern, Color fillColor, FillPatternType fillPattern, Color strokeColor, double strokeWidthPx}) {
//     super.paint(canvas, bounds, dashPattern: dashPattern, fillColor: fillColor,fillPattern: fillPattern, strokeColor: strokeColor, strokeWidthPx: strokeWidthPx);
//     canvas.drawRect(
//         Rectangle(bounds.left - 3, bounds.top - 20, bounds.width + 10, bounds.height + 10),
//         fill: Color.transparent
//             //.fromHex(code: 0xe3b5f7)
//     );
//     var textStyle = style.TextStyle();
//     textStyle.color = Color.black;
//     textStyle.fontSize = 12;
//     canvas.drawText(
//         TextElement.TextElement("Downtime Reason/Details", style: textStyle),
//         (bounds.left).round(),
//         (bounds.top - 15).round()
//     );
//   }
//}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
