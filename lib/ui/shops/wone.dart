import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/opr.dart';
import 'package:untitled/ui/workingTime.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';


class Wone extends StatefulWidget {
  DateTime initialDate;

  Wone({Key key, this.initialDate}) : super(key: key);
  //A2({Key key}) : super(key: key);
  @override//
  State<Wone> createState() => _Wone();
}

class _Wone extends State<Wone> {
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }


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
              body: TabBarView(
                children: [
                  Production.withSampleData(),
                  Operation.withSampleData(),
                  workingTime.withSampleData(),
                  //ShiftA(),
                  //ShiftB(),
                ],
              ),
              floatingActionButton: Builder(
                builder: (context) =>
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurple,
                      onPressed: () {
                        showMonthPicker(
                          context: context,
                          firstDate: DateTime(DateTime.now().year - 1, 5),
                          lastDate: DateTime(DateTime.now().year + 3, 5),
                          initialDate: DateTime.now(),
                          locale: const Locale("en"),).then((date) {
                          if (date != null) {
                            setState(() {
                              selectedDate = date;
                            });
                          }
                        });
                      },
                      child: const Icon(Icons.calendar_month_outlined),
                    ),
              ),
            )));
  }
}


  // ShiftA() {
  //   List<charts.Series> seriesList;
  //   bool animate;
  //
  //   return SingleChildScrollView(
  //     child: ListView(
  //     children: <Widget>[
  //       Container(
  //         height: 100,
  //         child: charts.BarChart(
  //         seriesList, animate: animate,
  //         barGroupingType: charts.BarGroupingType.grouped,
  //         customSeriesRenderers: [
  //         charts.BarTargetLineRendererConfig<String>(
  //         // ID used to link series to this renderer.
  //         customRendererId: 'customTargetLine',
  //         groupingType: charts.BarGroupingType.grouped)
  //         ])
  //         ),
  //         ]
  //       ));
  //   }


  // List<charts.Series<Production, String>> _createGraphData() {
  //    final aProductionData = [
  //      Production('2014', 25),
  //      Production('2015', 50),
  //      Production('2016', 10),
  //      Production('2017', 20),
  //    ];
  //
  //    final bProductionData = [
  //      Production('2014', 10),
  //      Production('2015', 15),
  //      Production('2016', 50),
  //      Production('2017', 45),
  //    ];
  //
  //    final aTargetData = [
  //      Production('2014', 30),
  //      Production('2015', 55),
  //      Production('2016', 15),
  //      Production('2017', 25),
  //    ];
  //
  //    final bTargetData = [
  //      Production('2014', 10),
  //      Production('2015', 5),
  //      Production('2016', 45),
  //      Production('2017', 35),
  //    ];
  //    return [
  //      charts.Series<Production, String>(
  //        id: 'A',
  //        domainFn: (Production sales, _) => sales.year,
  //        measureFn: (Production sales, _) => sales.sales,
  //        data: aProductionData,
  //      ),
  //      charts.Series<Production, String>(
  //        id: 'B',
  //        domainFn: (Production sales, _) => sales.year,
  //        measureFn: (Production sales, _) => sales.sales,
  //        data:bProductionData,
  //      ),
  //
  //      charts.Series<Production, String>(
  //        id: 'A Target Line',
  //        domainFn: (Production sales, _) => sales.year,
  //        measureFn: (Production sales, _) => sales.sales,
  //        data: aTargetData,
  //      )
  //      // Configure our custom bar target renderer for this series.
  //        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
  //      charts.Series<Production, String>(
  //        id: 'B Target Line',
  //        domainFn: (Production sales, _) => sales.year,
  //        measureFn: (Production sales, _) => sales.sales,
  //        data: bTargetData,
  //      )
  //      // Configure our custom bar target renderer for this series.
  //        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
  //    ];
  // }
  //  }

// class Production {
//   final String year;
//   final int sales;
//
//   Production(this.year, this.sales);
// }


