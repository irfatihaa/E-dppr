import 'package:flutter/material.dart';
import 'package:untitled/ui/DPU/alza.dart';
import 'package:untitled/ui/DPU/SUV.dart';
import 'package:untitled/ui/DPU/myvi.dart';
import 'package:untitled/ui/DPU/sirion.dart';



/// Creates a [BarChart] with sample data and no transition.
class DPUmodel extends StatelessWidget {
  //DPUmodel({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 20) / 2;
    final double itemWidth = size.width / 2;
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                //centerTitle: true,
                title: const Text(
                  "DPU by Model", style: TextStyle(fontWeight: FontWeight.bold),
                )),

            body: Container(
                height: 700, width: 500,
                color: Colors.white,
                child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(1),
                        color: Colors.deepPurple[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Myvi',style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Container(
                            padding: const EdgeInsets.only(top: 5),
                              child: Myvi.withSampleData(),
                            ))]
                        )),
                      Container(
                        padding: const EdgeInsets.all(1),
                          color: Colors.deepPurple[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          const Text('Sirion',style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Container(
                            padding: const EdgeInsets.only(top: 10),
                              child: Sirion.withSampleData(),
                            ))]
                        )),
                      Container(
                          padding: const EdgeInsets.all(1), color: Colors.deepPurple[50],
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('D27A',style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Container(
                                      //padding: const EdgeInsets.only(top: 10),
                                      child: Alza.withSampleData(),
                                    ))]
                          )),
                      Container(
                          padding: const EdgeInsets.all(1), color: Colors.deepPurple[50],
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('SUV',style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: SUV.withSampleData(),
                                    ))]
                          )),
                          // charts.BarChart(
                          //   seriesList,
                          //   animate: animate,
                        ])
                    //]
        )));
    //));
  }
}


