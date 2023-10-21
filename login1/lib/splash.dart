import 'package:flutter/material.dart';
import 'package:login1/home.dart';
import 'package:login1/login.dart';
import 'package:login1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

@override
  void initState() {
    CheckUserLogin();
    super.initState();
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

  

Future<void> gotoLogin() async{
 await Future.delayed(Duration(seconds: 3));
 Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (ctx){
  return ScreenLogin();
 }));
}

Future<void> CheckUserLogin() async{
  final _sharedprefer = await SharedPreferences.getInstance();
  final _UserLogin = _sharedprefer.getBool(SAVE_KEY_NAME);
  if(_UserLogin == null || _UserLogin == false){
    gotoLogin();
  } else{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=> ScreenHome()));
  }
}

}



