
import 'package:flutter/material.dart';
import 'package:untitled/ui/production.dart';
import 'package:untitled/ui/opr.dart';
import 'package:untitled/ui/workingTime.dart';


class Tb extends StatelessWidget {
  Tb({Key key}) : super(key: key);

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


