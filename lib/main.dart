import 'package:community_app/screens/Login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white
      ),
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => Login(),
      },
    );
  }
}
