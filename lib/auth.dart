import 'package:flutter/material.dart';
import 'package:lesson24/constans/colors.dart';
import 'package:lesson24/screens/mainPage_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.brown,
      body: MainPageInfo(),
    );
  }
}
