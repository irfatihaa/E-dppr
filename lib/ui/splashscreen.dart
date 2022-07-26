import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState(){

    Timer(const Duration(milliseconds: 2000), (){
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginPage()), (route) => false);
      });
    });

    Timer(
        const Duration(milliseconds: 10),(){
      setState(() {
        _isVisible = true; // fade and navigate to Login page
      });
    }
    );

  }

  @override
  Widget build(BuildContext context) {

    return Container (
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          colors: <Color>[
            Color(0xffffffff),
            Color(0xffffffff)
          ],
          tileMode: TileMode.mirror// repeats the gradient over the canvas
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 1.0,
        duration: const Duration(milliseconds: 1500),
        child: Center(
          child: SizedBox(
            height: 200.0,
            width: 200.0,
            child: Center(
              child: Image.asset('assets/images/logoPerodua.jpg'),
                // width: 200,
                // height: 150,
              ), //logo
              ),
            ),
      ));
  }
}