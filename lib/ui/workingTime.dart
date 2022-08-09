//library flutter_radar_chart;
//import 'package:flutter_radar_chart/flutter_radar_chart.dart';
//import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
// import 'dart:math' show pi, cos, sin;


class workingTime extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  workingTime(this.seriesList, {this.animate});

  factory workingTime.withSampleData() {
    return workingTime(
      _createSampleData(),
      //animate: false,
    );
  }
// class Downtime extends StatefulWidget {
//   const Downtime({Key key}) : super(key: key);
//   @override
//   _Downtime createState() => _Downtime();
// }
//
// class Downtime extends StatelessWidget {
//
//
// class _Downtime extends State<Downtime> {
//
//   static const String _title = 'Working Time';
//   DateTime selectedDate = DateTime.now();

  // Future<Null> _selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2021, 10),
  //       lastDate: DateTime(2022, 08));
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: 1500, height:450,
        child :
          //floatingActionButton()
    // MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.deepPurple,
    //       leading: IconButton(
    //         icon: const Icon(Icons.arrow_back, color: Colors.white),
    //         onPressed: () => Navigator.of(context).pop(),
    //       ),
    //       title: const Text(_title),
    //     ),
    //     body:
    //     Column(
    //     children: [
          // ElevatedButton(
          // onPressed: () => _selectDate(context),
          //   child: const Text('Select date'),
          //     style: ElevatedButton.styleFrom(
          //     primary: Colors.deepPurple,
          //     padding: const EdgeInsets.symmetric(
          //     horizontal: 30, vertical: 10),
          //     textStyle:
          //     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          // ),
          // Text("${selectedDate.toLocal()}".split(' ')[0],
          // style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          //Radar(),
          // Container(
          // color: Colors.white,
          //   child: const SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //     child :
          charts.BarChart(
          seriesList,
          animate: animate,
          barGroupingType: charts.BarGroupingType.groupedStacked,
          behaviors: [charts.SeriesLegend(position: charts.BehaviorPosition.top,
          entryTextStyle: const charts.TextStyleSpec(color: charts.Color(r: 0, g: 0, b: 0),
          fontSize: 11),
          desiredMaxRows: 2,
          horizontalFirst: false,
          cellPadding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 4.0, top: 4.0))
          //outsideJustification: charts.OutsideJustification.endDrawArea,)
          ])))
      );
    // )));
        }

  /// Create series list with multiple series
  static List<charts.Series<Summary, String>> _createSampleData() {
    final planWorkMinA = [
      Summary('Feb 1', 490),
      Summary('Feb 2', 490),
      Summary('Feb 3', 490),
      Summary('Feb 4', 490),
      Summary('Feb 5', 490),
      Summary('Feb 6', 0),
      Summary('Feb 7', 480),
      Summary('Feb 8', 495),
      Summary('Feb 9', 495),
      Summary('Feb 10', 495),
      Summary('Feb 11', 445),
      Summary('Feb 12', 405),
      Summary('Feb 13', 0),
      Summary('Feb 14', 490),
      Summary('Feb 15', 490),
      Summary('Feb 16', 490),
      Summary('Feb 17', 490),
      Summary('Feb 18', 490),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 480),
      Summary('Feb 22', 495),
      Summary('Feb 23', 495),
      Summary('Feb 24', 495),
      Summary('Feb 25', 445),
      Summary('Feb 26', 0),
      Summary('Feb 27', 0),
      Summary('Feb 28', 475),
    ];

    final planOvertimeA = [
      Summary('Feb 1', 0),
      Summary('Feb 2', 90),
      Summary('Feb 3', 90),
      Summary('Feb 4', 120),
      Summary('Feb 5', 120),
      Summary('Feb 6', 120),
      Summary('Feb 7', 0),
      Summary('Feb 8', 90),
      Summary('Feb 9', 90),
      Summary('Feb 10', 90),
      Summary('Feb 11', 0),
      Summary('Feb 12', 0),
      Summary('Feb 13', 430),
      Summary('Feb 14', 90),
      Summary('Feb 15', 75),
      Summary('Feb 16', 75),
      Summary('Feb 17', 75),
      Summary('Feb 18', 75),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 75),
      Summary('Feb 22', 75),
      Summary('Feb 23', 75),
      Summary('Feb 24', 75),
      Summary('Feb 25', 0),
      Summary('Feb 26', 0),
      Summary('Feb 27', 0),
      Summary('Feb 28', 75),
    ];

    final planPDTA = [
      Summary('Feb 1', 15),
      Summary('Feb 2', 15),
      Summary('Feb 3', 15),
      Summary('Feb 4', 15),
      Summary('Feb 5', 15),
      Summary('Feb 6', 15),
      Summary('Feb 7', 0),
      Summary('Feb 8', 15),
      Summary('Feb 9', 15),
      Summary('Feb 10', 15),
      Summary('Feb 11', 15),
      Summary('Feb 12', 20),
      Summary('Feb 13', 25),
      Summary('Feb 14', 15),
      Summary('Feb 15', 15),
      Summary('Feb 16', 15),
      Summary('Feb 17', 15),
      Summary('Feb 18', 15),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 15),
      Summary('Feb 22', 15),
      Summary('Feb 23', 15),
      Summary('Feb 24', 15),
      Summary('Feb 25', 10),
      Summary('Feb 26', 0),
      Summary('Feb 27', 0),
      Summary('Feb 28', 10),
    ];

    final actualWorkMinB = [
      Summary('Feb 1', 490),
      Summary('Feb 2', 490),
      Summary('Feb 3', 490),
      Summary('Feb 4', 490),
      Summary('Feb 5', 490),
      Summary('Feb 6', 0),
      Summary('Feb 7', 480),
      Summary('Feb 8', 495),
      Summary('Feb 9', 495),
      Summary('Feb 10', 495),
      Summary('Feb 11', 445),
      Summary('Feb 12', 405),
      Summary('Feb 13', 0),
      Summary('Feb 14', 490),
      Summary('Feb 15', 490),
      Summary('Feb 16', 490),
      Summary('Feb 17', 490),
      Summary('Feb 18', 490),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 480),
      Summary('Feb 22', 495),
      Summary('Feb 23', 495),
      Summary('Feb 24', 495),
      Summary('Feb 25', 445),
      Summary('Feb 26', 0),
      Summary('Feb 27', 0),
      Summary('Feb 28', 475),
    ];

    final actualOvertimeB = [
      Summary('Feb 1', 0),
      Summary('Feb 2', 90),
      Summary('Feb 3', 90),
      Summary('Feb 4', 120),
      Summary('Feb 5', 120),
      Summary('Feb 6', 120),
      Summary('Feb 7', 0),
      Summary('Feb 8', 120),
      Summary('Feb 9', 0),
      Summary('Feb 10', 0),
      Summary('Feb 11', 0),
      Summary('Feb 12', 0),
      Summary('Feb 13', 430),
      Summary('Feb 14', 120),
      Summary('Feb 15', 120),
      Summary('Feb 16', 90),
      Summary('Feb 17', 120),
      Summary('Feb 18', 105),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 90),
      Summary('Feb 22', 120),
      Summary('Feb 23', 90),
      Summary('Feb 24', 120),
      Summary('Feb 25', 0),
      Summary('Feb 26', 405),
      Summary('Feb 27', 430),
      Summary('Feb 28', 60),
    ];

    final actualPDTB = [
      Summary('Feb 1', 5),
      Summary('Feb 2', 5),
      Summary('Feb 3', 15),
      Summary('Feb 4', 15),
      Summary('Feb 5', 15),
      Summary('Feb 6', 5),
      Summary('Feb 7', 0),
      Summary('Feb 8', 5),
      Summary('Feb 9', 24),
      Summary('Feb 10', 320),
      Summary('Feb 11', 5),
      Summary('Feb 12', 5),
      Summary('Feb 13', 5),
      Summary('Feb 14', 5),
      Summary('Feb 15', 5),
      Summary('Feb 16', 5),
      Summary('Feb 17', 5),
      Summary('Feb 18', 5),
      Summary('Feb 19', 0),
      Summary('Feb 20', 0),
      Summary('Feb 21', 5),
      Summary('Feb 22', 5),
      Summary('Feb 23', 5),
      Summary('Feb 24', 5),
      Summary('Feb 25', 5),
      Summary('Feb 26', 5),
      Summary('Feb 27', 5),
      Summary('Feb 28', 5),
    ];


    return [
      charts.Series<Summary, String>(
        id: 'Plan PDT',
        seriesCategory: 'A',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault.lighter,
        data: planPDTA,
      ),
      charts.Series<Summary, String>(
        id: 'Plan OverTime',
        seriesCategory: 'A',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.lighter,
        data: planOvertimeA,
      ),
      charts.Series<Summary, String>(
        id: 'Plan WorkMin',
        seriesCategory: 'A',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
        data: planWorkMinA,
      ),
      charts.Series<Summary, String>(
        id: 'Actual PDT',
        seriesCategory: 'B',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
        data: actualPDTB,
      ),
      charts.Series<Summary, String>(
        id: 'Actual Overtime',
        seriesCategory: 'B',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
        data: actualOvertimeB,
      ),
      charts.Series<Summary, String>(
        id: 'Actual WorkMin',
        seriesCategory: 'B',
        domainFn: (Summary prod, _) => prod.date,
        measureFn: (Summary prod, _) => prod.prod,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: actualWorkMinB,
      ),
    ];
  }
}

