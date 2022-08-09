import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/ui/shops/wone.dart';
import 'package:untitled/ui/shops/paint.dart';
import 'package:untitled/ui/shops/assembly.dart';
import 'package:untitled/ui/shops/quality.dart';
import 'profile_page.dart';
import 'DPUmodel.dart';
//import 'settings.dart';
//import 'shops.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  static const String _title = 'e-DPPR';
  final double _drawerIconSize = 24;
  final double _drawerFontSize = 17;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2021, 10),
        lastDate: DateTime(2022, 09));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), backgroundColor: Colors.deepPurple),
        body:
        //Center(
        Column(
            children: [
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Text('Select date'),
              style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              textStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Text("${selectedDate.toLocal()}".split(' ')[0],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          const MyStatelessWidget(), //table in dashboard
        ]
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                color: Colors.deepPurple[100]
               ),
                accountName: const Text("Sharifah Irfatiha"),
                accountEmail: const Text("irfatiha@gmail.com"),
              ),
              ListTile(
                leading: Icon(
                  Icons.paste_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                title: Text(
                  'Dashboard', style: TextStyle(fontSize: 17, color: Theme.of(context).colorScheme.secondary),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ExpansionTile(
                title: Text(
                  'Shops Achievement', style: TextStyle(fontSize: 17, color: Theme.of(context).colorScheme.secondary),),
                leading: Icon(
                    Icons.house_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary),
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      width: 350, height: 50,
                      decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      ),
                        child: Card(child: Center(child: Text('W1', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),
                      ),
                      ))),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Wone()),);
                      },
                ),
                const SizedBox(height: 0),
                GestureDetector(
                  child: Container(
                    width: 350, height: 50,
                    decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                  ),
                    child: Card(child: Center(child: Text('TB', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),
                    ),
                    ))),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tb()),);
                  }
                  ,),
                const SizedBox(height: 0,),
                GestureDetector(
                  child: Container(
                    width: 350, height: 50,
                    decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                  ),
                    child: Card(child: Center(child:Text('A2', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),
                      ),
                      ))),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => A2()),);
                    }
                    ,),
                const SizedBox(height: 0,),
                GestureDetector(
                  child: Container(
                  width: 350, height: 50,
                  decoration: BoxDecoration(
                  color:  Colors.deepPurple[100],
                  ),
                    child: Card(child: Center(child: Text('DO', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),
                  )))),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DO()),);
                  }
                )
              ]),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.build_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                title: Text(
                  'DPU by Model', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DPUmodel()),);
                },
              ),
              // Divider(color: Theme.of(context).primaryColor, height: 1,),
              // ListTile(
              //   leading: Icon(
              //     Icons.paste_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
              //   title: Text('Summary', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => Downtime()),);
              //   },
              // ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.people, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                title: Text(
                  'Profile', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProfilePage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(
                  Icons.settings_outlined, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                title: Text('Settings',
                  style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),),
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
        )));
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
        child:
          Table(
          border: TableBorder.symmetric(
              inside: const BorderSide(width: 1, color: Colors.deepPurple),
              outside: const BorderSide(width: 1, color: Colors.deepPurple)),
          children: [
            TableRow(decoration: BoxDecoration(
            color:  Colors.deepPurple[50]),
            children: const [
            TableCell(
              child: SizedBox(height: 50,
                child: Center(
                  child: Text('Shop', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                ))),
            TableCell(
              child: SizedBox(height: 50,
                  child: Center(
                    child:Text('Shift', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ))),
            TableCell(
                child: SizedBox(height: 50,
                    child: Center(
                      child:Text('Plan', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ))),
            TableCell(
                child: SizedBox(height: 50,
                    child: Center(
                      child: Text('Actual', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
            )))]),

            TableRow(decoration: BoxDecoration(color:  Colors.yellow[50]),
            children: const [
              TableCell(
                child: SizedBox(height: 40,
                  child: Center(
                    child: Text('A2', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ))),
              TableCell(
                child: SizedBox(height: 40,
                  child: Center(
                    child:Text('A', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ))),
              TableCell(
                child: SizedBox(height: 40,
                  child: Center(
                    child:Text('302', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ))),
              TableCell(
                child: SizedBox(height: 40,
                  child: Center(
                    child: Text('270', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
              )))]),

            TableRow(decoration: BoxDecoration(color:  Colors.yellow[50]),
            children: const [
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child: Text('A2', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child:Text('B', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child:Text('304', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child: Text('209', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
            )))]),

            TableRow(decoration: BoxDecoration(color:  Colors.yellow[100]),
            children: const [
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child: Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                 child: Center(
                  child:Text('Total', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child:Text('606', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            ))),
            TableCell(
              child: SizedBox(height: 40,
                child: Center(
                  child: Text('479', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
            )))]),

            TableRow(decoration: BoxDecoration(color:  Colors.yellow[100]),
            children: const [
            TableCell(
              child: SizedBox(height: 60,
                child: Center(
                  child: Text(' ', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            ))),
            TableCell(
              child: SizedBox(height: 60,
                child: Center(
                  child:Text('OPR', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ))),
            TableCell(
              child: SizedBox(height: 60,
                child: Center(
                  child:Text('95.3', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ))),
            TableCell(
              child: SizedBox(height: 60,
                child: Center(
                  child: Text('79.1', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            )))]),

            TableRow(decoration: BoxDecoration(color:  Colors.cyanAccent[100]),
                children: const [
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child: Text('DO', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('A', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('302', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                              child: Text('286', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
                          )))]),

            TableRow(decoration: BoxDecoration(color: Colors.cyanAccent[100]),
                children: const [
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child: Text('DO', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('B', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('304', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                              child: Text('224', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
                          )))]),

            const TableRow(decoration: const BoxDecoration(color:  Colors.cyanAccent),
                children: [
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child: Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('Total', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                            child:Text('606', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 40,
                          child: Center(
                              child: Text('510', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))
                          )))]),

            const TableRow(decoration: BoxDecoration(color:  Colors.cyanAccent),
                children: [
                  TableCell(
                      child: SizedBox(height: 60,
                          child: Center(
                            child: Text(' ', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 60,
                          child: Center(
                            child:Text('OPR', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          ))),
                  TableCell(
                      child: SizedBox(height: 60,
                          child: Center(
                            child:Text('95.3', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                          ))),
                  TableCell(
                      child: SizedBox(height: 60,
                          child: Center(
                              child: Text('87.4', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                          )))]),




    ]))]));
      //     DataTable(
      //       headingRowColor: MaterialStateProperty.all(Colors.deepPurple[100]),
      //       dataRowColor: MaterialStateProperty.all(Colors.yellow[100]),
      //       decoration: BoxDecoration(),
      //       border: const TableBorder(verticalInside: BorderSide(width: 0.5, color: Colors.deepPurple, style: BorderStyle.solid)),
      //       headingRowHeight: 50.0,
      //       horizontalMargin: 20,
      //       columnSpacing: 20,
      //       dividerThickness: 1.0,
      //       showBottomBorder: true,
      //       columns: const <DataColumn>[
      //
      //       DataColumn(label: Text('Shop', textAlign: TextAlign.center,
      //         style: TextStyle(fontStyle: FontStyle.normal),
      //       ),
      //     ),
      //       DataColumn(label: Text('Shift', textAlign: TextAlign.center,
      //         style: TextStyle(fontStyle: FontStyle.normal),
      //       ),
      //     ),
      //       DataColumn(label: Text('Plan', textAlign: TextAlign.center,
      //         style: TextStyle(fontStyle: FontStyle.normal),
      //       ),
      //     ),
      //       DataColumn(label: Text('Actual', textAlign: TextAlign.center,
      //         style: TextStyle(fontStyle: FontStyle.normal),
      //       ),
      //     ),
      //   ],
      //     rows:
      //     // _items.map((item) => _createRow(item))
      //     //     .toList()
      //     const <DataRow>[
      //     DataRow(
      //
      //       cells: <DataCell>[
      //         DataCell(Text('A2', textAlign: TextAlign.center)),
      //         DataCell(Text('A', textAlign: TextAlign.center)),
      //         DataCell(Text('302', textAlign: TextAlign.center)),
      //         DataCell(Text('270', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text('A2', textAlign: TextAlign.center)),
      //         DataCell(Text('B', textAlign: TextAlign.center)),
      //         DataCell(Text('304', textAlign: TextAlign.center)),
      //         DataCell(Text('209', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text(' ')),
      //         DataCell(Text('Total', textAlign: TextAlign.center)),
      //         DataCell(Text('606', textAlign: TextAlign.center)),
      //         DataCell(Text('479', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text('')),
      //         DataCell(Text('OPR', textAlign: TextAlign.center)),
      //         DataCell(Text('95.3', textAlign: TextAlign.center,
      //             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      //         DataCell(Text('79.1', textAlign: TextAlign.center,
      //             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      //       ],
      //     ),
      //
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text('DO', textAlign: TextAlign.center)),
      //         DataCell(Text('A', textAlign: TextAlign.center)),
      //         DataCell(Text('302', textAlign: TextAlign.center)),
      //         DataCell(Text('286', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text('DO', textAlign: TextAlign.center)),
      //         DataCell(Text('B', textAlign: TextAlign.center)),
      //         DataCell(Text('304', textAlign: TextAlign.center)),
      //         DataCell(Text('224', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text(' ')),
      //         DataCell(Text('Total', textAlign: TextAlign.center)),
      //         DataCell(Text('606', textAlign: TextAlign.center)),
      //         DataCell(Text('510', textAlign: TextAlign.center)),
      //       ],
      //     ),
      //     DataRow(
      //       cells: <DataCell>[
      //         DataCell(Text(' ')),
      //         DataCell(Text('OPR', textAlign: TextAlign.center)),
      //         DataCell(Text('95.3', textAlign: TextAlign.center,
      //             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      //         DataCell(Text('87.4', textAlign: TextAlign.center,
      //             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      //       ],
      //     ),
      //   ],
      // ));
  }
}


  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       home: Scaffold(
  //         appBar: AppBar(
  //             title: Text('Daily Progress Report', style: TextStyle(color: Colors.black)),
  //             backgroundColor: Color.fromRGBO(236, 218, 255, 1.0)
  //         ),
  //         body:
  //         ListView(
  //           children: [
  //             _createDataTable()
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  // DataTable _createDataTable() {
  //   return DataTable(columns: _createColumns(), rows: _createRows());
  // }
  // List<DataColumn> _createColumns() {
  //   return [
  //     DataColumn(label: Text('Shop')),
  //     DataColumn(label: Text('Shift')),
  //     DataColumn(label: Text('Plan')),
  //     DataColumn(label: Text('Actual')),
  //     DataColumn(label: Text('Diff'))
  //   ];
  // }
  // List<DataRow> _createRows() {
  //   return _DPPRData
  //       .map((dppr) => DataRow(cells: [
  //     DataCell(Text(dppr['shop'].toString())),
  //     DataCell(Text(dppr['shift'])),
  //     DataCell(Text(dppr['plan'])),
  //     DataCell(Text(dppr['actual'])),
  //     DataCell(Text(dppr['diff']))
  //   ]))
  //       .toList();
  // }
  //
  // }

//   }
// }
// DataTable _DPPRData() {
//   return DataTable(
//     columns: _createColumns(),
//     rows: _createRows(),
//     columnSpacing: 15,
//     dataRowHeight: 30,
//     showBottomBorder: true,
//     headingTextStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: Colors.white
//     ),
//     headingRowColor: MaterialStateProperty.resolveWith(
//             (states) => Colors.deepPurple
//     ),
//   );
// }
// List<DataColumn> _createColumns() {
//
//   return [
//     const DataColumn(label: Text('SHOP', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//     const DataColumn(label: Text('SHIFT', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//     //const DataColumn(label: Text('SHIFTTime', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//     const DataColumn(label: Text('PLAN', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//     const DataColumn(label: Text('ACTUAL', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//     const DataColumn(label: Text('DIFF', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
//   ];
// }
//List<DataRow> _createRows() {

  // return [
  //   var items = data.data as List<JsonDataModel>;
  // ListView.builder(
  //     itemBuilder: (context, index)
  //   DataRow(cells: [
  //     DataCell(Text(items[index].Line.toString(), style: const TextStyle(fontSize: 15))),
  //     DataCell(Text(items[index].Shift.toString(), style: const TextStyle(fontSize: 15))),
  //     DataCell(Text(items[index].Mdl05_PlanVol.toString(), style: const TextStyle(fontSize: 15))),
  //     DataCell(Text(items[index].Mdl05_ActVol.toString(), style: const TextStyle(fontSize: 15))),
  //     DataCell(Text(items[index].ActOpr.toString(), style: const TextStyle(fontSize: 15))),
  //   ]),
  // )];

