import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/ui/dashboard.dart';
import 'profile_page.dart';
// import 'settings.dart';
import 'DPUmodel.dart';
import 'package:untitled/ui/shops/assembly.dart';
import 'package:untitled/ui/shops/wone.dart';
import 'package:untitled/ui/shops/quality.dart';
import 'package:untitled/ui/shops/paint.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';


class Shops extends StatefulWidget {
  //const Shops ({Key key}) : super(key: key);

  @override
  _Shops createState() => _Shops();
}

class _Shops extends State<Shops> {

  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xffffffff),),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Production by Shops", style: TextStyle(color: Colors.white)),
                  elevation: 0.5,
                  iconTheme: IconThemeData(color: Colors.white),
                  backgroundColor: Color(0xff4a148c),
                  // Card(
                  //     child: Column(
                  //         children: <Widget>[
                  //           Container(
                  //             margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
                  //             height: 120,
                  //             width: 140,
                  //             child: Material(
                  //               color: Colors.deepPurple[100],
                  //               child: InkWell(
                  //                 splashColor: Colors.deepPurple,
                  //                 onTap: () {
                  //                   Navigator.push(
                  //                       context, MaterialPageRoute(builder: (
                  //                       context) => Assembly.withSampleData()));
                  //                 },
                  //                 child: Column(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: <Widget>[
                  //                     Icon(Icons.handyman, size: 40.0),
                  //                     // <-- Icon
                  //                     Text("A2", style: TextStyle(fontSize: 20.0,
                  //                         fontWeight: FontWeight.bold)),
                  //                     // <-- Text
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Container(
                  //             margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
                  //             height: 120,
                  //             width: 140,
                  //             //child: ClipOval(
                  //             child: Material(
                  //               color: Colors.deepPurple[100],
                  //               child: InkWell(
                  //                 splashColor: Colors.deepPurple,
                  //                 onTap: () {
                  //                   Navigator.push(
                  //                       context, MaterialPageRoute(builder: (
                  //                       context) => WOne.withSampleData()));
                  //                 },
                  //                 child: Column(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: <Widget>[
                  //                     Icon(Icons.time_to_leave_rounded, size: 40.0),
                  //                     // <-- Icon
                  //                     Text("W1", style: TextStyle(fontSize: 20.0,
                  //                         fontWeight: FontWeight.bold)),
                  //                     // <-- Text
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //
                  //           Container(
                  //             margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
                  //             height: 120,
                  //             width: 140,
                  //             //child: ClipOval(
                  //             child: Material(
                  //               color: Colors.deepPurple[100],
                  //               child: InkWell(
                  //                 splashColor: Colors.deepPurple,
                  //                 onTap: () {
                  //                   Navigator.push(
                  //                       context, MaterialPageRoute(builder: (
                  //                       context) => Paint.withSampleData()));
                  //                 },
                  //                 child: Column(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: <Widget>[
                  //                     Icon(Icons.brush_outlined, size: 40.0),
                  //                     //color_filled_rounded, format_paint// <-- Icon
                  //                     Text("TB", style: TextStyle(fontSize: 20.0,
                  //                         fontWeight: FontWeight.bold)),
                  //                     // <-- Text
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           )
                  //         ])),
                  bottom: const TabBar(
                    tabs: [
                      Tab(text: "W1"),
                      Tab(text: "TB"),
                      Tab(text: "A2"),
                      Tab(text: "DO"),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [

                    // A2.withSampleData(),
                    // DO.withSampleData(),
                  ],
                ),

                drawer: Drawer(
                  //child: Container(color:Colors.deepPurple[100],
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[100]
                        ),
                        accountName: Text("Irfatiha Ismail"),
                        accountEmail: Text("irfatiha.ismail@perodua.com.my"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.people, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                        title: Text(
                          'Dashboard', style: TextStyle(fontSize: 17, color: Theme.of(context).colorScheme.secondary),),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                        },
                      ),
                      Divider(color: Theme.of(context).primaryColor, height: 1,),
                      ListTile(
                        leading: Icon(
                            Icons.house_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary),
                        title: Text(
                          'Shops', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Shops()),);
                        },
                      ),
                      Divider(color: Theme.of(context).primaryColor, height: 1,),
                      ListTile(
                        leading: Icon(
                          Icons.paste_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                        title: Text(
                          'DPU by Model', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => DPUmodel()),);
                        },
                      ),
                      // Divider(color: Theme.of(context).primaryColor, height: 1,),
                      // ListTile(
                      //   leading: Icon(
                      //     Icons.build_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                      //   title: Text(
                      //     'DPU by Model', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                      //   onTap: () {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => DPUmodel()),);
                      //   },
                      // ),
                      Divider(color: Theme.of(context).primaryColor, height: 1,),
                      ListTile(
                        leading: Icon(
                          Icons.settings_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                        title: Text(
                          'Settings', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                        onTap: () {
                          //Navigator.push( context, MaterialPageRoute(builder: (context) => Settings()), );
                        },
                      ),
                      Divider(color: Theme.of(context).primaryColor, height: 1,),
                      ListTile(
                        leading: Icon(
                            Icons.logout_rounded, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary),
                        title: Text(
                          'Logout', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                        onTap: () {
                          SystemNavigator.pop();
                        },
                      ),
                    ],
                  ),
                ))));
  }
}


  // W1() {
  // }

