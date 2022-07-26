// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter/services.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
// class DO extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//
//   DO(this.seriesList, {this.animate});
//
//   factory DO.withSampleData() {
//     return DO(
//       _createSampleData(),
//       animate: false,
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return charts.TimeSeriesChart(
//     seriesList,
//     animate: animate,
//     // Optionally pass in a [DateTimeFactory] used by the chart. The factory should create the same type of [DateTime] as the data provided. If none specified, the default creates local date time.
//     dateTimeFactory: const charts.LocalDateTimeFactory(),
//     );
//     }
//
//     /// Create one series with sample hard coded data.
//     static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
//     final data = [
//     TimeSeriesSales(DateTime(2017, 1, 1), 75),
//     TimeSeriesSales(DateTime(2017, 1, 2), 37),
//     TimeSeriesSales(DateTime(2017, 1, 3), 93),
//     TimeSeriesSales(DateTime(2017, 1, 4), 55),
//     ];
//
//     return [
//     charts.Series<TimeSeriesSales, DateTime>(
//     id: 'Sales',
//     colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//     domainFn: (TimeSeriesSales sales, _) => sales.time,
//     measureFn: (TimeSeriesSales sales, _) => sales.sales,
//     data: data,
//     )
//     ];
//     }
//   }
//
//     /// Sample time series data type.
//     class TimeSeriesSales {
//     final DateTime time;
//     final int sales;
//
//     TimeSeriesSales(this.time, this.sales);
//     }


import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/workingTime.dart';
import 'package:untitled/ui/opr.dart';

class DO extends StatelessWidget {
  DO({Key key}) : super(key: key);

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
