import 'package:flutter/material.dart';
import 'package:lesson24/constans/colors.dart';

class Input extends StatefulWidget {
  final String label;
  final bool isPassword;
  Input({
    this.label = "",
    this.isPassword = false,
  });

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  bool obSucure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: AppColors.purple, fontSize: 14),
      cursorColor: AppColors.purple,
      obscureText: widget.isPassword ? obSucure : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  Icons.visibility_off_outlined,
                  color: AppColors.grey,
                ),
                onPressed: () {
                  setState(() {
                    obSucure = !obSucure;
                    print(obSucure);
                  });
                },
              )
            : SizedBox(),
        fillColor: AppColors.purple2,
        filled: true,
        labelText: widget.label,
        labelStyle: TextStyle(color: AppColors.purple),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: AppColors.purple,
          width: 1,
        )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.purple, width: 1),
        ),
      ),
    );
  }
}
