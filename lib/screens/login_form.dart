import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson24/components/button.dart';
import 'package:lesson24/components/input.dart';
import 'package:lesson24/components/tittle.dart';
import 'package:lesson24/constans/colors.dart';

import '../auth.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Tittle(
                  textAlign: TextAlign.center,
                  tittle: "Вход",
                  fontsize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 36,
              ),
              SizedBox(
                height: 50,
                child: Input(
                  label: "E-mail",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  child: Input(
                    label: "пароль",
                    isPassword: true,
                  )),
              SizedBox(
                height: 66,
              ),
              SizedBox(
                height: 50,
                width: 132,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: AppColors.redshadow,
                      blurRadius: 10,
                      spreadRadius: -3,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: Button(
                    fontsize: 15,
                    tittle: "Вход",
                    name: MainPage(),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
