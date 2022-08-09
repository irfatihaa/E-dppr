
import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/opr.dart';
import 'package:untitled/ui/workingTime.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';


class A2 extends StatefulWidget {
  DateTime initialDate;

  A2({Key key, this.initialDate}) : super(key: key);
  //A2({Key key}) : super(key: key);
  @override//
  State<A2> createState() => _A2();
}

class _A2 extends State<A2> {
  //DateTime _selected;
  //DateTime selectedDate = DateTime.now();
  //final DateTime initialDate = DateTime.now();
  DateTime selectedDate;

  // Future<void> _selectDate(BuildContext context, String locale) async {
  //   final localeObj = locale != null ? Locale(locale) : null;
  //   final DateTime picked = await showMonthYearPicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2021, 11),
  //       lastDate: DateTime(2022, 08),
  //       locale: localeObj,
  //   );
  //
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }

  // Future<void> _onPressed (BuildContext context, String locale) async {
  //   final localeObj = locale != null ? Locale(locale) : null;
  //   final selected = await showMonthYearPicker(
  //     context: context,
  //     initialDate: _selected ?? DateTime.now(),
  //     firstDate: DateTime(2019),
  //     lastDate: DateTime(2022),
  //     locale: localeObj,
  //   );
  //   if (selected != null) {
  //     setState(() {
  //       _selected = selected;
  //     });
  //   }
  // }


  // // Initial Selected Value
  // String dropdownvalue = 'January 2022';
  // // List of items in our dropdown menu
  // var items = [
  //   'January 2022',
  //   'February 2022',
  //   'March 2022',
  //   'April 2022',
  //   'May 2022',
  //   'June 2022',
  //   'July 2022',
  //   'Aug 2022',
  // ];
  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          MonthYearPickerLocalizations.delegate,
        ],
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
                body:
                // Column(
                //      children: [
                      // ElevatedButton(
                      //   onPressed: () => _selectDate(context),
                      //   child: const Text('Select date'),
                      //   style: ElevatedButton.styleFrom(
                      //       primary: Colors.deepPurple,
                      //       padding: const EdgeInsets.symmetric(
                      //           horizontal: 30, vertical: 10),
                      //       textStyle:
                      //       const TextStyle(
                      //           fontSize: 20, fontWeight: FontWeight.bold)),
                      // ),
                      // Text("${selectedDate.toLocal()}".split(' ')[0],
                      //   style: const TextStyle(
                      //       fontSize: 20, fontWeight: FontWeight.bold),
                      // ),
                      TabBarView(
                          children: [
                            Production.withSampleData(),
                            Operation.withSampleData(),
                            workingTime.withSampleData(),
                            //ShiftA(),
                            //ShiftB(),
                          ]),
                floatingActionButton: Builder(
                  builder: (context) => FloatingActionButton(
                    backgroundColor: Colors.deepPurple,
                    onPressed: () {
                      showMonthPicker(
                        context: context,
                        firstDate: DateTime(DateTime.now().year - 1, 5),
                        lastDate: DateTime(DateTime.now().year + 3, 5),
                        initialDate: DateTime.now(),
                        locale: Locale("en"),
                      ).then((date) {
                        if (date != null) {
                          setState(() {
                            selectedDate = date;
                          });
                        }
                      });
                    },
                    child: Icon(Icons.calendar_month_outlined),
                  ),
                ),
            ))
    );
  }
}


// Future<void> _onPressed({
//   BuildContext context,
//   String locale,
// }) async {
//   final localeObj = locale != null ? Locale(locale) : null;
//   final selected = await showMonthYearPicker(
//     context: context,
//     initialDate: _selected ?? DateTime.now(),
//     firstDate: DateTime(2019),
//     lastDate: DateTime(2022),
//     locale: localeObj,
//   );
//   if (selected != null) {
//     setState(() {
//       _selected = selected;
//     });
//}





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
