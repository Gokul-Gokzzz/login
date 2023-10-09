import 'package:flutter/material.dart';
import 'package:login1/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

@override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }




Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
          width: 1000,
          height:1000,
          child: Image(image: AssetImage("assets/gk logo.jpeg")),
          )
        ),
    );
  } 

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

Future<void> gotoLogin() async{
 await Future.delayed(Duration(seconds: 3));
 Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (ctx){
  return ScreenLogin();
 }));
}

}