// class CustomCircleSymbolRenderer extends charts.CircleSymbolRenderer {
//   @override
//   void paint(ChartCanvas canvas, Rectangle<num> bounds, {List<int> dashPattern, Color fillColor, Color strokeColor, double strokeWidthPx}) {
//     super.paint(canvas, bounds, dashPattern: dashPattern, fillColor: fillColor, strokeColor: strokeColor, strokeWidthPx: strokeWidthPx);
//     canvas.drawRect(
//         Rectangle(bounds.left - 5, bounds.top - 30, bounds.width + 10, bounds.height + 10),
//         fill: Color.white
//     );
//     var textStyle = style.TextStyle();
//     textStyle.color = Color.black;
//     textStyle.fontSize = 15;
//     canvas.drawText(
//         TextElement("1", style: textStyle),
//         (bounds.left).round(),
//         (bounds.top - 28).round()
//     );
//   }
// }

/// Sample ordinal data type.
class Summary {
  final String date;
  final int prod;

  Summary(this.date, this.prod);
}

  //           )
  //       )]), //body
  //     ));
  // }}
  //               padding: const EdgeInsets.fromLTRB(55, 30, 40, 20),
  //               width: 400,
  //               height: 400,
  //               //Radar Chart
  //               child: RadarChart(
  //                 values: [15, 90, 120, 5],
  //                 labels: [
  //                   "Plan PDT",
  //                   //"Plan Work Min",
  //                   "Plan Overtime",
  //                   "Actual PDT",
  //                   //"Actual Work Min",
  //                   "Actual Overtime",
  //
  //                 ],
  //                 maxValue: 10,
  //                 fillColor: Colors.deepPurple,
  //                 chartRadiusFactor: 0.66,
  //               ),
  //             )
  //           ]),
  //     ),
  //   );
  // }}


