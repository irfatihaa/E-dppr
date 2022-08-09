
import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/opr.dart';
import 'package:untitled/ui/workingTime.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';


class Tb extends StatefulWidget {
  DateTime initialDate;

  Tb({Key key, this.initialDate}) : super(key: key);
  @override//
  State<Tb> createState() => _Tb();
}

class _Tb extends State<Tb> {
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }


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


