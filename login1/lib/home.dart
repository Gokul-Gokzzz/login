import 'package:flutter/material.dart';
import 'package:login1/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(
            onPressed: () {
            signout(context);
          },
           icon: Icon(Icons.exit_to_app))     
              ],
      ),
      body: ListView.builder(
        itemCount:50, 
        itemBuilder: (BuildContext context , Index){
          return ListTile(
            onTap: (){},
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.timelapse_rounded),
            title: Text("phone ${Index + 1}"),
          );
        }
        
        )
    );
  }

  signout(BuildContext ctx) async
  {
     final _sharedprefer = await  SharedPreferences.getInstance();
    await  _sharedprefer.clear();
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)  => ScreenLogin()), (route) => false);
  }
}