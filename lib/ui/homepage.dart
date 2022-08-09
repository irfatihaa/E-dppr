// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:untitled/ui/dashboard.dart';
// import 'profile_page.dart';
// import 'shops.dart';
// //import 'settings.dart';
// import 'DPUmodel.dart';
// import 'package:untitled/ui/shops/assembly.dart';
// //import 'package:untitled/ui/shops/wone.dart';
// import 'package:untitled/ui/shops/paint.dart';
//
//
// // Future<http.Response> fetchDPPR() {
// //   return http.get(Uri.parse('https://pmppc30@perodua.com.my'));
// // }
//
// class HomePage extends StatefulWidget {
//   const HomePage ({Key key}) : super(key: key);
//
//   @override
//   _HomePage createState() => _HomePage();
// }
//
// class _HomePage extends State<HomePage> {
//
//   //final bool animate = false;
//   final double  _drawerIconSize = 24;
//   final double _drawerFontSize = 17;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(scaffoldBackgroundColor: const Color(0xffffffff),),
//       debugShowCheckedModeBanner: false,
//       //home: const HomePage(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("eDPPR", style: TextStyle(color: Colors.white)),
//           //elevation: .1,
//           backgroundColor: const Color(0xff4a148c),
//         ),
//
//         body:
//           Card(
//             child: Column (
//               children: <Widget>[
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(30, 50, 30, 0), height: 120, width:140,
//                     child:Material(
//                     color: Colors.deepPurple[100],
//                       child: InkWell(
//                         splashColor: Colors.deepPurple,
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute( builder: (context) => A2.withSampleData()));
//                         },
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const <Widget>[Icon(Icons.handyman, size: 40.0),// <-- Icon
//                           Text("A2", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                     // <-- Text
//                   ],
//                 ),
//               ),
//             ),
//           ),
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(30, 50, 30, 0), height: 120, width: 140,
//                   //child: ClipOval(
//                   child: Material(
//                   color: Colors.deepPurple[100],
//                     child: InkWell(
//                     splashColor: Colors.deepPurple,
//                     onTap: () {
//                      //Navigator.push(context, MaterialPageRoute(builder: (context) => W1.withSampleData()));
//                     },
//                       child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const <Widget>[
//                         Icon(Icons.time_to_leave_rounded, size: 40.0),
//                     // <-- Icon
//                         Text("W1", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                     // <-- Text
//                   ],
//                 ),
//               ),
//             ),
//           ),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(30, 50, 30, 0), height: 120, width: 140,
//               //child: ClipOval(
//                 child: Material(
//                 color: Colors.deepPurple[100],
//                   child: InkWell(
//                   splashColor: Colors.deepPurple,
//                   onTap: () {
//                     //Navigator.push(context, MaterialPageRoute(builder: (context) => Tb.withSampleData()));
//                   },
//                     child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const <Widget>[
//                       Icon(Icons.brush_outlined, size: 40.0),
//                       //color_filled_rounded, format_paint// <-- Icon
//                       Text("TB", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                     // <-- Text
//                   ],
//                 ),
//               ),
//             ),
//           )])),
//
//
//         drawer: Drawer(
//         //child: Container(color:Colors.deepPurple[100],
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountName: const Text("Sharifah Irfatiha"),
//                 accountEmail: const Text("irfatihaismail@perodua.com.my"),
//                 //decoration: BoxDecoration(color: const Color(0xFF00897b),
//                 currentAccountPicture: CircleAvatar(
//                   child:
//                   Image.asset('assets/images/logoPerodua.jpg')
//                   ),
//                 ),
//               ListTile(
//                 leading: Icon(Icons.people, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
//                 title: Text('Profile', style: TextStyle(fontSize: 17, color: Theme.of(context).colorScheme.secondary),),
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>const ProfilePage()));
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.house_outlined,size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary),
//                 title: Text('Home Page', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).colorScheme.secondary),
//                 ),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Shops()),);
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.paste_outlined, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
//                 title: Text('Dashboard',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).colorScheme.secondary),),
//                 onTap: () {
//                   Navigator.push( context, MaterialPageRoute(builder: (context) => const Dashboard()), );
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.build_outlined, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
//                 title: Text('DPU by Model',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).colorScheme.secondary),),
//                 onTap: () {
//                   Navigator.push( context, MaterialPageRoute(builder: (context) => DPUmodel()), );
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.dashboard, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
//                 title: Text('Summary',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).colorScheme.secondary),),
//                 onTap: () {
//                   //Navigator.push( context, MaterialPageRoute(builder: (context) => RadarChart(data: [], features: [], ticks: [],)), );//Summary()), );
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.settings_outlined, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
//                 title: Text('Settings',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).colorScheme.secondary),),
//                 onTap: () {
//                   //Navigator.push( context, MaterialPageRoute(builder: (context) => Settings()), );
//                 },
//               ),
//               Divider(color: Theme.of(context).primaryColor, height: 1,),
//               ListTile(
//                 leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary),
//                 title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).colorScheme.secondary),),
//                 onTap: () {
//                   SystemNavigator.pop();
//                 },
//               ),
//             ],
//           ),
//   )));
//   }
//
// // Card makeDashboardItem(String title, IconData icon, ) {
// //   return Card(
// //       elevation: 1.0,
// //       margin: EdgeInsets.all(10.0),
// //       child: Container(
// //         decoration: BoxDecoration(color: Color.fromRGBO(236, 218, 255, 1.0)),
// //         child: InkWell(
// //           onTap: () {},
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             mainAxisSize: MainAxisSize.min,
// //             verticalDirection: VerticalDirection.down,
// //             children: <Widget>[
// //               SizedBox(height: 25.0),
// //               Center(
// //                   child: Icon(
// //                     icon,
// //                     size: 25.0,
// //                     color: Colors.black,
// //                   )),
// //               SizedBox(height: 10.0),
// //               Center(
// //                 child: Text(title,
// //                     style:
// //                     TextStyle(fontFamily: 'AnekBangla', fontSize: 15.0, color: Colors.black)),
// //               )
// //             ],
// //           ),
// //         ),
// //       ));
// }