// class Radar extends StatelessWidget {
//   const Radar({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(10, 30, 0, 120),
//       width: 400,
//       height: 400,
//       //Radar Chart
//      child: RadarChart(
//         values: [90, 15, 20, 5],
//         labels: [
//           "Plan PDT",
//           //"Plan Work Min",
//           "Plan Overtime",
//           "Actual PDT",
//           //"Actual Work Min",
//           "Actual Overtime",
//
//         ],
//         //maxValue: 100,
//         fillColor: Colors.deepPurple,
//         chartRadiusFactor: 0.66,
//       ),
//     );
//   }
// }



// /// Example of a bar chart with grouped, stacked series oriented vertically.
//
// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
// class Downtime extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//
//   const Downtime(this.seriesList, {Key key, this.animate}) : super(key: key);
//
//   factory Downtime.withSampleData() {
//     return Downtime(
//       createSampleData(),
//       //animate: true,
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     theme: ThemeData(scaffoldBackgroundColor: const Color(0xffffffff),
//     ),
//     debugShowCheckedModeBanner: false,
//     home:
//       Scaffold(appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text("Summary Production",
//         style: TextStyle(color: Colors.white)),
//         elevation: 0.5,
//         iconTheme: const IconThemeData(color: Colors.white),
//         backgroundColor: const Color(0xff4a148c),
//       ),
//         body : Container(
//           color: Colors.white,
//           child : charts.BarChart(
//           seriesList,
//           animate: animate,
//           barGroupingType: charts.BarGroupingType.groupedStacked,
//           behaviors: [charts.SeriesLegend(position: charts.BehaviorPosition.top,
//             entryTextStyle: const charts.TextStyleSpec(color: const charts.Color(r: 0, g: 0, b: 0),
//                 fontSize: 11),
//             desiredMaxRows: 2,
//             horizontalFirst: false,
//             cellPadding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 4.0, top: 4.0),
//             outsideJustification: charts.OutsideJustification.endDrawArea,)
//             LinePointHighlighter(
//                 symbolRenderer: CustomCircleSymbolRenderer()
//             )
//           ],
//               selectionModels: [
//                 SelectionModelConfig(
//                     changedListener: (SelectionModel model) {
//                       if(model.hasDatumSelection)
//                         print(model.selectedSeries[0].measureFn(model.selectedDatum[0].index));
//                     }
//                 )],
//               ))));
//     }
//
//   /// Create series list with multiple series
//   static List<charts.Series<Summary, String>> createSampleData() {
//     final planWorkMinA = [
//       Summary('Feb 1', 490),
//       Summary('Feb 2', 490),
//       Summary('Feb 3', 490),
//       Summary('Feb 4', 490),
//       Summary('Feb 5', 490),
//       Summary('Feb 6', 490),
//       Summary('Feb 7', 490),
//       Summary('Feb 8', 490),
//       Summary('Feb 9', 490),
//       Summary('Feb 10', 490),
//     ];
//
//     final planOvertimeA = [
//       Summary('Feb 1', 120),
//       Summary('Feb 2', 90),
//       Summary('Feb 3', 90),
//       Summary('Feb 4', 90),
//       Summary('Feb 5', 90),
//       Summary('Feb 6', 90),
//       Summary('Feb 7', 90),
//       Summary('Feb 8', 90),
//       Summary('Feb 9', 90),
//       Summary('Feb 10', 90),
//     ];
//
//     final planPDTA = [
//       Summary('Feb 1', 5),
//       Summary('Feb 2', 5),
//       Summary('Feb 3', 5),
//       Summary('Feb 4', 5),
//       Summary('Feb 5', 10),
//       Summary('Feb 6', 10),
//       Summary('Feb 7', 5),
//       Summary('Feb 8', 5),
//       Summary('Feb 9', 10),
//       Summary('Feb 10', 5),
//     ];
//
//     final actualWorkMinB = [
//       Summary('Feb 1', 405),
//       Summary('Feb 2', 490),
//       Summary('Feb 3', 490),
//       Summary('Feb 4', 490),
//       Summary('Feb 5', 490),
//       Summary('Feb 6', 490),
//       Summary('Feb 7', 405),
//       Summary('Feb 8', 490),
//       Summary('Feb 9', 490),
//       Summary('Feb 10', 490),
//     ];
//
//     final actualOvertimeB = [
//       Summary('Feb 1', 120),
//       Summary('Feb 2', 120),
//       Summary('Feb 3', 90),
//       Summary('Feb 4', 90),
//       Summary('Feb 5', 120),
//       Summary('Feb 6', 120),
//       Summary('Feb 7', 90),
//       Summary('Feb 8', 90),
//       Summary('Feb 9', 60),
//       Summary('Feb 10', 60),
//     ];
//
//     final actualPDTB = [
//       Summary('Feb 1', 5),
//       Summary('Feb 2', 10),
//       Summary('Feb 3', 10),
//       Summary('Feb 4', 5),
//       Summary('Feb 5', 5),
//       Summary('Feb 6', 10),
//       Summary('Feb 7', 10),
//       Summary('Feb 8', 15),
//       Summary('Feb 9', 15),
//       Summary('Feb 10', 15),
//     ];
//
//
//     return [
//       charts.Series<Summary, String>(
//         id: 'Plan WorkMin',
//         seriesCategory: 'A',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
//         data: planWorkMinA,
//       ),
//       charts.Series<Summary, String>(
//         id: 'Plan PDT',
//         seriesCategory: 'A',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
//         data: planPDTA,
//       ),
//       charts.Series<Summary, String>(
//         id: 'Plan OverTime',
//         seriesCategory: 'A',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         //colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
//         data: planOvertimeA,
//       ),
//       charts.Series<Summary, String>(
//         id: 'Actual WorkMin',
//         seriesCategory: 'B',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
//         data: actualWorkMinB,
//       ),
//       charts.Series<Summary, String>(
//         id: 'Actual PDT',
//         seriesCategory: 'B',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//         data: actualPDTB,
//       ),
//       charts.Series<Summary, String>(
//         id: 'Actual Overtime',
//         seriesCategory: 'B',
//         domainFn: (Summary prod, _) => prod.date,
//         measureFn: (Summary prod, _) => prod.prod,
//         colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
//         data: actualOvertimeB,
//       ),
//     ];
//   }
// }
//
// class CustomCircleSymbolRenderer extends charts.CircleSymbolRenderer {
//   @override
//   void paint(ChartCanvas canvas, Rectangle<num> bounds, {List<int> dashPattern, Color fillColor, Color strokeColor, double strokeWidthPx}) {
//     super.paint(canvas, bounds, dashPattern: dashPattern, fillColor: fillColor, strokeColor: strokeColor, strokeWidthPx: strokeWidthPx);
//     canvas.drawRect(
//         Rectangle(bounds.left - 5, bounds.top - 30, bounds.width + 10, bounds.height + 10),
//         fill: Color.white
//     );
//     var textStyle = style.TextStyle();
//     textStyle.color = Color.black;
//     textStyle.fontSize = 15;
//     canvas.drawText(
//         TextElement("1", style: textStyle),
//         (bounds.left).round(),
//         (bounds.top - 28).round()
//     );
//   }
// }
//
// /// Sample ordinal data type.
// class Summary {
//   final String date;
//   final int prod;
//
//   Summary(this.date, this.prod);
// }
//
