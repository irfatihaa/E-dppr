
import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/opr.dart';
import 'package:untitled/ui/workingTime.dart';

class A2 extends StatelessWidget {
  A2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffffffff),),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  //backgroundColor: Colors.deepPurple,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  title: const Text("Production by Shops",
                      style: TextStyle(color: Colors.white)),
                  elevation: 0.5,
                  iconTheme: const IconThemeData(color: Colors.white),
                  backgroundColor: const Color(0xff4a148c),

                  bottom: const TabBar(
                    tabs: [
                      Tab(text: "Total Production "),
                      Tab(text: "Operation Rate"),
                      Tab(text: "Working Time"),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Production.withSampleData(),
                    Operation.withSampleData(),
                    workingTime.withSampleData(),
                    //ShiftA(),
                    //ShiftB(),
                  ],
                )
            )));
  }
}



// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:untitled/ui/shops/wone.dart';
//
//
// class A2 extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//
//   const A2(this.seriesList, {this.animate});
//
//   factory A2.withSampleData() {
//     return A2(
//       _createSampleData(),
//       // Disable animations for image tests.
//       animate: false,
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//           charts.BarChart(seriesList, animate: animate,
//           barGroupingType: charts.BarGroupingType.grouped,
//           customSeriesRenderers: [
//             charts.BarTargetLineRendererConfig<String>(
//               // ID used to link series to this renderer.
//                 customRendererId: 'customTargetLine',
//                 groupingType: charts.BarGroupingType.grouped)
//     ]);
//     //]));
//   }
//
//   /// Create series list with multiple series
//   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
//
//     final aProductionData = [
//       OrdinalSales('2014', 25),
//       OrdinalSales('2015', 50),
//       OrdinalSales('2016', 10),
//       OrdinalSales('2017', 20),
//     ];
//
//     final bProductionData = [
//       OrdinalSales('2014', 10),
//       OrdinalSales('2015', 15),
//       OrdinalSales('2016', 50),
//       OrdinalSales('2017', 45),
//     ];
//
//     final aTargetData = [
//       OrdinalSales('2014', 30),
//       OrdinalSales('2015', 55),
//       OrdinalSales('2016', 15),
//       OrdinalSales('2017', 25),
//     ];
//
//     final bTargetData = [
//       OrdinalSales('2014', 10),
//       OrdinalSales('2015', 5),
//       OrdinalSales('2016', 45),
//       OrdinalSales('2017', 35),
//     ];
//
//     return [
//       charts.Series<OrdinalSales, String>(
//         id: 'A',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: aProductionData,
//       ),
//       charts.Series<OrdinalSales, String>(
//         id: 'B',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data:bProductionData,
//       ),
//
//       charts.Series<OrdinalSales, String>(
//         id: 'A Target Line',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: aTargetData,
//       )
//       // Configure our custom bar target renderer for this series.
//         ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
//       charts.Series<OrdinalSales, String>(
//         id: 'B Target Line',
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: bTargetData,
//       )
//       // Configure our custom bar target renderer for this series.
//         ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
//     ];
//   }
// }
//
// class OrdinalSales {
//   final String year;
//   final int sales;
//
//   OrdinalSales(this.year, this.sales);
// }