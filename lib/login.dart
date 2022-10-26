import 'package:flutter/material.dart';
import 'package:project/landing.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Agenda Kegiatan PKBM',
        theme: ThemeData(
            primaryColor: Color(0XFFF9BF3B),
            iconTheme: IconThemeData(color: Color(0XFFF9BF3B)),
            primaryIconTheme: IconThemeData(color: Color(0XFFF9BF3B))),
        home: Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 80.0),
                  Center(
                    child: Text('YOUR APP',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFB3421B))),
                  ),
                  SizedBox(height: 100.0),
                  Text('Masuk dengan akun',
                      style: TextStyle(fontSize: 20.0, color: Colors.black)),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFFC86400), width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFFC86400), width: 1.0)),
                        hintText: 'Email atau Username',
                        prefixIcon: Icon(Icons.alternate_email,
                            color: Color(0XFFC86400))),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFFC86400), width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFFC86400), width: 1.0)),
                        hintText: 'Kata Sandi',
                        prefixIcon: Icon(Icons.lock, color: Color(0XFFC86400))),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    splashColor: Colors.red,
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0XFFF9B32F), Color(0XFFB85400)]),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: Text('Masuk',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0)),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text('Lupa Kata Sandi ?',
                          style: TextStyle(color: Color(0XFFF9B32F))),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Belum Punya Akun ? '),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage())
                          );
                        },
                        child: Center(
                          child: Text('Daftar Sekarang',
                              style: TextStyle(color: Color(0XFFF9B32F))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