//   Tb() {
//       final List<SalesData> chartData = [
//         SalesData("January", 35),
//         SalesData("February", 28),
//         SalesData("March", 34),
//         SalesData("April", 32),
//         SalesData("May", 40)
//       ];
//
//       return Scaffold(
//           body: Center(
//               child: Container(
//                   child: SfCartesianChart(
//                       primaryXAxis: DateTimeAxis(),
//                       series: <ChartSeries>[
//                         // Renders line chart
//                         LineSeries<SalesData, String>(
//                             dataSource: chartData,
//                             xValueMapper: (SalesData sales, _) => sales.month,
//                             yValueMapper: (SalesData sales, _) => sales.sales
//                         )
//                       ]
//                   )
//               )
//           )
//       );
//     }
//
//   W1() {}
//   }
//
// class SalesData {
//   SalesData(this.month, this.sales);
//   final String month;
//   final double sales;
// }
//
//   A2() {}
//
//   DO() {}
// //}
//
// // class W1 extends StatefulWidget {
// //   const W1({Key key}) : super(key: key);
//
// // class SeriesDatas {
// //   final int time;
// //   final int data;
// //
// //   SeriesDatas(this.time, this.data);
// // }
// //
// // class _W1 extends State<W1> {
// //   //Line chart
// //   Widget _chartWidget() {
// //     final serial1data = [
// //       new SeriesDatas(1, 5),
// //       new SeriesDatas(2, 25),
// //       new SeriesDatas(3, 100),
// //       new SeriesDatas(4, 75),
// //     ];
// //
// //     final serial2data = [
// //       new SeriesDatas(1, 15),
// //       new SeriesDatas(2, 125),
// //       new SeriesDatas(3, 30),
// //       new SeriesDatas(4, 175),
// //     ];
// //     List<charts.Series<SeriesDatas, int>> seriesList = [
// //       new charts.Series<SeriesDatas, int>(
// //         id: 'line1',
// //         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
// //         domainFn: (SeriesDatas sales, _) => sales.time,
// //         measureFn: (SeriesDatas sales, _) => sales.data,
// //         data: serial1data,
// //       ),
// //       new charts.Series<SeriesDatas, int>(
// //         id: 'line2',
// //         colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
// //         domainFn: (SeriesDatas sales, _) => sales.time,
// //         measureFn: (SeriesDatas sales, _) => sales.data,
// //         data: serial2data,
// //       )
// //     ];
// //
// //     var chart = new charts.LineChart(
// //       seriesList,
// //       animate: true,
// //       behaviors: [
// //         new charts.SeriesLegend(
// //           //The legend positions are start on the left and end on the right
// //           position: charts.BehaviorPosition.end,
// //           //If the legend entry [horizo ntalfirst] is set to false, the legend entry will grow first as a new row rather than as a new column
// //           horizontalFirst: false,
// //           //Padding around each legend entry
// //           cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
// //           //Show metrics
// //           showMeasures: true,
// //           //Measurement format
// //           measureFormatter: (num value) {
// //             return value == null ? '-' : '${value}k';
// //           },
// //         ),
// //       ],
// //     );
// //
// //     return new Card(
// //       child: Container(
// //         padding: new EdgeInsets.fromLTRB(16, 10, 16, 20),
// //         margin: new EdgeInsets.only(bottom: 20),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: <Widget>[
// //             new Center(
// //               child: new Text(
// //                 'xxx (line chart)',
// //                 style: TextStyle(
// //                   color:  Color.fromRGBO (0, 0, 0, 1.0), // opacity: opacity
// //                   fontFamily: 'PingFangBold',
// //                   fontSize: 15.0,
// //                 ),
// //               ),
// //             ),
// //             new Padding(
// //               padding: new EdgeInsets.all(32.0),
// //               child: new SizedBox(
// //                 height: 200.0,
// //                 child: chart,
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //       body: new Center(
// //         child: _chartWidget(),
// //       ),
// //     );
// //   }
// // }

