import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson24/constans/colors.dart';

import '../auth.dart';

class Button extends StatefulWidget {
  final double fontsize;
  final FontWeight fontWeight;
  final String tittle;
  final Widget name;
  void nav;
  Button({
    this.name,
    this.nav,
    this.tittle = "",
    this.fontWeight,
    this.fontsize,
  });
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => widget.name));
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.red),
      ),
      child: Text(
        widget.tittle,
        style:
            TextStyle(fontSize: widget.fontsize, fontWeight: widget.fontWeight),
      ),
    );
  }
}

class Button2 extends StatefulWidget {
  final double fontsize;
  final FontWeight fontWeight;
  final String tittle;
  void nav;
  Button2({
    this.nav,
    this.tittle = "",
    this.fontWeight,
    this.fontsize,
  });
  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.red),
      ),
      child: Text(
        widget.tittle,
        style:
            TextStyle(fontSize: widget.fontsize, fontWeight: widget.fontWeight),
      ),
    );
  }
}
