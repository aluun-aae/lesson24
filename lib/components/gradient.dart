import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson24/constans/colors.dart';

final kInnerDecoration = BoxDecoration(
  color: AppColors.white,
  border: Border.all(color: AppColors.white),
  borderRadius: BorderRadius.circular(20),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.firstGradient, AppColors.scndGradient],
  ),
  border: Border.all(
    color: Colors.transparent,
  ),
  borderRadius: BorderRadius.circular(20),
);