//DefaultTabController(
//       length: 3,
//       child: Scaffold
//         (backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back, color: Colors.white),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//           //centerTitle: true,
//           title: const Text("DPU by Model", style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: "Shift A"),
//               Tab(text: "Shift B"),
//               Tab(text: "Overall"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             ShiftA(),
//             ShiftB(),
//             Overall(),
//           ],
//         ),
//       ),
//     ),
//   );
//
// }
//
//   final List<ChartData> chartData = [
//     ChartData('Myvi', 0.481, Colors.lightGreenAccent), //Color.fromRGBO(9, 0, 136, 1)),
//     ChartData('Sirion', 0.102, Colors.indigo), //Color.fromRGBO(147, 0, 119, 1)),
//     ChartData('Aruz', 0.567, Colors.amber), //Color.fromRGBO(228, 0, 124, 1)),
//     ChartData('Rush', 0.090, Colors.tealAccent)
//   ];
//
//
//
//   ShiftA() {
//   return Container(
//   decoration: const BoxDecoration(color: Colors.white),
//       child: Column(
//       children: <Widget>[
//         Center(
//           child: SfCircularChart(
//           legend: Legend(isVisible: true,
//           title: LegendTitle(text:'Model : ', textStyle: const TextStyle(color: Colors.black,
//           fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)
//           )),
//           series: <CircularSeries>[
//           // Renders doughnut chart
//           DoughnutSeries<ChartData, String>(
//           dataSource: chartData,
//           pointColorMapper: (ChartData data, _) => data.color,
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y,
//           dataLabelSettings: const DataLabelSettings(
//           isVisible: true, // Positioning the data label
//           labelPosition: ChartDataLabelPosition.inside
//           )
//           )])
//   ),
//         Table(
//             defaultColumnWidth: const FixedColumnWidth(70),
//             border: TableBorder.all(
//             color: Colors.deepPurple,
//             style: BorderStyle.solid,
//             width: 1),
//             children: [
//             TableRow(children: [
//             Column(children:const [Text('Shift/Model', style: TextStyle(fontSize: 15))]),
//             Column(children:const [Text('A', style: TextStyle(fontSize: 15))]),
//             Column(children:const [Text('B', style: TextStyle(fontSize: 15))]),
//             Column(children:const [Text('Average', style: TextStyle(fontSize: 15))]),
//             Column(children:const [Text('Cumulative', style: TextStyle(fontSize: 15))]),
//             ]),
//
//             TableRow(
//             children: [
//               Column(children:const [Text('Myvi', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.006', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.007', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.009', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.481', style: TextStyle(fontSize: 15))]),
//         ]),
//
//             TableRow(
//               children: [
//               Column(children:const [Text('Sirion', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.083', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.020', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.093', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.102', style: TextStyle(fontSize: 15))]),
//             ]),
//               TableRow(
//               children: [
//               Column(children:const [Text('Aruz', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.200', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.703', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.552', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.567', style: TextStyle(fontSize: 15))]),
//             ]),
//               TableRow(
//               children: [
//               Column(children:const [Text('Rush', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.010', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.028', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.019', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.090', style: TextStyle(fontSize: 15))]),
//             ]),
//             ])
//       ]));
//   }
//
//   ShiftB() {
//   return Container(
//   decoration: const BoxDecoration(color: Colors.white),
//     child: Center(
//       child: Column(
//       children: <Widget>[
//         Center(
//           child: SfCircularChart(
//           legend: Legend(isVisible: true,
//           title: LegendTitle(text:'Model : ', textStyle: const TextStyle(color: Colors.black,
//               fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)
//               )),
//           series: <CircularSeries>[
//         // Renders doughnut chart
//         DoughnutSeries<ChartData, String>(
//         dataSource: chartData,
//         pointColorMapper: (ChartData data, _) => data.color,
//         xValueMapper: (ChartData data, _) => data.x,
//         yValueMapper: (ChartData data, _) => data.y,
//         dataLabelSettings: const DataLabelSettings(
//         isVisible: true, // Positioning the data label
//         labelPosition: ChartDataLabelPosition.outside
//         )
//         )
//       ]
//       )
//       ),
//         Table(
//         defaultColumnWidth: const FixedColumnWidth(70),
//         border: TableBorder.all(
//         color: Colors.deepPurple,
//         style: BorderStyle.solid,
//         width: 1),
//         children: [
//               TableRow(children: [
//               Column(children:const [Text('Shift/Model', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('A', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('B', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('Average', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('Cumulative', style: TextStyle(fontSize: 15))]),
//               ]),
//
//               TableRow(
//               children: [
//               Column(children:const [Text('Myvi', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.006', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.007', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.009', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.481', style: TextStyle(fontSize: 15))]),
//               ]),
//
//               TableRow(
//               children: [
//               Column(children:const [Text('Sirion', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.083', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.020', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.093', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.102', style: TextStyle(fontSize: 15))]),
//               ]),
//               TableRow(
//               children: [
//               Column(children:const [Text('Aruz', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.200', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.703', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.552', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.567', style: TextStyle(fontSize: 15))]),
//               ]),
//               TableRow(
//               children: [
//               Column(children:const [Text('Rush', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.010', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.028', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.019', style: TextStyle(fontSize: 15))]),
//               Column(children:const [Text('0.090', style: TextStyle(fontSize: 15))]),
//               ]),
//               ])
//               ])));
//             }
//
//   Overall() {
//     return Container(
//         decoration: const BoxDecoration(color: Colors.white),
//         child: Center(
//             child: Column(
//                 children: <Widget>[
//                   Center(
//                     child: SfCircularChart(
//                         legend: Legend(isVisible: true,// Legend title
//                         title: LegendTitle(
//                             text:'Model : ',
//                             textStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                                 fontStyle: FontStyle.italic,
//                                 fontWeight: FontWeight.w900
//                             )
//                         )),
//                         series: <CircularSeries>[
//                           // Renders doughnut chart
//                           DoughnutSeries<ChartData, String>(
//                             dataSource: chartData,
//                               pointColorMapper: (ChartData data, _) => data.color,
//                               xValueMapper: (ChartData data, _) => data.x,
//                               yValueMapper: (ChartData data, _) => data.y,
//                               dataLabelSettings: const DataLabelSettings(
//                               isVisible: true, // Positioning the data label
//                               labelPosition: ChartDataLabelPosition.outside
//                               )
//                           )
//                         ]
//                     )
//                   ),
//                   Table(
//                       defaultColumnWidth: const FixedColumnWidth(70),
//                       border: TableBorder.all(
//                           color: Colors.deepPurple,
//                           style: BorderStyle.solid,
//                           width: 1),
//                       children: [
//                       TableRow(children: [
//                       Column(children:const [Text('Shift/Model', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('A', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('B', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('Average', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('Cumulative', style: TextStyle(fontSize: 15))]),
//                       ]),
//
//                       TableRow(
//                       children: [
//                       Column(children:const [Text('Myvi', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.006', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.007', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.009', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.481', style: TextStyle(fontSize: 15))]),
//                       ]),
//
//                       TableRow(
//                       children: [
//                       Column(children:const [Text('Sirion', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.083', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.020', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.093', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.102', style: TextStyle(fontSize: 15))]),
//                       ]),
//                       TableRow(
//                       children: [
//                       Column(children:const [Text('Aruz', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.200', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.703', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.552', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.567', style: TextStyle(fontSize: 15))]),
//                       ]),
//                       TableRow(
//                       children: [
//                       Column(children:const [Text('Rush', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.010', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.028', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.019', style: TextStyle(fontSize: 15))]),
//                       Column(children:const [Text('0.090', style: TextStyle(fontSize: 15))]),
//                       ]),
//                       ])
//                       ])));
//   }
// }
//
//
//
//     class ChartData {
//     ChartData(this.x, this.y, [this.color]);
//     Color color;
//     final String x;
//     final double y;
//     //final Color color;
//     }

