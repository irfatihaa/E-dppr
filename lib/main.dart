//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
//import 'login.dart';
//import 'register.dart';
import 'ui/splashscreen.dart';
//import 'package:flutter/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  Color _primaryColor = Colors.deepPurple;
  Color _accentColor = Colors.grey;


  static const String _title = 'Perodua Manufacturing Sdn Bhd';

  // var initialRoute; '/';
  // routes; {
  // '/'; (context) => const MyStatefulWidget();
  // '/Sign Up'; (context) => const SecStatefulWidget();
  // }
  // navigateToLogin() async {
  //   Navigator.pushReplacementNamed(context,"Login");
  // }
  //
  // navigateToRegister() async {
  //   Navigator.pushReplacementNamed(context,"Sign up");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          primaryColor: _primaryColor,
          accentColor: _accentColor,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.deepPurple
      ),
      home: SplashScreen(title: 'e-DPPR'),
    );
  }
}

