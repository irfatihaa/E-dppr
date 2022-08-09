
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'login.dart';
// import 'register.dart';
// import 'splashscreen.dart';
import 'update.dart';
import '../ui/widgets/header_widget.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
              )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 70, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 15.0),
                          alignment: Alignment.center,
                          child: const Text("User Information",
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 20
                            ),
                            textAlign: TextAlign.left
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                ...ListTile.divideTiles(color: Colors.grey, tiles: [
                                const ListTile(
                                leading: Icon(Icons.numbers_rounded),
                                title: Text("Staff ID"),
                                subtitle: Text("721708"),
                                ),
                                const ListTile(
                                leading: Icon(Icons.account_circle),
                                title: Text("User name"),
                                subtitle: Text("Sharifah Irfatiha"),
                                ),
                                const ListTile(
                                leading: Icon(Icons.email),
                                title: Text("Email"),
                                subtitle: Text("irfatiha@gmail.com"),
                                ),
                                const ListTile(
                                leading: Icon(Icons.work),
                                title: Text("Designation"),
                                subtitle: Text("Student"),
                                ),
                                ],),
                                ],)
                              ],
                          ),
                        ),
                        ),
                        Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Edit Profile'),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Update()),
                                );
                                //color: Colors.purpleAccent;
                              },
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )]
        ))
    );
  }
}