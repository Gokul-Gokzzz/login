import 'package:flutter/material.dart';
import 'package:login1/login.dart';

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
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: 150,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                Text(
                  'DART',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                Text(
                  'FLUTTER',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.lightBlue,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                Text(
                  'C++',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.blueGrey,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                Text(
                  'JAVA',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.orange,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                Text(
                  'JAVASCRIPT',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            color: Colors.red,
          )
        ],
      ),
    );
  }

  signout(BuildContext ctx)
  {
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)  => ScreenLogin()), (route) => false);
  }
}