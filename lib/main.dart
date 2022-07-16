import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2196f3),
        centerTitle: true,

        toolbarHeight: 300,
      ),
      body: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            ),),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: ListView(
              children: <Widget>[
          Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Login/Register',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Email',
              ),
            ),
          ),
    ]
    ),
        )
      )
    );
  }
}
