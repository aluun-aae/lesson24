import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson24/auth.dart';
import 'package:lesson24/components/button.dart';
import 'package:lesson24/components/input.dart';
import 'package:lesson24/screens/login_form.dart';
import 'constans/colors.dart';
import 'logic/loginLogic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "HomeWork",
          home: App(),
        ));
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInForm(),
    );
  }
}
