import 'package:flutter/material.dart';
import './launcher.dart';
import './login.dart';
import './landing.dart';
import './register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        '/landing': (BuildContext context) => new LandingPage(),
        '/register': (BuildContext context) => new RegisterPage(),
      },
    );
  }
}
